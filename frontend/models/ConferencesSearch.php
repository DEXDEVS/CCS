<?php

namespace frontend\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use frontend\models\Conferences;

/**
 * ConferencesSearch represents the model behind the search form about `frontend\models\Conferences`.
 */
class ConferencesSearch extends Conferences
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['conf_id', 'created_by', 'updated_by'], 'integer'],
            [['conf_name', 'conf_year', 'conf_venue', 'conf_start_date', 'conf_end_date', 'conf_abstract_DL', 'conf_poster_DL', 'conf_fullpaper_DL', 'created_at', 'updated_at'], 'safe'],
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
        $query = Conferences::find();

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
            'conf_id' => $this->conf_id,
            'conf_year' => $this->conf_year,
            'conf_start_date' => $this->conf_start_date,
            'conf_end_date' => $this->conf_end_date,
            'conf_abstract_DL' => $this->conf_abstract_DL,
            'conf_poster_DL' => $this->conf_poster_DL,
            'conf_fullpaper_DL' => $this->conf_fullpaper_DL,
            'created_at' => $this->created_at,
            'updated_at' => $this->updated_at,
            'created_by' => $this->created_by,
            'updated_by' => $this->updated_by,
        ]);

        $query->andFilterWhere(['like', 'conf_name', $this->conf_name])
            ->andFilterWhere(['like', 'conf_venue', $this->conf_venue]);

        return $dataProvider;
    }
}
