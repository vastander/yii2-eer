<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model common\models\Program */
/* @var $form yii\widgets\ActiveForm */

?>

<?php $form = ActiveForm::begin(['id' => 'updateForm']); ?>

<?= $form->field($model, 'code')->textInput(['maxlength' => true]); ?>
<?= $form->field($model, 'name')->textInput(['maxlength' => true]); ?>
<?= $form->field($model, 'profile')->textInput(['maxlength' => true]); ?>
<?= $form->field($model, 'level')->dropDownList(\Yii::$app->params['decode']['program.level']); ?>
<?= $form->field($model, 'form')->dropDownList(\Yii::$app->params['decode']['program.form']); ?>
<?= $form->field($model, 'standard')->textInput(['maxlength' => true]); ?>
<?= $form->field($model, 'comment')->textInput(); ?>


<div class="form-group">
    <?= Html::submitButton('Сохранить', ['class' => 'btn btn-primary']) ?>
</div>

<?php ActiveForm::end(); ?>

<?php require(Yii::$app->basePath.'/views/grid/update.php'); ?>
