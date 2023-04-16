<?php

return [
    'name' => 'Boletins informativos',
    'settings' => [
        'email' => [
            'templates' => [
                'title' => 'Boletim de Notícias',
                'description' => 'Modelos de e -mail de boletim informativo Config',
                'to_admin' => [
                    'title' => 'Email Enviar para Admin',
                    'description' => 'Modelo para enviar e -mail para admin',
                ],
                'to_user' => [
                    'title' => 'Email Enviar para o usuário',
                    'description' => 'Modelo para enviar e -mail para assinante',
                ],
            ],
        ],
        'title' => 'Boletim de Notícias',
        'description' => 'Configurações para o boletim informativo',
        'mailchimp_api_key' => 'Chave da API do MailChimp',
        'mailchimp_list_id' => 'ID da lista do MailChimp',
        'mailchimp_list' => 'Lista de MailChimp',
        'sendgrid_api_key' => 'Chave da API SendGrid',
        'sendgrid_list_id' => 'ID da lista sendGrid',
        'sendgrid_list' => 'SendGrid list',
    ],
    'statuses' => [
        'subscribed' => 'Subscrito',
        'unsubscribed' => 'Cancelada',
    ],
];
