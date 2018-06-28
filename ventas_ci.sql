-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-06-2018 a las 03:23:53
-- Versión del servidor: 10.1.25-MariaDB
-- Versión de PHP: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ventas_ci`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`, `descripcion`, `estado`) VALUES
(1, 'Camisas', NULL, 0),
(2, 'Playera', NULL, 1),
(3, 'Vestido', NULL, 1),
(4, 'Pantalon', NULL, 1),
(8, 'Blusa', NULL, 1),
(9, 'Accesorios', NULL, 1),
(10, 'Camisa Manga Larga', NULL, 1),
(11, 'Camisa Manga Corta', NULL, 1),
(12, 'Shorts', NULL, 1),
(13, 'Sport', NULL, 1),
(14, 'Pants', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `data` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `user_agent`, `data`) VALUES
('7od4v6gk00l3r0r0okacknib532pspqv', '::1', 1530131851, '', ''),
('igufufoo6fualn60rm0l5qsfphb4m5se', '::1', 1529815045, '', '__ci_last_regenerate|i:1529815045;user|s:0:\"\";');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colores`
--

CREATE TABLE `colores` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `colores`
--

INSERT INTO `colores` (`id`, `nombre`, `estado`) VALUES
(1, 'Rojo', 1),
(2, 'Azul', 1),
(3, 'Negro', 1),
(4, 'Verde', 1),
(5, 'Plata', 1),
(6, 'Dorado', 1),
(7, 'Amarillo', 1),
(8, 'Morado', 1),
(9, 'Blanco', 1),
(10, 'Marron', 1),
(11, 'Naranja', 1),
(12, 'Rosa', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_venta`
--

