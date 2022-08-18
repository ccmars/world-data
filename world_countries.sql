-- World Countries (ISO 3166)
-- SQL Table | v1.1.2 (2022)
-- https://github.com/ccmars/world-data

DROP TABLE IF EXISTS `world_countries`;
CREATE TABLE `world_countries` (
  `number` smallint NOT NULL,
  `alpha2` varchar(2) NOT NULL,
  `alpha3` varchar(3) NOT NULL,
  `langEN` varchar(64) NOT NULL,
  `langDE` varchar(64) NOT NULL,
  `langES` varchar(64) NOT NULL,
  `langFR` varchar(64) NOT NULL,
  `langIT` varchar(64) NOT NULL,
  `tld` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=UTF8MB4 COMMENT='World Countries (ISO 3166)';

INSERT INTO `world_countries` (`number`, `alpha2`, `alpha3`, `langEN`, `langDE`, `langES`, `langFR`, `langIT`, `tld`) VALUES
(20, 'AD', 'AND', 'Andorra', 'Andorra', 'Andorra', 'Andorre', 'Andorra', '.ad'),
(784, 'AE', 'ARE', 'United Arab Emirates', 'Vereinigte Arabische Emirate', 'Emiratos Árabes Unidos', 'Émirats arabes unis', 'Emirati Arabi Uniti', '.ae'),
(4, 'AF', 'AFG', 'Afghanistan', 'Afghanistan', 'Afganistán', 'Afghanistan', 'Afghanistan', '.af'),
(28, 'AG', 'ATG', 'Antigua and Barbuda', 'Antigua und Barbuda', 'Antigua y Barbuda', 'Antigua-et-Barbuda', 'Antigua e Barbuda', '.ag'),
(660, 'AI', 'AIA', 'Anguilla', 'Anguilla', 'Anguila', 'Anguilla', 'Anguilla', '.ai'),
(8, 'AL', 'ALB', 'Albania', 'Albanien', 'Albania', 'Albanie', 'Albania', '.al'),
(51, 'AM', 'ARM', 'Armenia', 'Armenien', 'Armenia', 'Arménie', 'Armenia', '.am'),
(24, 'AO', 'AGO', 'Angola', 'Angola', 'Angola', 'Angola', 'Angola', '.ao'),
(10, 'AQ', 'ATA', 'Antarctica', 'Antarktika', 'Antártida', 'Antarctique', 'Antartide', '.aq'),
(32, 'AR', 'ARG', 'Argentina', 'Argentinien', 'Argentina', 'Argentine', 'Argentina', '.ar'),
(16, 'AS', 'ASM', 'American Samoa', 'Amerikanisch-Samoa', 'Samoa Americana', 'Samoa américaines', 'Samoa americane', '.as'),
(40, 'AT', 'AUT', 'Austria', 'Österreich', 'Austria', 'Autriche', 'Austria', '.at'),
(36, 'AU', 'AUS', 'Australia', 'Australien', 'Australia', 'Australie', 'Australia', '.au'),
(533, 'AW', 'ABW', 'Aruba', 'Aruba', 'Aruba', 'Aruba', 'Aruba', '.aw'),
(248, 'AX', 'ALA', 'Åland Islands', 'Åland', 'Åland', 'Îles Åland', 'Isole Aland', '.ax'),
(31, 'AZ', 'AZE', 'Azerbaijan', 'Aserbaidschan', 'Azerbaiyán', 'Azerbaïdjan', 'Azerbaigian', '.az'),
(70, 'BA', 'BIH', 'Bosnia and Herzegovina', 'Bosnien und Herzegowina', 'Bosnia y Herzegovina', 'Bosnie-Herzégovine', 'Bosnia Erzegovina', '.ba'),
(52, 'BB', 'BRB', 'Barbados', 'Barbados', 'Barbados', 'Barbade', 'Barbados', '.bb'),
(50, 'BD', 'BGD', 'Bangladesh', 'Bangladesch', 'Bangladés', 'Bangladesh', 'Bangladesh', '.bd'),
(56, 'BE', 'BEL', 'Belgium', 'Belgien', 'Bélgica', 'Belgique', 'Belgio', '.be'),
(854, 'BF', 'BFA', 'Burkina Faso', 'Burkina Faso', 'Burkina Faso', 'Burkina Faso', 'Burkina Faso', '.bf'),
(100, 'BG', 'BGR', 'Bulgaria', 'Bulgarien', 'Bulgaria', 'Bulgarie', 'Bulgaria', '.bg'),
(48, 'BH', 'BHR', 'Bahrain', 'Bahrain', 'Baréin', 'Bahreïn', 'Bahrein', '.bh'),
(108, 'BI', 'BDI', 'Burundi', 'Burundi', 'Burundi', 'Burundi', 'Burundi', '.bi'),
(204, 'BJ', 'BEN', 'Benin', 'Benin', 'Benín', 'Bénin', 'Benin', '.bj'),
(652, 'BL', 'BLM', 'Saint Barthélemy', 'Saint-Barthélemy', 'San Bartolomé', 'Saint-Barthélemy', 'San Bartolomeo', '.bl'),
(60, 'BM', 'BMU', 'Bermuda', 'Bermuda', 'Bermudas', 'Bermudes', 'Bermuda', '.bm'),
(96, 'BN', 'BRN', 'Brunei Darussalam', 'Brunei Darussalam', 'Brunéi', 'Brunei', 'Brunei', '.bn'),
(68, 'BO', 'BOL', 'Bolivia', 'Bolivien', 'Bolivia', 'Bolivie', 'Bolivia', '.bo'),
(535, 'BQ', 'BES', 'Bonaire, Sint Eustatius and Saba', 'Bonaire, Sint Eustatius und Saba', 'Bonaire, San Eustaquio y Saba', 'Bas caribéens', 'Bonaire, Sint Eustatius e Saba', '.bq'),
(76, 'BR', 'BRA', 'Brazil', 'Brasilien', 'Brasil', 'Brésil', 'Brasile', '.br'),
(44, 'BS', 'BHS', 'Bahamas', 'Bahamas', 'Bahamas', 'Bahamas', 'Bahamas', '.bs'),
(64, 'BT', 'BTN', 'Bhutan', 'Bhutan', 'Bután', 'Bhoutan', 'Bhutan', '.bt'),
(74, 'BV', 'BVT', 'Bouvet Island', 'Bouvetinsel', 'Isla Bouvet', 'Île Bouvet', 'Isola Bouvet', '.bv'),
(72, 'BW', 'BWA', 'Botswana', 'Botswana', 'Botsuana', 'Botswana', 'Botswana', '.bw'),
(112, 'BY', 'BLR', 'Belarus', 'Belarus (Weißrussland)', 'Bielorrusia', 'Biélorussie', 'Bielorussia', '.by'),
(84, 'BZ', 'BLZ', 'Belize', 'Belize', 'Belice', 'Belize', 'Belize', '.bz'),
(124, 'CA', 'CAN', 'Canada', 'Kanada', 'Canadá', 'Canada', 'Canada', '.ca'),
(166, 'CC', 'CCK', 'Cocos (Keeling) Islands', 'Kokosinseln', 'Islas Cocos', 'Îles Cocos', 'Isole Cocos (Keeling)', '.cc'),
(180, 'CD', 'COD', 'Democratic Republic of the Congo', 'Kongo, Demokratische Republik', 'República Democrática del Congo', 'République démocratique du Congo', 'Repubblica Democratica del Congo', '.cd'),
(140, 'CF', 'CAF', 'Central African Republic', 'Zentralafrikanische Republik', 'República Centroafricana', 'République centrafricaine', 'Repubblica centrale africana', '.cf'),
(178, 'CG', 'COG', 'Congo', 'Republik Kongo', 'República del Congo', 'République du Congo', 'Congo', '.cg'),
(756, 'CH', 'CHE', 'Switzerland', 'Schweiz', 'Suiza', 'Suisse', 'Switzerland', '.ch'),
(384, 'CI', 'CIV', 'Côte d\'Ivoire', 'Côte d\'Ivoire', 'Costa de Marfil', 'Côte d\'Ivoire', 'Costa d\'Avoire', '.ci'),
(184, 'CK', 'COK', 'Cook Islands', 'Cookinseln', 'Islas Cook', 'Îles Cook', 'Isole Cook', '.ck'),
(152, 'CL', 'CHL', 'Chile', 'Chile', 'Chile', 'Chili', 'Chile', '.cl'),
(120, 'CM', 'CMR', 'Cameroon', 'Kamerun', 'Camerún', 'Cameroun', 'Camerun', '.cm'),
(156, 'CN', 'CHN', 'China', 'China', 'China', 'Chine', 'Cina', '.cn'),
(170, 'CO', 'COL', 'Colombia', 'Kolumbien', 'Colombia', 'Colombie', 'Colombia', '.co'),
(188, 'CR', 'CRI', 'Costa Rica', 'Costa Rica', 'Costa Rica', 'Costa Rica', 'Costa Rica', '.cr'),
(192, 'CU', 'CUB', 'Cuba', 'Kuba', 'Cuba', 'Cuba', 'Cuba', '.cu'),
(132, 'CV', 'CPV', 'Cabo Verde', 'Kap Verde', 'Cabo Verde', 'Cap-Vert', 'Capo Verde', '.cv'),
(531, 'CW', 'CUW', 'Curaçao', 'Curaçao', 'Curazao', 'Curaçao', 'Curacao', '.cw'),
(162, 'CX', 'CXR', 'Christmas Island', 'Weihnachtsinsel', 'Isla de Navidad', 'Île Christmas', 'Isola di Natale', '.cx'),
(196, 'CY', 'CYP', 'Cyprus', 'Zypern', 'Chipre', 'Chypre', 'Cipro', '.cy'),
(203, 'CZ', 'CZE', 'Czechia', 'Tschechien', 'Chequia', 'Tchéquie', 'Cechia', '.cz'),
(276, 'DE', 'DEU', 'Germany', 'Deutschland', 'Alemania', 'Allemagne', 'Germania', '.de'),
(262, 'DJ', 'DJI', 'Djibouti', 'Dschibuti', 'Yibuti', 'Djibouti', 'Djibouti', '.dj'),
(208, 'DK', 'DNK', 'Denmark', 'Dänemark', 'Dinamarca', 'Danemark', 'Danimarca', '.dk'),
(212, 'DM', 'DMA', 'Dominica', 'Dominica', 'Dominica', 'Dominique', 'Dominica', '.dm'),
(214, 'DO', 'DOM', 'Dominican Republic', 'Dominikanische Republik', 'República Dominicana', 'République dominicaine', 'Repubblica Dominicana', '.do'),
(12, 'DZ', 'DZA', 'Algeria', 'Algerien', 'Argelia', 'Algérie', 'Algeria', '.dz'),
(218, 'EC', 'ECU', 'Ecuador', 'Ecuador', 'Ecuador', 'Équateur', 'Ecuador', '.ec'),
(233, 'EE', 'EST', 'Estonia', 'Estland', 'Estonia', 'Estonie', 'Estonia', '.ee'),
(818, 'EG', 'EGY', 'Egypt', 'Ägypten', 'Egipto', 'Égypte', 'Egitto', '.eg'),
(732, 'EH', 'ESH', 'Western Sahara', 'Westsahara', 'República Árabe Saharaui Democrática', 'République arabe sahraouie démocratique', 'Sahara occidentale', '.eh'),
(232, 'ER', 'ERI', 'Eritrea', 'Eritrea', 'Eritrea', 'Érythrée', 'Eritrea', '.er'),
(724, 'ES', 'ESP', 'Spain', 'Spanien', 'España', 'Espagne', 'Spagna', '.es'),
(231, 'ET', 'ETH', 'Ethiopia', 'Äthiopien', 'Etiopía', 'Éthiopie', 'Etiopia', '.et'),
(246, 'FI', 'FIN', 'Finland', 'Finnland', 'Finlandia', 'Finlande', 'Finlandia', '.fi'),
(242, 'FJ', 'FJI', 'Fiji', 'Fidschi', 'Fiyi', 'Fidji', 'Figi', '.fj'),
(238, 'FK', 'FLK', 'Falkland Islands', 'Falklandinseln', 'Islas Malvinas', 'Malouines', 'Isole Falkland', '.fk'),
(583, 'FM', 'FSM', 'Micronesia', 'Mikronesien', 'Micronesia', 'Micronésie', 'Micronesia', '.fm'),
(234, 'FO', 'FRO', 'Faroe Islands', 'Färöer', 'Islas Feroe', 'Îles Féroé', 'Isole Faroe', '.fo'),
(250, 'FR', 'FRA', 'France', 'Frankreich', 'Francia', 'France', 'Francia', '.fr'),
(266, 'GA', 'GAB', 'Gabon', 'Gabun', 'Gabón', 'Gabon', 'Gabon', '.ga'),
(826, 'GB', 'GBR', 'United Kingdom', 'Vereinigte Königreich', 'Reino Unido', 'Royaume-Uni', 'Regno Unito', '.uk'),
(308, 'GD', 'GRD', 'Grenada', 'Grenada', 'Granada', 'Grenade', 'Grenada', '.gd'),
(268, 'GE', 'GEO', 'Georgia', 'Georgien', 'Georgia', 'Géorgie', 'Georgia', '.ge'),
(254, 'GF', 'GUF', 'French Guiana', 'Französisch-Guayana', 'Guayana Francesa', 'Guyane', 'Guiana francese', '.gf'),
(831, 'GG', 'GGY', 'Guernsey', 'Guernsey', 'Guernsey', 'Guernesey', 'Guernsey', '.gg'),
(288, 'GH', 'GHA', 'Ghana', 'Ghana', 'Ghana', 'Ghana', 'Ghana', '.gh'),
(292, 'GI', 'GIB', 'Gibraltar', 'Gibraltar', 'Gibraltar', 'Gibraltar', 'Gibilterra', '.gi'),
(304, 'GL', 'GRL', 'Greenland', 'Grönland', 'Groenlandia', 'Groenland', 'Groenlandia', '.gl'),
(270, 'GM', 'GMB', 'Gambia', 'Gambia', 'Gambia', 'Gambie', 'Gambia', '.gm'),
(324, 'GN', 'GIN', 'Guinea', 'Guinea', 'Guinea', 'Guinée', 'Guinea', '.gn'),
(312, 'GP', 'GLP', 'Guadeloupe', 'Guadeloupe', 'Guadalupe', 'Guadeloupe', 'Guadeloupe', '.gp'),
(226, 'GQ', 'GNQ', 'Equatorial Guinea', 'Äquatorialguinea', 'Guinea Ecuatorial', 'Guinée équatoriale', 'Guinea Equatoriale', '.gq'),
(300, 'GR', 'GRC', 'Greece', 'Griechenland', 'Grecia', 'Grèce', 'Grecia', '.gr'),
(239, 'GS', 'SGS', 'South Georgia and the South Sandwich Islands', 'Südgeorgien und die Südlichen Sandwichinseln', 'Islas Georgias del Sur y Sandwich del Sur', 'Géorgie du Sud-et-les Îles Sandwich du Sud', 'Georgia del Sud e Isole Sandwich Australi', '.gs'),
(320, 'GT', 'GTM', 'Guatemala', 'Guatemala', 'Guatemala', 'Guatemala', 'Guatemala', '.gt'),
(316, 'GU', 'GUM', 'Guam', 'Guam', 'Guam', 'Guam', 'Guam', '.gu'),
(624, 'GW', 'GNB', 'Guinea-Bissau', 'Guinea-Bissau', 'Guinea-Bisáu', 'Guinée-Bissau', 'Guinea-Bissau', '.gw'),
(328, 'GY', 'GUY', 'Guyana', 'Guyana', 'Guyana', 'Guyana', 'Guyana', '.gy'),
(344, 'HK', 'HKG', 'Hong Kong', 'Hongkong', 'Hong Kong', 'Hong Kong', 'Hong Kong', '.hk'),
(334, 'HM', 'HMD', 'Heard Island and McDonald Islands', 'Heard und McDonaldinseln', 'Islas Heard y McDonald', 'Îles Heard-et-MacDonald', 'Isole Heard e McDonald', '.hm'),
(340, 'HN', 'HND', 'Honduras', 'Honduras', 'Honduras', 'Honduras', 'Honduras', '.hn'),
(191, 'HR', 'HRV', 'Croatia', 'Kroatien', 'Croacia', 'Croatie', 'Croazia', '.hr'),
(332, 'HT', 'HTI', 'Haiti', 'Haiti', 'Haití', 'Haïti', 'Haiti', '.ht'),
(348, 'HU', 'HUN', 'Hungary', 'Ungarn', 'Hungría', 'Hongrie', 'Ungheria', '.hu'),
(360, 'ID', 'IDN', 'Indonesia', 'Indonesien', 'Indonesia', 'Indonésie', 'Indonesia', '.id'),
(372, 'IE', 'IRL', 'Ireland', 'Irland', 'Irlanda', 'Irlande', 'Irlanda', '.ie'),
(376, 'IL', 'ISR', 'Israel', 'Israel', 'Israel', 'Israël', 'Israele', '.il'),
(833, 'IM', 'IMN', 'Isle of Man', 'Insel Man', 'Isla de Man', 'Île de Man', 'Isola di Man', '.im'),
(356, 'IN', 'IND', 'India', 'Indien', 'India', 'Inde', 'India', '.in'),
(86, 'IO', 'IOT', 'British Indian Ocean Territory', 'Britisches Territorium im Indischen Ozean', 'Territorio Británico del Océano Índico', 'Territoire britannique de l\'océan Indien', 'Territorio britannico dell\'Oceano Indiano', '.io'),
(368, 'IQ', 'IRQ', 'Iraq', 'Irak', 'Irak', 'Irak', 'Iraq', '.iq'),
(364, 'IR', 'IRN', 'Iran', 'Iran', 'Irán', 'Iran', 'Iran', '.ir'),
(352, 'IS', 'ISL', 'Iceland', 'Island', 'Islandia', 'Islande', 'Islanda', '.is'),
(380, 'IT', 'ITA', 'Italy', 'Italien', 'Italia', 'Italie', 'Italia', '.it'),
(832, 'JE', 'JEY', 'Jersey', 'Jersey', 'Jersey', 'Jersey', 'Maglia', '.je'),
(388, 'JM', 'JAM', 'Jamaica', 'Jamaika', 'Jamaica', 'Jamaïque', 'Giamaica', '.jm'),
(400, 'JO', 'JOR', 'Jordan', 'Jordanien', 'Jordania', 'Jordanie', 'Giordania', '.jo'),
(392, 'JP', 'JPN', 'Japan', 'Japan', 'Japón', 'Japon', 'Giappone', '.jp'),
(404, 'KE', 'KEN', 'Kenya', 'Kenia', 'Kenia', 'Kenya', 'Kenya', '.ke'),
(417, 'KG', 'KGZ', 'Kyrgyzstan', 'Kirgisistan', 'Kirguistán', 'Kirghizistan', 'Kirghizistan', '.kg'),
(116, 'KH', 'KHM', 'Cambodia', 'Kambodscha', 'Camboya', 'Cambodge', 'Cambogia', '.kh'),
(296, 'KI', 'KIR', 'Kiribati', 'Kiribati', 'Kiribati', 'Kiribati', 'Kiribati', '.ki'),
(174, 'KM', 'COM', 'Comoros', 'Komoren', 'Comoras', 'Comores', 'Comore', '.km'),
(659, 'KN', 'KNA', 'Saint Kitts and Nevis', 'St. Kitts und Nevis', 'San Cristóbal y Nieves', 'Saint-Christophe-et-Niévès', 'Saint Kitts e Nevis', '.kn'),
(408, 'KP', 'PRK', 'North Korea', 'Korea, Demokratische Volksrepublik (Nordkorea)', 'Corea del Norte', 'Corée du Nord', 'Corea del nord', '.kp'),
(410, 'KR', 'KOR', 'South Korea', 'Korea, Republik (Südkorea)', 'Corea del Sur', 'Corée du Sud', 'Corea del Sud', '.kr'),
(414, 'KW', 'KWT', 'Kuwait', 'Kuwait', 'Kuwait', 'Koweït', 'Kuwait', '.kw'),
(136, 'KY', 'CYM', 'Cayman Islands', 'Kaimaninseln', 'Islas Caimán', 'Îles Caïmans', 'Isole Cayman', '.ky'),
(398, 'KZ', 'KAZ', 'Kazakhstan', 'Kasachstan', 'Kazajistán', 'Kazakhstan', 'Kazakistan', '.kz'),
(418, 'LA', 'LAO', 'Laos', 'Laos, Demokratische Volksrepublik', 'Laos', 'Laos', 'Laos', '.la'),
(422, 'LB', 'LBN', 'Lebanon', 'Libanon', 'Líbano', 'Liban', 'Libano', '.lb'),
(662, 'LC', 'LCA', 'Saint Lucia', 'St. Lucia', 'Santa Lucía', 'Sainte-Lucie', 'Santa Lucia', '.lc'),
(438, 'LI', 'LIE', 'Liechtenstein', 'Liechtenstein', 'Liechtenstein', 'Liechtenstein', 'Liechtenstein', '.li'),
(144, 'LK', 'LKA', 'Sri Lanka', 'Sri Lanka', 'Sri Lanka', 'Sri Lanka', 'Sri Lanka', '.lk'),
(430, 'LR', 'LBR', 'Liberia', 'Liberia', 'Liberia', 'Liberia', 'Liberia', '.lr'),
(426, 'LS', 'LSO', 'Lesotho', 'Lesotho', 'Lesoto', 'Lesotho', 'Lesotho', '.ls'),
(440, 'LT', 'LTU', 'Lithuania', 'Litauen', 'Lituania', 'Lituanie', 'Lituania', '.lt'),
(442, 'LU', 'LUX', 'Luxembourg', 'Luxemburg', 'Luxemburgo', 'Luxembourg', 'Lussemburgo', '.lu'),
(428, 'LV', 'LVA', 'Latvia', 'Lettland', 'Letonia', 'Lettonie', 'Lettonia', '.lv'),
(434, 'LY', 'LBY', 'Libya', 'Libyen', 'Libia', 'Libye', 'Libia', '.ly'),
(504, 'MA', 'MAR', 'Morocco', 'Marokko', 'Marruecos', 'Maroc', 'Marocco', '.ma'),
(492, 'MC', 'MCO', 'Monaco', 'Monaco', 'Mónaco', 'Monaco', 'Monaco', '.mc'),
(498, 'MD', 'MDA', 'Moldova', 'Moldawien (Republik Moldau)', 'Moldavia', 'Moldavie', 'Moldavia', '.md'),
(499, 'ME', 'MNE', 'Montenegro', 'Montenegro', 'Montenegro', 'Monténégro', 'Montenegro', '.me'),
(663, 'MF', 'MAF', 'Saint Martin', 'Saint-Martin (franz. Teil)', 'San Martín', 'Saint-Martin', 'San Martin', '.mf'),
(450, 'MG', 'MDG', 'Madagascar', 'Madagaskar', 'Madagascar', 'Madagascar', 'Madagascar', '.mg'),
(584, 'MH', 'MHL', 'Marshall Islands', 'Marshallinseln', 'Islas Marshall', 'Îles Marshall', 'Isole Marshall', '.mh'),
(807, 'MK', 'MKD', 'North Macedonia', 'Nordmazedonien', 'Macedonia del Norte', 'Macédoine du Nord', 'Macedonia settentrionale', '.mk'),
(466, 'ML', 'MLI', 'Mali', 'Mali', 'Malí', 'Mali', 'Mali', '.ml'),
(104, 'MM', 'MMR', 'Myanmar', 'Myanmar (Burma)', 'Myanmar', 'Birmanie', 'Myanmar', '.mm'),
(496, 'MN', 'MNG', 'Mongolia', 'Mongolei', 'Mongolia', 'Mongolie', 'Mongolia', '.mn'),
(446, 'MO', 'MAC', 'Macao', 'Macau', 'Macao', 'Macao', 'Macao', '.mo'),
(580, 'MP', 'MNP', 'Northern Mariana Islands', 'Nördliche Marianen', 'Islas Marianas del Norte', 'Îles Mariannes du Nord', 'Isole Marianne settentrionali', '.mp'),
(474, 'MQ', 'MTQ', 'Martinique', 'Martinique', 'Martinica', 'Martinique', 'Martinica', '.mq'),
(478, 'MR', 'MRT', 'Mauritania', 'Mauretanien', 'Mauritania', 'Mauritanie', 'Mauritania', '.mr'),
(500, 'MS', 'MSR', 'Montserrat', 'Montserrat', 'Montserrat', 'Montserrat', 'Montserrat', '.ms'),
(470, 'MT', 'MLT', 'Malta', 'Malta', 'Malta', 'Malte', 'Malta', '.mt'),
(480, 'MU', 'MUS', 'Mauritius', 'Mauritius', 'Mauricio', 'Maurice', 'Mauritius', '.mu'),
(462, 'MV', 'MDV', 'Maldives', 'Malediven', 'Maldivas', 'Maldives', 'Maldive', '.mv'),
(454, 'MW', 'MWI', 'Malawi', 'Malawi', 'Malaui', 'Malawi', 'Malawi', '.mw'),
(484, 'MX', 'MEX', 'Mexico', 'Mexiko', 'México', 'Mexique', 'Messico', '.mx'),
(458, 'MY', 'MYS', 'Malaysia', 'Malaysia', 'Malasia', 'Malaisie', 'Malaysia', '.my'),
(508, 'MZ', 'MOZ', 'Mozambique', 'Mosambik', 'Mozambique', 'Mozambique', 'Mozambico', '.mz'),
(516, 'NA', 'NAM', 'Namibia', 'Namibia', 'Namibia', 'Namibie', 'Namibia', '.na'),
(540, 'NC', 'NCL', 'New Caledonia', 'Neukaledonien', 'Nueva Caledonia', 'Nouvelle-Calédonie', 'Nuova Caledonia', '.nc'),
(562, 'NE', 'NER', 'Niger', 'Niger', 'Níger', 'Niger', 'Niger', '.ne'),
(574, 'NF', 'NFK', 'Norfolk Island', 'Norfolkinsel', 'Norfolk', 'Île Norfolk', 'Norfolk Island', '.nf'),
(566, 'NG', 'NGA', 'Nigeria', 'Nigeria', 'Nigeria', 'Nigeria', 'Nigeria', '.ng'),
(558, 'NI', 'NIC', 'Nicaragua', 'Nicaragua', 'Nicaragua', 'Nicaragua', 'Nicaragua', '.ni'),
(528, 'NL', 'NLD', 'Netherlands', 'Niederlande', 'Países Bajos', 'Pays-Bas', 'Olanda', '.nl'),
(578, 'NO', 'NOR', 'Norway', 'Norwegen', 'Noruega', 'Norvège', 'Norvegia', '.no'),
(524, 'NP', 'NPL', 'Nepal', 'Nepal', 'Nepal', 'Népal', 'Nepal', '.np'),
(520, 'NR', 'NRU', 'Nauru', 'Nauru', 'Nauru', 'Nauru', 'Nauru', '.nr'),
(570, 'NU', 'NIU', 'Niue', 'Niue', 'Niue', 'Niue', 'Niue', '.nu'),
(554, 'NZ', 'NZL', 'New Zealand', 'Neuseeland', 'Nueva Zelanda', 'Nouvelle-Zélande', 'Nuova Zelanda', '.nz'),
(512, 'OM', 'OMN', 'Oman', 'Oman', 'Omán', 'Oman', 'Oman', '.om'),
(591, 'PA', 'PAN', 'Panama', 'Panama', 'Panamá', 'Panama', 'Panama', '.pa'),
(604, 'PE', 'PER', 'Peru', 'Peru', 'Perú', 'Pérou', 'Perù', '.pe'),
(258, 'PF', 'PYF', 'French Polynesia', 'Französisch-Polynesien', 'Polinesia Francesa', 'Polynésie française', 'Polinesia francese', '.pf'),
(598, 'PG', 'PNG', 'Papua New Guinea', 'Papua-Neuguinea', 'Papúa Nueva Guinea', 'Papouasie-Nouvelle-Guinée', 'Papua Nuova Guinea', '.pg'),
(608, 'PH', 'PHL', 'Philippines', 'Philippinen', 'Filipinas', 'Philippines', 'Philippines', '.ph'),
(586, 'PK', 'PAK', 'Pakistan', 'Pakistan', 'Pakistán', 'Pakistan', 'Pakistan', '.pk'),
(616, 'PL', 'POL', 'Poland', 'Polen', 'Polonia', 'Pologne', 'Polonia', '.pl'),
(666, 'PM', 'SPM', 'Saint Pierre and Miquelon', 'Saint-Pierre und Miquelon', 'San Pedro y Miquelón', 'Saint-Pierre-et-Miquelon', 'San Pierre e Miquelon', '.pm'),
(612, 'PN', 'PCN', 'Pitcairn', 'Pitcairninseln', 'Islas Pitcairn', 'Îles Pitcairn', 'Pitcairn', '.pn'),
(630, 'PR', 'PRI', 'Puerto Rico', 'Puerto Rico', 'Puerto Rico', 'Porto Rico', 'Puerto Rico', '.pr'),
(275, 'PS', 'PSE', 'Palestine', 'Staat Palästina', 'Palestina', 'Palestine', 'Palestina', '.ps'),
(620, 'PT', 'PRT', 'Portugal', 'Portugal', 'Portugal', 'Portugal', 'Portogallo', '.pt'),
(585, 'PW', 'PLW', 'Palau', 'Palau', 'Palaos', 'Palaos', 'Palau', '.pw'),
(600, 'PY', 'PRY', 'Paraguay', 'Paraguay', 'Paraguay', 'Paraguay', 'Paraguay', '.py'),
(634, 'QA', 'QAT', 'Qatar', 'Katar', 'Catar', 'Qatar', 'Qatar', '.qa'),
(638, 'RE', 'REU', 'Réunion', 'Réunion', 'Reunión', 'La Réunion', 'Riunione', '.re'),
(642, 'RO', 'ROU', 'Romania', 'Rumänien', 'Rumania', 'Roumanie', 'Romania', '.ro'),
(688, 'RS', 'SRB', 'Serbia', 'Serbien', 'Serbia', 'Serbie', 'Serbia', '.rs'),
(643, 'RU', 'RUS', 'Russia', 'Russische Föderation', 'Rusia', 'Russie', 'Russia', '.ru'),
(646, 'RW', 'RWA', 'Rwanda', 'Ruanda', 'Ruanda', 'Rwanda', 'Ruanda', '.rw'),
(682, 'SA', 'SAU', 'Saudi Arabia', 'Saudi-Arabien', 'Arabia Saudita', 'Arabie saoudite', 'Arabia Saudita', '.sa'),
(90, 'SB', 'SLB', 'Solomon Islands', 'Salomonen', 'Islas Salomón', 'Salomon', 'Isole Salomone', '.sb'),
(690, 'SC', 'SYC', 'Seychelles', 'Seychellen', 'Seychelles', 'Seychelles', 'Seychelles', '.sc'),
(729, 'SD', 'SDN', 'Sudan', 'Sudan', 'Sudán', 'Soudan', 'Sudan', '.sd'),
(752, 'SE', 'SWE', 'Sweden', 'Schweden', 'Suecia', 'Suède', 'Svezia', '.se'),
(702, 'SG', 'SGP', 'Singapore', 'Singapur', 'Singapur', 'Singapour', 'Singapore', '.sg'),
(654, 'SH', 'SHN', 'Saint Helena, Ascension and Tristan da Cunha', 'St. Helena', 'Santa Elena, Ascensión y Tristán de Acuña', 'Sainte-Hélène, Ascension et Tristan da Cunha', 'Saint Helena, Ascension e Tristan Da Cunha', '.sh'),
(705, 'SI', 'SVN', 'Slovenia', 'Slowenien', 'Eslovenia', 'Slovénie', 'Slovenia', '.si'),
(744, 'SJ', 'SJM', 'Svalbard and Jan Mayen', 'Svalbard und Jan Mayen', 'Svalbard y Jan Mayen', 'Svalbard et ile Jan Mayen', 'Svalbard e Jan Mayen', '.sj'),
(703, 'SK', 'SVK', 'Slovakia', 'Slowakei', 'Eslovaquia', 'Slovaquie', 'Slovacchia', '.sk'),
(694, 'SL', 'SLE', 'Sierra Leone', 'Sierra Leone', 'Sierra Leona', 'Sierra Leone', 'Sierra Leone', '.sl'),
(674, 'SM', 'SMR', 'San Marino', 'San Marino', 'San Marino', 'Saint-Marin', 'San Marino', '.sm'),
(686, 'SN', 'SEN', 'Senegal', 'Senegal', 'Senegal', 'Sénégal', 'Senegal', '.sn'),
(706, 'SO', 'SOM', 'Somalia', 'Somalia', 'Somalia', 'Somalie', 'Somalia', '.so'),
(740, 'SR', 'SUR', 'Suriname', 'Suriname', 'Surinam', 'Suriname', 'Suriname', '.sr'),
(728, 'SS', 'SSD', 'South Sudan', 'Südsudan', 'Sudán del Sur', 'Soudan du Sud', 'Sudan del Sud', '.ss'),
(678, 'ST', 'STP', 'Sao Tome and Principe', 'São Tomé und Príncipe', 'Santo Tomé y Príncipe', 'Sao Tomé-et-Principe', 'Sao Tome e Principe', '.st'),
(222, 'SV', 'SLV', 'El Salvador', 'El Salvador', 'El Salvador', 'Salvador', 'El Salvador', '.sv'),
(534, 'SX', 'SXM', 'Sint Maarten', 'Sint Maarten', 'Sint Maarten', 'Sint Maarten', 'Sint Maarten', '.sx'),
(760, 'SY', 'SYR', 'Syria', 'Syrien', 'Siria', 'Syrie', 'Siria', '.sy'),
(748, 'SZ', 'SWZ', 'Eswatini', 'Eswatini', 'Esuatini', 'Eswatini', 'Eswatini', '.sz'),
(796, 'TC', 'TCA', 'Turks and Caicos Islands', 'Turks- und Caicosinseln', 'Islas Turcas y Caicos', 'Îles Turques-et-Caïques', 'Isole Turks e Caicos', '.tc'),
(148, 'TD', 'TCD', 'Chad', 'Tschad', 'Chad', 'Tchad', 'Chad', '.td'),
(260, 'TF', 'ATF', 'French Southern Territories', 'Französische Süd- und Antarktisgebiete', 'Tierras Australes y Antárticas Francesas', 'Terres australes et antarctiques françaises', 'Territori della Francia del sud', '.tf'),
(768, 'TG', 'TGO', 'Togo', 'Togo', 'Togo', 'Togo', 'Andare', '.tg'),
(764, 'TH', 'THA', 'Thailand', 'Thailand', 'Tailandia', 'Thaïlande', 'Tailandia', '.th'),
(762, 'TJ', 'TJK', 'Tajikistan', 'Tadschikistan', 'Tayikistán', 'Tadjikistan', 'Tajikistan', '.tj'),
(772, 'TK', 'TKL', 'Tokelau', 'Tokelau', 'Tokelau', 'Tokelau', 'Tokelau', '.tk'),
(626, 'TL', 'TLS', 'Timor-Leste', 'Osttimor (Timor-Leste)', 'Timor Oriental', 'Timor oriental', 'Timor Est', '.tl'),
(795, 'TM', 'TKM', 'Turkmenistan', 'Turkmenistan', 'Turkmenistán', 'Turkménistan', 'Turkmenistan', '.tm'),
(788, 'TN', 'TUN', 'Tunisia', 'Tunesien', 'Túnez', 'Tunisie', 'Tunisia', '.tn'),
(776, 'TO', 'TON', 'Tonga', 'Tonga', 'Tonga', 'Tonga', 'Tonga', '.to'),
(792, 'TR', 'TUR', 'Turkey', 'Türkei', 'Turquía', 'Turquie', 'Turkey', '.tr'),
(780, 'TT', 'TTO', 'Trinidad and Tobago', 'Trinidad und Tobago', 'Trinidad y Tobago', 'Trinité-et-Tobago', 'Trinidad e Tobago', '.tt'),
(798, 'TV', 'TUV', 'Tuvalu', 'Tuvalu', 'Tuvalu', 'Tuvalu', 'Tuvalu', '.tv'),
(158, 'TW', 'TWN', 'Taiwan', 'Taiwan', 'Taiwán', 'Taïwan', 'Taiwan', '.tw'),
(834, 'TZ', 'TZA', 'Tanzania', 'Tansania, Vereinigte Republik', 'Tanzania', 'Tanzanie', 'Tanzania', '.tz'),
(804, 'UA', 'UKR', 'Ukraine', 'Ukraine', 'Ucrania', 'Ukraine', 'Ukraine', '.ua'),
(800, 'UG', 'UGA', 'Uganda', 'Uganda', 'Uganda', 'Ouganda', 'Uganda', '.ug'),
(581, 'UM', 'UMI', 'United States Minor Outlying Islands', 'Kleinere Inselbesitzungen der Vereinigten Staaten', 'Islas ultramarinas de Estados Unidos', 'Îles mineures éloignées des États-Unis', 'Isole periferiche minori degli Stati Uniti', '.um'),
(840, 'US', 'USA', 'United States of America', 'Vereinigte Staaten von Amerika', 'Estados Unidos', 'États-Unis', 'Stati Uniti d\'America', '.us'),
(858, 'UY', 'URY', 'Uruguay', 'Uruguay', 'Uruguay', 'Uruguay', 'Uruguay', '.uy'),
(860, 'UZ', 'UZB', 'Uzbekistan', 'Usbekistan', 'Uzbekistán', 'Ouzbékistan', 'Uzbekistan', '.uz'),
(336, 'VA', 'VAT', 'Holy See', 'Heiliger Stuhl', 'Santa Sede', 'Saint-Siège', 'Santa Sede', '.va'),
(670, 'VC', 'VCT', 'Saint Vincent and the Grenadines', 'St. Vincent und die Grenadinen', 'San Vicente y las Granadinas', 'Saint-Vincent-et-les Grenadines', 'Saint Vincent e Grenadines', '.vc'),
(862, 'VE', 'VEN', 'Venezuela', 'Venezuela', 'Venezuela', 'Venezuela', 'Venezuela', '.ve'),
(92, 'VG', 'VGB', 'Virgin Islands (British)', 'Britische Jungferninseln', 'Islas Vírgenes Británicas', 'Îles Vierges britanniques', 'Isole Vergini (britannici)', '.vg'),
(850, 'VI', 'VIR', 'Virgin Islands (U.S.)', 'Amerikanische Jungferninseln', 'Islas Vírgenes de los Estados Unidos', 'Îles Vierges des États-Unis', 'Isole Vergini (Stati Uniti)', '.vi'),
(704, 'VN', 'VNM', 'Vietnam', 'Vietnam', 'Vietnam', 'Viêt Nam', 'Vietnam', '.vn'),
(548, 'VU', 'VUT', 'Vanuatu', 'Vanuatu', 'Vanuatu', 'Vanuatu', 'Vanuatu', '.vu'),
(876, 'WF', 'WLF', 'Wallis and Futuna', 'Wallis und Futuna', 'Wallis y Futuna', 'Wallis-et-Futuna', 'Wallis e Futuna', '.wf'),
(882, 'WS', 'WSM', 'Samoa', 'Samoa', 'Samoa', 'Samoa', 'Samoa', '.ws'),
(887, 'YE', 'YEM', 'Yemen', 'Jemen', 'Yemen', 'Yémen', 'Yemen', '.ye'),
(175, 'YT', 'MYT', 'Mayotte', 'Mayotte', 'Mayotte', 'Mayotte', 'Mayotte', '.yt'),
(710, 'ZA', 'ZAF', 'South Africa', 'Südafrika', 'Sudáfrica', 'Afrique du Sud', 'Sud Africa', '.za'),
(894, 'ZM', 'ZMB', 'Zambia', 'Sambia', 'Zambia', 'Zambie', 'Zambia', '.zm'),
(716, 'ZW', 'ZWE', 'Zimbabwe', 'Simbabwe', 'Zimbabue', 'Zimbabwe', 'Zimbabwe', '.zw');

ALTER TABLE `world_countries`
  ADD PRIMARY KEY (`number`),
  ADD UNIQUE (`alpha2`),
  ADD UNIQUE (`alpha3`);