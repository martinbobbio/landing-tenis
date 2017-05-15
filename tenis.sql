-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-12-2016 a las 03:48:53
-- Versión del servidor: 10.1.19-MariaDB
-- Versión de PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tenis`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grandslam`
--

CREATE TABLE `grandslam` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `ciudad` varchar(30) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `superficie` varchar(15) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `descripcion` varchar(1000) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `premio` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `grandslam`
--

INSERT INTO `grandslam` (`id`, `nombre`, `ciudad`, `superficie`, `descripcion`, `premio`) VALUES
(1, 'Australian Open', 'Mellbourne, Australia', 'Cemento', '\r\nWhere Stars Are Born \r\nThe 2016 Australian Open marks the 105th staging of the event. In recent years, the Australian Open has often provided the platform for unheralded players to emerge with Jo-Wilfried Tsonga (2008), Marcos Baghdatis (2006), Rainer Schuettler (2003) and Arnaud Clement (2001) among the surprise finalists. In 2014, Stanislas Wawrinka defeated Novak Djokovic and Rafael Nadal to win his first Grand Slam title. A year later, Djokovic became the first man in the Open Era to win five Australian Open titles.', 19703000),
(2, 'Roland Garros', 'Paris, Francia', 'Arcilla', 'Tennis Heroes Grace Roland Garros Clay Courts\r\nRoland Garros was the first Grand Slam tournament to join the "Open" era in 1968, and since then many tennis greats have graced the famous clay courts, including Björn Borg, Ivan Lendl, Mats Wilander, Gustavo Kuerten, Roger Federer and Rafael Nadal. Home fans will never forget 1983, the year Yannick Noah became the first, and so far only Frenchman to win the singles title. In 2014, Nadal became the first man in tennis history to win nine titles at the same Grand Slam championship.', 16008750),
(3, 'Wimbledon', 'Londres, Gran Bretaña', 'Cesped', 'History And Tradition At Wimbledon\r\nSince the first Championships in 1877, Wimbledon has grown from its roots as a garden-party tournament to a Grand Slam tournament with a following of millions around the world. The only Slam contested on grass continues to honour many long-standing traditions, including a strict dress code for competitors, the eating of strawberries and cream, and royal patronage. In 2013, Andy Murray became the first British male singles champion since Fred Perry in 1936.', 13163000),
(4, 'Us Open', 'Nueva York, USA', 'Cemento', 'US Open Evolves Into Grand Slam Spectacular\r\nThe US Open bears little resemblance to the tournament started in 1881. It has evolved from an exclusive men''s singles and doubles tournament in Newport, R.I., to a two-week sports and entertainment extravaganza held in Flushing, N.Y. More than 700,000 fans enter the gates annually at the USTA Billie Jean King National Tennis Center.', 21862744);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jugadores`
--

CREATE TABLE `jugadores` (
  `id` int(3) NOT NULL,
  `jugador` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `pais` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `ranking` int(4) NOT NULL,
  `mano` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `ganados` int(3) NOT NULL,
  `perdidos` int(3) NOT NULL,
  `puntos` int(4) NOT NULL,
  `imagen` varchar(20) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `jugadores`
--

INSERT INTO `jugadores` (`id`, `jugador`, `pais`, `ranking`, `mano`, `ganados`, `perdidos`, `puntos`, `imagen`) VALUES
(1, 'Roger Federer', 'Suiza', 1, 'Derecho', 950, 300, 15000, 'federer.png'),
(2, 'Andy Murray', 'Gran Bretaña', 2, 'Derecho', 600, 200, 12000, 'murray.png'),
(3, 'Rafael Nadal', 'España', 3, 'Izquierdo', 700, 225, 11000, 'nadal.png'),
(4, 'Novak Djokovic', 'Serbia', 4, 'Derecho', 300, 100, 9500, 'djokovic.png'),
(5, 'Stanislas Wawrinka', 'Suiza', 5, 'Derecho', 350, 250, 8500, 'wawrinka.png'),
(6, 'Thanassi Kokkinakis', 'Australia', 6, 'Derecho', 125, 20, 8200, 'kokkinakis.png'),
(7, 'Dominic Thiem', 'Austria', 7, 'Derecho', 175, 60, 6500, 'thiem.png'),
(8, 'Nick Kyrgios', 'Australia', 8, 'Derecho', 150, 30, 6000, 'kyrgios.png'),
(9, 'Tomas Berdych', 'Republica Checa', 9, 'Derecho', 600, 400, 5700, 'berdych.png'),
(10, 'Grigor Dimitrov', 'Bulgaria', 10, 'Derecho', 300, 225, 5500, 'dimitrov.png'),
(11, 'J.Martin del Potro', 'Argentina', 11, 'Derecho', 450, 375, 5000, 'del potro.png'),
(12, 'David Ferrer', 'España', 12, 'Derecho', 600, 550, 4500, 'ferrer.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posts`
--

