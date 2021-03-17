-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 17 2021 г., 15:45
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
(1, 'https://ireland.apollo.olxcdn.com:443/v1/files/bv1zzi6vaurn-UA/image;s=644x461', 'Продам DAEWOO/Lanos', '90 214 грн.', '2007', 'Бензин', '120 169 км', 'Машина у хорошому стані. Є зимові і літні майже нові шини. Чохли нові на сидіння. Обслуговування машини робилося, як для себе. Пробіг рідний, салон чистий доглянутий. Двигун працює рівно. Була у ДТП, професійний ремонт.', 'https://www.olx.ua/obyavlenie/prodam-daewoo-lanos-IDKVBVH.html#924372e4d1;promoted', '2021-03-11 17:56:00'),
(2, 'https://ireland.apollo.olxcdn.com:443/v1/files/qtav3r4jugcn3-UA/image;s=644x461', 'Продам Daewoo Sens 2015 року', '108 257 грн.', '2015', 'Бензин', '47 км', 'Продам Daewoo Sens в идеальном состоянии. Автомобиль не битый, не крашен, все в родной краске. Один владелец с автосалона. Обслуживался вовремя, вложений не требует. Состояние нового авто.', 'https://www.olx.ua/obyavlenie/prodam-daewoo-sens-2015-roku-IDKVsjA.html#924372e4d1;promoted', '2021-03-11 14:41:00'),
(3, 'https://ireland.apollo.olxcdn.com:443/v1/files/t0meowx8v7w01-UA/image;s=644x461', 'Продам автомобіль, стан нормальний, сів та поїхав', '57 500 грн.', '2006', 'Газ / бензин', '231 000 км', 'Продам або обміняю на авто, на ділянку або мото', 'https://www.olx.ua/obyavlenie/prodam-avtomobl-stan-normalniy-sv-ta-pohav-IDKV5N5.html#924372e4d1;promoted', '2021-03-10 21:55:00'),
(4, 'https://ireland.apollo.olxcdn.com:443/v1/files/gsjxg3u5vv432-UA/image;s=644x461', 'Продам Daewoo Lanos', '77 723 грн.', '1998', 'Газ / бензин', '244 355 км', 'Продам свой автомобиль . Чистый кореец . Машина в хорошем техническом состоянии работает хорошо как на бензине так и на газу сел и поехал. На фото видно что есть нюансы по кузову , не было времени ими заниматься , но они все решаемые. Салон не убитый всегда следил и убирал там. Торг приветствуется возле капота автомобиля. Больше информации по телефону.', 'https://www.olx.ua/obyavlenie/prodam-daewoo-lanos-IDKWCfz.html#924372e4d1;promoted', '2021-03-10 11:17:00'),
(5, 'https://ireland.apollo.olxcdn.com:443/v1/files/e3gj94q8c0bs1-UA/image;s=644x461', 'Продам Daewoo Sens СРОЧНО', '74 947 грн.', '2007', 'Газ / бензин', '25 000 км', 'Продам свою машину,владею год,по машине много чего сделал.2 ключа. Кап ремонт двигателя 25т.км. назад, новая зимняя резина и диски R14,музыка,центральный замок,газ 2го поколения,по мотору, ходовке, коробке,проводке вопросов нет,днище целое,пороги живые,по внешке видно на фото,КПП с опеля 5 ступка,салон живой,на сидениях чехлы,любой вид переоформления, торг у капота.', 'https://www.olx.ua/obyavlenie/prodam-daewoo-sens-srochno-IDKSZJW.html#924372e4d1;promoted', '2021-03-11 17:12:00'),
(6, 'https://ireland.apollo.olxcdn.com:443/v1/files/krqrz9ykovb23-UA/image;s=644x461', 'Продам Daewoo Lanos', '116 584 грн.', '2007', 'Газ / бензин', '125 000 км', 'Продаю Daewoo Lanos 2007р. У відмінному стані. Я 2 власник. Гаражне зберігання. Всі скла рідні, включно лобове, чистий поляк, комплектація SE, склопідйомники, кондиціонер, гідропідсилювач, нова піч, гума нова зимова гума, газ brc 4 покоління, фари бі  ксенон, технічно в ідеальному стані. запаска і домкрат в наявності. Не бита, не фарбована. Двигун в відмінному стані, працює без будь-яких нарікань, масло не їсть, сам пробіг говорить про себе. Коробка, і підвіска без питань в ідеальному стані. Свічки, проводи, глушник і акумулятор новий. Нічого в авто не стукає і не грюкает. Автомобіль ідеально підходить для сім\'ї, так і для роботи. Салон доглянутий, без затертостей. В машині нічого не потрібно робити. Сів і поїхав. Переоформлення через МРЕО. Готовий до будь-якої перевірки, будь-якому СТО. Продаж не терміновий. Перекупам прохання не дзвонить. Телефон 506 - Показать номер - Ольга.', 'https://www.olx.ua/obyavlenie/prodam-daewoo-lanos-IDKTEyo.html#924372e4d1;promoted', '2021-03-12 14:11:00'),
(7, 'https://ireland.apollo.olxcdn.com:443/v1/files/aoj9513bab681-UA/image;s=644x461', 'Daewoo lanos poland SE gas4 2008', '105 481 грн.', '2008', 'Газ / бензин', '182 000 км', 'Польский, отличный ланос в хорошей комплектации SE и газом 4-го поколения. Кондиционер (работает), гидроусилитель, стеклоподьемники, тонировка, центральный замок, сигнализация, мультилок на кпп. Два комплекта хорошей резины ( зима, лето) с дисками на 14. Машина не требует вложений . Кузов, ходовая, двигатель на отлично. Полная переригистрация обязательно. Торг символический и адекватный возле авто. В Харькове не бываю. Глупые предложения не пресылать. Если есть вопросы, звоните.', 'https://www.olx.ua/obyavlenie/daewoo-lanos-poland-se-gas4-2008-IDKX4FI.html#924372e4d1', '2021-03-12 13:57:00'),
(8, 'https://ireland.apollo.olxcdn.com:443/v1/files/8m6u5bx5ry152-UA/image;s=644x461', 'Продам автомобиль', '86 050 грн.', '2007', 'Газ / бензин', '270 000 км', 'Аккумулятор Турция 8 месяцев, резина зима, 2 лето новые, масло коробка моменяно 500 км, масло фильтр двигатель,2000', 'https://www.olx.ua/obyavlenie/prodam-avtomobil-IDKX4zI.html#924372e4d1', '2021-03-12 13:55:00'),
(9, 'https://ireland.apollo.olxcdn.com:443/v1/files/qx28wwmrwgaf1-UA/image;s=644x461', 'Дэу Нексия Daewoo', '72 171 грн.', '2007', 'Газ / бензин', '200 км', 'Освобожу место в гараже. Продаю свой автомобиль по причине покупки другого. Двигатель выносливый 8-ми клапанный, работает идеально. Машина вообще достаточно надёжная. Зимой заводится легко. Коробка механическая 5 ступеней. Днище не гнилое, т. к. хранилась всегда в хороших условиях. Никаких сварочных работ проводить не нужно. Новый аккумулятор. Титановые диски. Салон чистый. Задние стёкла затонированы. Минусы - надо заменить спидометр и чехлы на передних сидениях, а также кольца, т.к. при кап. ремонте двигателя (4 тыс. км назад) были поставлены дешовые кольца специально для обкатки. Пара зимних шин и запаска в подарок. Сигнализация Пантера - 2 брелка и 2 ключа. Газ вписан, с документами полный порядок. Переоформление любое. Лучше снятие с учёта. Перекупам лучше не беспокоить', 'https://www.olx.ua/obyavlenie/deu-neksiya-daewoo-IDIjmvQ.html#924372e4d1', '2021-03-12 13:51:00'),
(10, 'https://ireland.apollo.olxcdn.com:443/v1/files/n9j2yybb2u7a-UA/image;s=644x461', 'Daewoo sens', '41 637 грн.', '2005', 'Газ / бензин', '111 000 км', 'Продам машину в связи с тем что купил другую По телефону все вопросы !!! 681 - Показать номер - Подробнее расскажу почему такая цена !', 'https://www.olx.ua/obyavlenie/daewoo-sens-IDKVW2V.html#924372e4d1', '2021-03-12 13:47:00'),
(11, 'https://ireland.apollo.olxcdn.com:443/v1/files/tbjtrorcnjt53-UA/image;s=644x461', 'Део. Ланос. 2011г. 1.5л', '116 584 грн.', '2011', 'Бензин', '79 557 км', 'Продам Део Ланос 2011г. 1.5. Второй хазяин. Гаражное хранение. В техпаспорте газ вписан но так и не. установлен на авто. Машина полностью живая в очень харошем техническом и естетическом состоянии садись и едь. Новый акамулятор. Менялось сцепление с корзиной, комплект грм с помпой на 62тыс.км. Масло менялось каждые 7000 заливали Motul. Масло не ест.', 'https://www.olx.ua/obyavlenie/deo-lanos-2011g-1-5l-IDJ23Zi.html#924372e4d1', '2021-03-12 13:40:00'),
(12, 'https://ireland.apollo.olxcdn.com:443/v1/files/azc2zugiu4h72-UA/image;s=644x461', 'Део Нубира / Daewoo Nubira/ ОБМЕН!', '55 489 грн.', '2003', 'Газ / бензин', '238 000 км', 'Продам Нубиру в хорошем состоянии, машина обслужена, стоит газ 4-го поколения, кузов сохранился в достойном состоянии, машина своя не перепродаётся с документами порядок, страховка до конца месяца. Машина очень надёжная и неприхотливая отличный вариант для роботы ! Возможен обмен на авто с газом с моей доплатой !', 'https://www.olx.ua/obyavlenie/deo-nubira-daewoo-nubira-obmen-IDKhTEz.html#924372e4d1', '2021-03-12 13:40:00'),
(13, 'https://ireland.apollo.olxcdn.com:443/v1/files/5ld6lve9qg632-UA/image;s=644x461', 'Продам Сенс 1.3', '61 068 грн.', '2006', 'Газ / бензин', '110 000 км', 'Авто в хорошем состоянии. Каждый день в ходу. Стоит газ, но не вписан. Есть дефекты по кузову', 'https://www.olx.ua/obyavlenie/prodam-sens-1-3-IDKX28i.html#924372e4d1', '2021-03-12 13:39:00'),
(14, 'https://ireland.apollo.olxcdn.com:443/v1/files/rozdsx8mszzr1-UA/image;s=644x461', 'Продам део ланос 2007рік', '58 292 грн.', '2007', 'Газ / бензин', '110 000 км', 'Авто на полном ходу доручення від хазяїна. Звонить по номеру. 982 - Показать номер -', 'https://www.olx.ua/obyavlenie/prodam-deo-lanos-2007rk-IDKX3HE.html#924372e4d1', '2021-03-12 13:37:00'),
(15, 'https://ireland.apollo.olxcdn.com:443/v1/files/whztj9zetiyj2-UA/image;s=644x461', 'Daewoo Nexia 1.5 8V ГБО 4', '76 335 грн.', '2006', 'Газ / бензин', '330 000 км', 'Продам Daewoo Nexia, с простым и надёжным мотором 1.5, 8 кл. Машина работает хорошо как на газу так и на бензине. Машина не прихотлива к топливу, с минимальным расходом и дешёвая в обслуживании. Не дымит масло не ест, по ходовой всё в порядке, установлено ГБО , резина зимняя на отдельных дисках, документы в порядке. Базовая комплектация, более детально по телефону.', 'https://www.olx.ua/obyavlenie/daewoo-nexia-1-5-8v-gbo-4-IDKCBse.html#924372e4d1', '2021-03-12 13:26:00'),
(16, 'https://ireland.apollo.olxcdn.com:443/v1/files/x5be1p05x6w71-UA/image;s=644x461', 'Поляк Ланос 1.5 2008 г.', '113 809 грн.', '2008', 'Газ / бензин', '150 000 км', 'Поляк Ланос 1.5 2008 г. Гаражное хранение . Гидроусильтель . Сигнализация 2 ключа 2 брелка . Резина лето + зимния 14 . Без рыжеков. В такси Не была ! Пробег родной ! Машина супер ! Детали по телефону \"на СМС в чате OLX не отвечаю \"', 'https://www.olx.ua/obyavlenie/polyak-lanos-1-5-2008-g-IDKLDyS.html#924372e4d1;promoted', '2021-03-12 13:22:00'),
(17, 'https://ireland.apollo.olxcdn.com:443/v1/files/vt6rmelpn774-UA/image;s=644x461', 'Daewoo Lanos Poland 1.5 GAZ', '83 247 грн.', '2005', 'Газ / бензин', '186 км', 'Продам Daewoo Lanos Poland 1.5 GAZ Новая зимняя резина, кондиционер, стеклоподъёмники, гидроусилитель.', 'https://www.olx.ua/obyavlenie/daewoo-lanos-poland-1-5-gaz-IDKzzcE.html#924372e4d1;promoted', '2021-03-12 13:20:00'),
(18, 'https://ireland.apollo.olxcdn.com:443/v1/files/5song4tutjo42-UA/image;s=644x461', 'Daewoo Nubira 2 / Дэо Нубира 2', '97 154 грн.', '2003', 'Газ / бензин', '300 000 км', 'Для своих лет в отличном состоянии! Газ 4 вписан, есть кондиционер (нужно заправить), ГУР не гудит, масло не ест. Из недостатков- нужно уделить внимание порогам, но не критично. На это хорошо уступлю. Желательно переоформление, но могу и дать доверку. Торгуюсь до победного у капота! Всем хороших продаж и выгодных покупок)', 'https://www.olx.ua/obyavlenie/daewoo-nubira-2-deo-nubira-2-IDKTrPV.html#924372e4d1;promoted', '2021-03-12 13:15:00'),
(19, 'https://ireland.apollo.olxcdn.com:443/v1/files/31oiubt2462r2-UA/image;s=644x461', 'Daewoo Lanos 1.5 газ/бенз', '77 723 грн.', '2003', 'Газ / бензин', '300 000 км', 'Daewoo Lanos каждый день на ходу. Все работает. Нет гура и кондиционера Любой вид оформления.', 'https://www.olx.ua/obyavlenie/daewoo-lanos-1-5-gaz-benz-IDKVVPs.html#924372e4d1', '2021-03-12 13:14:00'),
(20, 'https://ireland.apollo.olxcdn.com:443/v1/files/tqub5vwhmbpi2-UA/image;s=644x461', 'Daewoo Sens 1.3 ТОРГ', '69 396 грн.', '2005', 'Газ / бензин', '164 852 км', 'Продам пушку ракету - бомбу конфету! Перед вами произведение украинских инженеров , Daewoo Sens 1.3! Сборка патриотическая. Автомобилем владею >1 года. За время эксплуатации лично были проведены следующие работы: 1. На 146 753 км был произведён капитальный ремонт двигателя; 2. Полностью передрана коробка и заменены все по шестеренки и тд; 3. Заменено два пыльника ; 4. Заменены тормозные колодки и бараны по кругу; 5. Заменены задние амортизаторы ; 6. Развал схождения сделан 150 км назад; 7. Замени масла каждые 8тысяч (отдам целую бутылку в подарок) 8. Обслужено ГБО полностью; 9. Замены все патрубок которые вообще могут течь; На борту автомобиля установлено ГБО 2го поколения. Расход порядка 9-10литров в городе , трасса около 7; Автомобиль для личного использования возит меня каждый день. Особого внимания не требует , четко проведённые ТО все минусы удаляют. Из минусов , после небольшого дтп по моей вине была заменена дверь. Стоимость покраски двери и крыла порядка 150$ , поэтому просьба не нужно писать в комментария несусветную скидку. В течении всего времени владения в автомобиль было вложено достаточное количество финансов. При конструктивном диалоге я со своей стороны гарантирую уступить цену. Причина продажи покупка заокеанского друга. Детали по телефону , все расскажу и покажу.', 'https://www.olx.ua/obyavlenie/daewoo-sens-1-3-torg-IDJhawa.html#924372e4d1', '2021-03-12 13:00:00'),
(21, 'https://ireland.apollo.olxcdn.com:443/v1/files/8ygd53ck4puu3-UA/image;s=644x461', 'Продам срочно Део сенс', '47 189 грн.', '2003', 'Газ / бензин', '200 км', 'Продам део сенс тёмно зелёного газ 2-го поколения в тех.паспорт вписан. КПП работает чётко Новый диск сцепления корзина выжимной. Новая кулиса. Резина зимняя 50 %. Чехлы на сидениях эко кожа чёрные. Кузов не ржавый. Продажа по тех.паспорту Тел. 962 - Показать номер -', 'https://www.olx.ua/obyavlenie/prodam-srochno-deo-sens-IDKBVPy.html#924372e4d1', '2021-03-12 12:59:00'),
(22, 'https://ireland.apollo.olxcdn.com:443/v1/files/w4biebjb2shj-UA/image;s=644x461', 'Продам автомобиль', '91 602 грн.', '2008', 'Газ / бензин', '160 000 км', 'Продам свій автомобіль робити нічого ненада сів та поіхав, багато чого замінено, зімня резина возможний торг біля капоту при огляді авто, тільки з переоформлением всі питання за телефоном 959 - Показать номер - на повідомлення відповідаю дуже рідко.', 'https://www.olx.ua/obyavlenie/prodam-avtomobil-IDKX1Ag.html#924372e4d1', '2021-03-12 12:55:00'),
(23, 'https://ireland.apollo.olxcdn.com:443/v1/files/5xlb3luqswo82-UA/image;s=644x461', 'ДЕО Ланос,Поляк 1,5 2007г.', '94 378 грн.', '2007', 'Газ / бензин', '177 000 км', 'Продам свой ДЕО Ланос,техническое состояние хорошее,визуально также, машина не требует на данный момент никаких финансовых вложений, два месяца назад установлен газ 4го поколения,работает отлично,салон чистый,аккуратный,новый аккумулятор, много чего поменяно,все запчасти дорогие,делал для себя,продажа в связи с отъездом. Единственный не большой минус,рыжики по порогам,но не критично. Разумный торг уместен.', 'https://www.olx.ua/obyavlenie/deo-lanos-polyak-1-5-2007g-IDKX1Bo.html#924372e4d1', '2021-03-12 12:54:00'),
(24, 'https://ireland.apollo.olxcdn.com:443/v1/files/yba8z12uaedg-UA/image;s=644x461', 'Продам Daewoo sens', '83 275 грн.', '2006', 'Газ / бензин', '250 000 км', 'Продам Daewoo sens в хорошем состояний.Один владелец.Все стекла родные.Стоит газ 2 поколения.Вписаный в тех паспорт.Мотор масло не берет.Коробка не хрустит и не выбивает.По ходовке все отлично.Музыка. Салон в отличном состоянии.С документами полный порядо.Любой вид переоформления.Торг у авто', 'https://www.olx.ua/obyavlenie/prodam-daewoo-sens-IDKX14j.html#924372e4d1;promoted', '2021-03-12 12:52:00'),
(25, 'https://ireland.apollo.olxcdn.com:443/v1/files/7x03obe6r09u2-UA/image;s=644x461', 'Продам или обменяю', '91 602 грн.', '2006', 'Газ / бензин', '250 000 км', 'Машина на полном ходу, заменины задние стойки каяба и пружины, передние суппорта, стартер, генератор, новый аккумулятор, сделана рулевая рейка, поменяны наконечники, вообщем в машине многое чего сделано. Машина на мне, Или обменяю с моей доплатой.', 'https://www.olx.ua/obyavlenie/prodam-ili-obmenyayu-IDKMwL7.html#924372e4d1;promoted', '2021-03-12 12:52:00');

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `announcement_id` bigint(20) UNSIGNED NOT NULL,
  `parent_comment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `comments` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_comment` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `announcement_id`, `parent_comment_id`, `user_id`, `comments`, `data_comment`) VALUES
