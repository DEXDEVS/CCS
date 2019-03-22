<?php

namespace frontend\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use frontend\models\Reviewers;

/**
 * ReviewersSearch represents the model behind the search form about `frontend\models\Reviewers`.
 */
class ReviewersSearch extends Reviewers
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['reviewer_id', 'created_by', 'updated_by'], 'integer'],
            [['reviewer_name', 'reviewer_cnic', 'reviewer_designation', 'reviewer_email', 'reviewer_domain', 'reviewer_contact_no', 'reviewer_website', 'created_at', 'updated_at'], 'safe'],
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
        $query = Reviewers::find();

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
            'reviewer_id' => $this->reviewer_id,
            'created_at' => $this->created_at,
            'updated_at' => $this->updated_at,
            'created_by' => $this->created_by,
            'updated_by' => $this->updated_by,
        ]);

        $query->andFilterWhere(['like', 'reviewer_name', $this->reviewer_name])
            ->andFilterWhere(['like', 'reviewer_cnic', $this->reviewer_cnic])
            ->andFilterWhere(['like', 'reviewer_designation', $this->reviewer_designation])
            ->andFilterWhere(['like', 'reviewer_email', $this->reviewer_email])
            ->andFilterWhere(['like', 'reviewer_domain', $this->reviewer_domain])
            ->andFilterWhere(['like', 'reviewer_contact_no', $this->reviewer_contact_no])
            ->andFilterWhere(['like', 'reviewer_website', $this->reviewer_website]);

        return $dataProvider;
    }
}
