<?php

namespace frontend\models;

use Yii;

/**
 * This is the model class for table "conferences".
 *
 * @property int $conf_id
 * @property string $conf_name
 * @property string $conf_year
 * @property string $conf_venue
 * @property string $conf_start_date
 * @property string $conf_end_date
 * @property string $conf_abstract_DL
 * @property string $conf_poster_DL
 * @property string $conf_fullpaper_DL
 * @property string $created_at
 * @property string $updated_at
 * @property int $created_by
 * @property int $updated_by
 *
 * @property Submissions[] $submissions
 */
class Conferences extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'conferences';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['conf_name', 'conf_year', 'conf_venue', 'conf_start_date', 'conf_end_date', 'conf_abstract_DL', 'conf_poster_DL', 'conf_fullpaper_DL'], 'required'],
            [['conf_year', 'conf_start_date', 'conf_end_date', 'conf_abstract_DL', 'conf_poster_DL', 'conf_fullpaper_DL', 'created_at', 'updated_at', 'created_by', 'updated_by'], 'safe'],
            [['created_by', 'updated_by'], 'integer'],
            [['conf_name'], 'string', 'max' => 512],
            [['conf_venue'], 'string', 'max' => 100],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'conf_id' => 'Conf ID',
            'conf_name' => 'Conference Name',
            'conf_year' => 'Year',
            'conf_venue' => 'Venue',
            'conf_start_date' => 'Start Date',
            'conf_end_date' => 'End Date',
            'conf_abstract_DL' => 'Abstract DeadLine',
            'conf_poster_DL' => 'Poster DeadLine',
            'conf_fullpaper_DL' => 'FullPaper DeadLine',
            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
            'created_by' => 'Created By',
            'updated_by' => 'Updated By',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getSubmissions()
    {
        return $this->hasMany(Submissions::className(), ['conf_id' => 'conf_id']);
    }
}