(199, 1, NULL, 2, 'com1', '2021-03-17 12:28:13'),
(200, 1, NULL, 2, 'com2', '2021-03-17 12:28:18'),
(201, 1, NULL, 1, 'com3', '2021-03-17 12:28:43'),
(202, 1, NULL, 1, 'com4', '2021-03-17 12:28:48'),
(203, 1, 199, 1, '@Robert:  rep1', '2021-03-17 12:29:20'),
(204, 1, 201, 1, '@maria:  rep3', '2021-03-17 12:29:38'),
(205, 1, 202, 1, '@maria:  hello', '2021-03-17 12:31:23'),
(206, 1, 199, 1, '@Robert:  w', '2021-03-17 12:32:52'),
(207, 1, 201, 1, '@maria:  q', '2021-03-17 12:34:41'),
(208, 1, 199, 1, '@maria:  xxx', '2021-03-17 12:38:08'),
(209, 1, 199, 1, '@maria:   cc', '2021-03-17 12:39:12'),
(210, 1, 199, 1, '@maria:  ff', '2021-03-17 12:41:25'),
(211, 1, 201, 1, '@maria:  pop', '2021-03-17 12:42:39');

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
(4, '2021_03_01_082928_add_country_city_mobile_columns_to_users_table', 1),
(5, '2021_03_02_100532_add_profile_img_mobile_columns_to_users_table', 1),
(6, '2021_03_04_095006_add_passing_tokens_mobile_columns_to_users_table', 1),
(7, '2021_03_09_082957_create_announcements_table', 1),
(11, '2021_03_11_121959_create_comments_table', 2);

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
  `api_token` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `country`, `city`, `picture`, `api_token`) VALUES
