<?php

namespace frontend\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use frontend\models\Submissions;

/**
 * SubmissionsSearch represents the model behind the search form about `frontend\models\Submissions`.
 */
class SubmissionsSearch extends Submissions
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['sub_id', 'conf_id', 'created_by', 'updated_by'], 'integer'],
            [['sub_type', 'sub_title', 'sub_abstract', 'sub_keywords', 'sub_file', 'created_at', 'updated_at'], 'safe'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = Submissions::find();

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        $query->andFilterWhere([
            'sub_id' => $this->sub_id,
            'conf_id' => $this->conf_id,
            'created_at' => $this->created_at,
            'updated_at' => $this->updated_at,
            'created_by' => $this->created_by,
            'updated_by' => $this->updated_by,
        ]);

        $query->andFilterWhere(['like', 'sub_type', $this->sub_type])
            ->andFilterWhere(['like', 'sub_title', $this->sub_title])
            ->andFilterWhere(['like', 'sub_abstract', $this->sub_abstract])
            ->andFilterWhere(['like', 'sub_keywords', $this->sub_keywords])
            ->andFilterWhere(['like', 'sub_file', $this->sub_file]);

        return $dataProvider;
    }
}
