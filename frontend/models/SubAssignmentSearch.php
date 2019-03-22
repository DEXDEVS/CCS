<?php

namespace frontend\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use frontend\models\SubAssignment;

/**
 * SubAssignmentSearch represents the model behind the search form about `frontend\models\SubAssignment`.
 */
class SubAssignmentSearch extends SubAssignment
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['assign_id', 'assign_sub_id', 'assign_reviewer_id', 'created_by', 'updated_by'], 'integer'],
            [['assign_deadline', 'assign_reviews', 'assign_sub_status', 'created_at', 'updated_at'], 'safe'],
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
        $query = SubAssignment::find();

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
            'assign_id' => $this->assign_id,
            'assign_sub_id' => $this->assign_sub_id,
            'assign_reviewer_id' => $this->assign_reviewer_id,
            'assign_deadline' => $this->assign_deadline,
            'created_at' => $this->created_at,
            'updated_at' => $this->updated_at,
            'created_by' => $this->created_by,
            'updated_by' => $this->updated_by,
        ]);

        $query->andFilterWhere(['like', 'assign_reviews', $this->assign_reviews])
            ->andFilterWhere(['like', 'assign_sub_status', $this->assign_sub_status]);

        return $dataProvider;
    }
}
