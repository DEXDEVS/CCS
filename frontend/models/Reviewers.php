<?php

namespace frontend\models;

use Yii;

/**
 * This is the model class for table "reviewers".
 *
 * @property int $reviewer_id
 * @property string $reviewer_name
 * @property string $reviewer_cnic
 * @property string $reviewer_designation
 * @property string $reviewer_email
 * @property string $reviewer_domain
 * @property string $reviewer_contact_no
 * @property string $reviewer_website
 * @property string $created_at
 * @property string $updated_at
 * @property int $created_by
 * @property int $updated_by
 *
 * @property SubAssignmrnt[] $subAssignmrnts
 */
class Reviewers extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'reviewers';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['reviewer_name', 'reviewer_cnic', 'reviewer_designation', 'reviewer_email', 'reviewer_domain', 'reviewer_contact_no', 'reviewer_website', 'created_at', 'updated_at', 'created_by', 'updated_by'], 'required'],
            [['created_at', 'updated_at'], 'safe'],
            [['created_by', 'updated_by'], 'integer'],
            [['reviewer_name'], 'string', 'max' => 256],
            [['reviewer_cnic', 'reviewer_contact_no'], 'string', 'max' => 15],
            [['reviewer_designation', 'reviewer_domain', 'reviewer_website'], 'string', 'max' => 56],
            [['reviewer_email'], 'string', 'max' => 64],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'reviewer_id' => 'Reviewer ID',
            'reviewer_name' => 'Reviewer Name',
            'reviewer_cnic' => 'Reviewer Cnic',
            'reviewer_designation' => 'Reviewer Designation',
            'reviewer_email' => 'Reviewer Email',
            'reviewer_domain' => 'Reviewer Domain',
            'reviewer_contact_no' => 'Reviewer Contact No',
            'reviewer_website' => 'Reviewer Website',
            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
            'created_by' => 'Created By',
            'updated_by' => 'Updated By',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getSubAssignmrnts()
    {
        return $this->hasMany(SubAssignmrnt::className(), ['assign_reviewer_id' => 'reviewer_id']);
    }
}
