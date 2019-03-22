<?php

namespace frontend\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use frontend\models\Authors;

/**
 * AuthorsSearch represents the model behind the search form about `frontend\models\Authors`.
 */
class AuthorsSearch extends Authors
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['author_id', 'created_by', 'updated_by'], 'integer'],
            [['author_fname', 'author_mname', 'author_lname', 'author_country', 'author_affiliation', 'author_email', 'author_corresponding', 'created_at', 'updated_at'], 'safe'],
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
        $query = Authors::find();

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
            'author_id' => $this->author_id,
            'created_at' => $this->created_at,
            'updated_at' => $this->updated_at,
            'created_by' => $this->created_by,
            'updated_by' => $this->updated_by,
        ]);

        $query->andFilterWhere(['like', 'author_fname', $this->author_fname])
            ->andFilterWhere(['like', 'author_mname', $this->author_mname])
            ->andFilterWhere(['like', 'author_lname', $this->author_lname])
            ->andFilterWhere(['like', 'author_country', $this->author_country])
            ->andFilterWhere(['like', 'author_affiliation', $this->author_affiliation])
            ->andFilterWhere(['like', 'author_email', $this->author_email])
            ->andFilterWhere(['like', 'author_corresponding', $this->author_corresponding]);

        return $dataProvider;
    }
}
