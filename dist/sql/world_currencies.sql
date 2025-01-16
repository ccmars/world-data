-- World Currencies (ISO 4217)
-- SQL Table | v3.0.1 (2025)
-- https://github.com/ccmars/world-data

DROP TABLE IF EXISTS `world_currencies`;
CREATE TABLE `world_currencies` (
  `number` smallint NOT NULL,
  `alpha3` varchar(3) NOT NULL,
  `decimals` tinyint NOT NULL DEFAULT '2',
  `langEN` varchar(48) NOT NULL,
  `langIT` varchar(48) NOT NULL,
  `symbol_decimal` varchar(24) DEFAULT NULL,
  `symbol_hex` varchar(24) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=UTF8MB4 COMMENT='World Currencies (ISO 4217)';

INSERT INTO `world_currencies` (`number`, `alpha3`, `decimals`, `langEN`, `langIT`, `symbol_decimal`, `symbol_hex`) VALUES
(784, 'AED', 2, 'United Arab Emirates dirham', 'Dirham degli Emirati Arabi Uniti', '1583;46;1573', '062F;002E;0625'),
(971, 'AFN', 2, 'Afghan afghani', 'Afghani', '1547', '060B'),
(8, 'ALL', 2, 'Albanian lek', 'Lek', '76;101;107', '004C;0065;006B'),
(51, 'AMD', 2, 'Armenian dram', 'Dram Armeno', '1423', '058F'),
(532, 'ANG', 2, 'Netherlands Antillean guilder', 'Fiorino delle Antille olandesi', '402', '0192'),
(973, 'AOA', 2, 'Angolan kwanza', 'Kwanza', '75;122', '004B;007A'),
(32, 'ARS', 2, 'Argentine peso', 'Peso Argentino', '36', '0024'),
(36, 'AUD', 2, 'Australian dollar', 'Dollaro australiano', '36', '0024'),
(533, 'AWG', 2, 'Aruban florin', 'Fiorino Aruba', '402', '0192'),
(944, 'AZN', 2, 'Azerbaijani manat', 'Manat dell''Azerbaigian', '1084;1072;1085', '043C;0430;043D'),
(977, 'BAM', 2, 'Bosnia and Herzegovina convertible mark', 'Marco Convertibile', '75;77', '004B;004D'),
(52, 'BBD', 2, 'Barbados dollar', 'Dollaro delle Barbados', '36', '0024'),
(50, 'BDT', 2, 'Bangladeshi taka', 'Taka', '2547', '09F3'),
(975, 'BGN', 2, 'Bulgarian lev', 'Lev Bulgaro', '1083;1074', '043B;0432'),
(48, 'BHD', 3, 'Bahraini dinar', 'Dinaro del Bahrain', '46;1583;46;1576', '002E;062F;002E;0628'),
(108, 'BIF', 0, 'Burundian franc', 'Burundi Franco', '70;66;117', '0046;0042;0075'),
(60, 'BMD', 2, 'Bermudian dollar', 'Dollaro delle Bermuda', '36', '0024'),
(96, 'BND', 2, 'Brunei dollar', 'Dollaro del Brunei', '36', '0024'),
(68, 'BOB', 2, 'Boliviano', 'Boliviano', '36;98', '0024;0062'),
(986, 'BRL', 2, 'Brazilian real', 'Real Brasiliano', '82;36', '0052;0024'),
(44, 'BSD', 2, 'Bahamian dollar', 'Dollaro delle Bahamas', '36', '0024'),
(64, 'BTN', 2, 'Bhutanese ngultrum', 'Ngultrum', '78;117', '004E;0075'),
(72, 'BWP', 2, 'Botswana pula', 'Pula', '80', '0050'),
(933, 'BYN', 2, 'Belarusian ruble', 'Rublo Bielorusso', '112;46', '0070;002E'),
(84, 'BZD', 2, 'Belize dollar', 'Dollaro Belize', '66;90;36', '0042;005A;0024'),
(124, 'CAD', 2, 'Canadian dollar', 'Dollaro Canadese', '36', '0024'),
(976, 'CDF', 2, 'Congolese franc', 'Franco congolese', '70;67', '0046;0043'),
(756, 'CHF', 2, 'Swiss franc', 'Franco Svizzero', '67;72;70', '0043;0048;0046'),
(152, 'CLP', 0, 'Chilean peso', 'Peso Cileno', '36', '0024'),
(156, 'CNY', 2, 'Renminbi', 'Yuan Renminbi', '165', '00A5'),
(170, 'COP', 2, 'Colombian peso', 'Peso Colombiano', '36', '0024'),
(188, 'CRC', 2, 'Costa Rican colon', 'Colón costaricano', '8353', '20A1'),
(192, 'CUP', 2, 'Cuban peso', 'Peso cubano', '8369', '20B1'),
(132, 'CVE', 2, 'Cape Verdean escudo', 'Cabo Verde Escudo', '36', '0024'),
(203, 'CZK', 2, 'Czech koruna', 'Corona Ceca', '75;269', '004B;010D'),
(262, 'DJF', 0, 'Djiboutian franc', 'Franco del Gibuti', '70;100;106', '0046;0064;006A'),
(208, 'DKK', 2, 'Danish krone', 'Corona Danese', '107;114', '006B;0072'),
(214, 'DOP', 2, 'Dominican peso', 'Peso dominicano', '82;68;36', '0052;0044;0024'),
(12, 'DZD', 2, 'Algerian dinar', 'Dinaro Algerino', '1583;1580', '062F;062C'),
(818, 'EGP', 2, 'Egyptian pound', 'Sterlina Egiziana', '163', '00A3'),
(232, 'ERN', 2, 'Eritrean nakfa', 'Nakfa', '1606;1575;1601;1603;1575', '0646;0627;0641;0643;0627'),
(230, 'ETB', 2, 'Ethiopian birr', 'Birr Etiope', '4709;4653', '1265;122D'),
(978, 'EUR', 2, 'Euro', 'Euro', '8364', '20AC'),
(242, 'FJD', 2, 'Fiji dollar', 'Dollaro delle Figi', '36', '0024'),
(238, 'FKP', 2, 'Falkland Islands pound', 'Sterlina delle Falkland', '163', '00A3'),
(826, 'GBP', 2, 'Pound sterling', 'Sterlina Britannica', '163', '00A3'),
(981, 'GEL', 2, 'Georgian lari', 'Lari', '8382', '20BE'),
(936, 'GHS', 2, 'Ghanaian cedi', 'Ghana Cedi', '162', '00A2'),
(292, 'GIP', 2, 'Gibraltar pound', 'Sterlina di Gibilterra', '163', '00A3'),
(270, 'GMD', 2, 'Gambian dalasi', 'Dalasi', '68', '0044'),
(324, 'GNF', 0, 'Guinean franc', 'Franco della Guinea', '70;71', '0046;0047'),
(320, 'GTQ', 2, 'Guatemalan quetzal', 'Quetzal', '81', '0051'),
(328, 'GYD', 2, 'Guyanese dollar', 'Dollaro della Guyana', '36', '0024'),
(344, 'HKD', 2, 'Hong Kong dollar', 'Dollaro di Hong Kong', '36', '0024'),
(340, 'HNL', 2, 'Honduran lempira', 'Lempira', '76', '004C'),
(332, 'HTG', 2, 'Haitian gourde', 'Gourde', '71', '0047'),
(348, 'HUF', 2, 'Hungarian forint', 'Fiorino', '70;116', '0046;0074'),
(360, 'IDR', 2, 'Indonesian rupiah', 'Rupia', '82;112', '0052;0070'),
(376, 'ILS', 2, 'Israeli new shekel', 'Nuovo Shekel Israeliano', '8362', '20AA'),
(356, 'INR', 2, 'Indian rupee', 'Rupia indiana', '8377', '20B9'),
(368, 'IQD', 3, 'Iraqi dinar', 'Dinaro Iracheno', '1593;46;1583', '0639;002E;062F'),
(364, 'IRR', 2, 'Iranian rial', 'Riyal Iraniano', '65020', 'FDFC'),
(352, 'ISK', 0, 'Icelandic króna', 'Corona Islandese', '107;114', '006B;0072'),
(388, 'JMD', 2, 'Jamaican dollar', 'Dollaro giamaicano', '74;36', '004A;0024'),
(400, 'JOD', 3, 'Jordanian dinar', 'Dinaro giordano', '1583;1610;1606;1575;1585', '062F;064A;0646;0627;0631'),
(392, 'JPY', 0, 'Japanese yen', 'Yen', '165', '00A5'),
(404, 'KES', 2, 'Kenyan shilling', 'Scellino Keniota', '75;83;104', '004B;0053;0068'),
(417, 'KGS', 2, 'Kyrgyzstani som', 'Som', '1083;1074', '043B;0432'),
(116, 'KHR', 2, 'Cambodian riel', 'Riel', '6107', '17DB'),
(174, 'KMF', 0, 'Comoro franc', 'Franco delle Comore', '67;70', '0043;0046'),
(408, 'KPW', 2, 'North Korean won', 'Won Nordcoreano', '8361', '20A9'),
(410, 'KRW', 0, 'South Korean won', 'Won', '8361', '20A9'),
(414, 'KWD', 3, 'Kuwaiti dinar', 'Dinaro Kuwaitiano', '1583;46;1603', '062F;002E;0643'),
(136, 'KYD', 2, 'Cayman Islands dollar', 'Dollaro delle Isole Cayman', '36', '0024'),
(398, 'KZT', 2, 'Kazakhstani tenge', 'Tenge', '1083;1074', '043B;0432'),
(418, 'LAK', 2, 'Lao kip', 'Kip', '8365', '20AD'),
(422, 'LBP', 2, 'Lebanese pound', 'Libbra libanese', '163', '00A3'),
(144, 'LKR', 2, 'Sri Lankan rupee', 'Rupia dello Sri Lanka', '8360', '20A8'),
(430, 'LRD', 2, 'Liberian dollar', 'Dollaro Liberiano', '36', '0024'),
(426, 'LSL', 2, 'Lesotho loti', 'Loti', '76', '004C'),
(434, 'LYD', 3, 'Libyan dinar', 'Dinaro Libico', '1604;46;1583', '0644;002E;062F'),
(504, 'MAD', 2, 'Moroccan dirham', 'Dirham Marocchino', '77;65;68', '004D;0041;0044'),
(498, 'MDL', 2, 'Moldovan leu', 'Leu Moldavo', '76', '004C'),
(969, 'MGA', 2, 'Malagasy ariary', 'Ariary Malgascio', '65;114', '0041;0072'),
(807, 'MKD', 2, 'Macedonian denar', 'Denar', '1076;1077;1085', '0434;0435;043D'),
(104, 'MMK', 2, 'Myanmar kyat', 'Kyat', '75', '004B'),
(496, 'MNT', 2, 'Mongolian tögrög', 'Tugrik', '8366', '20AE'),
(446, 'MOP', 2, 'Macanese pataca', 'Pataca', '77;79;80;36', '004D;004F;0050;0024'),
(929, 'MRU', 2, 'Mauritanian ouguiya', 'Rupia Mauriziana', '85;77', '0055;004D'),
(480, 'MUR', 2, 'Mauritian rupee', 'Rupia delle Mauritius', '8360', '20A8'),
(462, 'MVR', 2, 'Maldivian rufiyaa', 'Rufiyaa', '45;1923', '002D;0783'),
(454, 'MWK', 2, 'Malawian kwacha', 'Kwacha', '77;75', '004D;004B'),
(484, 'MXN', 2, 'Mexican peso', 'Peso Messicano', '36', '0024'),
(458, 'MYR', 2, 'Malaysian ringgit', 'Ringgit Malese', '82;77', '0052;004D'),
(943, 'MZN', 2, 'Mozambican metical', 'Metical Mozambicano', '77;84', '004D;0054'),
(516, 'NAD', 2, 'Namibian dollar', 'Dollaro Namibiano', '36', '0024'),
(566, 'NGN', 2, 'Nigerian naira', 'Naira', '8358', '20A6'),
(558, 'NIO', 2, 'Nicaraguan córdoba', 'Cordoba Oro', '67;36', '0043;0024'),
(578, 'NOK', 2, 'Norwegian krone', 'Corona norvegese', '107;114', '006B;0072'),
(524, 'NPR', 2, 'Nepalese rupee', 'Rupia nepalese', '8360', '20A8'),
(554, 'NZD', 2, 'New Zealand dollar', 'Dollaro neozelandese', '36', '0024'),
(512, 'OMR', 3, 'Omani rial', 'Rial Omani', '65020', 'FDFC'),
(590, 'PAB', 2, 'Panamanian balboa', 'Balboa', '66;47;46', '0042;002F;002E'),
(604, 'PEN', 2, 'Peruvian sol', 'Nuevo Sol', '83;47;46', '0053;002F;002E'),
(598, 'PGK', 2, 'Papua New Guinean kina', 'Kina', '75', '004B'),
(608, 'PHP', 2, 'Philippine peso', 'Peso filippino', '8369', '20B1'),
(586, 'PKR', 2, 'Pakistani rupee', 'Rupia pakistana', '8360', '20A8'),
(985, 'PLN', 2, 'Polish złoty', 'Zloty', '122;322', '007A;0142'),
(600, 'PYG', 0, 'Paraguayan guaraní', 'Guarani', '71;115', '0047;0073'),
(634, 'QAR', 2, 'Qatari riyal', 'Rial del Qatar', '65020', 'FDFC'),
(946, 'RON', 2, 'Romanian leu', 'Leu rumeno', '108;101;105', '006C;0065;0069'),
(941, 'RSD', 2, 'Serbian dinar', 'Dinaro serbo', '1044;1080;1085;46', '0414;0438;043D;002E'),
(643, 'RUB', 2, 'Russian ruble', 'Rublo russo', '1088;1091;1073', '0440;0443;0431'),
(646, 'RWF', 0, 'Rwandan franc', 'Franco ruandese', '70;82;119', '0046;0052;0077'),
(682, 'SAR', 2, 'Saudi riyal', 'Riyal saudita', '65020', 'FDFC'),
(90, 'SBD', 2, 'Solomon Islands dollar', 'Dollaro delle Isole Salomone', '36', '0024'),
(690, 'SCR', 2, 'Seychelles rupee', 'Rupia delle Seychelles', '8360', '20A8'),
(938, 'SDG', 2, 'Sudanese pound', 'Sterlina sudanese', '1580;46;1587', '062C;002E;0633'),
(752, 'SEK', 2, 'Swedish krona/kronor', 'Corona svedese', '107;114', '006B;0072'),
(702, 'SGD', 2, 'Singapore dollar', 'Dollaro di Singapore', '36', '0024'),
(654, 'SHP', 2, 'Saint Helena pound', 'Saint Helena Pound', '163', '00A3'),
(925, 'SLE', 2, 'Sierra Leonean leone', 'Nuovo leone', '76;101', '004C;0065'),
(706, 'SOS', 2, 'Somalian shilling', 'Scellino somalo', '83', '0053'),
(968, 'SRD', 2, 'Surinamese dollar', 'Dollaro del Suriname', '36', '0024'),
(728, 'SSP', 2, 'South Sudanese pound', 'Sterlina sud-sudanese', '36', '0024'),
(930, 'STN', 2, 'São Tomé and Príncipe dobra', 'Dobra di São Tomé e Principe', '68;98', '0044;0062'),
(222, 'SVC', 2, 'Salvadoran colón', 'Colón Salvadoregno', '20A1', '8353'),
(760, 'SYP', 2, 'Syrian pound', 'Sterlina siriana', '163', '00A3'),
(748, 'SZL', 2, 'Swazi lilangeni', 'Lilangeni', '76', '004C'),
(764, 'THB', 2, 'Thai baht', 'Baht', '3647', '0E3F'),
(972, 'TJS', 2, 'Tajikistani somoni', 'Somoni', '1057', '0421'),
(934, 'TMT', 2, 'Turkmenistani manat', 'Manat turkmeno', '84', '0054'),
(788, 'TND', 3, 'Tunisian dinar', 'Dinaro tunisino', '1583;46;1578', '062F;002E;062A'),
(776, 'TOP', 2, 'Tongan pa''anga', 'Pa''anga', '84;36', '0054;0024'),
(949, 'TRY', 2, 'Turkish lira', 'Lira turca', '8378', '20BA'),
(780, 'TTD', 2, 'Trinidad and Tobago dollar', 'Dollaro di Trinidad e Tobago', '84;84;36', '0054;0054;0024'),
(901, 'TWD', 2, 'New Taiwan dollar', 'Nuovo dollaro di Taiwan', '78;84;36', '004E;0054;0024'),
(834, 'TZS', 2, 'Tanzanian shilling', 'Scellino tanzaniano', '84;83;104', '0054;0053;0068'),
(980, 'UAH', 2, 'Ukrainian hryvnia', 'Hryvnia', '8372', '20B4'),
(800, 'UGX', 0, 'Ugandan shilling', 'Scellino dell''Uganda', '85;83;104', '0055;0053;0068'),
(840, 'USD', 2, 'United States dollar', 'Dollaro Americano', '36', '0024'),
(858, 'UYU', 2, 'Uruguayan peso', 'Peso Uruguayo', '36;85', '0024;0055'),
(860, 'UZS', 2, 'Uzbekistani sum', 'Sum dell''Uzbekistan', '1083;1074', '043B;0432'),
(926, 'VED', 2, 'Venezuelan digital bolívar', 'Bolívar digitale venezuelano', '66;115;46;68', '0042;0073;002E;0044'),
(928, 'VES', 2, 'Venezuelan sovereign bolívar', 'Bolívar sovrano venezuelano', '66;115;46;83', '0042;0073;002E;0053'),
(704, 'VND', 0, 'Vietnamese đồng', 'Dong', '8363', '20AB'),
(548, 'VUV', 0, 'Vanuatu vatu', 'Vatu', '86;84', '0056;0054'),
(882, 'WST', 2, 'Samoan tala', 'Tala', '87;83;36', '0057;0053;0024'),
(950, 'XAF', 0, 'CFA franc BEAC', 'CFA Franco BEAC', '70;67;70;65', '0046;0043;0046;0041'),
(951, 'XCD', 2, 'East Caribbean dollar', 'Dollaro caraibico orientale', '36', '0024'),
(952, 'XOF', 0, 'CFA franc BCEAO', 'CFA Franco BCEAO', '70;67;70;65', '0046;0043;0046;0041'),
(953, 'XPF', 0, 'CFP franc (franc Pacifique)', 'Franco CFP', '70', '0046'),
(999, 'XXX', 0, 'No currency', 'Nessuna valuta', NULL, NULL),
(886, 'YER', 2, 'Yemeni rial', 'Rial Yemenita', '65020', 'FDFC'),
(710, 'ZAR', 2, 'South African rand', 'Rand', '82', '0052'),
(967, 'ZMW', 2, 'Zambian kwacha', 'Kwacha dello Zambia', '90;36', '005A;0024'),
(932, 'ZWL', 2, 'Zimbabwean dollar', 'Dollaro dello Zimbabwe', '36', '0024');

ALTER TABLE `world_currencies`
  ADD PRIMARY KEY (`number`),
  ADD UNIQUE (`number`),
  ADD UNIQUE (`alpha3`);