CREATE TABLE `posts` (
  `id` int(3) NOT NULL,
  `titulo` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` varchar(1000) COLLATE utf8_spanish_ci NOT NULL,
  `imagen` varchar(20) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `posts`
--

INSERT INTO `posts` (`id`, `titulo`, `descripcion`, `imagen`) VALUES
(1, 'LA BATALLA POR EL Nº 1 ESTÁ A SÓLO DÍAS DE DEFINIR', '¿Quién va a terminar  el año como el Nº 1? Tras cuatro días de disputar las Finales Barclays ATP World Tour, no estamos muy cerca de la respuesta. \r\n\r\nNi Andy Murray ni Novak Djokovic le han dado al otro un centímetro de ventaja en la batalla por terminar como Nº 1 al final del año en el Emirates ATP Rankings. Ambos han empezado el torneo con dos victorias en el Round-Robin, dejando a Murray con un liderazgo de 130 puntos sobre el serbio, el mismo margen con el que entró al torneo.\r\n\r\nEn el papel, Murray está delante de Djokovic con 405 puntos, pero el escocés verá los 275 puntos que ganó en la Copa Davis 2015 de su total de puntos el 28 de noviembre, el día en que son calculados los rankings de final de año. Así que, efectivamente deja a Murray con 130 puntos de ventaja en la mitad del final de temporada. \r\n\r\nDjokovic tiene ventaja sobre Murray: él ya ha alcanzado las semifinales. Murray tiene grandes posibilidades también, tras dos victorias sobre Marin Cilic y Kei Nishikori. Pero el', '01.jpg'),
(2, 'Djokovic remains perfect in London', 'Novak Djokovic firmly kept the pressure on Andy Murray in the battle for year-end No. 1 in the Emirates ATP Rankings on Thursday. The Serbian dominated David Goffin during their Barclays ATP World Tour Finals round-robin match, beating the Belgian 6-1, 6-2 in 70 minutes.\r\n\r\nDjokovic, the second seed in London, improved to 3-0 in Group Ivan Lendl and clinched his fifth consecutive semi-final appearance in London. The four-time defending champion now awaits the second-place finisher in Group John McEnroe, which could be Murray, Stan Wawrinka or Kei Nishikori. Wawrinka and Murray face off on Friday afternoon, and Nishikori will meet Cilic during Friday''s evening session.\r\n\r\nOn paper Murray is 205 points ahead of Djokovic, but the Scot will see the 275 points he earned in the 2015 Davis Cup final fall from his points total on 28 November, the day the year-end rankings are calculated. So, that effectively leaves Murray, who has played one less match in London than Djokovic, 70 points behind', '2.jpg'),
(3, 'LOS BRYAN YA ESTÁN EN SEMIFINALES', 'Ganar o ganar. No había otra opción posible para seguir con vida en las Finales Barclays ATP World Tour. Las dos parejas que inauguraron la jornada de este jueves en el O2 Arena necesitaban la victoria para aferrarse a sus opciones de estar en semifinales. Los cabezas de serie No. 3 Bob y Mike Bryan cumplieron su condición de favoritos ante los No. 8 Treat Huey y Max Mirnyi, tras imponerse por 6-4, 6-4.\r\n\r\nEn una hora los gemelos estadounidenses pusieron pie y medio en la Final Four en Londres. Y es que la igualdad en el Grupo Edberg/Jarryd antes de que arrancase la jornada era máxima. Los cuatro equipos de dobles partían con opciones de clasificarse a semifinales.\r\n\r\nTras la victoria de hoy, Bob y Mike Bryan ya están en la Final Four, sin necesidad a esperar al encuentro entre Murray/Soares y Dodig Melo. El escocés y el brasileño a su vez sólo requieren de 7 juegos (8 si llegan al tie-break) para acompañar a los americanos. La posición final la determinará el resultado de esta noche.\r', '3.jpg'),
(4, 'EL SUEÑO DE WAWRINKA SIGUE VIVO', 'Perder en el estreno de las Finales Barclays ATP World Tour también tiene su lado positivo. Acostumbrados a la eliminación súbita en la temporada, aprovechan la segunda oportunidad que da el formato, con los músculos menos tensionados y sin tener el peso del favoritismo sobre los hombros. Así se han coronado cinco tenistas en la historia del torneo y Stan Wawrinka lo sabe.\r\n\r\nMás que eso, asume su condición de émulo. En 2015 cayó en el debut con Rafael Nadal y terminó avanzando por tercer año seguido a las semifinales en las #ATPFinals (l. Djokovic). Este miércoles, con la derrota ante Kei Nishikori en el recuerdo, venció a Marin Cilic por 7-6(3), 7-6(3) en una hora y 58 minutos para recuperar el camino en el O2 Arena de Londres.\r\n\r\nEl suizo, el tenista más veterano del certamen con 31 años, se aprovechó de su paternidad frente al croata, sumando su séptima victoria seguida y poniendo 11-2 el historial entre ambos. El sueño de ganar por primera vez unas Finales sigue intacto y el viern', '4.jpg'),
(5, 'RAONIC VS. THIEM: SIN MARGEN DE ERROR', 'El último partido del día este jueves en las Finales Barclays ATP World Tour estará de infarto. Milos Raonic medirá a Dominic Thiem y el ganador superará la fase de grupos. Sí o sí de ese partido saldrá un semifinalista primerizo en el certamen disputado en el O2 Arena de Londres.\r\n\r\nPodrían ocurrir dos escenarios. O se da el primer canadiense o el primer austriaco en esta ronda en la historia del torneo. Y el segundo escenario sugeriría que Thiem supere lo hecho por Tomas Muster en sus cuatro participaciones entre 1990 y 1997.\r\n\r\nEl canadiense de 25 años arrastra en el grupo con una derrota ante Novak Djokovic y una victoria frente a Gael Monfils. Ambos partidos en sets corridos. El austriaco, sin embargo, viene de menos a más: cayó en el estreno con el ‘Nole’ y en la última jornada derrotó a Monfils, llegando así a su primer triunfo en el O2.\r\n\r\nRaonic tratará de alcanzar su novena SF del año y Thiem su undécima. Si gana este jueves, Thiem podría convertirse en el semifinalista más j', '5.jpg'),
(6, 'MURRAY DEFIENDE SU CONDICIÓN DE NO. 1', 'Andy Murray perseguía empezar esta edición de las Finales Barclays ATP World Tour con un récord de 2-0 por primera vez desde que debutó en esta competición en Shanghái 2008. Pero para conseguirlo, el No. 1 del Emirates Ranking ATP debía superar al cabeza de serie No. 5 Kei Nishikori. Y así lo hizo. En un partido en el que además de muñeca necesitó garra y corazón, acabó firmando la victoria en el O2 Arena por 6-7(9), 6-4, 6-4 después de tres horas y 20 minutos.\r\n\r\nEl británico, que dominaba el FedEx ATP Head2Haed por 7-2, añadió una victoria más al cara a cara con el japonés. El duelo sirvió de revancha, después de que Nishikori se hubiese impuesto en el último enfrentamiento entre ambos en la pasada edición del US Open, tras una espectacular batalla a cinco sets en la que acabó remontando.\r\n\r\nNishikori, que conservaba un balance de 2-13 en sus partidos ante un No. 1 del mundo, estuvo cerca de sumar una tercera, pero Murray no dejó escapar 200 puntos vitales en su carrera para conserva', '6.jpg'),
(7, 'FELICIANO: "TODO ES DIFERENTE EN THE O2"', 'Durante mis 16 años de carrera profesional he jugado en centenares de estadios. Me he deslizado en la hierba de la Centre Court del All England Tennis Club. He resbalado sobre la tierra batida del Monte-Carlo Country Club. En Indian Wells he perdido la noción del tiempo observando las montañas de Palm Desert mientras visitaba la ciudad para jugar el BNP Paribas Open. \r\n\r\nPero ningún lugar, incluyendo los muchos torneos a cubiertos que jugamos cada año, me preparó para lo que me encontraría en las Barclays ATP World Tour Finals. Por decirlo de manera simple, todo es diferente en The O2.\r\n\r\nComencemos por la iluminación. Durante 10 meses del año jugamos los partidos al aire libre. En ocasiones el sol ciega tu visión al lanzarte la pelota. Otros días, las nubes tapan el cielo y puedes jugar bajo cielos cubiertos.\r\n\r\nPero en The O2, tenemos luz total y toda se cierne sobre ti. Quizá por ello hagan muchos conciertos en este escenario pero, durante el juego, el estadio se asemeja a un teatro', '7.jpg'),
(8, 'Murray: "Fue Un Partido Durísimo"', 'Firmar el partido a tres mangas más largo de las Barclays ATP World Tour Finals desde que se tienen registros (1991) fue el esfuerzo que necesitó Andy Murray para salvar el miércoles. El británico, que empleó tres horas y 20 minutos para remontar (6-7(9) 6-4 6-4) al japonés Kei Nishikori, tomó el liderato del Grupo Ivan Lendl y quedó a un paso de sacar el billete para las semifinales. El choque ante el asiático, de una intensidad permanente, fue un test de aguante para el número 1 mundial. “Durante el primer set y al principio del segundo él estaba dictando en muchos puntos. En un momento dado del primer set vi un gráfico en el que decía que yo había puesto en pista el 96% de los restos. No hubo puntos cortos con su saque. El partido fue un intercambio tras otro” recitó el escocés, que abordó un choque sin lugar para el respiro. “En una superficie como esta suele haber puntos más rápidos, aces, restos que no llegas a colocar en pista. Pero todos los puntos fueron cometidos y necesitaba', '8.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `torneos`
--

CREATE TABLE `torneos` (
  `id` int(3) NOT NULL,
  `descripcion` varchar(500) COLLATE utf8_spanish_ci NOT NULL,
  `torneo` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `tipo` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `imagen` varchar(20) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `torneos`
--

INSERT INTO `torneos` (`id`, `descripcion`, `torneo`, `tipo`, `imagen`) VALUES
(1, 'The Gem Of the Mediterranean\r\nThe Monte-Carlo Rolex Masters, which celebrated its 100th anniversary in 2006, is the first of three ATP World Tour Masters 1000 tournaments played on clay at the Monte-Carlo Country Club. The tournament is a player and fan favourite due to its magnificent location and long tradition of champions. Spain''s Rafael Nadal won an Open Era record eight successive title there between 2005-2012.', 'Roma', 'Masters 1000', 'roma.jpg'),
(2, 'The Gem Of the Mediterranean\r\nThe Monte-Carlo Rolex Masters, which celebrated its 100th anniversary in 2006, is the first of three ATP World Tour Masters 1000 tournaments played on clay at the Monte-Carlo Country Club. The tournament is a player and fan favourite due to its magnificent location and long tradition of champions. Spain''s Rafael Nadal won an Open Era record eight successive title there between 2005-2012.', 'Paris', 'Masters 1000', 'paris.png'),
(3, 'The Gem Of the Mediterranean\r\nThe Monte-Carlo Rolex Masters, which celebrated its 100th anniversary in 2006, is the first of three ATP World Tour Masters 1000 tournaments played on clay at the Monte-Carlo Country Club. The tournament is a player and fan favourite due to its magnificent location and long tradition of champions. Spain''s Rafael Nadal won an Open Era record eight successive title there between 2005-2012.', 'Madrid', 'Masters 1000', 'madrid.png'),
(4, 'The Gem Of the Mediterranean\nThe Monte-Carlo Rolex Masters, which celebrated its 100th anniversary in 2006, is the first of three ATP The Gem Of the Mediterranean\nThe Monte-Carlo Rolex Masters, which celebrated its 100th anniversary in 2006, is the first of three ATP World Tour Masters 1000 tournaments played on clay at the Monte-Carlo Country Club. The tournament is a player and fan favourite due to its magnificent location and long tradition of champions. Spain''s Rafael Nadal won an Open Era r', 'Indian Wells', 'Masters 1000', 'indianwells.jpg'),
(5, 'The Gem Of the Mediterranean\r\nThe Monte-Carlo Rolex Masters, which celebrated its 100th anniversary in 2006, is the first of three ATP World Tour Masters 1000 tournaments played on clay at the Monte-Carlo Country Club. The tournament is a player and fan favourite due to its magnificent location and long tradition of champions. Spain''s Rafael Nadal won an Open Era record eight successive title there between 2005-2012.', 'Buenos Aires', 'ATP 250', 'buenosaires.jpg'),
(6, 'The Gem Of the Mediterranean\r\nThe Monte-Carlo Rolex Masters, which celebrated its 100th anniversary in 2006, is the first of three ATP World Tour Masters 1000 tournaments played on clay at the Monte-Carlo Country Club. The tournament is a player and fan favourite due to its magnificent location and long tradition of champions. Spain''s Rafael Nadal won an Open Era record eight successive title there between 2005-2012.', 'Zagreb', 'ATP 250', 'zagreb.jpg'),
(7, 'The Gem Of the Mediterranean\r\nThe Monte-Carlo Rolex Masters, which celebrated its 100th anniversary in 2006, is the first of three ATP World Tour Masters 1000 tournaments played on clay at the Monte-Carlo Country Club. The tournament is a player and fan favourite due to its magnificent location and long tradition of champions. Spain''s Rafael Nadal won an Open Era record eight successive title there between 2005-2012.', 'Washington', 'ATP 500', 'washington.jpg'),
(8, 'The Gem Of the Mediterranean\r\nThe Monte-Carlo Rolex Masters, which celebrated its 100th anniversary in 2006, is the first of three ATP World Tour Masters 1000 tournaments played on clay at the Monte-Carlo Country Club. The tournament is a player and fan favourite due to its magnificent location and long tradition of champions. Spain''s Rafael Nadal won an Open Era record eight successive title there between 2005-2012.', 'Masters Barclays ATP', 'Masters 1500', 'masters.jpg'),
(9, 'The Gem Of the Mediterranean\r\nThe Monte-Carlo Rolex Masters, which celebrated its 100th anniversary in 2006, is the first of three ATP World Tour Masters 1000 tournaments played on clay at the Monte-Carlo Country Club. The tournament is a player and fan favourite due to its magnificent location and long tradition of champions. Spain''s Rafael Nadal won an Open Era record eight successive title there between 2005-2012.', 'Rio', 'ATP 500', 'rio.jpg'),
(10, 'The Gem Of the Mediterranean\r\nThe Monte-Carlo Rolex Masters, which celebrated its 100th anniversary in 2006, is the first of three ATP World Tour Masters 1000 tournaments played on clay at the Monte-Carlo Country Club. The tournament is a player and fan favourite due to its magnificent location and long tradition of champions. Spain''s Rafael Nadal won an Open Era record eight successive title there between 2005-2012.', 'Miami', 'Masters 1000', 'miami.jpg'),
(11, 'The Gem Of the Mediterranean\r\nThe Monte-Carlo Rolex Masters, which celebrated its 100th anniversary in 2006, is the first of three ATP World Tour Masters 1000 tournaments played on clay at the Monte-Carlo Country Club. The tournament is a player and fan favourite due to its magnificent location and long tradition of champions. Spain''s Rafael Nadal won an Open Era record eight successive title there between 2005-2012.', 'Cincinnati', 'Masters 1000', 'cincinnati.jpg'),
(12, 'The Gem Of the Mediterranean\r\nThe Monte-Carlo Rolex Masters, which celebrated its 100th anniversary in 2006, is the first of three ATP World Tour Masters 1000 tournaments played on clay at the Monte-Carlo Country Club. The tournament is a player and fan favourite due to its magnificent location and long tradition of champions. Spain''s Rafael Nadal won an Open Era record eight successive title there between 2005-2012.', 'Montecarlo', 'Masters 1000', 'montecarlo.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `grandslam`
--
ALTER TABLE `grandslam`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `jugadores`
--
ALTER TABLE `jugadores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `torneos`
--
ALTER TABLE `torneos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `grandslam`
--
ALTER TABLE `grandslam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `jugadores`
--
ALTER TABLE `jugadores`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `torneos`
--
ALTER TABLE `torneos`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
