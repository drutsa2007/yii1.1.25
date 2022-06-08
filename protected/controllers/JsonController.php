<?php

class JsonController extends Controller
{

	public function actionIndex()
	{
        header('Content-Type: application/json; 
        charset=UTF-8; Access-Control-Allow-Headers:Content-Type;
        Access-Control-Allow-Methods:GET;
        Access-Control-Allow-Origin:127.0.0.1:3000');
        $cr = new CDbCriteria;
        $cr->order = 'date_log ASC';
        $logs = Logs::model()->findAll();

        echo CJSON::encode($logs);

        //echo json_encode($logs);
	    //$this->render('index');
        //Yii::app()->end();
	}

}