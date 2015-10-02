-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb2+deb7u1
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Окт 02 2015 г., 18:02
-- Версия сервера: 5.5.38
-- Версия PHP: 5.4.45-0+deb7u1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `eer`
--

-- --------------------------------------------------------

--
-- Структура таблицы `discipline`
--

CREATE TABLE IF NOT EXISTS `discipline` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор',
  `id_program` int(11) NOT NULL COMMENT 'Ид программы',
  `code_first` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `code_last` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kind` tinyint(4) NOT NULL COMMENT 'Вид (дисциплина/практика/ГИА)',
  `block` tinyint(4) NOT NULL COMMENT 'блок (базовый/вариативный/ДПВ)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_program_code` (`id_program`,`code_first`,`code_last`),
  KEY `id_program` (`id_program`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Изучаемые модули' AUTO_INCREMENT=79 ;

--
-- Дамп данных таблицы `discipline`
--

INSERT INTO `discipline` (`id`, `id_program`, `code_first`, `code_last`, `kind`, `block`) VALUES
(10, 8, 'Б1.Б', '1', 0, 0),
(11, 8, 'Б1.Б', '2', 0, 0),
(12, 8, 'Б1.Б', '3', 0, 0),
(13, 8, 'Б1.Б', '4', 0, 0),
(14, 8, 'Б1.Б', '5', 0, 0),
(15, 8, 'Б1.Б', '6', 0, 0),
(16, 8, 'Б1.Б', '7', 0, 0),
(17, 8, 'Б1.Б', '8', 0, 0),
(18, 8, 'Б1.Б', '9', 0, 0),
(21, 8, 'Б1.Б', '10', 0, 0),
(22, 8, 'Б1.Б', '11', 0, 0),
(23, 8, 'Б1.Б', '12', 0, 0),
(24, 8, 'Б1.Б', '13', 0, 0),
(25, 8, 'Б1.Б', '14', 0, 0),
(26, 8, 'Б1.Б', '15', 0, 0),
(27, 8, 'Б1.Б', '16', 0, 0),
(28, 8, 'Б1.Б', '17', 0, 0),
(29, 8, 'Б1.Б', '18.1', 0, 0),
(30, 8, 'Б1.Б', '18.2', 0, 0),
(31, 8, 'Б1.Б', '18.3', 0, 0),
(32, 8, 'Б1.Б', '18.4', 0, 0),
(33, 8, 'Б1.Б', '18.5', 0, 0),
(34, 8, 'Б1.Б', '18.6', 0, 0),
(35, 8, 'Б1.Б', '19.1', 0, 0),
(36, 8, 'Б1.Б', '19.2', 0, 0),
(37, 8, 'Б1.Б', '19.3', 0, 0),
(38, 8, 'Б1.Б', '19.4', 0, 0),
(39, 8, 'Б1.Б', '19.5', 0, 0),
(40, 8, 'Б1.Б', '19.6', 0, 0),
(41, 8, 'Б1.Б', '20.1', 0, 0),
(42, 8, 'Б1.Б', '20.2', 0, 0),
(43, 8, 'Б1.Б', '20.3', 0, 0),
(44, 8, 'Б1.Б', '20.4', 0, 0),
(45, 8, 'Б1.Б', '21', 0, 0),
(46, 8, 'Б1.Б', '22', 0, 0),
(47, 8, 'Б1.Б', '23', 0, 0),
(48, 8, 'Б1.В.ОД', '1', 0, 1),
(49, 8, 'Б1.В.ОД', '2', 0, 1),
(50, 8, 'Б1.В.ОД', '3', 0, 1),
(51, 8, 'Б1.В.ОД', '4', 0, 1),
(52, 8, 'Б1.В.ОД', '5', 0, 1),
(53, 8, 'Б1.В.ОД', '6', 0, 1),
(54, 8, 'Б1.В.ОД', '7', 0, 1),
(55, 8, 'Б1.В.ОД', '8', 0, 1),
(56, 8, 'Б1.В.ОД', '9.1', 0, 1),
(57, 8, 'Б1.В.ОД', '9.2', 0, 1),
(58, 8, 'Б1.В.ОД', '9.3', 0, 1),
(59, 8, 'Б1.В.ОД', '9.4', 0, 1),
(60, 8, 'Б1.В.ОД', '9.5', 0, 1),
(61, 8, 'Б1.В.ОД', '9.6', 0, 1),
(62, 8, 'Б1.В.ДВ', '1', 0, 2),
(64, 8, 'Б1.В.ДВ', '2', 0, 2),
(66, 8, 'Б1.В.ДВ', '3', 0, 2),
(67, 8, 'Б1.В.ДВ', '4', 0, 2),
(68, 8, 'Б1.В.ДВ', '5', 0, 2),
(69, 8, 'Б1.В.ДВ', '6', 0, 2),
(70, 8, 'Б1.В.ДВ', '7', 0, 2),
(71, 8, 'Б1.В.ДВ', '8', 0, 2),
(72, 8, 'Б1.В.ДВ', '10', 0, 2),
(73, 8, 'Б1.В.ДВ', '9', 0, 2),
(74, 8, 'Б2.У', '1', 1, 1),
(75, 8, 'Б2.П', '1', 1, 1),
(76, 8, 'Б2.П', '2', 1, 1),
(77, 8, 'Б2.П', '3', 1, 1),
(78, 8, 'Б3', NULL, 2, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `discipline_file`
--

CREATE TABLE IF NOT EXISTS `discipline_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор',
  `id_discipline_name` int(11) NOT NULL COMMENT 'Ид дисциплины',
  `id_file` int(11) NOT NULL COMMENT 'Ид файла',
  PRIMARY KEY (`id`),
  KEY `id_file` (`id_file`),
  KEY `id_discipline_name` (`id_discipline_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Файлы дисциплин (М:М)' AUTO_INCREMENT=6 ;

-- --------------------------------------------------------

--
-- Структура таблицы `discipline_name`
--

CREATE TABLE IF NOT EXISTS `discipline_name` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор',
  `id_program_main` int(11) NOT NULL COMMENT 'Ид программы (не должно быть id_program!)',
  `id_discipline` int(11) NOT NULL COMMENT 'Ид дисциплины',
  `suffix` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Дополнение к шифру дисциплины',
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Наименование дисциплины',
  PRIMARY KEY (`id`),
  KEY `id_discipline` (`id_discipline`),
  KEY `id_program_main` (`id_program_main`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Наименование дисциплины (м.б. несколько для ДПВ)' AUTO_INCREMENT=92 ;

--
-- Дамп данных таблицы `discipline_name`
--

INSERT INTO `discipline_name` (`id`, `id_program_main`, `id_discipline`, `suffix`, `name`) VALUES
(14, 8, 10, '', 'Иностранный язык'),
(15, 8, 11, '', 'История'),
(16, 8, 12, '', 'Философия'),
(17, 8, 13, '', 'Экономическая теория'),
(18, 8, 14, '', 'Математический анализ'),
(19, 8, 15, '', 'Аналитическая геометрия'),
(20, 8, 16, '', 'Линейная алгебра'),
(21, 8, 17, '', 'Векторный и тензорный анализ'),
(22, 8, 18, '', 'Теория функции комплексного переменного'),
(25, 8, 21, '', 'Дифференциальные уравнения'),
(26, 8, 22, '', 'Интегральные уравнения и вариационное исчисление'),
(27, 8, 23, '', 'Теория вероятностей и математическая статистика'),
(28, 8, 24, '', 'Программирование'),
(29, 8, 25, '', 'Вычислительная физика (Практикум на ЭВМ)'),
(30, 8, 26, '', 'Численные методы и математическое моделирование'),
(31, 8, 27, '', 'Химия'),
(32, 8, 28, '', 'Экология'),
(33, 8, 29, '', 'Механика'),
(34, 8, 30, '', 'Молекулярная физика'),
(35, 8, 31, '', 'Электричество и магнетизм'),
(36, 8, 32, '', 'Оптика'),
(37, 8, 33, '', 'Атомная физика'),
(38, 8, 34, '', 'Физика атомного ядра и элементарных частиц'),
(39, 8, 35, '', 'Общий физический практикум по механике'),
(40, 8, 36, '', 'Общий физический практикум по молекулярной физике'),
(41, 8, 37, '', 'Общий физический практикум по электромагнетизму'),
(42, 8, 38, '', 'Общий физический практикум по оптике'),
(43, 8, 39, '', 'Общий физический практикум по атомной физике'),
(44, 8, 40, '', 'Общий физический практикум по физике ядра и элементарных частиц'),
(45, 8, 41, '', 'Теоретическая механика. Механика сплошных сред'),
(46, 8, 42, '', 'Электродинамика'),
(47, 8, 43, '', 'Квантовая теория'),
(48, 8, 44, '', 'Физика конденсированного состояния. Термодинамика. Статистическая физика. Физическая кинетика'),
(49, 8, 45, '', 'Линейные и нелинейные уравнения физики'),
(50, 8, 46, '', 'Безопасность жизнедеятельности'),
(51, 8, 47, '', 'Физическая культура'),
(52, 8, 48, '', 'Русский язык и культура речи'),
(53, 8, 49, '', 'Мировая художественная культура'),
(54, 8, 50, '', 'Риторика'),
(55, 8, 51, '', 'Психология и педагогика'),
(56, 8, 52, '', 'Практикум по решению физических задач'),
(57, 8, 53, '', 'Вводный курс математики'),
(58, 8, 54, '', 'Вводный курс физики'),
(59, 8, 55, '', 'Элементарная физика'),
(60, 8, 56, '', 'Введение в физику конденсированных сред'),
(61, 8, 57, '', 'Дифракционный структурный анализ'),
(62, 8, 58, '', 'Квантовая теория твердых тел'),
(63, 8, 59, '', 'Физика реального кристалла'),
(64, 8, 60, '', 'Ядерная физика твердого тела'),
(65, 8, 61, '', 'Современные проблемы физики конденсированного состояния'),
(66, 8, 62, '1', 'Современная русская литература'),
(68, 8, 64, '1', 'Русский поэтический авангард'),
(69, 8, 64, '2', 'Лексикографические издания в профессиональной деятельности'),
(70, 8, 66, '1', 'Статистическая обработка информации'),
(71, 8, 66, '2', 'Углубленный курс тригонометрии'),
(72, 8, 67, '1', 'Математические закономерности в окружающей действительности'),
(73, 8, 67, '2', 'Элементы спектральной теории дифференциальных операторов'),
(74, 8, 68, '1', 'Магнитные свойства вещества'),
(75, 8, 68, '2', 'Электрические свойства вещества'),
(76, 8, 69, '1', 'История физики'),
(77, 8, 69, '2', 'Физика и современная цивилизация'),
(78, 8, 70, '1', 'Олимпиадные задачи по физике (часть 1)'),
(79, 8, 70, '2', 'Физическая электроника (часть 1)'),
(80, 8, 71, '1', 'Олимпиадные задачи по физике (часть 2)'),
(81, 8, 71, '2', 'Физическая электроника (часть 2)'),
(82, 8, 72, '1', 'Физика наноструктур'),
(83, 8, 72, '2', 'Материаловедение'),
(84, 8, 73, '1', 'Основы наноплазмоники'),
(85, 8, 73, '2', 'Фотонные кристаллы'),
(86, 8, 74, '', 'Учебная практика'),
(87, 8, 75, '', 'Производственная практика'),
(88, 8, 76, '', 'Производственная практика (НИР)'),
(89, 8, 77, '', 'Преддипломная практика'),
(90, 8, 78, '', 'Государственная итоговая аттестация'),
(91, 8, 62, '2', 'Формы существования русского языка (история и современность)');

-- --------------------------------------------------------

--
-- Структура таблицы `discipline_semester`
--

CREATE TABLE IF NOT EXISTS `discipline_semester` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор',
  `id_discipline` int(11) NOT NULL COMMENT 'Ид дисциплины',
  `course` tinyint(4) NOT NULL,
  `semester` tinyint(4) NOT NULL COMMENT 'Семестр',
  `max_rating` int(11) DEFAULT NULL COMMENT 'Макс. рейтинг дисциплины в семестре',
  PRIMARY KEY (`id`),
  KEY `id_discipline` (`id_discipline`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Семестры изучаемой дисциплины' AUTO_INCREMENT=95 ;

--
-- Дамп данных таблицы `discipline_semester`
--

INSERT INTO `discipline_semester` (`id`, `id_discipline`, `course`, `semester`, `max_rating`) VALUES
(12, 10, 1, 1, 108),
(13, 10, 1, 2, 108),
(14, 10, 2, 3, 144),
(15, 11, 1, 1, 72),
(16, 12, 1, 1, 108),
(17, 13, 1, 1, 72),
(18, 14, 1, 1, 90),
(19, 14, 1, 2, 126),
(20, 14, 2, 3, 144),
(21, 15, 1, 1, 108),
(22, 16, 1, 2, 108),
(23, 17, 2, 4, 72),
(24, 18, 2, 3, 72),
(25, 21, 2, 4, 108),
(26, 22, 2, 4, 72),
(27, 23, 3, 5, 72),
(28, 24, 1, 2, 108),
(29, 25, 1, 2, 72),
(30, 25, 2, 3, 90),
(31, 25, 2, 4, 90),
(32, 26, 4, 7, 144),
(33, 27, 3, 5, 180),
(34, 28, 1, 2, 72),
(35, 29, 1, 1, 180),
(36, 30, 1, 2, 108),
(37, 31, 2, 3, 180),
(38, 32, 2, 4, 108),
(39, 33, 3, 5, 108),
(40, 34, 3, 6, 108),
(41, 35, 1, 1, 72),
(42, 36, 1, 2, 72),
(43, 37, 2, 3, 72),
(44, 38, 2, 4, 72),
(45, 39, 3, 5, 72),
(46, 40, 3, 6, 72),
(47, 41, 2, 4, 180),
(48, 41, 3, 5, 144),
(49, 42, 3, 5, 108),
(50, 42, 3, 6, 144),
(51, 43, 3, 6, 72),
(52, 43, 4, 7, 216),
(53, 44, 4, 7, 72),
(54, 44, 4, 8, 144),
(55, 45, 3, 5, 108),
(56, 46, 1, 2, 72),
(57, 47, 1, 1, 18),
(58, 47, 1, 2, 18),
(59, 47, 2, 3, 18),
(60, 47, 2, 4, 18),
(61, 48, 2, 3, 72),
(62, 49, 2, 4, 72),
(63, 50, 3, 6, 72),
(64, 51, 2, 4, 108),
(65, 52, 2, 3, 108),
(66, 52, 2, 4, 72),
(67, 52, 3, 5, 72),
(68, 52, 3, 6, 108),
(69, 53, 1, 1, 108),
(70, 54, 1, 1, 144),
(71, 55, 1, 2, 144),
(72, 56, 3, 6, 180),
(73, 57, 4, 7, 108),
(74, 58, 4, 7, 216),
(75, 59, 4, 8, 144),
(76, 60, 4, 8, 72),
(77, 61, 4, 8, 180),
(78, 62, 1, 2, 72),
(80, 64, 2, 3, 72),
(82, 66, 3, 5, 108),
(83, 67, 4, 8, 108),
(84, 68, 2, 3, 108),
(85, 69, 2, 4, 108),
(86, 70, 3, 5, 108),
(87, 71, 3, 6, 108),
(88, 72, 4, 8, 108),
(89, 73, 4, 7, 108),
(90, 74, 3, 6, 108),
(91, 75, 3, 6, 108),
(92, 76, 4, 7, 216),
(93, 77, 4, 8, 108),
(94, 78, 4, 8, 216);

-- --------------------------------------------------------

--
-- Структура таблицы `faculty`
--

CREATE TABLE IF NOT EXISTS `faculty` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Первичный ключ',
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Наименование',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Факультет или иное структурное подразделение' AUTO_INCREMENT=16 ;

--
-- Дамп данных таблицы `faculty`
--

INSERT INTO `faculty` (`id`, `name`) VALUES
(11, 'Физико-математический');

-- --------------------------------------------------------

--
-- Структура таблицы `file`
--

CREATE TABLE IF NOT EXISTS `file` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор',
  `title` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Название для пользователя',
  `document` varchar(250) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Название файла реальное',
  `filename` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Уникальное имя файла в системе',
  `free_access` tinyint(1) NOT NULL COMMENT 'Ограничение доступа к файлу',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Хранимые файлы' AUTO_INCREMENT=32 ;

-- --------------------------------------------------------

--
-- Структура таблицы `program`
--

CREATE TABLE IF NOT EXISTS `program` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор',
  `id_faculty` int(11) NOT NULL COMMENT 'Ид факультета',
  `code` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Шифр',
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Направление',
  `level` tinyint(4) NOT NULL COMMENT 'Уровень (бакалавриат, etc)',
  `form` tinyint(4) DEFAULT NULL COMMENT 'Форма обучения (очное, etc)',
  `profile` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'профиль образования',
  `standard` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Стандарт, по кот ведется обучение',
  `comment` text COLLATE utf8_unicode_ci COMMENT 'прочая информация',
  PRIMARY KEY (`id`),
  KEY `id_faculty` (`id_faculty`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Образовательная программа' AUTO_INCREMENT=9 ;

--
-- Дамп данных таблицы `program`
--

INSERT INTO `program` (`id`, `id_faculty`, `code`, `name`, `level`, `form`, `profile`, `standard`, `comment`) VALUES
(8, 11, '03.03.02', 'Физика', 0, 0, 'Физика конденсированного состояния вещества', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `program_file`
--

CREATE TABLE IF NOT EXISTS `program_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор',
  `id_program` int(11) NOT NULL COMMENT 'Ид программы',
  `id_file` int(11) NOT NULL COMMENT 'Ид файла',
  PRIMARY KEY (`id`),
  KEY `id_program` (`id_program`),
  KEY `id_file` (`id_file`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Файлы образовательной программы (М:М)' AUTO_INCREMENT=13 ;

-- --------------------------------------------------------

--
-- Структура таблицы `program_header`
--

CREATE TABLE IF NOT EXISTS `program_header` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор',
  `id_program` int(11) NOT NULL COMMENT 'Ид программы',
  `field_shown` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Название показываемого поля',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_program_field_shown` (`id_program`,`field_shown`),
  KEY `id_program` (`id_program`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Поля в заголовке программы в списке, кроме обязательных code и name' AUTO_INCREMENT=6 ;

-- --------------------------------------------------------

--
-- Структура таблицы `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор',
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Фамилия имя отчество',
  `email` varchar(250) COLLATE utf8_unicode_ci NOT NULL COMMENT 'email',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Студент (физлицо)' AUTO_INCREMENT=24 ;

--
-- Дамп данных таблицы `student`
--

INSERT INTO `student` (`id`, `name`, `email`) VALUES
(6, 'Смирнова Алена Игоревна', 'utjuhfabz2010@yandex.ru'),
(11, 'Васильев Сергей Романович', 'ppp@mail.ru'),
(14, 'Михайлин Дмитрий Игоревич', 'dimamikhujlin93@mail.ru'),
(15, 'Цветков Александр Витальевич', 'czvetkov0094@mail.ru'),
(16, 'Гаврилов Антон Игоревич', 'gav940@yandex.ru'),
(18, 'Афонина Анна Андреевна', 'ppe@mail.ru'),
(19, 'Буртоян Сергей Рафаельевич', '67@maiil.ru'),
(20, 'Кокорин Александр Анатольевич', '82@maiil.ru'),
(21, 'Коренблюм Егор Анатольевич', 'ppy@mail.ru'),
(22, 'Цветков Александр Витальевич', 'ppt@mail.ru'),
(23, 'Цветков Александр Витальевич', 'aleksandr23031994@gmail.com');

-- --------------------------------------------------------

--
-- Структура таблицы `student_education`
--

CREATE TABLE IF NOT EXISTS `student_education` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор',
  `id_student` int(11) NOT NULL COMMENT 'Ид студента',
  `year` int(11) NOT NULL COMMENT 'Год обучения',
  `id_program` int(11) NOT NULL COMMENT 'Ид образовательной программы',
  `course` tinyint(4) NOT NULL DEFAULT '1' COMMENT 'Курс',
  `group` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Группа',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_student_year` (`id_student`,`year`),
  KEY `id_student` (`id_student`),
  KEY `id_program` (`id_program`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Годы обучения студента' AUTO_INCREMENT=32 ;

--
-- Дамп данных таблицы `student_education`
--

INSERT INTO `student_education` (`id`, `id_student`, `year`, `id_program`, `course`, `group`) VALUES
(11, 6, 2015, 8, 4, '0164-01'),
(12, 11, 2015, 8, 4, '0164-01'),
(13, 14, 2015, 8, 4, '0164-01'),
(14, 15, 2015, 8, 4, '0164-01'),
(15, 16, 2015, 8, 3, '0163-01'),
(16, 18, 2015, 8, 3, '0163-01'),
(17, 19, 2015, 8, 3, '0163-01'),
(18, 20, 2015, 8, 3, '0163-01'),
(19, 21, 2015, 8, 3, '0163-01'),
(20, 6, 2014, 8, 3, '0163-01'),
(25, 6, 2013, 8, 2, ''),
(26, 16, 2014, 8, 2, '0162-01'),
(29, 22, 2014, 8, 3, '0163-01'),
(30, 23, 2013, 8, 2, '0162-01'),
(31, 11, 2014, 8, 3, '0163-01');

-- --------------------------------------------------------

--
-- Структура таблицы `student_portfolio`
--

CREATE TABLE IF NOT EXISTS `student_portfolio` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Unique tree node identifier',
  `root` int(11) DEFAULT NULL COMMENT 'Tree root identifier',
  `lft` int(11) NOT NULL COMMENT 'Nested set left property',
  `rgt` int(11) NOT NULL COMMENT 'Nested set right property',
  `lvl` smallint(5) NOT NULL COMMENT 'Nested set level / depth',
  `name` varchar(60) COLLATE utf8_unicode_ci NOT NULL COMMENT 'The tree node name / label',
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'The icon to use for the node',
  `icon_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Icon Type: 1 = CSS Class, 2 = Raw Markup',
  `active` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Whether the node is active (will be set to false on deletion)',
  `selected` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Whether the node is selected/checked by default',
  `disabled` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Whether the node is enabled',
  `readonly` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Whether the node is read only (unlike disabled - will allow toolbar actions)',
  `visible` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Whether the node is visible',
  `collapsed` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Whether the node is collapsed by default',
  `movable_u` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Whether the node is movable one position up',
  `movable_d` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Whether the node is movable one position down',
  `movable_l` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Whether the node is movable to the left (from sibling to parent)',
  `movable_r` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Whether the node is movable to the right (from sibling to child)',
  `removable` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Whether the node is removable (any children below will be moved as siblings before deletion)',
  `removable_all` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Whether the node is removable along with descendants',
  `id_student` int(11) NOT NULL COMMENT 'Ид студента',
  `document` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filename` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tbl_tree_NK1` (`root`),
  KEY `tbl_tree_NK2` (`lft`),
  KEY `tbl_tree_NK3` (`rgt`),
  KEY `tbl_tree_NK4` (`lvl`),
  KEY `tbl_tree_NK5` (`active`),
  KEY `id_student` (`id_student`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Портфолио студента' AUTO_INCREMENT=146 ;

--
-- Дамп данных таблицы `student_portfolio`
--

INSERT INTO `student_portfolio` (`id`, `root`, `lft`, `rgt`, `lvl`, `name`, `icon`, `icon_type`, `active`, `selected`, `disabled`, `readonly`, `visible`, `collapsed`, `movable_u`, `movable_d`, `movable_l`, `movable_r`, `removable`, `removable_all`, `id_student`, `document`, `filename`) VALUES
(16, 16, 1, 8, 0, 'Общие сведения', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 6, NULL, NULL),
(17, 16, 2, 3, 1, 'автобиография', NULL, 1, 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 6, NULL, NULL),
(18, 18, 1, 42, 0, 'Учебная деятельность', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 6, NULL, NULL),
(19, 19, 1, 8, 0, 'Внеучебная деятельность', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 6, NULL, NULL),
(20, 20, 1, 18, 0, 'Итоговое резюме', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 6, NULL, NULL),
(21, 16, 4, 5, 1, 'сканкопия документа о среднем образовании', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 6, NULL, NULL),
(22, 16, 6, 7, 1, 'информация об обучении в ПсковГУ', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 6, NULL, NULL),
(23, 18, 2, 15, 1, 'курсовые работы', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 6, NULL, NULL),
(24, 18, 16, 21, 1, 'выпускная квалификационная работа', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 6, NULL, NULL),
(25, 18, 3, 8, 2, 'Наноструктуры', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 6, NULL, NULL),
(26, 18, 9, 14, 2, 'Физические свойства', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 6, NULL, NULL),
(27, 18, 4, 5, 3, 'текст', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 6, NULL, NULL),
(28, 18, 6, 7, 3, 'отзыв научного руководителя', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 6, NULL, NULL),
(29, 18, 10, 11, 3, 'текст', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 6, NULL, NULL),
(30, 18, 12, 13, 3, 'отзыв научного руководителя', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 6, NULL, NULL),
(31, 18, 17, 18, 2, 'текст', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 6, NULL, NULL),
(32, 18, 19, 20, 2, 'рецензия', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 6, NULL, NULL),
(33, 18, 22, 31, 1, 'Практики', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 6, NULL, NULL),
(34, 18, 23, 28, 2, 'Производственная практика', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 6, NULL, NULL),
(35, 18, 29, 30, 2, 'Производственная практика 2', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 6, NULL, NULL),
(36, 18, 24, 25, 3, 'отчет ', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 6, NULL, NULL),
(37, 18, 26, 27, 3, 'отзыв', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 6, NULL, NULL),
(38, 18, 32, 37, 1, 'Презентации', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 6, NULL, NULL),
(39, 18, 33, 34, 2, 'Атомная бомба', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 6, NULL, NULL),
(40, 18, 35, 36, 2, 'История развития физики', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 6, NULL, NULL),
(41, 20, 2, 15, 1, 'конференции', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 6, NULL, NULL),
(42, 20, 9, 14, 2, 'Студенческая научная конференция 2013 год', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 6, NULL, NULL),
(43, 20, 10, 11, 3, 'доклад', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 6, NULL, NULL),
(44, 20, 12, 13, 3, 'презентация Экспериментальное исследование электрических сво', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 6, NULL, NULL),
(45, 20, 3, 8, 2, 'Студенческая научная конференция 2015 год', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 6, NULL, NULL),
(46, 20, 4, 5, 3, 'доклад', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 6, NULL, NULL),
(47, 20, 6, 7, 3, 'презентация', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 6, NULL, NULL),
(48, 18, 38, 41, 1, 'Грамоты', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 6, NULL, NULL),
(49, 18, 39, 40, 2, 'Грамота за хорошую учебу', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 6, NULL, NULL),
(50, 19, 2, 3, 1, 'Олимпиады', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 6, NULL, NULL),
(51, 19, 4, 5, 1, 'участие в культурно-массовых мероприятиях', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 6, NULL, NULL),
(52, 19, 6, 7, 1, 'спортивные достижения', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 6, NULL, NULL),
(53, 53, 1, 4, 0, 'шаблон', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 6, NULL, NULL),
(54, 53, 2, 3, 1, 'доклад', NULL, 1, 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 6, NULL, NULL),
(55, 20, 16, 17, 1, 'ghhj', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 6, NULL, NULL),
(56, 56, 1, 12, 0, 'Общие сведения', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 15, NULL, NULL),
(57, 56, 2, 3, 1, 'Автобиография', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 15, NULL, NULL),
(58, 56, 4, 5, 1, 'Сканкопия документа о среднем образовании', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 15, NULL, NULL),
(59, 56, 8, 11, 1, 'Дополнительно', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 15, NULL, NULL),
(60, 56, 9, 10, 2, 'Сведения', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 15, NULL, NULL),
(61, 56, 6, 7, 1, 'Информация об обучении в ПсковГУ', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 15, NULL, NULL),
(62, 62, 1, 66, 0, 'Учебная деятельность', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 15, NULL, NULL),
(63, 62, 2, 13, 1, 'Курсовые работы', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 15, NULL, NULL),
(64, 62, 14, 17, 1, 'Выпускная квалификационная работа', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 15, NULL, NULL),
(65, 62, 18, 25, 1, 'Практики', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 15, NULL, NULL),
(66, 62, 26, 33, 1, 'Презентации', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 15, NULL, NULL),
(67, 62, 34, 53, 1, 'Грамоты', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 15, NULL, NULL),
(68, 68, 1, 8, 0, ' Внеучебная деятельность', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 15, NULL, NULL),
(69, 68, 2, 3, 1, ' Олимпиады', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 15, NULL, NULL),
(70, 68, 4, 5, 1, ' Участие в культурно-массовых мероприятиях', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 15, NULL, NULL),
(71, 68, 6, 7, 1, 'Спортивные достижения', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 15, NULL, NULL),
(72, 72, 1, 18, 0, 'Итоговое резюме', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 15, NULL, NULL),
(73, 72, 2, 13, 1, 'Конференции', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 15, NULL, NULL),
(74, 62, 54, 65, 1, 'Рефераты', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 15, NULL, NULL),
(75, 62, 55, 56, 2, 'Элементы акустики', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 15, 'Элементы акустики.docx', 'F2VcgEWAeyZTiln3wteGuOzjM3Tj8N20.docx'),
(76, 62, 57, 58, 2, 'Российские нобелевские лауреаты по физике', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 15, 'Российские нобелевские лауреаты по физике.docx', 'r1sP2r1KDT_i1jX1pPNp5nS-y_o0wUzS.docx'),
(77, 62, 59, 60, 2, 'Международные экологические организации', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 15, 'Международные экологические организации.docx', 'oqVPcUkGeIxLbygB45QYQ3z_Ei09vCFt.docx'),
(78, 62, 61, 62, 2, 'Гражданская оборона', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 15, 'Гражданская оборона.docx', 'nXJE5uaUh4pjPVMFn8sK2JnFVYbKgsxP.docx'),
(79, 62, 63, 64, 2, 'Терроризм', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 15, 'Терроризм.docx', 'Pi4vN19_ZaxusK5NvAA05cByshPLNiZK.docx'),
(80, 62, 19, 20, 2, 'Производственная практика 1', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 6, NULL, NULL),
(81, 62, 23, 24, 2, 'Производственная практика 1. Отзыв', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 15, NULL, NULL),
(82, 62, 21, 22, 2, 'Производственная практика 1. Отчет', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 15, 'Отчет 1.docx', 'sxEeUYi6hoYimLYIPoOUVptaHkGJoP9q.docx'),
(83, 62, 3, 8, 2, 'Курсовая работа 1', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 15, NULL, NULL),
(84, 62, 4, 5, 3, 'Инфракрасная спектроскопия цеолитов', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 15, 'Инфракрасная спектроскопия цеолитов.doc', '1-T0OEL7bQmgn7I-UWpoMUaLpvKZHNkA.doc'),
(85, 62, 6, 7, 3, 'Оценка руководителя', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 15, NULL, NULL),
(86, 62, 15, 16, 2, 'Диплом', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 15, NULL, NULL),
(87, 62, 27, 28, 2, 'Морфология', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 15, 'Морфология.ppt', 'XT20punQ_y9CTv3bpAauxT_5cC1Bynag.ppt'),
(88, 62, 29, 30, 2, 'Имя прилагательное', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 15, 'Имя прилагательное.pptx', 'VvRfiR4J7032Y0UkCfLbvARt5GtDXLe3.pptx'),
(89, 62, 31, 32, 2, 'Солнечные батареи', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 15, 'Солнечные батареи.pptx', 'QB-VZ2OVjVjlseCBO7rVQeXTpifHExPD.pptx'),
(90, 62, 40, 41, 3, 'За пожарную безопастность', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 15, 'За пожарную безопастность.jpg', 'jfOKY1q7c_fcZeauo2xV6Y63I0BvOnEg.jpg'),
(91, 72, 4, 5, 3, 'Изучение физических свойств  наноструктур', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 15, 'Изучение физических свойств  наноструктур.doc', 'Hu2K1C9lzapUaChlrEk_Oz0caxTNtpii.doc'),
(92, 62, 36, 37, 3, 'За успехи в естественных науках', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 15, 'За успехи в естественных науках.jpg', 'fmSSzm2p-EKzpB3iaJ_I60CpCOGATwSe.jpg'),
(93, 62, 38, 39, 3, 'За хорошую учебу', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 15, 'За хорошую учебу.jpg', 'zd6FlI12RW91JHrWTkckKj3ZoV4gfCP9.jpg'),
(94, 62, 35, 48, 2, 'Школа', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 15, NULL, NULL),
(95, 62, 42, 43, 3, 'За активное участие в жизни школы', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 15, 'За активное участие в жизни школы.jpg', 'BGHk4gCAEr6qiBPVpX6nOfbe_mNGJFZN.jpg'),
(96, 62, 44, 45, 3, 'История семьи', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 15, 'История семьи.jpg', 'eN5G2TQzRk2PxFvTyjl9-ARMQoZ8nICp.jpg'),
(97, 62, 46, 47, 3, 'Спорт', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 15, 'Спорт.jpg', 'bTTWOBYM194TJSr2eYl7jpPm77M-CjbX.jpg'),
(98, 62, 49, 52, 2, 'Университет', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 15, NULL, NULL),
(99, 62, 50, 51, 3, 'Рейтинг 1', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 15, NULL, NULL),
(100, 62, 9, 12, 2, 'Курсовая работа 2', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 15, NULL, NULL),
(101, 62, 10, 11, 3, 'Название', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 15, NULL, NULL),
(102, 72, 3, 12, 2, 'СНО', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 15, NULL, NULL),
(103, 72, 6, 7, 3, 'Электропроводность нанокомпозита NaNO2', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 15, 'Электропроводность нанокомпозита NaNO2.pptx', '940yT0wR6_4bZztdBp5kbooQesaX99DW.pptx'),
(104, 72, 8, 9, 3, 'Рыбалка_Цветков_СНО_2014', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 15, 'Рыбалка_Цветков_СНО_2014.doc', '2qsM4xW40eUJHiLO7HiK2STKAx9afbEw.doc'),
(105, 72, 10, 11, 3, 'Рыбалка_Цветков_СНО_2014', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 15, 'Рыбалка_Цветков_СНО_2014.pptx', '4QeDuwvZDuRO9D1UixZkU8TPaf-m-87e.pptx'),
(106, 72, 14, 17, 1, 'Статьи', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 15, NULL, NULL),
(107, 72, 15, 16, 2, 'Оптические и электрические свойства морденита', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 15, 'Оптические и электрические свойства морденита.doc', 'l7HD1fu7_dztXijvBngoY3pOfj6Vt1rE.doc'),
(108, 108, 1, 4, 0, 'Общие сведения', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 11, NULL, NULL),
(109, 108, 2, 3, 1, 'Обо мне', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 11, 'Васильев Сергей Романович.docx', 'x_DfIpj_UHc1YWY98QhmQtlP4VNQssCj.docx'),
(110, 110, 1, 20, 0, 'Учебная деятельность', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 11, NULL, NULL),
(111, 111, 1, 16, 0, 'Внеучебная деятельность', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 11, NULL, NULL),
(112, 112, 1, 4, 0, 'Итоговое резюме', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 11, NULL, NULL),
(113, 110, 2, 5, 1, 'Курсовые работы', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 11, NULL, NULL),
(114, 110, 3, 4, 2, 'пусто', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 11, NULL, NULL),
(115, 110, 6, 19, 1, 'Рефераты, статьи, доклады', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 11, NULL, NULL),
(116, 110, 7, 8, 2, 'Элементы акустики', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 11, 'Элементы акустики1.docx', 'H7amUWgy6h0pEkhcQC-ger-95E2MxdHe.docx'),
(117, 110, 9, 10, 2, 'Статья: "Массовые беспорядки"', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 11, 'Массовые беспорядки.doc', 'ljCl6-5RZh7niyTfVBiRBs2uHaMTvwK3.doc'),
(118, 110, 11, 12, 2, 'Доклад на тему: "Наркотики" БЖ', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 11, 'Наркотики - Доклад.doc', '3Jg-BT4gW7H_IO7hqQMXcZReUULeLa5S.doc'),
(119, 110, 13, 14, 2, 'Реферат на тему: "Сергий Радонежский"', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 11, 'Псковский Государственный Университет (История - Сергий Радонежский).doc', 'Msim4gt7IRbP8oc3nRYXnm5QLXBUJPsV.doc'),
(120, 110, 15, 16, 2, 'Учёные изобретатели', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 11, 'Uchenye_izobretateli.docx', 'hwJnmPQcPjYCG8KsNchjhLxeiFSu76cA.docx'),
(121, 110, 17, 18, 2, 'Радиация (не получилось загрузить сюда)', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 11, NULL, NULL),
(122, 111, 2, 3, 1, 'Участие в гонках (фото)', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 11, 'DSCN.JPG', 'AdPUPVoUIMA2XNbXfaOx65UBDTtgBMXF.JPG'),
(123, 111, 4, 5, 1, 'Студенческий бал (декабрь 2012)', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 11, 'DSCN00719.jpg', 'X4g_L-d20O7rvV8PkkNSiSEDLpkevauW.jpg'),
(124, 111, 6, 7, 1, 'Съемки в фильме "Батальон Смерти"', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 11, 'DSCN77195.jpg', 'C568p6b3xKGIrAqwK6jepyAlM3H2bZdI.jpg'),
(125, 111, 8, 9, 1, 'Студенческий бал (январь 2014)', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 11, 'DSCN81015.jpg', 'jZvELTOcoEeP7EjImRzxE2V68TF2H7pW.jpg'),
(126, 111, 10, 11, 1, 'Студенческий бал (май 2014)', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 11, 'DSCN84493.jpg', 'o0OtCgqcQCPk1kjd7xMxFKaKk4M0AmL2.jpg'),
(127, 111, 12, 13, 1, 'Студенческий бал (декабрь 2014)', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 11, 'IMG_0117(1).jpg', 'AZ5ocGoSVfKQHtAnQHWYrkOCvSxJr58b.jpg'),
(128, 111, 14, 15, 1, 'Поездка в Петергоф (закрытие фонтанов 2014)', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 11, '', ''),
(129, 112, 2, 3, 1, 'Резюме', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 11, NULL, NULL),
(130, 130, 1, 4, 0, 'Общие сведения', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 14, NULL, NULL),
(131, 131, 1, 4, 0, 'Общие сведения', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 21, NULL, NULL),
(132, 131, 2, 3, 1, 'Автобиография', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 21, NULL, NULL),
(133, 133, 1, 2, 0, 'Учебная деятельность', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 21, NULL, NULL),
(134, 134, 1, 4, 0, 'Общие Сведения', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 16, NULL, NULL),
(135, 135, 1, 2, 0, 'Учебная Деятельность', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 16, NULL, NULL),
(136, 136, 1, 2, 0, 'Внеучебная Деятельность', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 16, NULL, NULL),
(137, 137, 1, 2, 0, 'Итоговое Резюме', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 16, NULL, NULL),
(138, 134, 2, 3, 1, 'Общая Информация', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 16, NULL, NULL),
(139, 139, 1, 2, 0, 'ок', NULL, 1, 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 19, NULL, NULL),
(140, 140, 1, 2, 0, '', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 20, 'Новый документ.docx', 'wct9bBu4jaUr79uwLsDE3GSjybxThvFP.docx'),
(141, 141, 1, 2, 0, '', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 20, 'JIZmLjHqdIs.jpg', 'CTtX9y2Ag6JLaxRNr69eM-1m7p7jYr3R.jpg'),
(142, 142, 1, 2, 0, 'Учебная деятельность', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 14, NULL, NULL),
(143, 143, 1, 2, 0, 'Внеучебная деятельность', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 14, NULL, NULL),
(144, 144, 1, 2, 0, 'Итоговое резюме', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 14, NULL, NULL),
(145, 130, 2, 3, 1, '', NULL, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 14, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `student_result`
--

CREATE TABLE IF NOT EXISTS `student_result` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор',
  `id_student_education` int(11) NOT NULL COMMENT 'Ид студент - год обучения',
  `id_discipline_semester` int(11) NOT NULL COMMENT 'Ид дисциплина - семестр',
  `passing_date` date DEFAULT NULL COMMENT 'Дата сдачи',
  `examiner` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Экзаменатор',
  `rating` int(11) DEFAULT NULL COMMENT 'Рейтинг',
  `assesment` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Оценка',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_student_discipline` (`id_student_education`,`id_discipline_semester`),
  KEY `id_student_education` (`id_student_education`),
  KEY `id_discipline_semester` (`id_discipline_semester`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Результаты изучения дисциплины' AUTO_INCREMENT=15 ;

--
-- Дамп данных таблицы `student_result`
--

INSERT INTO `student_result` (`id`, `id_student_education`, `id_discipline_semester`, `passing_date`, `examiner`, `rating`, `assesment`) VALUES
(6, 25, 20, NULL, 'Сергеева Л.А.', 100, 'Отлично'),
(7, 25, 37, '2014-01-18', 'Иванова М.С.', 121, 'Отлично'),
(8, 25, 66, '2013-11-08', 'Трифонов С.В.', 92, 'Отлично'),
(9, 25, 85, NULL, '', 55, 'Зачтено'),
(10, 25, 43, NULL, 'Иванова М.С', 64, 'зачтено'),
(11, 25, 24, '2013-12-27', 'Сергеева Л.А.', 46, 'зачтено'),
(12, 25, 14, '2014-01-13', 'Крашенинникова Л.С.', 120, 'хорошо'),
(13, 25, 61, NULL, 'Мельникова Е.Г.', 55, 'зачтено'),
(14, 25, 30, NULL, 'Ванин А.И.', 65, 'отлично');

-- --------------------------------------------------------

--
-- Структура таблицы `student_result_file`
--

CREATE TABLE IF NOT EXISTS `student_result_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор',
  `id_student_result` int(11) NOT NULL COMMENT 'Ид студент - результат',
  `id_file` int(11) NOT NULL COMMENT 'Ид файла',
  PRIMARY KEY (`id`),
  KEY `id_student_result` (`id_student_result`),
  KEY `id_file` (`id_file`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Файлы результатов изучения дисциплины (М:М)' AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор',
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Логин',
  `email` varchar(250) COLLATE utf8_unicode_ci NOT NULL COMMENT 'email',
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT 'для подтверждения регистрации',
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'пароль',
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'для восстановления пароля',
  `id_faculty` int(11) DEFAULT NULL COMMENT 'Ид факультет',
  `id_student` int(11) DEFAULT NULL,
  `role` tinyint(4) NOT NULL COMMENT 'роль пользователя',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `id_faculty` (`id_faculty`),
  KEY `id_student` (`id_student`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Пользователи сайта' AUTO_INCREMENT=26 ;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `auth_key`, `password_hash`, `password_reset_token`, `id_faculty`, `id_student`, `role`) VALUES
(4, 'admin', 'vkabachenko@gmail.com', 'GP7UhuyVzoKUR67yKpNTHR7itImd5ZKR', '$2y$13$xphg2Dp7NRmyi7ImU3h7dORetqjiablj56zwpMDslfrIxzR8WNhfK', 'k7JaooIBu1o4Ff9a4kNiGATaMM8b_Acd_1441862736', NULL, NULL, 3),
(16, 'adminfmf', 'admin@test.com', '5listeVj770-U0X8C6Pvnd4Fd_WBHbrB', '$2y$13$9G6LFR.GxBSsHM9J2X6rM.FNa78YaP1FKkZhddCyI2MUnXaf1GvaK', 'W7PCfZ98aAK6A6TnRbi_nFeEmevwbqU4_1442833936', 11, NULL, 2),
(17, 'smirnova', 'utjuhfabz2010@yandex.ru', 'kIoQ2x_GULi12A74LSfLbD-1VTxz6_mq', '$2y$13$7wUJOpJ5VNmX12Lj2eA2PedjZDltDDsZXV1EluAgVxTDe6O08dine', 'gBZsvk7wQ5HrPiGfQqKrPUats_NLIxMd_1443033323', NULL, 6, 0),
(18, 'aleksandr23031994@gmail.com', 'aleksandr23031994@gmail.com', 'scBjdEMog25wWG3LbA8RANU98UJnFaU1', '$2y$13$bDDv6En8mVg5bywVna.3M.5k6zV0hy7sy.KcQsNMMlfuraxX8v/Fe', 'cOUMY3hoV2EacI-X-Gba9AXahoeoPULD_1443091854', NULL, 15, 0),
(19, 'dimamikhujlin93@mail.ru', 'dimamikhujlin93@mail.ru', 'n8v7a7hEX2_YzBEQuipn_BhkI0_Nf1Fn', '$2y$13$S31Fcxb9AEKelmasJd/lK.c0tkj.cj.2tWenQxtNGGVhr5qBqSJ3e', 'bBNKjWURJ-yvoXQ4-lfeE3ej3386zhl6_1443083265', NULL, 14, 0),
(20, 'zenitovic@gmail.com', 'zenitovic@gmail.com', 'SKFgaUQG8V6Pgudra62yZbUl-MhuW9jj', '$2y$13$TP8utoFw8hlSH.fJNt8Opual2W4oWvJnAIr4GR1mC2dZMWEhDeaoa', '6huDpX7Kl49wsaClT3yP4wHacp_wMVME_1443091891', NULL, 11, 0),
(21, 'funnygame95', 'insanemistake@yandex.ru', 'DIyfsLNv16SmaOVb0krcXb0YwS_NyJ_V', '$2y$13$kMwzWsH7xs8.SrtppSTljOZAGBIahbqZ.Yr5FOWqOEZa72Yq5F7P2', '3EEzO6eRZz4ScTArdRfBtF7tp7lWKtg4_1443613659', NULL, 21, 0),
(22, 'afonina', 'ppe@mail.ru', '0wK1YlYTLUZwVbXvlOjmEJB9PK4t3yFI', '$2y$13$HO93I57lnZfmHq8hfdVOMeRHOf3PbXlTb66BlL1L8BFTmgvQ0ZzDK', 'VrabYVY1K8KGa82atORlQ9nnmJlXesuQ_1443631667', NULL, 18, 0),
(23, 'kokorin', '82@maiil.ru', '98zlQ9LS4igCHPBrQERXFpo7HcKYppAg', '$2y$13$hme0AhKuxrUI.2QncSKM8.5T8WtJiY4ReuIea38mC2RyP2Z8IIUQe', 'dpARmmhdBD0-h5JZ073_eqMxg2TBTeT-_1443631946', NULL, 20, 0),
(24, 'gavrilov', 'gav940@yandex.ru', 'wvK-0rFvz39uiJOshSoX0KCP8plq6epK', '$2y$13$rflQVURlTxJOMVga09Aao.Y/IKWdLr5PtymgKGBPDNABrbmK1.FKS', 'ifnHOhgw7MM4FF2gtwtmvmzy-gqdMRiJ_1443632269', NULL, 16, 0),
(25, 'burtoyan', '67@maiil.ru', 'ZIsoGg_dmuLdfxwNaz07C2XZ2VEBQx34', '$2y$13$QbcTtTAofmRrRY.0IJENx.QIlPvH8r2.eoGBaWcD4O.ZSIDKju18i', 'oBHS1eV0f3CXjAgqf_B4YzY6V7d_EtHv_1443632753', NULL, 19, 0);

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `discipline`
--
ALTER TABLE `discipline`
  ADD CONSTRAINT `discipline_ibfk_2` FOREIGN KEY (`id_program`) REFERENCES `program` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `discipline_file`
--
ALTER TABLE `discipline_file`
  ADD CONSTRAINT `discipline_file_ibfk_5` FOREIGN KEY (`id_discipline_name`) REFERENCES `discipline_name` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `discipline_file_ibfk_3` FOREIGN KEY (`id_file`) REFERENCES `file` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `discipline_name`
--
ALTER TABLE `discipline_name`
  ADD CONSTRAINT `discipline_name_ibfk_5` FOREIGN KEY (`id_discipline`) REFERENCES `discipline` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `discipline_name_ibfk_4` FOREIGN KEY (`id_program_main`) REFERENCES `program` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `discipline_semester`
--
ALTER TABLE `discipline_semester`
  ADD CONSTRAINT `discipline_semester_ibfk_2` FOREIGN KEY (`id_discipline`) REFERENCES `discipline` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `program`
--
ALTER TABLE `program`
  ADD CONSTRAINT `program_ibfk_2` FOREIGN KEY (`id_faculty`) REFERENCES `faculty` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `program_file`
--
ALTER TABLE `program_file`
  ADD CONSTRAINT `program_file_ibfk_3` FOREIGN KEY (`id_program`) REFERENCES `program` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `program_file_ibfk_2` FOREIGN KEY (`id_file`) REFERENCES `file` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `program_header`
--
ALTER TABLE `program_header`
  ADD CONSTRAINT `program_header_ibfk_1` FOREIGN KEY (`id_program`) REFERENCES `program` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `student_education`
--
ALTER TABLE `student_education`
  ADD CONSTRAINT `student_education_ibfk_5` FOREIGN KEY (`id_program`) REFERENCES `program` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `student_education_ibfk_4` FOREIGN KEY (`id_student`) REFERENCES `student` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `student_portfolio`
--
ALTER TABLE `student_portfolio`
  ADD CONSTRAINT `student_portfolio_ibfk_1` FOREIGN KEY (`id_student`) REFERENCES `student` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `student_result`
--
ALTER TABLE `student_result`
  ADD CONSTRAINT `student_result_ibfk_5` FOREIGN KEY (`id_discipline_semester`) REFERENCES `discipline_semester` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `student_result_ibfk_4` FOREIGN KEY (`id_student_education`) REFERENCES `student_education` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `student_result_file`
--
ALTER TABLE `student_result_file`
  ADD CONSTRAINT `student_result_file_ibfk_3` FOREIGN KEY (`id_student_result`) REFERENCES `student_result` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `student_result_file_ibfk_2` FOREIGN KEY (`id_file`) REFERENCES `file` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_3` FOREIGN KEY (`id_faculty`) REFERENCES `faculty` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_ibfk_2` FOREIGN KEY (`id_student`) REFERENCES `student` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
