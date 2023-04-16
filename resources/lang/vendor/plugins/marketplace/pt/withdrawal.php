<?php

return [
    'name' => 'Retiradas',
    'edit' => 'Editar retirada',
    'statuses' => [
        'pending' => 'Pendente',
        'processing' => 'Em processamento',
        'completed' => 'Concluída',
        'canceled' => 'Cancelada',
        'refused' => 'Recusou',
    ],
    'amount' => 'Quantia',
    'customer' => 'Customer',
    'vendor' => 'Fornecedor',
    'currency' => 'Moeda',
    'forms' => [
        'amount' => 'Quantia',
        'amount_placeholder' => 'Quantidade que você deseja retirar',
        'fee' => 'Taxa',
        'fee_helper' => 'Você tem que pagar uma taxa ao retirar: :fee',
        'pending_status_helper' => 'Para concluir a retirada, atualize o status como processamento e concluído',
        'payment_channel' => 'Canal de pagamento',
        'payment_channel_placeholder' => 'Canal de pagamento',
        'transaction_id' => 'ID da transação',
        'transaction_id_placeholder' => 'ID da transação',
    ],
];
