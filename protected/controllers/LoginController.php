<?php

class LoginController extends Controller
{
	public function actionIndex()
	{
        header('Content-Type: application/json; charset=UTF-8; Access-Control-Allow-Origin="*"');
        $cr = new CDbCriteria;
        $cr->condition = 'email=:r1 and password=:r2';
        $cr->params = array(
            ':r1'=>Yii::app()->request->getPost('email'),
            ':r2'=>Yii::app()->request->getParam('password')
        );
        $cr->order = 'email ASC';
        $cr->limit = 1;
        $user = User::model()->find($cr);
        if ($user) {
            echo CJSON::encode($user->token);
        }
        else {
            echo CJSON::encode(array('message'=>'error'));
        }
        //echo json_encode($logs);
	    //$this->render('index');
        //Yii::app()->end();
	}

}