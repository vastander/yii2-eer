<?php
return [
    'adminEmail' => 'vkabachenko@gmail.com',
    'user.passwordResetTokenExpire' => 3600,

    /* расшифровка кодов полей втаблицах.
    Массив: ключ - таблица.поле,
    значение - параметр с массивом расшифровки
    */
    'decode' => [
        'program.level' => ['бакалавриат','магистратура','специалитет','аспирантура'],
        'program.form' => ['очное','заочное'],
        'discipline.kind' => ['дисциплина', 'практика', 'ГИА'],
        'discipline.block' => ['базовый','вариативный','ДПВ'], // см. common/models/Discipline
        'user.role' => ['студент','инспектор факультета','админ факультета','администратор'],
    ],
    'icon-framework' => 'fa',  // Font Awesome Icon framework

];
