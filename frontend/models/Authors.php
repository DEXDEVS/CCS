<?php

namespace frontend\models;

use Yii;

/**
 * This is the model class for table "authors".
 *
 * @property int $author_id
 * @property string $author_fname
 * @property string $author_mname
 * @property string $author_lname
 * @property string $author_country
 * @property string $author_affiliation
 * @property string $author_email
 * @property int $author_corresponding
 * @property string $created_at
 * @property string $updated_at
 * @property int $created_by
 * @property int $updated_by
 *
 * @property PaperAuthors[] $paperAuthors
 */
class Authors extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'authors';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['author_fname', 'author_lname', 'author_country', 'author_affiliation', 'author_email', 'author_corresponding'], 'required'],
            [['author_corresponding', 'created_by', 'updated_by'], 'integer'],
            [['author_mname' , 'created_at', 'updated_at', 'created_by', 'updated_by'], 'safe'],
            [['author_fname', 'author_mname', 'author_lname'], 'string', 'max' => 25],
            [['author_country'], 'string', 'max' => 128],
            [['author_affiliation'], 'string', 'max' => 256],
            [['author_email'], 'string', 'max' => 56],
            ['author_email', 'email'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'author_id' => 'Author ID',
            'author_fname' => 'First name',
            'author_mname' => 'Middle name',
            'author_lname' => 'Last name',
            'author_country' => 'Country',
            'author_affiliation' => 'Affiliation',
            'author_email' => 'Email',
            'author_corresponding' => 'Corresponding Author',
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
        return $this->hasMany(PaperAuthors::className(), ['pa_author_id' => 'author_id']);
    }
}
