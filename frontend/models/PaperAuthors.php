<?php

namespace frontend\models;

use Yii;

/**
 * This is the model class for table "paper_authors".
 *
 * @property int $pa_id
 * @property int $pa_sub_id
 * @property int $pa_author_id
 * @property string $created_at
 * @property string $updated_at
 * @property int $created_by
 * @property int $updated_by
 *
 * @property Submissions $paSub
 * @property Authors $paAuthor
 */
class PaperAuthors extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'paper_authors';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['pa_sub_id', 'pa_author_id'], 'required'],
            [['pa_sub_id', 'pa_author_id', 'created_by', 'updated_by'], 'integer'],
            [[ 'created_at', 'updated_at', 'created_by', 'updated_by'], 'safe'],
            [['pa_sub_id'], 'exist', 'skipOnError' => true, 'targetClass' => Submissions::className(), 'targetAttribute' => ['pa_sub_id' => 'sub_id']],
            [['pa_author_id'], 'exist', 'skipOnError' => true, 'targetClass' => Authors::className(), 'targetAttribute' => ['pa_author_id' => 'author_id']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'pa_id' => 'Pa ID',
            'pa_sub_id' => 'Pa Sub ID',
            'pa_author_id' => 'Pa Author ID',
            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
            'created_by' => 'Created By',
            'updated_by' => 'Updated By',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getPaSub()
    {
        return $this->hasOne(Submissions::className(), ['sub_id' => 'pa_sub_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getPaAuthor()
    {
        return $this->hasOne(Authors::className(), ['author_id' => 'pa_author_id']);
    }
}
