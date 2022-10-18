-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'Produits'
-- 
-- ---

DROP TABLE IF EXISTS `Produits`;
		
CREATE TABLE `Produits` (
  `id` INTEGER NOT NULL AUTO_INCREMENT DEFAULT NULL,
  `nom` VARCHAR NOT NULL DEFAULT 'NULL',
  `EAN` CHAR(16) NULL DEFAULT NULL,
  `prix` CHAR NOT NULL DEFAULT '0',
  `description` INTEGER NULL,
  `image` VARCHAR(256) NULL DEFAULT NULL,
  `id_categories` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'categories'
-- 
-- ---

DROP TABLE IF EXISTS `categories`;
		
CREATE TABLE `categories` (
  `nom` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`nom`)
);

-- ---
-- Foreign Keys 
-- ---

ALTER TABLE `Produits` ADD FOREIGN KEY (id) REFERENCES `categories` (`nom`);

-- ---
-- Table Properties
-- ---

-- ALTER TABLE `Produits` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `categories` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO `Produits` (`id`,`nom`,`EAN`,`prix`,`description`,`image`,`id_categories`) VALUES
-- ('','','','','','','');
-- INSERT INTO `categories` (`nom`) VALUES
-- ('');