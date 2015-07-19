<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "discipline".
 *
 * @property integer $id
 * @property integer $id_program
 * @property string $code
 * @property integer $kind
 * @property integer $block
 *
 * @property Program $idProgram
 * @property DisciplineName[] $disciplineNames
 * @property DisciplineSemester[] $disciplineSemesters
 */
class Discipline extends \yii\db\ActiveRecord
{
    /* см. common/config/params.php
       decode  discipline.block номер ДПВ = 2
    */
    const DISCIPLINE_CHOICE = 2;
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'discipline';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id_program', 'code', 'kind'], 'required'],
            [['id_program', 'kind', 'block'], 'integer'],
            [['code'], 'string', 'max' => 20],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'id_program' => 'Id Program',
            'code' => 'Шифр',
            'kind' => 'Вид',
            'block' => 'Блок',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getIdProgram()
    {
        return $this->hasOne(Program::className(), ['id' => 'id_program']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getDisciplineNames()
    {
        return $this->hasMany(DisciplineName::className(), ['id_discipline' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getDisciplineSemesters()
    {
        return $this->hasMany(DisciplineSemester::className(), ['id_discipline' => 'id']);
    }


}