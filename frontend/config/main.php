<?php
$params = array_merge(
    require __DIR__ . '/../../common/config/params.php',
    require __DIR__ . '/../../common/config/params-local.php',
    require __DIR__ . '/params.php',
    require __DIR__ . '/params-local.php'
);

return [
    'id' => 'app-frontend',
    'name' => 'Conference Submission Studio',
    'basePath' => dirname(__DIR__),
    'bootstrap' => ['log'],
    'controllerNamespace' => 'frontend\controllers',
    'modules' => [
        'gridview' =>  [
            'class' => '\kartik\grid\Module'
        ], 
        'user' => [
           'class' => 'dektrium\user\Module',
       ],
    ],
    'components' => [
        'mailer' => [
           'class' => 'yii\swiftmailer\Mailer',
           'viewPath' => '@app/mailer',
           'useFileTransport' => false,
           'transport' => [
               'class' => 'Swift_SmtpTransport',
               'host' => 'smtp.gmail.com',
               'username' => 'dskdconf@gmail.com',
               'password' => 'dskdconf123',
               'port' => '587 ',
               'encryption' => 'tls',
            ],
        ],
        'request' => [
            'csrfParam' => '_csrf-frontend',
        ],
        'user' => [
            'identityClass' => 'common\models\User',
            'enableAutoLogin' => true,
            'identityCookie' => ['name' => '_identity-frontend', 'httpOnly' => true],
        ],
        'session' => [
            // this is the name of the session cookie used for login on the frontend
            'name' => 'advanced-frontend',
        ],
        'log' => [
            'traceLevel' => YII_DEBUG ? 3 : 0,
            'targets' => [
                [
                    'class' => 'yii\log\FileTarget',
                    'levels' => ['error', 'warning'],
                ],
            ],
        ],
        'errorHandler' => [
            'errorAction' => 'site/error',
        ],
        
        'urlManager' => [
            'enablePrettyUrl' => true,
            'showScriptName' => false,
            'rules' => [
                'index' => 'site/index',
                'sub-assignment' => 'sub-assignment/index',
            ],
        ],
        
    ],
    'params' => $params,
];
