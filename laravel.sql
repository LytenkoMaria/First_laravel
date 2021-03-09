-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 09 2021 г., 17:49
-- Версия сервера: 10.3.22-MariaDB
-- Версия PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `laravel`
--

-- --------------------------------------------------------

--
-- Структура таблицы `announcements`
--

CREATE TABLE `announcements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `images_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `advertisements_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_of_fuel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mileage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_announcement` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `announcements`
--

INSERT INTO `announcements` (`id`, `images_url`, `advertisements_name`, `price`, `year`, `type_of_fuel`, `mileage`, `description`, `link`, `date_announcement`) VALUES
(432, 'https://ireland.apollo.olxcdn.com:443/v1/files/80czbzuvykdv-UA/image;s=644x461', 'Daewoo Lanos поляк', '83 313 грн.', '2008', 'Газ / бензин', '218 000 км', 'Ланос польской сбоки, ГУР, в ДТП не учавствовал. На фото почему-то он весь рябой, в жизни он весть в одном цвете! Салон чистый, не прокурен. Днище, пороги(делались), лонжероны идеал. Гнили и ржавчины нет. ГБО 3, не вписано. Впереди зимняя резина(вторая зима) сзади новая всесезока. Свежее масло кастрол 10w-40, новый антифриз Hepu, новый декстрон в ГУРе, свежий ГРМ, свечи и т. д. ГУР не воет. Тонировка, фаркоп с проводкой, aux, usb. Мотор бодрый, масло не ест, сухой(не намытый). Пробег реальный. По кпп вопросов нет. Ходовка обслужена. Экономный авто, по городу расход газа 10л. Работает как на газу так и на бензине. С документами порядок, любой вид переоформления. Торг за наличные присутствует. Возможен обмен на авто дешевле и старше, желательно на газу. От авто не избавляюсь, продажа не спешная, просто нужны деньги.', 'https://www.olx.ua/obyavlenie/daewoo-lanos-polyak-IDKjB9v.html#924372e4d1', '2021-03-09 15:57:00'),
(433, 'https://ireland.apollo.olxcdn.com:443/v1/files/djnmu2ga4iy33-UA/image;s=644x461', 'Продам сенс газ 4 поколения', '58 874 грн.', '2007', 'Газ / бензин', '290 км', 'Продам део сенс ,установлен для удобства и економии газ 4 поколения, кап ремонт мотора 30 тыс назад, ходовая двигатель кпп в порядке, пороги целые ,есть рыжики по кузову, без дыр,новая резина 2 тыс пробега, Лед фары, документы в полном порядке, переоформление в мрео за ваш счёт. Торг мин. Звоните.', 'https://www.olx.ua/obyavlenie/prodam-sens-gaz-4-pokoleniya-IDKW5uL.html#924372e4d1', '2021-03-09 15:54:00'),
(468, 'https://ireland.apollo.olxcdn.com:443/v1/files/0i9p8j6p79m03-UA/image;s=644x461', 'продам ЛАНОС 2003', '88 867 грн.', '2003', 'Газ / бензин', '250 000 км', 'Продаю свой автомобиль! На полном ходу. Вложений не требует. Все работает без нареканий. Салон чистый, не прокуренный. Установлен надежный двигатель 1.5, гидроуселитель руля, газ(2). Переоборудование узаконено. Автомобиль используется каждый день. Не такси!!! Продаю по причине приобретения другого авто, по этому обязательно с перерегистрацией. Автомобилем будете довольны. Дополнительная информация по телефону. Незначительный торг у автомобиля.', 'https://www.olx.ua/obyavlenie/prodam-lanos-2003-IDKSYF2.html#924372e4d1;promoted', '2021-03-09 16:19:00'),
(469, 'https://ireland.apollo.olxcdn.com:443/v1/files/co9g6d6p15yi-UA/image;s=644x461', 'Продам Daewoo Lanos sx', '91 644 грн.', '2007', 'Газ / бензин', '275 км', 'продам авто в хорошем состоянии,польской сборки. много чего сделано. всё исправно работает. Ржавчины и гнили нет нигде. Двигатель и коробка работают на 5 ,вложений не требует , Машиной останетесь довольны. больше информации по телефону.', 'https://www.olx.ua/obyavlenie/prodam-daewoo-lanos-sx-IDIKJP1.html#924372e4d1', '2021-03-09 16:15:00'),
(470, 'https://ireland.apollo.olxcdn.com:443/v1/files/saemd3omcsz31-UA/image;s=644x461', 'Продам daewoo nexia', '69 427 грн.', '2008', 'Газ / бензин', '200 000 км', 'Продам машину на полнои ходу,газ 4е поколение, поварена,масло поменяно,есть страховка возможен обмен', 'https://www.olx.ua/obyavlenie/prodam-daewoo-nexia-IDJgmIN.html#924372e4d1', '2021-03-09 16:11:00'),
(471, 'https://ireland.apollo.olxcdn.com:443/v1/files/zpo0vn3itefo-UA/image;s=644x461', 'Автомобиль Дэу Матиз', '80 000 грн.', '2007', 'Бензин', '176 000 км', 'Автомобиль Дэу матиз. Ухоженная, гаражное хранение. В отличном состоянии. Торг уместен.Два ключа в комплекте. Реальному покупателю в подарок зимняя резина на дисках.', 'https://www.olx.ua/obyavlenie/avtomobil-deu-matiz-IDJu1lr.html#924372e4d1', '2021-03-09 16:09:00'),
(472, 'https://ireland.apollo.olxcdn.com:443/v1/files/0flbt41nsojn-UA/image;s=644x461', 'Продам Ланос на Автомате', '144 409 грн.', '2012', 'Бензин', '47 км', 'Продам Отличный автомобиль . Машина Очень надежная и не прихотливая . Двигатель на эту модель устанавливался с Опеля Астры GM , коробка установлена Японской компанией Aisin , поэтому получаем надежные узлы с дешевым обслуживанием в дальнейшем . Очень хорошая комплектация : Кондиционер , АБС , Электро-стеклоподъемники , Гидроуселитель руля , Подушка безопасности , электро подогрев водительского и пассажирского сиденья , Электро корректор фар . Дополнительно было установлено : Двух сторонняя сигнализация с обратной связью , Тонировка , Литые диски , дорогой задний парк-троник. У машины действительно Оригинальный пробег , готова к проверкам на любом СТО . более подробно расскажу по телефону.', 'https://www.olx.ua/obyavlenie/prodam-lanos-na-avtomate-IDKRHVk.html#924372e4d1;promoted', '2021-03-09 16:05:00'),
(473, 'https://ireland.apollo.olxcdn.com:443/v1/files/k4yo99wpzmla2-UA/image;s=644x461', 'Lanos 2008 года очень Срочно', '61 096 грн.', '2008', 'Газ / бензин', '194 000 км', 'Очень срочно продается Ланос. Авто в хорошем состоянии, с момента плкупки плановое обслуживание проходила вовремя. Стоит Газ ваисан, в тп. Зимняя резина новая, летняя в подарок. Только полное перееоформления. Смотреть Киев м. Осокорки. Низкая цена продиктована срочностю продажи, актуальна до выходных. Кому интересно - звоните. + 380 - Показать номер -', 'https://www.olx.ua/obyavlenie/lanos-2008-goda-ochen-srochno-IDKWaT5.html#924372e4d1', '2021-03-09 16:01:00'),
(474, 'https://ireland.apollo.olxcdn.com:443/v1/files/iddh6vfdzm5l1-UA/image;s=644x461', 'Daewoo lanos 1.5', '61 096 грн.', '1998', 'Газ / бензин', '247 000 км', 'В отличном состоянии, кроме дверей и порогов. Родной пробег. Авто на мне по техпаспорту.', 'https://www.olx.ua/obyavlenie/daewoo-lanos-1-5-IDKW92y.html#924372e4d1', '2021-03-09 16:28:00'),
(475, 'https://ireland.apollo.olxcdn.com:443/v1/files/b94q0v9a7ib7-UA/image;s=644x461', 'Daewoo Lanos', '97 198 грн.', '2006', 'Газ / бензин', '247 000 км', 'Отличная машина для повседневной езды! ГАЗ, ГУР Стеклоподъемники! Выглядит очень достойно, чистый не прокуренный салон! В машине все работает! Разумный торг возле машины!', 'https://www.olx.ua/obyavlenie/daewoo-lanos-IDKCbkE.html#924372e4d1', '2021-03-09 16:24:00'),
(476, 'https://ireland.apollo.olxcdn.com:443/v1/files/fid20ty1yk791-UA/image;s=644x461', 'Daewoo Nexia 1,5 газ/бензин', '54 153 грн.', '2008', 'Газ / бензин', '150 000 км', 'Daewoo Nexia 1.5 газ/бенз, поменял колодки, диски тормозные передние,тросик ручника, Троил газ заехал к газовщику настроил, поменял фильтр,клапан,резинки.едет хорошо на бензине и на газу) по двигателю все нормально. ПРОСЬБА перекупов и халявщиков не тревожить!!торг минимальный !!! документы в порядке машина переоформляеться! звоните договоримся)) возможно обмен ))для особенных за 1500$ не отдам проходите мимо !!!!', 'https://www.olx.ua/obyavlenie/daewoo-nexia-1-5-gaz-benzin-IDKxgpS.html#924372e4d1;promoted', '2021-03-09 16:24:00'),
(477, 'https://ireland.apollo.olxcdn.com:443/v1/files/hpbjauruha1u1-UA/image;s=644x461', 'Деу Ланос 2007.', '51 376 грн.', '2007', 'Газ / бензин', '200 000 км', 'На отличном ходу. Без дтп. Учёт постоянный. Газ евро 4. Макеевка.. +380714168345', 'https://www.olx.ua/obyavlenie/deu-lanos-2007-IDKWbW9.html#924372e4d1', '2021-03-09 16:24:00'),
(478, 'https://ireland.apollo.olxcdn.com:443/v1/files/zed1prteak402-UA/image;s=644x461', 'Ланос пикап', '65 262 грн.', '2010', 'Газ / бензин', '240 000 км', 'Ланос пикап переделан в пассажир. Сидения Ниссан, диски Ниссан, стойки газ-масло, серворуль. Другие вопросы по телефону.', 'https://www.olx.ua/obyavlenie/lanos-pikap-IDKCygG.html#924372e4d1', '2021-03-09 16:24:00'),
(479, 'https://ireland.apollo.olxcdn.com:443/v1/files/hs97z9fi2f3p2-UA/image;s=644x461', 'DAEWOO LANOS газ/бензин', '91 644 грн.', '2007', 'Газ / бензин', '162 000 км', 'Авто в хорошому технічному стані. Капіталовкладень не потребує. Встановлені протитуманні фари. Салон акуратний, не затертий не прокурений. Поміняні всі ремні, помпа, натяжний ролик. По ходовій все добре. Встановлено ГБО 4 покоління економна. Є сервісна книжка. Я другий власник авто. Авто використовувалось для сімї. Всі інші питання по телефону.', 'https://www.olx.ua/obyavlenie/daewoo-lanos-gaz-benzin-IDHOq3E.html#924372e4d1', '2021-03-09 16:23:00');

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_03_01_082928_add_country_city_mobile_columns_to_users_table', 2),
(5, '2021_03_02_100532_add_profile_img_mobile_columns_to_users_table', 3),
(6, '2021_03_04_091520_add_passing_tokens_mobile_columns_to_users_table', 4),
(7, '2021_03_04_093004_add_passing_token_mobile_columns_to_users_table', 5),
(9, '2021_03_04_095006_add_passing_tokens_mobile_columns_to_users_table', 6),
(10, '2021_03_09_082957_create_announcements_table', 7);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `country`, `city`, `picture`, `api_token`) VALUES
(1, 'w', 'workproject3006@gmail.com', NULL, '$2y$10$co9i0XxwBVufSVz4Nb/MquGfVjBa.bFlgAfvhzxGkHn3KXfMQRFnm', 'QThOlDYdoM1T5E2CgxydFFfFrESrFwDqwLFtglT9zFOJ5iVZdKsXfEXyudp7', '2021-02-24 10:36:30', '2021-03-05 08:33:11', 'Azerbaijan', 'Sumqayit', '', 'QLI8siirSLiCbYegV2XI6sabZTuWftsQazR9hIPHTkeAA9qjBYw1ZFgR6L71'),
(2, 'r', 'r@mail.com', NULL, '$2y$10$Ii3SzhG1xvYW6K.drIBbG.PqCOYPXBeTFjnDM.B/THKcP2KwWirZe', NULL, '2021-02-26 07:54:18', '2021-03-04 08:12:18', '', '', '', '0ET13k6OHJ8zYtcJiUHDjUyd9SNfGtRHMo7oTo1TND0cPUvSgMcUPQXb3C4X'),
(3, 'Drakу', 'd@mail.com', NULL, '$2y$10$01DmKgKGCMpU3VQzRpVIAeILAcZKypX/MIGOuQfNSy8y7YlDPfAWe', NULL, '2021-02-26 08:06:22', '2021-03-04 08:12:18', 'Austria', 'Absam', '322.jpg', 'WlPGOsHqAmyybbT8bDuVYSz7QiN2amJyAxIRv2GS6AdwqkDG0BoFFAcLATAc'),
(4, 'ggg', 'g@mail.com', NULL, '$2y$10$Y84rCQuOuIefjfNTsmkAw.WhJlGIwWToWg8gpwxDPE0V3bpHdL6EO', NULL, '2021-02-26 08:40:41', '2021-03-04 08:12:18', '', '', '', 'CgR8Pakui0H51hi7dswGHArKeRtuSsDkjGECs5vDwzo1OHNLnM4mbpo8WkJS'),
(5, 'ss', 's@gmail.com', NULL, '$2y$10$3F7LMegYCjqKuDUsBZKY8erprPeEnS6bpsZSYZwYd2QSdejMW45Gq', NULL, '2021-02-28 11:10:20', '2021-03-04 08:12:18', '', '', '', 'V2C7GL14YIjsfefhQjr90EHshRQp8xboV8ziOzA2iVAA7DEaCKBaUr96Mt1r'),
(6, 'r', 'rr@mail.com', NULL, '$2y$10$Qg38nFJoUkaoINeE/OuGwenx9o8fP/Mdj34jPa5bMtPKP5JURbB7W', NULL, '2021-03-01 10:40:40', '2021-03-04 08:12:18', 'Counrty', 'City', '', 'GLlEStkm8aC5IlzmEiysv0fXTX4Chb3ihCGztjzCW41hKgW7736yvgtxshyl'),
(7, 'x', 'x@mail.com', NULL, '$2y$10$8AZEVh19g5aVCMqdomZ/qu5DarCYDzxV4EUvlrhU5x2NtPFYYBVzi', NULL, '2021-03-01 10:43:30', '2021-03-04 08:12:18', 'Counrty', 'City', '', '7vCf4CZAZbO0VVaCFpoft1V6rNdfflcczh8IYjTcmL7y9ulCyUGCV9aRueFX'),
(8, 'w', 'rw@mail.com', NULL, '$2y$10$LlaSU/10HtO8Ls047sKtleu1AiWxjpvkU9IwIm.cVLfMD2O3/v/D.', NULL, '2021-03-01 11:02:58', '2021-03-04 08:12:18', 'Bahrain', 'Oil City', '', 'usxCzWzTnCeVASdDN3LVBaOc96qjyLAUXxVZuBVTy9Rek7IwenpWS2MSuMgi'),
(9, 'rr', 'rrrrrrr@mail.com', NULL, '$2y$10$4uaFabNfz41hgWF0gLzEa.CEJNDW.6zwbPc.iil8McId0HgKARRBS', NULL, '2021-03-01 11:07:18', '2021-03-04 08:12:18', 'Azerbaijan', 'Quba', '', '2UEB8wqwcPN2hDzTAeEtE0modyJqxtwX6JazWIoSwp8TScpLfasH2IMZEWqT'),
(10, 'Danu', 'ddd@mail.com', NULL, '$2y$10$u/XGkdNmwR8lRllrA3SSoexnJDu/SdSrUmfqSCmskO54dVzZa/j4q', NULL, '2021-03-01 11:29:06', '2021-03-04 08:12:18', 'Bangladesh', 'Tejgaon', '', 'gpTZaCXHKuQpBee48s7znKAE1vZJU3azgn0NUGgYVJ0DEr0xXDLzPOm4qyeH'),
(11, 'Amanda', 'a@mail.com', NULL, '$2y$10$PLuNg50EvIK08rae9gdG6.1eNIjzqrI/BDjZoEHmJzM.9pj0SB4tO', NULL, '2021-03-02 08:41:15', '2021-03-04 08:12:18', 'Austria', 'Aifersdorf', 'Standart.png', 'XtEuvJa8Ugf5YbFnDl6HZZ0zrBOSBrYoEK17zWoWYj0nSNuroQMDPrric9N2'),
(12, 'g', 'gg@mail.com', NULL, '$2y$10$Ui7uPYmOkzzW6T01QYJWNemN2TPTUQ0dJKOLZ/qzeEHQxnBc0X5sy', NULL, '2021-03-02 09:08:51', '2021-03-04 08:12:18', 'Australia', 'City', 'Standart.png', '07z5DUOQIRTivDv98pdOy5fm0wj9TJf2GGzPH5vA4FWXLiALMZxMwed8rMio'),
(13, 'ee', 'reer@mail.com', NULL, '$2y$10$2brFfcCNvIlmaLmZ95QVrOvpC0bz.OWa23WaK6KYlOPXEqazdTdXu', NULL, '2021-03-02 09:12:51', '2021-03-04 08:12:18', 'Azerbaijan', 'City', 'Standart.png', '1EfOi3PlRn0fKnk6gTQYTz1jBnwJTZmsDAQwNE0Pe2i3UAh7p3sFjrio9CVL'),
(14, 'x', 'qlx@gmail.com', NULL, '$2y$10$kLrxqhtDhY9mg3Rki6XY5.rlBERTvjpkVRZuVHvQsOd6Bi4W37MGm', NULL, '2021-03-02 09:14:12', '2021-03-04 08:12:18', 'Country', 'City', 'Standart.png', '1KSwG0INPNaqGuIuabY05i95Ue6rtz8pJ0zTJYKMpohA6QjZm29ILBWO365w'),
(15, 'maria', 'masha.lytenko@gmail.com', NULL, '$2y$10$26a08UkAhoV41IKQjX8TeunFw2KU.bw4ovO6leEb3Kyce4XJkBKhC', 'RxkX3PdoJX2NL8iWRDShfTg2XvKCGKgp2rHqLR8DJcS6ZKvo4wD4xf7dEZwW', '2021-03-03 08:00:04', '2021-03-05 08:36:05', 'Aruba', 'Sero Blanco', '1522.jpg', 'VxURkx3Abe5DnmrbzGTGnjJw1PMbEHVxfaPN2x8oyxXXvAmsBTUf6W4iI9D5'),
(16, 'w', 'rdsada@mail.com', NULL, '$2y$10$I4.isYtzsL20hQwUVUEdoOBD4Ug2laQ6t/M6sU..lpUKBeI8iqlPK', NULL, '2021-03-04 09:36:49', '2021-03-04 09:36:49', 'Aruba', 'San Barbola', 'Standart.png', 'DLDvemDpiwrJIfYcKBA2QUAwI0AjMS011VJi62ahXkWhIcsEpUWSaBtkYhaP'),
(17, 'n', 'n@gmail.com', NULL, '$2y$10$gGTYc4XimIt5sqH2t3SOpOWpDHmsT6R2QgEUIwgwCsSJ0JvKzYudW', NULL, '2021-03-05 10:53:09', '2021-03-05 10:53:09', 'Argentina', 'Aldo Bonzi', '17cloud.jpg', 'ddFMg9TVM0LU7PHiVgYw4JjvcLWXGdR3ki1VqjicHTu45o326zshBvT1noMh');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=480;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
