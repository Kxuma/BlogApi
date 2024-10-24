-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Okt 24. 08:12
-- Kiszolgáló verziója: 10.4.28-MariaDB
-- PHP verzió: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `blog`
--
CREATE DATABASE IF NOT EXISTS `blog` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `blog`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `data`
--

CREATE TABLE `data` (
  `Id` varchar(36) NOT NULL,
  `Title` varchar(30) NOT NULL,
  `Description` varchar(50) NOT NULL,
  `CreatedTime` datetime NOT NULL,
  `LastUpdated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `data`
--

INSERT INTO `data` (`Id`, `Title`, `Description`, `CreatedTime`, `LastUpdated`) VALUES
('00144447-c98f-4e38-8a10-717578752a28', 'luctus et ultrices posuere cub', 'pellentesque eget nunc donec quis orci eget orci v', '2024-03-29 19:08:49', '2024-04-06 01:07:45'),
('03745b84-cbc8-46b1-b434-2c22fa2b868c', 'quam sapien varius ut blandit ', 'non lectus aliquam sit amet diam in magna bibendum', '2024-01-06 11:55:33', '2024-09-06 11:39:56'),
('04864533-d347-4233-a54a-3e52702a551d', 'maecenas rhoncus aliquam lacus', 'consequat dui nec nisi volutpat eleifend donec ut ', '2024-06-19 23:08:41', '2024-01-04 21:18:44'),
('051fe90c-56aa-4684-9d47-c7c1ab20649d', 'sem sed sagittis nam congue ri', 'tortor duis mattis egestas metus aenean fermentum ', '2024-02-19 03:59:10', '2024-08-26 06:48:31'),
('0b37fcde-6999-4470-bbb1-b271ab665a70', 'ut nunc vestibulum ante ipsum ', 'parturient montes nascetur ridiculus mus etiam vel', '2024-06-17 15:24:58', '2024-04-19 02:39:31'),
('0df0440d-d183-4d0b-94ae-8248eb15c688', 'viverra diam vitae quam suspen', 'nulla tempus vivamus in felis eu sapien cursus ves', '2023-11-30 02:47:28', '2023-10-28 19:57:56'),
('160ce18d-2c7b-4589-bc9e-ff5d189e8036', 'et eros vestibulum ac est laci', 'orci luctus et ultrices posuere cubilia curae done', '2024-04-16 11:53:43', '2024-10-09 01:50:42'),
('1891b7e9-e1df-4362-92b3-33b4e99b5caf', 'turpis sed ante vivamus tortor', 'fusce consequat nulla nisl nunc nisl duis bibendum', '2023-12-18 09:59:57', '2023-11-29 20:25:51'),
('1a1001fa-33ac-4b69-8f29-82b0520c8c07', 'massa quis augue luctus tincid', 'augue quam sollicitudin vitae consectetuer eget ru', '2023-12-30 08:56:37', '2024-10-09 13:04:07'),
('1dacfcc9-2a78-459a-91ad-095a495937fc', 'id mauris vulputate elementum ', 'faucibus orci luctus et ultrices posuere cubilia c', '2024-07-29 20:45:20', '2023-12-23 10:51:04'),
('1e921e6d-d256-44a0-b782-9931b0207204', 'curae mauris viverra diam vita', 'felis sed lacus morbi sem mauris laoreet ut rhoncu', '2023-11-03 09:42:51', '2024-01-03 08:11:59'),
('1f66a3b6-126f-4ba4-87d4-19a112229450', 'morbi quis tortor id nulla ult', 'augue vestibulum rutrum rutrum neque aenean auctor', '2023-11-28 21:44:16', '2024-05-11 15:08:38'),
('26192925-28a1-46e8-9625-2dc7380c95b2', 'ac enim in tempor turpis nec e', 'quisque porta volutpat erat quisque erat eros vive', '2024-07-30 14:01:02', '2024-07-22 10:06:52'),
('2e13de41-56cf-45dd-9f09-981358730dba', 'arcu libero rutrum ac lobortis', 'facilisi cras non velit nec nisi vulputate nonummy', '2024-08-27 15:28:50', '2023-12-08 20:54:39'),
('2e2c68b8-21b3-45ab-9b61-d5f02752cf13', 'quisque porta volutpat erat qu', 'amet erat nulla tempus vivamus in felis eu sapien ', '2024-02-02 02:41:30', '2024-08-06 09:38:13'),
('2e416727-a388-44af-a78c-d7a7fca814a9', 'nam ultrices libero non mattis', 'in quam fringilla rhoncus mauris enim leo rhoncus ', '2024-10-19 20:47:00', '2024-03-02 08:32:51'),
('30191052-568e-4f09-97ab-633d7f1bb96f', 'suspendisse potenti nullam por', 'donec diam neque vestibulum eget vulputate ut ultr', '2024-01-21 15:48:09', '2024-01-29 07:14:29'),
('30f6c169-97ad-4582-a8a2-c1cb90272176', 'blandit nam nulla integer pede', 'cubilia curae duis faucibus accumsan odio curabitu', '2024-08-12 02:42:28', '2024-10-22 00:23:17'),
('32f69e22-3b97-4fb4-916e-f1f9faf5b950', 'odio donec vitae nisi nam ultr', 'diam in magna bibendum imperdiet nullam orci pede ', '2024-04-19 15:12:57', '2024-08-22 00:41:59'),
('352881a1-6c96-4ce7-b842-aeda74859a43', 'consequat morbi a ipsum intege', 'volutpat eleifend donec ut dolor morbi vel lectus ', '2023-11-04 16:55:29', '2024-03-11 01:29:17'),
('36f30e05-8959-41af-9924-e17a0a82cb13', 'nulla tempus vivamus in felis ', 'quis odio consequat varius integer ac leo pellente', '2024-03-06 18:31:09', '2024-09-11 07:37:42'),
('37e34743-015a-47f7-8cf6-be08485eb85e', 'libero quis orci nullam molest', 'varius ut blandit non interdum in ante vestibulum ', '2024-10-20 06:59:57', '2024-07-24 11:58:15'),
('38943401-eedd-46c1-9f01-eb1af17fb08e', 'enim sit amet nunc viverra', 'duis mattis egestas metus aenean fermentum donec u', '2024-07-19 03:38:10', '2024-09-20 14:54:35'),
('3939a493-ce5f-4d4b-95bd-2099ed24c6d5', 'imperdiet nullam orci pede ven', 'erat volutpat in congue etiam justo etiam pretium ', '2024-08-07 14:55:02', '2024-08-03 23:14:01'),
('3d020bb7-dbc7-4860-8ffd-131e14ac1f6b', 'aenean sit amet justo morbi ut', 'tortor duis mattis egestas metus aenean fermentum ', '2024-01-28 10:22:06', '2024-01-22 12:05:23'),
('3d6d30c4-0869-4e85-b634-1449607fe31a', 'eget elit sodales scelerisque ', 'non mauris morbi non lectus aliquam sit amet diam ', '2023-11-30 22:52:35', '2024-09-12 18:51:55'),
('41990685-b385-43aa-a9d9-af150e6a8bc3', 'lacus morbi quis tortor id nul', 'id sapien in sapien iaculis congue vivamus metus a', '2024-07-28 02:59:46', '2024-04-25 10:22:15'),
('419aa9e3-b9c9-47b3-ad7b-b39e44f58d23', 'lacus morbi quis tortor id nul', 'rhoncus dui vel sem sed sagittis nam congue risus ', '2024-07-18 02:22:15', '2024-02-20 22:43:36'),
('45004e9d-9dd3-4627-83e4-e7af1881d956', 'molestie hendrerit at vulputat', 'posuere cubilia curae mauris viverra diam vitae qu', '2024-06-16 13:12:58', '2023-12-24 19:55:42'),
('474ddaeb-6f3c-4412-b84c-6ad274f4c8e5', 'amet sem fusce consequat nulla', 'duis faucibus accumsan odio curabitur convallis du', '2024-08-17 08:25:59', '2024-07-23 16:27:35'),
('50f228e9-3c2d-4fe9-a5c5-9cca1efe2c26', 'ut volutpat sapien arcu sed au', 'vivamus vel nulla eget eros elementum pellentesque', '2024-08-09 22:49:54', '2024-07-16 10:22:25'),
('524911f4-730b-4343-a968-76c830d9e20a', 'lacus morbi sem mauris laoreet', 'neque vestibulum eget vulputate ut ultrices vel au', '2024-05-23 05:25:54', '2024-06-30 12:03:02'),
('55f0a118-c506-45d2-8534-7dc28a27fc07', 'auctor gravida sem praesent id', 'potenti nullam porttitor lacus at turpis donec pos', '2023-10-28 15:31:15', '2024-04-07 11:12:48'),
('56704cb7-898d-49bd-b808-fcdafe1014e5', 'eu interdum eu tincidunt in le', 'praesent lectus vestibulum quam sapien varius ut b', '2024-07-03 22:09:49', '2023-12-14 04:11:31'),
('5a0b4061-2d1b-46e5-a3c2-40110681e5b7', 'bibendum morbi non quam nec', 'volutpat quam pede lobortis ligula sit amet eleife', '2024-01-19 05:42:58', '2024-01-06 16:05:51'),
('5a60b589-a5b9-46e0-958a-87061889d4bd', 'duis ac nibh fusce lacus purus', 'congue diam id ornare imperdiet sapien urna pretiu', '2023-11-22 18:56:37', '2024-02-17 02:25:19'),
('5ec94076-a30e-40d3-a029-fb0a79d9d097', 'erat fermentum justo nec condi', 'eros vestibulum ac est lacinia nisi venenatis tris', '2024-01-01 08:07:41', '2024-07-10 00:56:25'),
('5fdda85d-6b03-4a69-860c-dd77e06a88d2', 'velit vivamus vel nulla eget e', 'rhoncus dui vel sem sed sagittis nam congue risus ', '2024-10-22 12:46:21', '2024-04-27 12:33:58'),
('601e8a8d-03c2-47b8-be42-f5720b06ca74', 'proin eu mi nulla ac enim in t', 'lectus suspendisse potenti in eleifend quam a odio', '2024-03-14 06:40:41', '2023-11-10 22:50:16'),
('6203fa19-97da-4a90-b4ce-da49c23b2b13', 'ut nunc vestibulum ante ipsum ', 'ipsum primis in faucibus orci luctus et ultrices p', '2024-01-11 23:57:48', '2024-08-15 15:26:29'),
('62e0d47a-9b54-4e13-b9da-67a5c92f9923', 'eget nunc donec quis orci eget', 'nisi volutpat eleifend donec ut dolor morbi vel le', '2024-09-06 04:52:48', '2024-05-06 16:07:46'),
('6353dea1-1cbe-47b3-a8fc-cadfd724b212', 'in consequat ut nulla sed accu', 'curae mauris viverra diam vitae quam suspendisse p', '2024-05-14 08:44:36', '2024-01-17 11:11:25'),
('6406bced-f63f-4dd3-b9ca-27fc3fc56f91', 'rhoncus dui vel sem sed sagitt', 'volutpat sapien arcu sed augue aliquam erat volutp', '2024-06-01 19:06:36', '2024-06-20 17:12:45'),
('65c4740b-7a37-4477-911f-5f8dc5338949', 'ornare consequat lectus in est', 'id ornare imperdiet sapien urna pretium nisl ut vo', '2024-05-30 02:20:55', '2024-10-08 13:17:05'),
('665e92a9-32ef-481e-976f-cc7fcc0d3277', 'tincidunt ante vel ipsum praes', 'sollicitudin vitae consectetuer eget rutrum at lor', '2023-12-05 21:04:22', '2024-02-10 09:51:38'),
('68af6868-4c14-40d0-b569-d982ece11426', 'eget tincidunt eget tempus vel', 'in faucibus orci luctus et ultrices posuere cubili', '2024-01-13 17:17:33', '2024-06-15 21:15:59'),
('695b3d98-640b-4351-a78c-6a3f201473f0', 'ut nulla sed accumsan felis ut', 'elementum in hac habitasse platea dictumst morbi v', '2024-01-29 02:26:34', '2024-04-20 14:06:48'),
('69c1e95e-3acd-41aa-8a9a-810546687de0', 'sapien sapien non mi integer a', 'aenean fermentum donec ut mauris eget massa tempor', '2023-11-21 20:10:58', '2023-12-26 01:12:40'),
('720a37be-6fd8-40c5-bcef-f03a18ec0e1e', 'nunc proin at turpis a', 'primis in faucibus orci luctus et ultrices posuere', '2023-11-16 14:38:38', '2024-01-03 23:22:40'),
('72dcdc14-44d1-4fae-8971-4e621127b097', 'nibh fusce lacus purus aliquet', 'bibendum felis sed interdum venenatis turpis enim ', '2024-05-03 06:44:21', '2024-07-11 09:25:49'),
('75b6b2fc-5643-4dca-9980-abd42e85f161', 'lobortis convallis tortor risu', 'nullam porttitor lacus at turpis donec posuere met', '2024-01-22 17:17:27', '2024-04-06 00:47:58'),
('75e26357-f3a8-4533-8b5a-044878810cda', 'ac tellus semper interdum maur', 'viverra eget congue eget semper rutrum nulla nunc ', '2023-11-09 16:06:07', '2024-09-03 10:42:40'),
('760a9263-51bb-4153-9dc3-fa1e736ee92f', 'sed lacus morbi sem mauris lao', 'sit amet turpis elementum ligula vehicula consequa', '2024-09-08 14:50:47', '2023-11-11 01:03:36'),
('76fd6685-c61d-4de4-ae70-2bb12bd6ec60', 'vel sem sed sagittis nam congu', 'dui maecenas tristique est et tempus semper est qu', '2024-03-05 14:13:04', '2024-07-23 16:31:11'),
('79a837ae-1d75-49e0-a1f6-df680374cc36', 'adipiscing elit proin interdum', 'orci eget orci vehicula condimentum curabitur in l', '2023-12-23 04:45:10', '2023-11-15 05:11:54'),
('7b083a5a-e651-43bf-87fd-9fe349b66714', 'libero ut massa volutpat conva', 'justo maecenas rhoncus aliquam lacus morbi quis to', '2024-01-07 04:13:57', '2024-04-09 11:55:43'),
('7e24c44b-9314-438f-b560-5a3938ea758c', 'ultrices libero non mattis pul', 'sed sagittis nam congue risus semper porta volutpa', '2024-08-31 09:00:43', '2023-11-25 10:14:42'),
('7e2b9291-b06b-45d9-8ca4-8f0d33f136b7', 'amet diam in magna bibendum im', 'turpis enim blandit mi in porttitor pede justo eu ', '2024-02-26 05:40:28', '2024-03-23 20:33:40'),
('7ec6e691-ac74-48c2-b00b-fba04f20c82c', 'tincidunt ante vel ipsum praes', 'in felis eu sapien cursus vestibulum proin eu mi n', '2024-07-23 23:58:05', '2024-03-10 08:54:57'),
('7ed1b459-5e7e-4d1a-9e32-0e223d98fbd4', 'aenean fermentum donec ut maur', 'nascetur ridiculus mus etiam vel augue vestibulum ', '2024-03-26 15:26:08', '2024-05-02 22:39:13'),
('8142f997-8408-444d-86ed-f2691fc81e93', 'pretium iaculis diam erat ferm', 'aliquam quis turpis eget elit sodales scelerisque ', '2024-03-27 02:54:48', '2024-03-06 19:48:01'),
('85300c2a-217e-4662-a509-b7fb672cf432', 'vestibulum proin eu mi nulla a', 'nulla suspendisse potenti cras in purus eu magna v', '2024-02-07 02:04:11', '2024-08-23 05:09:56'),
('86215a15-e8de-41e3-beb7-fb7bb3be9c56', 'amet consectetuer adipiscing e', 'nam nulla integer pede justo lacinia eget tincidun', '2024-08-01 17:23:39', '2024-06-19 12:21:35'),
('87b58e6c-abcd-44fd-a999-2c977111ce87', 'interdum in ante vestibulum an', 'cubilia curae nulla dapibus dolor vel est donec od', '2024-04-02 09:57:40', '2023-12-07 07:12:35'),
('8bbdf948-76be-4419-be1c-4a26c47de246', 'eleifend donec ut dolor morbi', 'vestibulum rutrum rutrum neque aenean auctor gravi', '2024-07-13 01:05:56', '2024-01-09 20:55:31'),
('98188dad-7278-41b0-93e3-37ef1cd0d712', 'adipiscing elit proin interdum', 'ridiculus mus etiam vel augue vestibulum rutrum ru', '2024-05-31 18:46:43', '2024-05-01 10:15:12'),
('990566cc-9ada-48b1-90eb-f041cea63b5e', 'pede morbi porttitor lorem id ', 'sagittis dui vel nisl duis ac nibh fusce lacus pur', '2024-02-29 08:11:03', '2023-10-29 08:10:40'),
('a00b19f0-0082-44fd-a5f6-2c4ee931a6b2', 'iaculis justo in hac habitasse', 'rhoncus sed vestibulum sit amet cursus id turpis i', '2024-06-20 21:43:07', '2024-06-09 20:32:26'),
('a379d1f3-57e8-42cb-91fc-71cc0481b4be', 'justo eu massa donec dapibus d', 'urna pretium nisl ut volutpat sapien arcu sed augu', '2023-12-10 03:59:29', '2023-11-06 19:59:32'),
('a5d2fab6-6321-48c8-96c0-c86e0193b9c4', 'faucibus orci luctus et ultric', 'scelerisque mauris sit amet eros suspendisse accum', '2024-05-25 03:00:31', '2024-04-12 07:08:44'),
('a5e86c91-136d-4b4a-a172-dd0101607eb7', 'potenti in eleifend quam a odi', 'potenti in eleifend quam a odio in hac habitasse p', '2024-04-01 07:28:25', '2024-07-27 15:19:10'),
('a6315562-8b8d-41bf-be17-b36c7390b42d', 'erat eros viverra eget congue ', 'viverra eget congue eget semper rutrum nulla nunc ', '2024-08-01 16:59:57', '2024-07-30 05:20:12'),
('a722df67-c962-45d7-af3b-368201322137', 'metus sapien ut nunc vestibulu', 'elit proin interdum mauris non ligula pellentesque', '2024-02-26 15:05:20', '2024-04-30 05:37:42'),
('a8f050dd-8f72-40f1-83f6-1726dad571c6', 'nullam orci pede venenatis non', 'vestibulum proin eu mi nulla ac enim in tempor tur', '2024-02-23 16:37:21', '2024-02-27 10:19:35'),
('aa131d10-52ae-4c32-98d8-1ae70354ba88', 'amet nunc viverra dapibus null', 'aenean auctor gravida sem praesent id massa id nis', '2024-01-28 22:15:25', '2024-07-22 23:22:39'),
('aedbee75-6425-4eb0-9d4a-21cd35988ac8', 'venenatis non sodales sed tinc', 'odio in hac habitasse platea dictumst maecenas ut ', '2024-05-10 22:29:32', '2024-10-14 13:36:36'),
('b05de485-0bd7-43ce-95e9-edda9c2a664d', 'turpis adipiscing lorem vitae ', 'turpis a pede posuere nonummy integer non velit do', '2023-12-03 07:30:03', '2024-02-01 23:44:55'),
('b281383d-12a8-451c-9246-4209f019f46d', 'mi in porttitor pede justo eu ', 'primis in faucibus orci luctus et ultrices posuere', '2024-08-27 07:12:01', '2024-01-21 09:24:18'),
('b517c545-3f28-47d7-8f49-89492d674b4d', 'erat curabitur gravida nisi at', 'odio condimentum id luctus nec molestie sed justo ', '2024-08-25 20:42:49', '2024-10-03 17:08:50'),
('ba666267-a355-43d2-9791-efb0e33982c7', 'at vulputate vitae nisl aenean', 'nibh fusce lacus purus aliquet at feugiat non pret', '2024-08-24 10:02:56', '2024-03-12 17:33:33'),
('bb75ba95-97c5-4273-9e5d-5d9124b6d84c', 'volutpat dui maecenas tristiqu', 'lorem integer tincidunt ante vel ipsum praesent bl', '2024-08-31 20:18:36', '2024-01-02 13:54:47'),
('c17dd64d-e56d-4be3-9306-0d8f93ae9a1e', 'dis parturient montes nascetur', 'molestie hendrerit at vulputate vitae nisl aenean ', '2024-06-28 11:05:00', '2024-02-02 00:53:19'),
('c59cdf23-363f-43aa-9546-ce843f503730', 'turpis a pede posuere nonummy ', 'ipsum dolor sit amet consectetuer adipiscing elit ', '2024-03-18 08:00:24', '2024-09-26 18:40:54'),
('c5f4061a-5ebb-4314-af46-fa39ee2b73bb', 'aenean sit amet justo morbi ut', 'in est risus auctor sed tristique in tempus sit am', '2024-09-24 21:58:59', '2024-05-19 16:24:38'),
('cbe70ead-7451-413c-bfad-2fd52fa5340f', 'felis sed interdum venenatis t', 'felis sed interdum venenatis turpis enim blandit m', '2024-09-26 06:49:31', '2024-02-26 05:59:34'),
('d05c4b22-4c8d-4980-b4d9-76bc587d3e4f', 'vel enim sit amet nunc viverra', 'vel nisl duis ac nibh fusce lacus purus aliquet at', '2024-04-28 23:01:34', '2023-12-11 12:05:01'),
('d31e707d-fb31-42da-83c6-7697c0259e77', 'in leo maecenas pulvinar lobor', 'justo nec condimentum neque sapien placerat ante n', '2024-02-23 06:54:54', '2023-12-17 02:35:35'),
('d629ca06-c870-4ad8-a6f4-b4a849565120', 'sit amet sem fusce consequat n', 'non lectus aliquam sit amet diam in magna bibendum', '2023-11-19 15:17:10', '2024-01-10 23:13:13'),
('dd613b2f-191d-41c7-b477-1577ec9e9f12', 'dapibus augue vel accumsan tel', 'diam id ornare imperdiet sapien urna pretium nisl ', '2024-03-30 15:35:49', '2023-11-28 19:37:43'),
('e0d433b4-5b31-4bd5-b653-e87ac9ce9560', 'metus vitae ipsum aliquam non ', 'erat curabitur gravida nisi at nibh in hac habitas', '2024-03-09 15:49:58', '2024-10-21 07:10:32'),
('e2ccc27b-40d1-4895-ad99-4b8b09c8028b', 'tellus in sagittis dui vel nis', 'sapien sapien non mi integer ac neque duis bibendu', '2024-03-19 01:51:19', '2023-11-04 07:09:05'),
('e44c8ed3-5866-4c33-b56d-d8873c976326', 'quam turpis adipiscing lorem v', 'lobortis ligula sit amet eleifend pede libero quis', '2024-08-31 13:02:20', '2024-06-18 11:02:35'),
('e4edc346-9768-411d-9ba8-32d9170db6b0', 'nibh fusce lacus purus aliquet', 'donec posuere metus vitae ipsum aliquam non mauris', '2023-11-22 12:09:52', '2024-06-16 12:44:46'),
('e5d3d97f-89f6-4f92-881d-6390c67e788c', 'ut nunc vestibulum ante ipsum ', 'nec condimentum neque sapien placerat ante nulla j', '2024-04-27 02:33:08', '2023-10-31 05:30:41'),
('e9df90e0-f31c-48b6-bda9-d06024ea8969', 'pede posuere nonummy integer n', 'magna bibendum imperdiet nullam orci pede venenati', '2024-05-11 00:30:13', '2024-10-07 22:20:51'),
('ec8ce6d3-17f7-4eca-a725-b40d46f92ea2', 'cras pellentesque volutpat dui', 'eros vestibulum ac est lacinia nisi venenatis tris', '2024-09-06 01:33:48', '2024-01-13 11:40:57'),
('f56ff096-7ca8-47a4-aa63-249a23bf1c3e', 'nulla facilisi cras non velit ', 'odio odio elementum eu interdum eu tincidunt in le', '2024-03-18 07:37:24', '2023-11-20 09:19:01'),
('facaa4d9-7402-4b9e-81e2-55201f9fff50', 'turpis adipiscing lorem vitae ', 'lectus vestibulum quam sapien varius ut blandit no', '2024-07-30 19:03:17', '2024-01-02 01:29:05'),
('fe336ad8-d2b7-480a-8560-7d60f218f9c2', 'consequat nulla nisl nunc nisl', 'interdum in ante vestibulum ante ipsum primis in f', '2024-07-13 04:52:15', '2024-05-17 22:16:12'),
('ff616256-5a4f-408a-8ab1-a128fb96410e', 'maecenas leo odio condimentum ', 'viverra diam vitae quam suspendisse potenti nullam', '2024-01-09 23:56:41', '2024-03-20 21:23:15');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
