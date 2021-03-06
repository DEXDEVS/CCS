<?php

namespace frontend\models;

use Yii;

/**
 * This is the model class for table "sub_assignment".
 *
 * @property int $assign_id
 * @property string $sub_type
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

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['sub_type', 'assign_sub_id', 'assign_reviewer_id', 'assign_deadline', 'assign_reviews', 'status', 'created_at', 'updated_at', 'created_by', 'updated_by'], 'required'],
            [['sub_type', 'assign_reviews', 'status'], 'string'],
            [['assign_sub_id', 'assign_reviewer_id', 'created_by', 'updated_by'], 'integer'],
            [['assign_deadline', 'created_at', 'updated_at'], 'safe'],
            [['assign_sub_status'], 'string', 'max' => 10],
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
            'sub_type' => 'Submission Type',
            'assign_sub_id' => 'Submission title',
            'assign_reviewer_id' => 'Reviewer\'s Name',
            'assign_deadline' => 'Review Deadline',
            'assign_reviews' => 'Assign Reviews',
            'assign_sub_status' => 'Assign Sub Status',
            'status' => 'Status',
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
