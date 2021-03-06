<?php
namespace frontend\controllers;

use Yii;
use yii\data\ActiveDataProvider;
use yii\helpers\ArrayHelper;
use yii\web\Controller;
use common\models\Faculty;
use bupy7\ajaxfilter\AjaxFilter;

/**
 * Site controller
 */
class SiteController extends Controller
{

    /**
     * @inheritdoc
     */
    public function actions()
    {
        return [
            'error' => [
                'class' => 'yii\web\ErrorAction',
            ],
            'year' => 'common\actions\YearAction',
            'login' => 'common\actions\LoginAction',
            'logout' => 'common\actions\LogoutAction',
        ];
    }

    /**
     * Displays homepage.
     *
     * @return mixed
     */
    public function actionIndex()
    {
        $query = Faculty::find();
        $provider = new ActiveDataProvider([
            'query' => $query,
            'sort' => [
                'defaultOrder' => ['name' => SORT_ASC,]
            ],
            'pagination' => false,
        ]);

        $images = Faculty::find()->where(['is not', 'filename', null])->all();
        $images = ArrayHelper::map($images,'id','filename');

        return $this->render('index', [
                'provider' => $provider,
                'images' => $images,
                ]);
    }

}
