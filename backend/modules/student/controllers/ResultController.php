<?php

namespace backend\modules\student\controllers;

use Yii;
use yii\web\NotFoundHttpException;
use common\models\StudentEducation;
use common\models\StudentResult;
use yii\data\ActiveDataProvider;
use common\helpers\ResultHelper;
use yii\web\Controller;

class ResultController extends Controller{

    public function actionIndex($id) {
        // $id - in StudentEducation

        /* @var $student StudentEducation */
        $student = StudentEducation::findOne($id);

        $provider = new ActiveDataProvider([
            'query' => ResultHelper::StudentResults($id),
            'pagination' => false,
        ]);

        return $this->render('index', [
            'provider' => $provider,
            'student' => $student,
            ]);
    }

    public function actionUpdate($id_student, $id_semester, $id_result = null) {

    // $id_semester - id discipline_semester
    // $id_result - id student_result или null ,если результата еще нет
    /* @var $model StudentResult */

        if ($id_result) {
            $model = $this->findModel($id_result);
        }
        else {
            $model = new StudentResult();
            $model->id_student_education = $id_student;
            $model->id_discipline_semester = $id_semester;
        }

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return '';
        } else {
            return $this->renderAjax('update', [
                'model' => $model,
            ]);
        }
    }


    public function actionDelete($id = null)
    {
        if ($id == null) {
            $model = null;
        }
        else {
            $model = $this->findModel($id);

            if (Yii::$app->request->post('approve')) {
                $this->findModel($id)->delete();
                return '';
            }
        }


        return $this->renderAjax('delete', [
            'model' => $model,
        ]);
    }



    protected function findModel($id)
    {
        /* @var $model StudentResult */
        $model = new StudentResult();
        if (($model = $model->findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }

} 