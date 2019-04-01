<?php

namespace frontend\models;

use Yii;

/**
 * This is the model class for table "submissions".
 *
 * @property int $sub_id
 * @property int $conf_id
 * @property string $sub_type
 * @property string $sub_title
 * @property string $sub_abstract
 * @property string $sub_keywords
 * @property string $sub_file
 * @property string $created_at
 * @property string $updated_at
 * @property int $created_by
 * @property int $updated_by
 *
 * @property PaperAuthors[] $paperAuthors
 * @property SubAssignmrnt[] $subAssignmrnts
 * @property Conferences $conf
 */
class Submissions extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'submissions';
    }

    Public $search_conference;

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['conf_id', 'sub_type', 'sub_title', 'sub_abstract', 'sub_keywords', 'sub_file'], 'required'],
            [['conf_id', 'created_by', 'updated_by','search_conference'], 'integer'],
            [['sub_abstract'], 'string'],
            [['conf_id','created_at', 'updated_at', 'created_by', 'updated_by','search_conference'], 'safe'],
            [['sub_type', 'sub_keywords'], 'string', 'max' => 56],
            [['sub_title'], 'string', 'max' => 256],
            [['sub_file'], 'string', 'max' => 120],
            [['sub_file'],'file','skipOnEmpty'=> true],
            [['conf_id'], 'exist', 'skipOnError' => true, 'targetClass' => Conferences::className(), 'targetAttribute' => ['conf_id' => 'conf_id']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'sub_id' => 'Sub ID',
            'conf_id' => 'Conferences Name',
            'sub_type' => 'Type',
            'sub_title' => 'Title',
            'search_conference' => "<h1>Search Conference</h1>",
            'sub_abstract' => 'Abstract',
            'sub_keywords' => 'Keywords',
            'sub_file' => 'File',
            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
            'created_by' => 'Created By',
            'updated_by' => 'Updated By',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getPaperAuthors()
    {
        return $this->hasMany(PaperAuthors::className(), ['pa_sub_id' => 'sub_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getSubAssignmrnts()
    {
        return $this->hasMany(SubAssignmrnt::className(), ['assign_sub_id' => 'sub_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getConf()
    {
        return $this->hasOne(Conferences::className(), ['conf_id' => 'conf_id']);
    }
}