CREATE TABLE `detalle_venta` (
  `id` int(11) NOT NULL,
  `producto_id` int(11) DEFAULT NULL,
  `venta_id` int(11) DEFAULT NULL,
  `precio` varchar(45) DEFAULT NULL,
  `cantidad` varchar(45) DEFAULT NULL,
  `importe` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `detalle_venta`
--

INSERT INTO `detalle_venta` (`id`, `producto_id`, `venta_id`, `precio`, `cantidad`, `importe`) VALUES
(1, 2, 1, '489.99', '1', '489.99'),
(2, 1, 3, '359.99', '5', '1799.95'),
(3, 1, 5, '359.99', '1', '359.99'),
(4, 9, 6, '499.99', '1', '499.99'),
(5, 6, 7, '349.99', '3', '1049.97'),
(6, 5, 8, '10', '6', '60.00'),
(7, 8, 9, '599.99', '3', '1799.97'),
(8, 5, 9, '10', '3', '30.00'),
(9, 1, 10, '359.99', '3', '1079.97'),
(10, 9, 10, '499.99', '2', '999.98');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `history`
--

CREATE TABLE `history` (
  `id` int(11) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `url` varchar(255) NOT NULL,
  `navegador` varchar(255) NOT NULL,
  `date` int(11) NOT NULL,
  `plataforma` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menus`
--

CREATE TABLE `menus` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `link` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `menus`
--

INSERT INTO `menus` (`id`, `nombre`, `link`) VALUES
(1, 'Inicio', 'dashboard'),
(2, 'Categorias', 'mantenimiento/categorias'),
(3, 'Clientes', 'mantenimiento/clientes'),
(4, 'Productos', 'mantenimiento/productos'),
(5, 'Ventas', 'movimiento/ventas'),
(6, 'Ventas', 'reportes/ventas'),
(7, 'Usuarios', 'administrador/usuarios'),
(8, 'Permisos', 'administrador/permisos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--

CREATE TABLE `permisos` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `rol_id` int(11) NOT NULL,
  `read` int(11) NOT NULL,
  `insert` int(11) NOT NULL,
  `update` int(11) NOT NULL,
  `delete` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `permisos`
--

INSERT INTO `permisos` (`id`, `menu_id`, `rol_id`, `read`, `insert`, `update`, `delete`) VALUES
(1, 1, 1, 1, 1, 1, 1),
(5, 2, 2, 1, 1, 0, 1),
(6, 2, 1, 1, 1, 1, 1),
(7, 8, 2, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `codigo` varchar(20) NOT NULL,
  `marca` varchar(45) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `color_id` int(11) DEFAULT NULL,
  `precio` varchar(45) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `categoria_id` int(11) DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `codigo`, `marca`, `descripcion`, `color_id`, `precio`, `stock`, `categoria_id`, `estado`) VALUES
(1, 'D0001', 'Levis', 'Estilo Slim Tallas 30-40', 2, '359.99', 16, 4, 1),
(2, 'D0002', 'Oggi Jeans', 'Estilo Recto Tallas 25-37', 3, '489.99', 16, 4, 1),
(3, 'D0003', 'Lacoste', 'Playera tipo polo', 4, '289.99', 15, 2, 1),
(4, 'D0004', 'Hang teen', 'Manga Corta, de cuello y en talla chica', 4, '299.99', 10, 8, 1),
(5, 'D0005', 'Aretes', 'Con piedras brillosas', 5, '10', 4, 9, 1),
(6, 'D0006', 'Hollister', 'Playera tipo polo', 4, '349.99', 19, 2, 1),
(7, 'D0007', 'Polo', 'Playera de cuello', 11, '299.99', 18, 2, 1),
(8, 'D0008', 'Britoos', 'Pantalones cortos', 2, '599.99', 21, 4, 1),
(9, 'D0009', 'Cuidado Con el Perro', 'Pantalon con cortes', 3, '499.99', 9, 4, 1),
(10, 'D0010', 'Carolina herrera', 'Pantalon de Dama', 9, '569.99', 16, 4, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `nombre`, `descripcion`) VALUES
(1, 'Administrador', 'Control total'),
(2, 'Usuario', 'Control de ciertos modulos'),
(3, 'Super_Administrador', 'control total');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_cliente`
--

CREATE TABLE `tipo_cliente` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_comprobante`
--

CREATE TABLE `tipo_comprobante` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `igv` int(11) DEFAULT NULL,
  `serie` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipo_comprobante`
--

INSERT INTO `tipo_comprobante` (`id`, `nombre`, `cantidad`, `igv`, `serie`) VALUES
(1, 'Factura', 2, 18, '001'),
(2, 'Boleta', 11, 0, '001');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_documento`
--

CREATE TABLE `tipo_documento` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipo_documento`
--

INSERT INTO `tipo_documento` (`id`, `nombre`, `cantidad`) VALUES
(2, 'wdwe', 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `paterno` varchar(100) DEFAULT NULL,
  `materno` varchar(100) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `rol_id` int(11) DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `paterno`, `materno`, `telefono`, `email`, `username`, `password`, `rol_id`, `estado`) VALUES
(1, 'Jesus Arturo', 'Carmona', 'Aguirre', '9821104017', 'jessarturo97@gmail.com', 'Administrador', 'Arthuro97.', 1, 1),
(4, 'Bernabe', 'Cantun', 'Dominguez', '9828287892793', 'berny@gmail.com', 'Usuario', 'Cantun97.', 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `subtotal` varchar(45) DEFAULT NULL,
  `igv` varchar(45) DEFAULT NULL,
  `descuento` varchar(45) DEFAULT NULL,
  `total` varchar(45) DEFAULT NULL,
  `tipo_comprobante_id` int(11) DEFAULT NULL,
  `cliente_id` varchar(100) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `num_documento` varchar(45) DEFAULT NULL,
  `serie` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `fecha`, `subtotal`, `igv`, `descuento`, `total`, `tipo_comprobante_id`, `cliente_id`, `usuario_id`, `num_documento`, `serie`) VALUES
(1, '2018-06-18', '489.99', '0.00', '0.00', '489.99', 2, 'Jesus Arturo Carmona Aguirre', 1, '000004', '001'),
(3, '2018-06-19', '1799.95', '0.00', '0.00', '1799.95', 2, 'Indra Alaina Montejo Canche', 1, '000005', '001'),
(5, '2018-06-11', '359.99', '0.00', '0.00', '359.99', 2, 'Krizthel Baños Hernandez', 1, '000006', '001'),
(6, '2018-06-10', '499.99', '0.00', '0.00', '499.99', 2, 'Bernabe Cantun Dominguez', 1, '000007', '001'),
(7, '2018-06-06', '1049.97', '0.00', '0.00', '1049.97', 2, 'Marcos Cantun Dominguez', 1, '000008', '001'),
(8, '2018-06-13', '60.00', '0.00', '0.00', '60.00', 2, 'Fredy Luciano Barrientos Patricio', 1, '000009', '001'),
(9, '2018-06-15', '1829.97', '0.00', '0.00', '1829.97', 2, 'Diana Gongora Betancourt', 1, '000010', '001'),
(10, '2018-06-01', '2079.95', '0.00', '0.00', '2079.95', 2, 'Jesus Arturo Carmona Aguirre', 1, '000011', '001');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre_UNIQUE` (`nombre`);

--
-- Indices de la tabla `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`,`ip_address`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indices de la tabla `colores`
--
ALTER TABLE `colores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre_UNIQUE` (`nombre`);

--
-- Indices de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_venta_detalle_idx` (`venta_id`),
  ADD KEY `fk_producto_detalle_idx` (`producto_id`);

--
-- Indices de la tabla `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_id` (`menu_id`),
  ADD KEY `rol_id` (`rol_id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `codigo` (`codigo`),
  ADD KEY `fk_categoria_producto_idx` (`categoria_id`),
  ADD KEY `fk_colores_producto_idx` (`color_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre_UNIQUE` (`nombre`);

--
-- Indices de la tabla `tipo_cliente`
--
ALTER TABLE `tipo_cliente`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre_UNIQUE` (`nombre`);

--
-- Indices de la tabla `tipo_comprobante`
--
ALTER TABLE `tipo_comprobante`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo_documento`
--
ALTER TABLE `tipo_documento`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre_UNIQUE` (`nombre`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`),
  ADD UNIQUE KEY `username_UNIQUE` (`username`),
  ADD KEY `fk_rol_usuarios_idx` (`rol_id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `num_documento_UNIQUE` (`num_documento`),
  ADD KEY `fk_usuario_venta_idx` (`usuario_id`),
  ADD KEY `fk_tipo_comprobante_venta_idx` (`tipo_comprobante_id`) USING BTREE;

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT de la tabla `colores`
--
ALTER TABLE `colores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT de la tabla `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `permisos`
--
ALTER TABLE `permisos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `tipo_cliente`
--
ALTER TABLE `tipo_cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tipo_comprobante`
--
ALTER TABLE `tipo_comprobante`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `tipo_documento`
--
ALTER TABLE `tipo_documento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD CONSTRAINT `fk_producto_detalle` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_venta_detalle` FOREIGN KEY (`venta_id`) REFERENCES `ventas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD CONSTRAINT `permisos_ibfk_1` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`),
  ADD CONSTRAINT `permisos_ibfk_2` FOREIGN KEY (`rol_id`) REFERENCES `menus` (`id`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `fk_categoria_producto` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_colores_producto` FOREIGN KEY (`color_id`) REFERENCES `colores` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `fk_rol_usuarios` FOREIGN KEY (`rol_id`) REFERENCES `roles` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `fk_tipo_documento_venta` FOREIGN KEY (`tipo_comprobante_id`) REFERENCES `tipo_documento` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_usuario_venta` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