(1, 'maria', 'masha.lytenko@gmail.com', NULL, '$2y$10$oGzyH/jKUNRctuNrRGnBZe7tyqD3seKqQ8GZebTjQkYOIOTMacpMC', NULL, '2021-03-12 10:18:27', '2021-03-12 10:18:27', 'Austria', 'Aichbach', '122.jpg', 'IaekuANooAxntWPK07AfePR3OFSGDeRI0m3AG9pCZSQFrD2UxyyK4vnBhlNm'),
(2, 'Robert', 'r@mail.com', NULL, '$2y$10$6OOT6QLGrBfkfOcCL64WaOtPAhQSsPCmwjjvKeyc72xsySoIjIeO.', NULL, '2021-03-16 07:56:26', '2021-03-16 07:56:26', 'Austria', 'Aigen im Muehlkreis', '2cloud.jpg', 'FkG8Jz0xq7xI8bvkx6CvPdR67HcbAmOEXIchlRrpmdIJdWi31RdUkhLdBZ9K');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_announcement_id_foreign` (`announcement_id`),
  ADD KEY `comments_parent_comment_id_foreign` (`parent_comment_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_announcement_id_foreign` FOREIGN KEY (`announcement_id`) REFERENCES `announcements` (`id`),
  ADD CONSTRAINT `comments_parent_comment_id_foreign` FOREIGN KEY (`parent_comment_id`) REFERENCES `comments` (`id`),
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
