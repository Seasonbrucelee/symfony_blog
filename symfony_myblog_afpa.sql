-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 23 mai 2022 à 10:19
-- Version du serveur : 5.7.36
-- Version de PHP : 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `symfony_myblog_afpa`
--

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_64C19C1727ACA70` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `parent_id`, `name`, `slug`) VALUES
(1, NULL, 'Krump', 'krump'),
(2, NULL, 'Hip hop', 'hip-hop');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20220412114759', '2022-04-13 08:55:16', 64),
('DoctrineMigrations\\Version20220412131012', '2022-04-13 08:55:16', 27),
('DoctrineMigrations\\Version20220413095106', '2022-04-13 09:53:57', 99),
('DoctrineMigrations\\Version20220413101743', '2022-04-13 10:26:32', 142),
('DoctrineMigrations\\Version20220414092939', '2022-04-15 09:39:16', 135);

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

DROP TABLE IF EXISTS `messenger_messages`;
CREATE TABLE IF NOT EXISTS `messenger_messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  KEY `IDX_75EA56E016BA31DB` (`delivered_at`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `messenger_messages`
--

INSERT INTO `messenger_messages` (`id`, `body`, `headers`, `queue_name`, `created_at`, `available_at`, `delivered_at`) VALUES
(1, 'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:51:\\\"Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\\":2:{s:60:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0message\\\";O:39:\\\"Symfony\\\\Bridge\\\\Twig\\\\Mime\\\\TemplatedEmail\\\":4:{i:0;s:41:\\\"registration/confirmation_email.html.twig\\\";i:1;N;i:2;a:3:{s:9:\\\"signedUrl\\\";s:171:\\\"http://127.0.0.1:8000/verify/email?expires=1650366027&signature=EVGdEn55yzrNVVvHZLX0x%2BF5eEECQrdW8aD3jq%2BxizA%3D&token=Ue0%2Fb3YUo%2FIMeeBgPGmTnDV32OTfVyM7UL88q9yaUxM%3D\\\";s:19:\\\"expiresAtMessageKey\\\";s:26:\\\"%count% hour|%count% hours\\\";s:20:\\\"expiresAtMessageData\\\";a:1:{s:7:\\\"%count%\\\";i:1;}}i:3;a:6:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;a:0:{}i:5;a:2:{i:0;O:37:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\\":2:{s:46:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0headers\\\";a:3:{s:4:\\\"from\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:15:\\\"noreply@xyz.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:9:\\\"Moi-même\\\";}}s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:4:\\\"From\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";}}s:2:\\\"to\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:16:\\\"season@gmail.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:2:\\\"To\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";}}s:7:\\\"subject\\\";a:1:{i:0;O:48:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\\":5:{s:55:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\0value\\\";s:25:\\\"Please Confirm your Email\\\";s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:7:\\\"Subject\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";}}}s:49:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0lineLength\\\";i:76;}i:1;N;}}}s:61:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0envelope\\\";N;}}', '[]', 'default', '2022-04-19 10:00:27', '2022-04-19 10:00:27', NULL),
(2, 'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:51:\\\"Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\\":2:{s:60:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0message\\\";O:39:\\\"Symfony\\\\Bridge\\\\Twig\\\\Mime\\\\TemplatedEmail\\\":4:{i:0;s:41:\\\"registration/confirmation_email.html.twig\\\";i:1;N;i:2;a:3:{s:9:\\\"signedUrl\\\";s:167:\\\"http://127.0.0.1:8000/verify/email?expires=1650553680&signature=6O2NL5OWWRGe3EwlpeDVRlqha%2BoYpacX9nAUmbWxfu0%3D&token=6nsFDI2cwIgJoj71GsL99%2FquxtqDZGVIq4nWrQiJKMA%3D\\\";s:19:\\\"expiresAtMessageKey\\\";s:26:\\\"%count% hour|%count% hours\\\";s:20:\\\"expiresAtMessageData\\\";a:1:{s:7:\\\"%count%\\\";i:1;}}i:3;a:6:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;a:0:{}i:5;a:2:{i:0;O:37:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\\":2:{s:46:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0headers\\\";a:3:{s:4:\\\"from\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:15:\\\"noreply@xyz.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:9:\\\"Moi-même\\\";}}s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:4:\\\"From\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";}}s:2:\\\"to\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:22:\\\"seatheseason@gmail.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:2:\\\"To\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";}}s:7:\\\"subject\\\";a:1:{i:0;O:48:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\\":5:{s:55:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\0value\\\";s:25:\\\"Please Confirm your Email\\\";s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:7:\\\"Subject\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";}}}s:49:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0lineLength\\\";i:76;}i:1;N;}}}s:61:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0envelope\\\";N;}}', '[]', 'default', '2022-04-21 14:08:00', '2022-04-21 14:08:00', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `post`
--

DROP TABLE IF EXISTS `post`;
CREATE TABLE IF NOT EXISTS `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_5A8A6C8DA76ED395` (`user_id`),
  KEY `IDX_5A8A6C8D12469DE2` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `post`
--

INSERT INTO `post` (`id`, `user_id`, `category_id`, `title`, `slug`, `content`, `image`, `created_at`, `active`) VALUES
(1, 1, 1, 'Fusion Concept 2019 : Lilou, Les Twins, Tight Eyez... krump et danse hip hop se sont affrontés à Paris', 'fusion-concept-2019-lilou-les-twins-tight-eyez-krump-et-danse-hip-hop-se-sont-affrontes-a-paris', '<p>Dimanche 1er septembre 2019 &agrave; Paris, s&#39;est tenue la 10&egrave;me &eacute;dition du battle&nbsp;<strong>Fusion Concept</strong>&nbsp;avec un slogan clair&nbsp;:&nbsp;&nbsp;<em>&quot;Freestyle is the Future&quot;</em>.&nbsp;&nbsp;Ici, pas de cat&eacute;gorie,&nbsp;<strong>toutes les danses de rue sont autoris&eacute;es</strong>, pas de r&egrave;gles,&nbsp;<strong>on peut m&ecirc;me toucher son adversaire</strong>, action normalement interdite dans d&rsquo;autres battles.&nbsp;Un seul but&nbsp;: &quot;Tuer le son&quot;&nbsp;!&nbsp;2 contre 2 ou 1 contre 1, le chapiteau du Cirque d&#39;Hiver Bouglione a vibr&eacute; sans dresseur de chien, ni de num&eacute;ro de clown.&nbsp;</p>', 'https://cdn.radiofrance.fr/s3/cruiser-production/2019/09/0a03fa72-601f-4e51-936f-e5f5a991753b/801x410__d5s3837_web_crop.jpg', '2022-04-19 10:32:36', 1),
(2, 1, 1, 'Le Krump, danse urbaine superbement énervée', 'le-krump-danse-urbaine-superbement-enervee', '<p>Un mot&nbsp;: krump. Essayez-le pour voir. Laissez-le monter en bouche, racler la gorge, et crachez-le en montrant les dents. Le prononcer, c&rsquo;est d&eacute;j&agrave; vivre la rage intime qui a trouv&eacute; un exutoire dans la danse, au d&eacute;but des ann&eacute;es 2000, dans le ghetto de South Central, &agrave; Los Angeles. C&rsquo;est l&agrave; que na&icirc;t le krump, comme le raconte avec flamboyance le film&nbsp;<em><a href=\"https://www.lemonde.fr/culture/article/2005/09/16/david-lachapelle-des-paillettes-au-ghetto_689777_3246.html\">Rize</a>,</em>&nbsp;r&eacute;alis&eacute; en&nbsp;2005 par David LaChapelle. Et c&rsquo;est en d&eacute;couvrant ce documentaire &agrave; sa sortie que Grichka Caruge, pionnier du krump en Europe, bascule du c&ocirc;t&eacute; de ce style urbain superbement &eacute;nerv&eacute;.&nbsp;<em>&laquo;&nbsp;Je suis all&eacute; voir&nbsp;</em>Rize<em>&nbsp;cinq fois de suite et j&rsquo;y ai emmen&eacute; tous mes proches</em>, se souvient-il.&nbsp;<em>Je tremblais, je pleurais tellement j&rsquo;&eacute;tais impressionn&eacute;. Il y avait une telle puissance dans cette danse au-del&agrave; du geste que je me sentais transcend&eacute;. On me disait que ma danse hip-hop &eacute;tait trop &eacute;nergique, j&rsquo;ai choisi le krump.&nbsp;&raquo;</em></p>', 'https://img.lemde.fr/2021/04/02/0/15/1050/700/664/0/75/0/3360755_588370314-1-copie.jpg', '2022-04-19 12:50:12', 1),
(3, 1, 1, 'LE KRUMP, UNE DANSE QUI DÉPOTE  ', 'le-krump-une-danse-qui-depote-en-savoir-plus-https-www-geoado-com-actus-le-krump-une-danse-qui-depote', '<p>Connais-tu le krump&nbsp;? Une chor&eacute;graphie ex&eacute;cut&eacute;e par des danseurs de hip-hop qui auraient bu beaucoup (trop) de caf&eacute;. C&rsquo;est une danse urbaine n&eacute;e &agrave; la fin des ann&eacute;es 1990 dans les quartiers tr&egrave;s pauvres de Los Angeles o&ugrave; la violence est quotidienne. K.R.U.M.P est l&rsquo;acronyme de Kingdom Radically Uplifted Mighty Praised&nbsp;ou &ldquo;&eacute;l&eacute;vation du royaume par le puissant &eacute;loge&rdquo; : en dansant, les interpr&egrave;tes se rapprocheraient donc de Dieu, d&eacute;velopperaient leur spiritualit&eacute;. Car les krumpers ext&eacute;riorisent avec cette pratique leur violence et leur rage int&eacute;rieure, pour mieux les canaliser. C&rsquo;est une danse dans la filiation des danses dites &ldquo;de combat&rdquo;, comme par exemple la capoeira. Organis&eacute;e sous forme de battle, elle suit les m&ecirc;mes codes que le hip-hop mais les attitudes, les expressions des visages, les pas, miment des gestes de baston, d&rsquo;engueulades, de strip tease, etc. C&rsquo;est donc une id&eacute;e tout &agrave; fait originale qu&rsquo;a eu le jeune r&eacute;alisateur Cl&eacute;ment Cogitore l&rsquo;an dernier 1) d&rsquo;associer le krump &agrave; une musique classique tr&egrave;s classique, Les Indes galantes de Jean-Philippe Rameaux, et 2) de filmer cette chor&eacute;graphie &agrave; l&rsquo;Op&eacute;ra Bastille, &agrave; Paris, soit le saint des saints de l&rsquo;op&eacute;ra fran&ccedil;ais.</p>', 'https://www.geoado.com/wp-content/uploads/2018/08/Capture-d%E2%80%99e%CC%81cran-2018-08-29-a%CC%80-14.31.07.png', '2022-04-19 13:22:45', 1),
(4, 1, 2, 'HIP-HOP 360', 'hip-hop-360', '<p><strong>Rap, danse, graffiti, DJ, beatmaking, beatbox, mode&hellip;&nbsp;<em>Hip-Hop 360</em>&nbsp;retrace les quarante ans d&rsquo;histoire du genre. L&rsquo;exposition relate l&rsquo;&eacute;mergence d&rsquo;une identit&eacute; du hip-hop fran&ccedil;ais qui s&rsquo;est fa&ccedil;onn&eacute;e &agrave; partir du mod&egrave;le am&eacute;ricain, en adaptant musique, techniques et r&eacute;cits au contexte hexagonal.</strong></p>\r\n\r\n<p><em>Hip-Hop 360</em>&nbsp;retranscrit l&rsquo;inventivit&eacute; d&rsquo;un mouvement constamment &agrave; l&rsquo;&eacute;coute de nouvelles formes de cr&eacute;ation et de diffusion. Au c&oelig;ur de l&rsquo;exposition, un espace circulaire de 120m2 en son spatialis&eacute; &ndash; le 360 &ndash; permet l&rsquo;immersion du visiteur au milieu des breakers, DJs, beatboxers et rappeurs en proposant une exp&eacute;rience singuli&egrave;re &agrave; partir de performances et d&rsquo;enregistrements in&eacute;dits.</p>\r\n\r\n<p><img alt=\"\" src=\"https://deneb.philharmoniedeparis.fr/uploads/images/61fd3dc17f536_FALC-Hip-HOP_360-by-William-Beaucardet%20(22).jpg\" style=\"width:100%\" /></p>\r\n\r\n<p><strong>Cr&eacute;ations et curation d&rsquo;artistes</strong><br />\r\n<em>Hip-Hop 360</em>&nbsp;repose sur la participation des acteurs et actrices du mouvement, pionniers et nouvelles g&eacute;n&eacute;rations confondus, avec notamment :</p>\r\n\r\n<p>- Des cr&eacute;ations in situ : Grems, JonOne, Mode 2&hellip;<br />\r\n- Des &oelig;uvres des pionniers du graffiti : Bando, Fab 5 Freddy, Futura 2000, JayOne...<br />\r\n- Des t&eacute;moignages de Kery James, MC Solaar, Youssoupha, Cut Killer, Sniper, Infinit&rsquo;, Chilla, F&eacute;f&eacute; et Leeroy, Tefa&hellip;<br />\r\n- Une cr&eacute;ation sonore in&eacute;dite de Niko Noki<br />\r\n- Des photographies rares par les t&eacute;moins de l&rsquo;histoire du hip-hop : Martine Barrat, Sophie Bramly, David Delaplace, Ma&iuml; Lucas, Jean-Pierre Ma&eacute;ro, Yoshi Omori, Willy Vainqueur&hellip;</p>\r\n\r\n<p><strong>Une exposition interactive</strong><br />\r\nL&rsquo;exposition propose une extraordinaire richesse musicale en donnant la possibilit&eacute; au visiteur de choisir ses &eacute;coutes parmi un ensemble de s&eacute;lections th&eacute;matis&eacute;es :</p>\r\n\r\n<p>- 70 disques de la collection personnelle de Dee Nasty<br />\r\n- Un focus sur l&rsquo;utilisation des samples par DJ Mehdi, con&ccedil;u par Thibaut de Longeville<br />\r\n- Un espace radio pour &eacute;couter freestyles et &eacute;missions cultes, de Phil Barney sur Carbone 14 en 1982 jusqu&rsquo;&agrave; JuL en freestyle en 2019<br />\r\n- Une s&eacute;lection de titres de rap class&eacute;s en huit univers par Y&eacute;rim Sar<br />\r\n- Une s&eacute;lection de mixtapes de collection depuis IAM &laquo; Concept &raquo; en 1990 jusqu&rsquo;&agrave; DJ Bellek et Booba en 2005.<br />\r\n- La possibilit&eacute; de d&eacute;composer les titres phares de beatmakers</p>\r\n\r\n<p><strong>Un parcours foisonnant et immersif</strong><br />\r\nL&rsquo;exposition s&rsquo;attarde sur plusieurs p&eacute;riodes et &eacute;v&eacute;nements fondateur du genre : la naissance du mouvement hip-hop dans le Bronx dans les ann&eacute;es 1970, son arriv&eacute;e en France la d&eacute;cennie suivante, son histoire radiophonique dans l&rsquo;Hexagone, le graffiti parisien, le rap et sa grammaire musicale, le pionnier de la mode Ticaret, l&rsquo;&eacute;volution du beatmaking, et enfin l&rsquo;espace 360 : une immersion au c&oelig;ur de toutes les disciplines du hip-hop.</p>\r\n\r\n<p><img alt=\"\" src=\"https://deneb.philharmoniedeparis.fr/uploads/images/61fd39e9e5389_FALC-Hip-HOP_360-by-William-Beaucardet%20(11).jpg\" style=\"width:100%\" /></p>\r\n\r\n<p><strong>Commissaire&nbsp;</strong>: Fran&ccedil;ois Gautret<br />\r\n<strong>Auteur&nbsp;</strong>: Vincent Piolet<br />\r\n<strong>Conseillers musicaux</strong>&nbsp;: Y&eacute;rim Sar, Franck Haderer<br />\r\n<strong>Sc&eacute;nographie</strong>&nbsp;: Cl&eacute;mence Farrell<br />\r\n<strong>Graphisme&nbsp;</strong>: H5<br />\r\n<strong>Cr&eacute;ation sonore</strong>&nbsp;: Niko Noki</p>\r\n\r\n<p><a href=\"https://librairie.philharmoniedeparis.fr/musee/hip-hop-360\" rel=\"noopener\" target=\"_blank\">Voir le catalogue de l&rsquo;exposition</a></p>', 'https://deneb.philharmoniedeparis.fr/uploads/images/cache/event_large/rc/deRRIIOz/uploads/images/619bc1e922278_photo-site-web.jpg', '2022-04-19 14:24:45', 1);

-- --------------------------------------------------------

--
-- Structure de la table `reset_password_request`
--

DROP TABLE IF EXISTS `reset_password_request`;
CREATE TABLE IF NOT EXISTS `reset_password_request` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `selector` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hashed_token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `requested_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `expires_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`id`),
  KEY `IDX_7CE748AA76ED395` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_verified` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `is_verified`) VALUES
(1, 'season@gmail.com', '[]', '$2y$13$fkwOo3pBWSTVmJwaE0tlAeoRkiJaE.OWQZ/Rmezb9J2p0abvkLK.6', 0),
(2, 'seatheseason@gmail.com', '[\"ROLE_ADMIN\"]', '$2y$13$iAsNZQ6zPp0.yt8lGhM1Sej0cyycQDYFeBbQdwcM9zuhX4AXZXFi6', 0);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `FK_64C19C1727ACA70` FOREIGN KEY (`parent_id`) REFERENCES `category` (`id`);

--
-- Contraintes pour la table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `FK_5A8A6C8D12469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `FK_5A8A6C8DA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `reset_password_request`
--
ALTER TABLE `reset_password_request`
  ADD CONSTRAINT `FK_7CE748AA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
