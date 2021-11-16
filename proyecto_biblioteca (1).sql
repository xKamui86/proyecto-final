-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-11-2021 a las 20:04:02
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto_biblioteca`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ejemplares`
--

CREATE TABLE `ejemplares` (
  `Id_ejemplares` int(11) NOT NULL,
  `Estado` varchar(50) NOT NULL,
  `Isbn` varchar(50) NOT NULL,
  `Contador` varchar(50) NOT NULL,
  `Titulo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `id` int(11) NOT NULL,
  `Autor` varchar(50) NOT NULL,
  `Titulo` varchar(50) NOT NULL,
  `Categoria` varchar(50) NOT NULL,
  `Editorial` varchar(50) NOT NULL,
  `año_publicacion` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`id`, `Autor`, `Titulo`, `Categoria`, `Editorial`, `año_publicacion`) VALUES
(1, 'Miguel de Cervantes', 'DonQuijote de La Mancha I', 'Caballeresco', 'Anaya', 1991),
(2, 'Miguel de Cervantes', 'Don Quijote de La Mancha II', 'Caballeresco', 'Anaya', 1991),
(3, 'William Faulkner', 'Historias de Nueva Orleans', 'Novela', 'Alfaguara', 1985),
(4, 'Antoine Saint-Exupery', 'El principito', 'Aventura', 'Andina', 1996),
(5, 'Maquiavelo', 'El príncipe', 'Político', 'S.M.', 1995),
(6, 'Henry Kissinger', 'Diplomacia', 'Político', 'S.M.', 1997),
(7, 'Kitty Kelley', 'Los Windsor', 'Biografías', 'Plaza & Janés', 1998),
(8, 'Pu-Yi', 'El Último Emperador', 'Autobiografías', 'Caralt', 1989),
(9, 'Pérez Galdós', 'Fortunata y Jacinta', 'Novela', 'Plaza & Janés', 1984),
(10, 'David Trueba', 'Saber perder', 'Novela psicológica', 'ANAGRAMA', 2008),
(11, 'Irvine Welsh', 'Trainspotting', 'novela', 'TRAD. FEDERICO CORRIENTE BASÚS', 1993),
(12, 'Francisco Umbral', 'Mortal y rosa', 'obra híbrida', 'AUSTRAL', 1975),
(13, 'William S. Burroughs', 'Queer', 'novela', 'TRAD. MARCIA SOUTO', 1985),
(14, 'Kirmen Uribe', 'Bilbao-New York-Bilbao', 'Ficción', 'TRAD. ANA ARREGI', 2008),
(15, 'Herman Melville', 'Moby Dick', 'ficción náutica', 'TRAD. INGA PELLISA DÍAZ Y ENRIQUE PEZZONI', 0000),
(16, 'F. Scott Fitzgerald', 'El gran Gatsby', 'Tragedia', 'Austral', 1925),
(17, 'Almudena Grandes', 'El corazón helado', 'novela', 'TUSQUETS', 2007),
(18, 'Charles Dickens', 'Historia de dos ciudades', 'Novela', 'Alianza', 0000),
(19, 'Robert Louis Stevenson', 'La isla del tesoro', 'novela de aventuras en el mar', 'Anaya', 0000),
(20, 'Jane Austen', 'Orgullo y prejuicio', 'Novela costumbrista', 'Penguin Clásicos', 0000),
(21, 'J. D. Salinger', 'El guardián entre el centeno', 'Ficción adulto joven', 'Alianza', 1951),
(22, 'George Orwell', '1984', 'Novela', 'DeBolsillo', 1949),
(23, 'Ernest Hemingway', 'El viejo y el mar', 'Alegoría', 'Debolsillo', 1952),
(24, 'Antony Burgess', 'La naranja mecánica', 'Ciencia ficción', 'Minotauro', 1962),
(25, 'Joseph Heller', 'Trampa 22', 'novela satírica', 'Random House', 1961);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reserva`
--

CREATE TABLE `reserva` (
  `Id_reservas` varchar(50) NOT NULL,
  `Fecha_inicio` varchar(50) NOT NULL,
  `Fecha_final` varchar(50) NOT NULL,
  `Fecha_cancelacion` varchar(50) NOT NULL,
  `Cedula` varchar(50) NOT NULL,
  `Id_ejemplares` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `revistas`
--

CREATE TABLE `revistas` (
  `id_revista` int(11) NOT NULL,
  `id_autor` int(11) NOT NULL,
  `titulo revista` varchar(150) NOT NULL,
  `categoria` varchar(60) NOT NULL,
  `año de publicacion` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `revistas`
--

INSERT INTO `revistas` (`id_revista`, `id_autor`, `titulo revista`, `categoria`, `año de publicacion`) VALUES
(1, 1, 'A review of definitions and measures of system resilience', 'Cientifico', 2016),
(2, 2, 'Global prevalence, treatment, and prevention of hepatitis B virus infection in 2016: a modelling study', 'Cientifico', 2018),
(3, 3, 'Fulvestrant 500 mg versus anastrozole 1 mg for hormone receptor-positive advanced breast cancer (FALCON): an international, randomised, double-blind, ', 'Cientifico', 2016),
(4, 4, 'Large optical nonlinearity of indium tin oxide in its epsilon-near-zero region', 'Cientifico', 2016),
(5, 5, 'Corruption and government: Causes, consequences, and reform: Second edition', 'Cientifico', 2016),
(6, 6, 'Co-creation and open innovation: Systematic literature review', 'Cientifico', 2018),
(7, 7, 'Synthesis, properties, and biomedical applications of gelatin methacryloyl (GelMA) hydrogels', 'Cientifico', 2015),
(8, 8, 'A review of commitment and implementation of sustainable development in higher education: Results from a worldwide survey', 'Cientifico', 2015),
(9, 9, 'Towards an operator 4.0 typology: A human-centric perspective on the fourth industrial revolution technologies', 'Cientifico', 2016),
(10, 10, 'Microalgae in aquafeeds for a sustainable aquaculture industry', 'Cientifico', 2018),
(11, 11, 'Parameter estimation of photovoltaic cells using an improved chaotic whale optimization algorithm', 'Cientifico', 2017),
(12, 12, 'Long-Term Results from an Epiretinal Prosthesis to Restore Sight to the Blind', 'Cientifico', 2015),
(13, 13, 'Five-Year Safety and Performance Results from the Argus II Retinal Prosthesis System Clinical Trial', 'Cientifico', 2016),
(14, 14, 'World Allergy Organization-McMaster University Guidelines for Allergic Disease Prevention (GLAD-P): Probiotics', 'Cientifico', 2015),
(15, 15, 'Coordinating a socially responsible closed-loop supply chain with product recycling', 'Cientifico', 2017),
(16, 16, 'Cross entropy based thresholding for magnetic resonance brain images using Crow Search Algorithm', 'Cientifico', 2017),
(17, 17, 'Factories of the future: challenges and leading innovations in intelligent manufacturing', 'Cientifico', 2017),
(18, 18, 'Smart manufacturing: Characteristics, technologies and enabling factors', 'Cientifico', 2019),
(19, 19, 'Joint optimization of price, replenishment frequency, replenishment cycle and production rate in vendor managed inventory system with deteriorating it', 'Cientifico', 2015),
(20, 20, 'Enterprise information systems state of the art: Past, present and future trends', 'Cientifico', 2016),
(21, 21, 'Engineering a sprayable and elastic hydrogel adhesive with antimicrobial properties for wound healing', 'Cientifico', 2017),
(22, 22, 'Dexamethasone implant for diabetic macular edema in naive compared with refractory eyes: The international retina group real-life 24-month multicenter', 'Cientifico', 2019),
(23, 23, 'Rapid Continuous Multimaterial Extrusion Bioprinting', 'Cientifico', 2017),
(24, 24, 'Photosynthetic bioenergy utilizing CO2: An approach on flue gases utilization for third generation biofuels', 'Cientifico', 2015),
(25, 25, 'Challenges and current developments for Sensing, Smart and Sustainable Enterprise Systems', 'Cientifico', 2016);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sanciones`
--

CREATE TABLE `sanciones` (
  `Id_sancion` varchar(50) NOT NULL,
  `Descripcion` varchar(50) NOT NULL,
  `Id_prestamo` varchar(50) NOT NULL,
  `Fecha_inicio` varchar(50) NOT NULL,
  `Fecha_entrega` varchar(50) NOT NULL,
  `Estado` varchar(50) NOT NULL,
  `Cedula` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `doc` int(11) NOT NULL,
  `phone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ejemplares`
--
ALTER TABLE `ejemplares`
  ADD PRIMARY KEY (`Id_ejemplares`);

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD PRIMARY KEY (`Id_reservas`);

--
-- Indices de la tabla `revistas`
--
ALTER TABLE `revistas`
  ADD PRIMARY KEY (`id_revista`);

--
-- Indices de la tabla `sanciones`
--
ALTER TABLE `sanciones`
  ADD PRIMARY KEY (`Id_sancion`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `libros`
--
ALTER TABLE `libros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `revistas`
--
ALTER TABLE `revistas`
  MODIFY `id_revista` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
