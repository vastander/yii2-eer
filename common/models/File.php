<?php

namespace common\models;

use Yii;
use yii\web\UploadedFile;
use backend\behaviors\FileBehavior;

/**
 * This is the model class for table "file".
 *
 * @property integer $id
 * @property string $title
 * @property string $document
 * @property string $filename
 * @property integer $role
 *
 * @property DisciplineFile[] $disciplineFiles
 * @property ProgramFile[] $programFiles
 * @property StudentPortfolio[] $studentPortfolios
 * @property StudentResultFile[] $studentResultFiles
 */
class File extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public function behaviors()
    {
        return array_merge(parent::behaviors(),[
            FileBehavior::className()
        ]);
    }

    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'file';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return array_merge($this->ruleFile(),[
            [['role'], 'integer'],
            [['title'], 'string', 'max' => 250],
        ]);
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return array_merge($this->nameFile(),[
            'id' => 'ID',
            'title' => 'Описание',
            'document' => 'Оригинальное имя',
            'filename' => 'Системное имя',
            'role' => 'Роль',
        ]);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getDisciplineFiles()
    {
        return $this->hasMany(DisciplineFile::className(), ['id_file' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getProgramFiles()
    {
        return $this->hasMany(ProgramFile::className(), ['id_file' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
   public function getStudentPortfolios()
    {
        return $this->hasMany(StudentPortfolio::className(), ['id_file' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getStudentResultFiles()
    {
        return $this->hasMany(StudentResultFile::className(), ['id_file' => 'id']);
    }

    /**
     * @inheritdoc
     */
    public function beforeSave($insert)
    {
        if (parent::beforeSave($insert)) {
            $this->saveFile();
            $this->title = $this->title ?: $this->document;
            return $this->filename ? true : false;
        } else {
            return false;
        }
    }

    /**
     * @inheritdoc
     */
    public function beforeDelete()
    {
        if(!parent::beforeDelete())
            return false;
        $this->deleteFile(); // удалили модель? удаляем и файл
        return true;
    }

}
