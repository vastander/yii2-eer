<?php
use common\models\StudentResult;
use yii\widgets\DetailView;
use yii\helpers\Html;
use common\models\StudentResultFile;

/* @var $model StudentResult */

?>

    <h3>
        Студент: <?= $model->idStudentEducation->studentName ?> Курс: <?= $model->idStudentEducation->course ?>
        Дисциплина: <?= $model->idDisciplineSemester->idDiscipline->fullName ?>
        <?php if ($model->id_discipline_name): ?>
           <?= $model->idDisciplineName->name ?>
        <?php endif; ?>

    </h3>

<?= DetailView::widget([
    'model' => $model,
    'attributes' => [
        'passing_date',
        'examiner',
        'assesment',
        'rating',
        [
            'label' => 'Макс. рейтинг',
            'value' => $model->idDisciplineSemester->max_rating,
        ]
    ]
]);
?>
<?php if (StudentResultFile::find()->where(['id_student_result' => $model->id])->exists()): ?>

    <p>
        <?= Html::a('Документы',
            ['/file/main/result','id' => $model->id],
            ['class' => 'linkedFiles']);
        ?>
    </p>

<?php endif; ?>