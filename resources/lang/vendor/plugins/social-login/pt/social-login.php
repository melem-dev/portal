<?php

return [
    'settings' => [
        'title' => 'Configurações de login social',
        'description' => 'Configurar opções de login social',
        'facebook' => [
            'title' => 'Configurações de login do Facebook',
            'description' => 'Ativar/desativar e configurar credenciais de aplicativos para login do Facebook',
            'app_id' => 'ID do aplicativo',
            'app_secret' => 'appSecret',
            'helper' => 'Vá para https://developers.facebook.com para criar um novo aplicativo de atualização do aplicativo ID, aplicativo segredo.URL de retorno de chamada é: retorno de chamada',
        ],
        'google' => [
            'title' => 'Configurações de login do Google',
            'description' => 'Ativar/desativar e configurar credenciais de aplicativos para o Google Login',
            'app_id' => 'ID do aplicativo',
            'app_secret' => 'appSecret',
            'helper' => 'Por favor, vá para https://console.developers.google.com/apis/dashboard para criar um novo aplicativo App App ID, App Secret. URL de retorno de chamada é :callback',
        ],
        'github' => [
            'title' => 'Configurações de login do github',
            'description' => 'Ativar/desativar e configurar credenciais de aplicativos para login do github',
            'app_id' => 'ID do aplicativo',
            'app_secret' => 'appSecret',
            'helper' => 'Vá para https://github.com/settings/developers para criar um novo aplicativo de atualização do aplicativo ID, aplicativo segredo.URL de retorno de chamada é:callback',
        ],
        'linkedin' => [
            'title' => 'Configurações de login do LinkedIn',
            'description' => 'Ativar/desativar e configurar credenciais de aplicativos para login do LinkedIn',
            'app_id' => 'ID do aplicativo',
            'app_secret' => 'appSecret',
            'helper' => 'Vá para https://www.linkedin.com/developers/apps/new para criar um novo aplicativo de atualização de aplicativo ID, aplicativo segredo.URL de retorno de chamada é :callback',
        ],
        'enable' => 'Permitir?',
    ],
    'menu' => 'Login social',
];
