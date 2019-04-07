<?php

namespace frontend\models;

use Yii;

/**
 * This is the model class for table "sub_assignment".
 *
 * @property int $assign_id
 * @property int $assign_sub_id
 * @property int $assign_reviewer_id
 * @property string $assign_deadline
 * @property string $assign_reviews
 * @property string $assign_sub_status
 * @property string $status
 * @property string $created_at
 * @property string $updated_at
 * @property int $created_by
 * @property int $updated_by
 *
 * @property Submissions $assignSub
 * @property Reviewers $assignReviewer
 */
class SubAssignment extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'sub_assignment';
    }

        public $sub_type;
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['assign_sub_id', 'assign_reviewer_id', 'assign_deadline'], 'required'],
            [['assign_sub_id', 'assign_reviewer_id', 'created_by', 'updated_by'], 'integer'],
            [['assign_deadline','created_at', 'updated_at', 'created_by', 'updated_by', 'assign_reviews', 'assign_sub_status' ,'status','sub_type'], 'safe'],
            [['assign_reviews', 'assign_sub_status'], 'string'],
            [['assign_sub_id'], 'exist', 'skipOnError' => true, 'targetClass' => Submissions::className(), 'targetAttribute' => ['assign_sub_id' => 'sub_id']],
            [['assign_reviewer_id'], 'exist', 'skipOnError' => true, 'targetClass' => Reviewers::className(), 'targetAttribute' => ['assign_reviewer_id' => 'reviewer_id']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'assign_id' => 'Assign ID',
            'assign_sub_id' => 'Submission Title',
            'assign_reviewer_id' => 'Reviewer Name',
            'sub_type' => 'Submission Type',
            'assign_deadline' => 'Review Deadline',
            'assign_reviews' => 'Assign Reviews',
            'assign_sub_status' => 'Assign Sub Status',
            'status' => 'Reviews Status',
            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
            'created_by' => 'Created By',
            'updated_by' => 'Updated By',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getAssignSub()
    {
        return $this->hasOne(Submissions::className(), ['sub_id' => 'assign_sub_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getAssignReviewer()
    {
        return $this->hasOne(Reviewers::className(), ['reviewer_id' => 'assign_reviewer_id']);
    }
}
