create database ProyectoSTIS;
use ProyectoSTIS;

CREATE TABLE `proyectostis`.`cliente` (
  `idCliente` INT NOT NULL,
  `Nombre` VARCHAR(45) NULL,
  `Edad` INT NULL,
  `id_direccion` INT NOT NULL,
  `id_producto` INT NOT NULL,
  PRIMARY KEY (`idCliente`),
  UNIQUE INDEX `idCliente_UNIQUE` (`idCliente` ASC),
  UNIQUE INDEX `id_direccion_UNIQUE` (`id_direccion` ASC)
  );
CREATE TABLE `proyectostis`.`producto` (
  `id_Producto` INT NOT NULL,
  `Nombre` VARCHAR(45) NULL,
  PRIMARY KEY (`id_Producto`),
  UNIQUE INDEX `id_Producto_UNIQUE` (`id_Producto` ASC)
  ADD CONSTRAINT `FK_Id_Producto`
  FOREIGN KEY (`id_Producto`)
  REFERENCES `proyectostis`.`cliente` (`idCliente`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
);
CREATE TABLE `proyectostis`.`detalle producto` (
  `id_producto` INT NOT NULL,
  `tipo_categoria` INT NULL,
  `Nombre` VARCHAR(45) NULL,
  `Precio` DOUBLE NULL,
  `Fecha_Compra` VARCHAR(45) NULL,
  `Fecha_Llegada` VARCHAR(45) NULL,
  PRIMARY KEY (`id_producto`)
);
CREATE TABLE `proyectostis`.`comprador` (
  `idComprador` INT NOT NULL,
  `Nombre` VARCHAR(45) NULL,
  PRIMARY KEY (`idComprador`),
  UNIQUE INDEX `idComprador_UNIQUE` (`idComprador` ASC)
  );
  CREATE TABLE `proyectostis`.`tipo cliente` (
  `idTipo_Cliente` INT NOT NULL,
  `Desripcion` VARCHAR(45) NULL,
  PRIMARY KEY (`idTipo_Cliente`),
  UNIQUE INDEX `idTipo_Cliente_UNIQUE` (`idTipo_Cliente` ASC)
  );
  CREATE TABLE `proyectostis`.`tipo oferta` (
  `idTipoOferta` INT NOT NULL,
  `idPublicista` INT NULL,
  `Descripcion` VARCHAR(200) NULL,
  PRIMARY KEY (`idTipoOferta`),
  UNIQUE INDEX `idTipoOferta_UNIQUE` (`idTipoOferta` ASC));
