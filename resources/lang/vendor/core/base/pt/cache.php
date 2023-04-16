<?php

return [
    'cache_management' => 'Gerenciamento de cache',
    'cache_commands' => 'Comandos de cache limpo',
    'commands' => [
        'clear_cms_cache' => [
            'title' => 'Limpe todo o cache do CMS',
            'description' => 'Cache de cms claros: armazenamento em cache de banco de dados, blocos estáticos ... execute este comando quando não vê as alterações após a atualização de dados.',
            'success_msg' => 'Cache limpo',
        ],
        'refresh_compiled_views' => [
            'title' => 'Atualizar vistas compiladas ',
            'description' => 'Visões claras compiladas para fazer visualizações atualizadas.',
            'success_msg' => 'Visualização de cache atualizada',
        ],
        'clear_config_cache' => [
            'title' => 'Limpar o cache de configuração',
            'description' => 'Pode ser necessário atualizar o cache de configuração quando você mudar algo no ambiente de produção.',
            'success_msg' => 'Config Cache limpo',
        ],
        'clear_route_cache' => [
            'title' => 'Cache de rota limpa',
            'description' => 'Roteamento de cache limpo.',
            'success_msg' => 'O cache de rota foi limpo',
        ],
        'clear_log' => [
            'title' => 'Limpar Log',
            'description' => 'Limpar arquivos de log do sistema',
            'success_msg' => 'O log do sistema foi limpo',
        ],
    ],
];
