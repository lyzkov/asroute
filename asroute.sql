DROP TABLE IF EXISTS "AS";
CREATE TABLE "AS" ("id" INTEGER PRIMARY KEY  AUTOINCREMENT  NOT NULL , "asname" TEXT NOT NULL , "asn" VARCHAR NOT NULL );
DROP TABLE IF EXISTS "ASBadanie";
CREATE TABLE "ASBadanie" ("id" INTEGER PRIMARY KEY  AUTOINCREMENT  NOT NULL , "id_badanie" INTEGER NOT NULL , "id_as" INTEGER NOT NULL  , "id_prev_as" INTEGER , "data" DATETIME NOT NULL , "prev_as_in_cidr" INTEGER NOT NULL );
DROP TABLE IF EXISTS "Host";
CREATE TABLE "Host" ("id" INTEGER PRIMARY KEY  AUTOINCREMENT  NOT NULL , "domena" VARCHAR NOT NULL  UNIQUE );
DROP TABLE IF EXISTS "HostBadanie";
CREATE TABLE "HostBadanie" ("id" INTEGER PRIMARY KEY  AUTOINCREMENT  NOT NULL , "id_host" INTEGER NOT NULL , "data" DATETIME NOT NULL , "adres_ip" VARCHAR NOT NULL );
DROP TABLE IF EXISTS "IP";
CREATE TABLE "IP" ("id" INTEGER PRIMARY KEY  AUTOINCREMENT  NOT NULL , "adres_ip" VARCHAR NOT NULL );
DROP TABLE IF EXISTS "IPBadanie";
CREATE TABLE "IPBadanie" ("id" INTEGER PRIMARY KEY  AUTOINCREMENT  NOT NULL , "id_asbadanie" INTEGER NOT NULL , "id_ip" INTEGER NOT NULL , "data" DATETIME NOT NULL );
