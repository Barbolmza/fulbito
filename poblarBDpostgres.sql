-- Fulbito.Avatar definition
CREATE TABLE Avatar (
  AvatarID serial PRIMARY KEY,
  RecetaHTML varchar(1600) NOT NULL
);

-- Fulbito.Partido definition
CREATE TABLE Partido (
  PartidoID serial PRIMARY KEY,
  FechaPartido date NOT NULL,
  GolesEquipo1 integer NOT NULL,
  GolesEquipo2 integer NOT NULL,
  PremioEquipo1 numeric(10,2),
  PremioEquipo2 numeric(10,2)
);

-- Fulbito.Jugador definition
CREATE TABLE Jugador (

  JugadorID serial PRIMARY KEY,
  Nombre varchar(100) NOT NULL,
  Apellido varchar(100) NOT NULL,
  PartidosJugados integer,
  Puntaje numeric(10,0),
  Apodo varchar(100),
  SuspensionesTotales integer DEFAULT 0,
  Valoracion numeric(10,6) DEFAULT 1.000000,
  AvatarID integer,
  CONSTRAINT Jugador_FK FOREIGN KEY (AvatarID) REFERENCES Avatar (AvatarID)
);

-- Fulbito.EquipoPartido definition
CREATE TABLE EquipoPartido (
  EquipoPartidoID serial PRIMARY KEY,
  PartidoID integer NOT NULL,
  JugadorID integer NOT NULL,
  Equipo integer NOT NULL,
  CONSTRAINT EquipoPartido_FK FOREIGN KEY (JugadorID) REFERENCES Jugador (JugadorID) ON UPDATE CASCADE,
  CONSTRAINT EquipoPartido_FK_1 FOREIGN KEY (PartidoID) REFERENCES Partido (PartidoID) ON UPDATE CASCADE
);

insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/c/body11.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f7e.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e14c.png" style="left:19px;top:-1px;" alt="" /><img src="images/Avatar/mouths/m30c.png" style="left:27px;top:36px;" alt="" /><img src="images/Avatar/noses/n28.png" style="left:14px;top:3px;" alt="" /><img src="images/Avatar/hair/f7h5h.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/a/body10.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f6c.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e24c.png" style="left:21px;top:11px;" alt="" /><img src="images/Avatar/mouths/m15c.png" style="left:25px;top:52px;" alt="" /><img src="images/Avatar/noses/n30.png" style="left:13px;top:13px;" alt="" /><img src="images/Avatar/hair/f6h10d.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/f/body2.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f1d.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e7c.png" style="left:21px;top:21px;" alt="" /><img src="images/Avatar/mouths/m8c.png" style="left:27px;top:63px;" alt="" /><img src="images/Avatar/noses/n6.png" style="left:19px;top:22px;" alt="" /><img src="images/Avatar/hair/f1h13i.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/f/body6.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f9d.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e24b.png" style="left:20px;top:7px;" alt="" /><img src="images/Avatar/mouths/m13b.png" style="left:26px;top:51px;" alt="" /><img src="images/Avatar/noses/n10.png" style="left:15px;top:21px;" alt="" /><img src="images/Avatar/hair/f9h2i.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/c/body4.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f3b.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e34c.png" style="left:21px;top:10px;" alt="" /><img src="images/Avatar/mouths/m11c.png" style="left:24px;top:52px;" alt="" /><img src="images/Avatar/noses/n10.png" style="left:14px;top:22px;" alt="" /><img src="images/Avatar/hair/f3h0.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/b/body9.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f8a.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e16b.png" style="left:18px;top:8px;" alt="" /><img src="images/Avatar/mouths/m28b.png" style="left:28px;top:59px;" alt="" /><img src="images/Avatar/noses/n11.png" style="left:15px;top:22px;" alt="" /><img src="images/Avatar/hair/f8h0.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/f/body4.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f2b.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e11c.png" style="left:20px;top:19px;" alt="" /><img src="images/Avatar/mouths/m36c.png" style="left:28px;top:60px;" alt="" /><img src="images/Avatar/noses/n31.png" style="left:14px;top:20px;" alt="" /><img src="images/Avatar/hair/f2h2e.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/d/body4.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f8a.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e27c.png" style="left:21px;top:11px;" alt="" /><img src="images/Avatar/mouths/m21c.png" style="left:24px;top:53px;" alt="" /><img src="images/Avatar/noses/n19mb.png" style="left:13px;top:27px;" alt="" /><img src="images/Avatar/hair/f8h14b.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/b/body5.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f3d.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e13c.png" style="left:21px;top:16px;" alt="" /><img src="images/Avatar/mouths/m6c.png" style="left:25px;top:56px;" alt="" /><img src="images/Avatar/noses/n15.png" style="left:16px;top:20px;" alt="" /><img src="images/Avatar/hair/f3h0.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/f/body12.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f3b.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e5b.png" style="left:18px;top:14px;" alt="" /><img src="images/Avatar/mouths/m12b.png" style="left:24px;top:53px;" alt="" /><img src="images/Avatar/noses/n11.png" style="left:15px;top:21px;" alt="" /><img src="images/Avatar/hair/f3h3a.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/a/body3.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f8d.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e22a.png" style="left:17px;top:12px;" alt="" /><img src="images/Avatar/mouths/m5c.png" style="left:27px;top:58px;" alt="" /><img src="images/Avatar/noses/n25.png" style="left:15px;top:27px;" alt="" /><img src="images/Avatar/hair/f8h10i.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/f/body12.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f4b.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e3c.png" style="left:20px;top:13px;" alt="" /><img src="images/Avatar/mouths/m34c.png" style="left:27px;top:60px;" alt="" /><img src="images/Avatar/noses/n29.png" style="left:13px;top:21px;" alt="" /><img src="images/Avatar/hair/f4h15b.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/a/body5.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f3a.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e10b.png" style="left:16px;top:15px;" alt="" /><img src="images/Avatar/mouths/m26b.png" style="left:26px;top:61px;" alt="" /><img src="images/Avatar/noses/n13.png" style="left:15px;top:17px;" alt="" /><img src="images/Avatar/hair/f3h5b.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/d/body2.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f4d.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e27c.png" style="left:20px;top:13px;" alt="" /><img src="images/Avatar/mouths/m21c.png" style="left:23px;top:54px;" alt="" /><img src="images/Avatar/noses/n9.png" style="left:13px;top:28px;" alt="" /><img src="images/Avatar/hair/f4h8h.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/a/body6.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f5c.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e34b.png" style="left:20px;top:5px;" alt="" /><img src="images/Avatar/mouths/m13b.png" style="left:25px;top:38px;" alt="" /><img src="images/Avatar/noses/n20.png" style="left:15px;top:15px;" alt="" /><img src="images/Avatar/hair/f5h4a.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/f/body1.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f1c.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/beards/f1b2d.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e19b.png" style="left:19px;top:15px;" alt="" /><img src="images/Avatar/mouths/f1bem18b.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/noses/f1ben28.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/hair/f1h1d.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/c/body4.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f2e.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/beards/f2b2i.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e16b.png" style="left:20px;top:17px;" alt="" /><img src="images/Avatar/mouths/f2bem28b.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/noses/f2ben20.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/hair/f2h5i.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/a/body11.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f6c.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e24b.png" style="left:21px;top:11px;" alt="" /><img src="images/Avatar/mouths/m39b.png" style="left:28px;top:61px;" alt="" /><img src="images/Avatar/goatees/g5.png" style="left:16px;top:48px;" alt="" /><img src="images/Avatar/noses/n1.png" style="left:18px;top:16px;" alt="" /><img src="images/Avatar/hair/f6h5c.png" style="left:5px;top:5px;" alt="" />');
-- Otro equipo
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/d/body10.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f2j.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e19a.png" style="left:21px;top:15px;" alt="" /><img src="images/Avatar/mouths/m17a.png" style="left:26px;top:54px;" alt="" /><img src="images/Avatar/noses/n11.png" style="left:18px;top:26px;" alt="" /><img src="images/Avatar/hair/f2h15i.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/d/body11.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f5j.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e24a.png" style="left:19px;top:3px;" alt="" /><img src="images/Avatar/mouths/m36a.png" style="left:26px;top:45px;" alt="" /><img src="images/Avatar/noses/n39.png" style="left:13px;top:12px;" alt="" /><img src="images/Avatar/hair/f5h14i.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/c/body11.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f7i.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e23c.png" style="left:22px;top:0px;" alt="" /><img src="images/Avatar/mouths/m33c.png" style="left:28px;top:36px;" alt="" /><img src="images/Avatar/noses/n36.png" style="left:14px;top:6px;" alt="" /><img src="images/Avatar/hair/f7h11h.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/b/body10.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f3i.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/beards/f3b3h.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e34c.png" style="left:21px;top:10px;" alt="" /><img src="images/Avatar/mouths/f3bem35c.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/noses/f3ben23.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/hair/f3h4h.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/e/body12.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f4j.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e29c.png" style="left:20px;top:12px;" alt="" /><img src="images/Avatar/mouths/m24c.png" style="left:24px;top:59px;" alt="" /><img src="images/Avatar/noses/n16.png" style="left:15px;top:28px;" alt="" /><img src="images/Avatar/hair/f4h9h.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/e/body3.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f4j.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e26c.png" style="left:21px;top:12px;" alt="" /><img src="images/Avatar/mouths/m32c.png" style="left:26px;top:62px;" alt="" /><img src="images/Avatar/noses/n11.png" style="left:14px;top:24px;" alt="" /><img src="images/Avatar/hair/f4h5i.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/a/body9.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f2i.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e3a.png" style="left:22px;top:19px;" alt="" /><img src="images/Avatar/mouths/m19a.png" style="left:28px;top:51px;" alt="" /><img src="images/Avatar/noses/n33.png" style="left:14px;top:20px;" alt="" /><img src="images/Avatar/hair/f2h15i.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/b/body10.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f9j.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/beards/f9b4h.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e36c.png" style="left:21px;top:10px;" alt="" /><img src="images/Avatar/mouths/f9bem8c.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/noses/f9ben32.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/hair/f9h1h.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/c/body7.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f1i.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e25b.png" style="left:20px;top:14px;" alt="" /><img src="images/Avatar/mouths/m31b.png" style="left:28px;top:65px;" alt="" /><img src="images/Avatar/noses/n3.png" style="left:18px;top:26px;" alt="" /><img src="images/Avatar/hair/f1h4i.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/d/body1.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f7j.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e32c.png" style="left:21px;top:2px;" alt="" /><img src="images/Avatar/mouths/m40c.png" style="left:26px;top:36px;" alt="" /><img src="images/Avatar/goatees/g1.png" style="left:14px;top:26px;" alt="" /><img src="images/Avatar/noses/n28mi.png" style="left:14px;top:3px;" alt="" /><img src="images/Avatar/hair/f7h11i.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/b/body5.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f9j.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e30b.png" style="left:21px;top:8px;" alt="" /><img src="images/Avatar/mouths/m3b.png" style="left:25px;top:52px;" alt="" /><img src="images/Avatar/noses/n31.png" style="left:12px;top:12px;" alt="" /><img src="images/Avatar/hair/f9h12i.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/c/body2.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f4i.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e22b.png" style="left:17px;top:15px;" alt="" /><img src="images/Avatar/mouths/m6b.png" style="left:25px;top:59px;" alt="" /><img src="images/Avatar/noses/n10.png" style="left:14px;top:24px;" alt="" /><img src="images/Avatar/hair/f4h0.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/c/body5.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f8j.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e35b.png" style="left:21px;top:15px;" alt="" /><img src="images/Avatar/mouths/m33b.png" style="left:28px;top:59px;" alt="" /><img src="images/Avatar/goatees/g4.png" style="left:15px;top:49px;" alt="" /><img src="images/Avatar/noses/n10mh.png" style="left:16px;top:21px;" alt="" /><img src="images/Avatar/hair/f8h1h.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/a/body8.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f3i.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e3c.png" style="left:19px;top:12px;" alt="" /><img src="images/Avatar/mouths/m30c.png" style="left:26px;top:60px;" alt="" /><img src="images/Avatar/noses/n29.png" style="left:14px;top:15px;" alt="" /><img src="images/Avatar/hair/f3h10i.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/c/body12.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f5i.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e3a.png" style="left:18px;top:6px;" alt="" /><img src="images/Avatar/mouths/m28a.png" style="left:27px;top:49px;" alt="" /><img src="images/Avatar/noses/n20.png" style="left:15px;top:15px;" alt="" /><img src="images/Avatar/hair/f5h6h.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/a/body7.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f4j.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e26c.png" style="left:21px;top:12px;" alt="" /><img src="images/Avatar/mouths/m24c.png" style="left:24px;top:59px;" alt="" /><img src="images/Avatar/noses/n25.png" style="left:14px;top:27px;" alt="" /><img src="images/Avatar/hair/f4h5i.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/d/body1.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f6i.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e9a.png" style="left:19px;top:13px;" alt="" /><img src="images/Avatar/mouths/m5c.png" style="left:27px;top:59px;" alt="" /><img src="images/Avatar/goatees/g4.png" style="left:15px;top:48px;" alt="" /><img src="images/Avatar/noses/n26.png" style="left:14px;top:26px;" alt="" /><img src="images/Avatar/hair/f6h12h.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/b/body9.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f8i.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e14c.png" style="left:19px;top:8px;" alt="" /><img src="images/Avatar/mouths/m28cg.png" style="left:28px;top:59px;" alt="" /><img src="images/Avatar/noses/n34mi.png" style="left:11px;top:12px;" alt="" /><img src="images/Avatar/hair/f8h5i.png" style="left:5px;top:5px;" alt="" />');
-- Otro equipo
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/d/body2.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f3b.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e13c.png" style="left:21px;top:16px;" alt="" /><img src="images/Avatar/mouths/m35c.png" style="left:25px;top:56px;" alt="" /><img src="images/Avatar/noses/n20.png" style="left:15px;top:27px;" alt="" /><img src="images/Avatar/hair/f3h3b.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/f/body8.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f4c.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e13b.png" style="left:21px;top:17px;" alt="" /><img src="images/Avatar/mouths/m4bg.png" style="left:25px;top:61px;" alt="" /><img src="images/Avatar/noses/n10.png" style="left:14px;top:24px;" alt="" /><img src="images/Avatar/hair/f4h8b.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/b/body5.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f6a.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e8c.png" style="left:20px;top:17px;" alt="" /><img src="images/Avatar/mouths/m22c.png" style="left:27px;top:53px;" alt="" /><img src="images/Avatar/noses/n22.png" style="left:14px;top:25px;" alt="" /><img src="images/Avatar/hair/f6h1b.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/a/body11.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f3f.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e22c.png" style="left:17px;top:13px;" alt="" /><img src="images/Avatar/mouths/m6c.png" style="left:25px;top:56px;" alt="" /><img src="images/Avatar/noses/n15.png" style="left:16px;top:20px;" alt="" /><img src="images/Avatar/hair/f3h1f.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/e/body3.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f1c.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/beards/f1b4d.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e29c.png" style="left:21px;top:16px;" alt="" /><img src="images/Avatar/mouths/f1bem21c.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/noses/f1ben23.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/hair/f1h13d.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/f/body11.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f3a.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e25c.png" style="left:20px;top:8px;" alt="" /><img src="images/Avatar/mouths/m12c.png" style="left:24px;top:53px;" alt="" /><img src="images/Avatar/noses/n16.png" style="left:15px;top:24px;" alt="" /><img src="images/Avatar/hair/f3h4b.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/d/body8.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f1a.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/beards/f1b4a.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e2c.png" style="left:21px;top:19px;" alt="" /><img src="images/Avatar/mouths/f1bem2c.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/noses/f1ben17.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/hair/f1h1a.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/d/body6.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f5b.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e28c.png" style="left:20px;top:1px;" alt="" /><img src="images/Avatar/mouths/m7c.png" style="left:26px;top:44px;" alt="" /><img src="images/Avatar/noses/n28.png" style="left:13px;top:14px;" alt="" /><img src="images/Avatar/hair/f5h14d.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/e/body3.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f8b.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/beards/f8b3d.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e28a.png" style="left:22px;top:11px;" alt="" /><img src="images/Avatar/mouths/f8bem27a.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/noses/f8ben22.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/hair/f8h0.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/d/body6.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f5b.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e25c.png" style="left:18px;top:4px;" alt="" /><img src="images/Avatar/mouths/m34c.png" style="left:28px;top:46px;" alt="" /><img src="images/Avatar/noses/n28.png" style="left:13px;top:14px;" alt="" /><img src="images/Avatar/hair/f5h13c.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/e/body12.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f8d.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e17c.png" style="left:20px;top:9px;" alt="" /><img src="images/Avatar/mouths/m30c.png" style="left:28px;top:59px;" alt="" /><img src="images/Avatar/goatees/g1.png" style="left:15px;top:49px;" alt="" /><img src="images/Avatar/noses/n33mi.png" style="left:12px;top:10px;" alt="" /><img src="images/Avatar/hair/f8h5i.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/f/body7.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f4c.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e3c.png" style="left:20px;top:13px;" alt="" /><img src="images/Avatar/mouths/m30c.png" style="left:26px;top:62px;" alt="" /><img src="images/Avatar/noses/n9.png" style="left:13px;top:28px;" alt="" /><img src="images/Avatar/hair/f4h10e.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/e/body2.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f4j.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e24c.png" style="left:19px;top:11px;" alt="" /><img src="images/Avatar/mouths/m30c.png" style="left:26px;top:62px;" alt="" /><img src="images/Avatar/noses/n17mh.png" style="left:14px;top:31px;" alt="" /><img src="images/Avatar/hair/f4h2h.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/e/body10.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f4a.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e24c.png" style="left:19px;top:11px;" alt="" /><img src="images/Avatar/mouths/m7c.png" style="left:26px;top:60px;" alt="" /><img src="images/Avatar/noses/n29.png" style="left:13px;top:21px;" alt="" /><img src="images/Avatar/hair/f4h0.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/e/body12.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f3a.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e26c.png" style="left:21px;top:9px;" alt="" /><img src="images/Avatar/mouths/m9c.png" style="left:25px;top:55px;" alt="" /><img src="images/Avatar/goatees/g2.png" style="left:15px;top:48px;" alt="" /><img src="images/Avatar/noses/n9mc.png" style="left:14px;top:23px;" alt="" /><img src="images/Avatar/hair/f3h5c.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/e/body5.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f1b.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e23c.png" style="left:22px;top:17px;" alt="" /><img src="images/Avatar/mouths/m20cg.png" style="left:26px;top:60px;" alt="" /><img src="images/Avatar/noses/n19.png" style="left:15px;top:30px;" alt="" /><img src="images/Avatar/hair/f1h12b.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/d/body2.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f6d.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e16c.png" style="left:18px;top:10px;" alt="" /><img src="images/Avatar/mouths/m14c.png" style="left:25px;top:52px;" alt="" /><img src="images/Avatar/noses/n14.png" style="left:15px;top:28px;" alt="" /><img src="images/Avatar/hair/f6h12i.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/f/body2.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f2a.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e8c.png" style="left:22px;top:22px;" alt="" /><img src="images/Avatar/mouths/m18c.png" style="left:26px;top:55px;" alt="" /><img src="images/Avatar/noses/n29.png" style="left:17px;top:21px;" alt="" /><img src="images/Avatar/hair/f2h0.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/a/body10.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f8e.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e24c.png" style="left:20px;top:11px;" alt="" /><img src="images/Avatar/mouths/m23c.png" style="left:25px;top:51px;" alt="" /><img src="images/Avatar/noses/n13.png" style="left:16px;top:19px;" alt="" /><img src="images/Avatar/hair/f8h10i.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/d/body6.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f7a.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e30b.png" style="left:20px;top:0px;" alt="" /><img src="images/Avatar/mouths/m33b.png" style="left:28px;top:36px;" alt="" /><img src="images/Avatar/noses/n33.png" style="left:11px;top:-5px;" alt="" /><img src="images/Avatar/hair/f7h5e.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/c/body6.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f7b.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e16c.png" style="left:18px;top:0px;" alt="" /><img src="images/Avatar/mouths/m34c.png" style="left:28px;top:36px;" alt="" /><img src="images/Avatar/goatees/g2.png" style="left:14px;top:21px;" alt="" /><img src="images/Avatar/noses/n38.png" style="left:14px;top:6px;" alt="" /><img src="images/Avatar/hair/f7h9d.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/d/body1.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f4a.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e29c.png" style="left:20px;top:12px;" alt="" /><img src="images/Avatar/mouths/m36c.png" style="left:25px;top:60px;" alt="" /><img src="images/Avatar/noses/n19.png" style="left:12px;top:25px;" alt="" /><img src="images/Avatar/hair/f4h15d.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/b/body4.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f6i.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e16c.png" style="left:18px;top:10px;" alt="" /><img src="images/Avatar/mouths/m5c.png" style="left:27px;top:59px;" alt="" /><img src="images/Avatar/goatees/g1.png" style="left:15px;top:48px;" alt="" /><img src="images/Avatar/noses/n12.png" style="left:15px;top:22px;" alt="" /><img src="images/Avatar/hair/f6h6h.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/f/body9.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f9c.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e36c.png" style="left:21px;top:10px;" alt="" /><img src="images/Avatar/mouths/m29c.png" style="left:27px;top:58px;" alt="" /><img src="images/Avatar/noses/n3.png" style="left:17px;top:22px;" alt="" /><img src="images/Avatar/hair/f9h0.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/e/body5.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f7a.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/beards/f7b1b.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e27c.png" style="left:21px;top:0px;" alt="" /><img src="images/Avatar/mouths/f7bem35c.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/noses/f7ben40.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/hair/f7h12b.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/e/body5.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f9a.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/beards/f9b3a.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e35c.png" style="left:21px;top:10px;" alt="" /><img src="images/Avatar/mouths/f9bem14c.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/noses/f9ben10.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/hair/f9h9a.png" style="left:5px;top:5px;" alt="" />');
-- Otro equipo
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/c/body5.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f8e.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e29c.png" style="left:21px;top:15px;" alt="" /><img src="images/Avatar/mouths/m28c.png" style="left:28px;top:59px;" alt="" /><img src="images/Avatar/noses/n19.png" style="left:13px;top:27px;" alt="" /><img src="images/Avatar/hair/f8h4h.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/b/body3.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f8c.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e21c.png" style="left:21px;top:12px;" alt="" /><img src="images/Avatar/mouths/m21c.png" style="left:24px;top:53px;" alt="" /><img src="images/Avatar/noses/n25.png" style="left:15px;top:27px;" alt="" /><img src="images/Avatar/hair/f8h13c.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/f/body11.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f1c.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e6b.png" style="left:23px;top:19px;" alt="" /><img src="images/Avatar/mouths/m7b.png" style="left:28px;top:63px;" alt="" /><img src="images/Avatar/goatees/g1.png" style="left:15px;top:57px;" alt="" /><img src="images/Avatar/noses/n17me.png" style="left:16px;top:34px;" alt="" /><img src="images/Avatar/hair/f1h8e.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/c/body11.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f2i.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e21c.png" style="left:22px;top:21px;" alt="" /><img src="images/Avatar/mouths/m3c.png" style="left:26px;top:56px;" alt="" /><img src="images/Avatar/noses/n26.png" style="left:15px;top:33px;" alt="" /><img src="images/Avatar/hair/f2h1i.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/d/body6.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f9a.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e32c.png" style="left:21px;top:10px;" alt="" /><img src="images/Avatar/mouths/m34c.png" style="left:28px;top:59px;" alt="" /><img src="images/Avatar/goatees/g4.png" style="left:14px;top:47px;" alt="" /><img src="images/Avatar/noses/n16mc.png" style="left:15px;top:26px;" alt="" /><img src="images/Avatar/hair/f9h10c.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/a/body7.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f7c.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e34c.png" style="left:21px;top:1px;" alt="" /><img src="images/Avatar/mouths/m34c.png" style="left:28px;top:36px;" alt="" /><img src="images/Avatar/noses/n32.png" style="left:13px;top:-2px;" alt="" /><img src="images/Avatar/hair/f7h10c.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/e/body2.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f6b.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e14c.png" style="left:19px;top:10px;" alt="" /><img src="images/Avatar/mouths/m25c.png" style="left:25px;top:54px;" alt="" /><img src="images/Avatar/noses/n6.png" style="left:18px;top:17px;" alt="" /><img src="images/Avatar/hair/f6h10a.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/a/body5.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f2c.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e4a.png" style="left:21px;top:21px;" alt="" /><img src="images/Avatar/mouths/m37a.png" style="left:27px;top:63px;" alt="" /><img src="images/Avatar/noses/n31.png" style="left:14px;top:20px;" alt="" /><img src="images/Avatar/hair/f2h8d.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/c/body1.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f3c.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e3c.png" style="left:19px;top:12px;" alt="" /><img src="images/Avatar/mouths/m8c.png" style="left:26px;top:55px;" alt="" /><img src="images/Avatar/noses/n12.png" style="left:14px;top:23px;" alt="" /><img src="images/Avatar/hair/f3h4c.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/a/body6.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f9d.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e28c.png" style="left:21px;top:5px;" alt="" /><img src="images/Avatar/mouths/m16c.png" style="left:24px;top:52px;" alt="" /><img src="images/Avatar/noses/n33.png" style="left:12px;top:12px;" alt="" /><img src="images/Avatar/hair/f9h8i.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/e/body3.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f7c.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e35c.png" style="left:21px;top:3px;" alt="" /><img src="images/Avatar/mouths/m30c.png" style="left:27px;top:36px;" alt="" /><img src="images/Avatar/goatees/g3.png" style="left:14px;top:26px;" alt="" /><img src="images/Avatar/noses/n39mc.png" style="left:14px;top:5px;" alt="" /><img src="images/Avatar/hair/f7h4c.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/b/body9.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f6d.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e29c.png" style="left:21px;top:13px;" alt="" /><img src="images/Avatar/mouths/m26c.png" style="left:27px;top:63px;" alt="" /><img src="images/Avatar/noses/n1.png" style="left:18px;top:16px;" alt="" /><img src="images/Avatar/hair/f6h2i.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/b/body12.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f5d.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e24c.png" style="left:19px;top:3px;" alt="" /><img src="images/Avatar/mouths/m34c.png" style="left:28px;top:46px;" alt="" /><img src="images/Avatar/goatees/g2.png" style="left:14px;top:33px;" alt="" /><img src="images/Avatar/noses/n15.png" style="left:16px;top:12px;" alt="" /><img src="images/Avatar/hair/f5h10i.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/a/body4.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f5a.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e27c.png" style="left:20px;top:3px;" alt="" /><img src="images/Avatar/mouths/m11c.png" style="left:23px;top:42px;" alt="" /><img src="images/Avatar/noses/n13.png" style="left:14px;top:8px;" alt="" /><img src="images/Avatar/hair/f5h2e.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/d/body10.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f9d.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e33c.png" style="left:21px;top:10px;" alt="" /><img src="images/Avatar/mouths/m23c.png" style="left:24px;top:51px;" alt="" /><img src="images/Avatar/noses/n4.png" style="left:13px;top:24px;" alt="" /><img src="images/Avatar/hair/f9h0.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/f/body7.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f2c.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e23c.png" style="left:24px;top:17px;" alt="" /><img src="images/Avatar/mouths/m8c.png" style="left:27px;top:60px;" alt="" /><img src="images/Avatar/goatees/g3.png" style="left:16px;top:50px;" alt="" /><img src="images/Avatar/noses/n12mb.png" style="left:17px;top:27px;" alt="" /><img src="images/Avatar/hair/f2h4b.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/f/body8.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f3d.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e22b.png" style="left:17px;top:13px;" alt="" /><img src="images/Avatar/mouths/m19b.png" style="left:27px;top:48px;" alt="" /><img src="images/Avatar/noses/n16.png" style="left:15px;top:24px;" alt="" /><img src="images/Avatar/hair/f3h2i.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/a/body4.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f1b.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e17c.png" style="left:21px;top:18px;" alt="" /><img src="images/Avatar/mouths/m24c.png" style="left:25px;top:60px;" alt="" /><img src="images/Avatar/noses/n21.png" style="left:15px;top:31px;" alt="" /><img src="images/Avatar/hair/f1h13a.png" style="left:5px;top:5px;" alt="" />');
-- Otro equipo
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/c/body11.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f1c.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/beards/f1b1e.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e26c.png" style="left:22px;top:15px;" alt="" /><img src="images/Avatar/mouths/f1bem5c.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/noses/f1ben6.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/hair/f1h14e.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/a/body3.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f9b.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/beards/f9b1c.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e10a.png" style="left:17px;top:12px;" alt="" /><img src="images/Avatar/mouths/f9bem29a.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/noses/f9ben9.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/hair/f9h4c.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/c/body10.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f5c.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/beards/f5b1d.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e34b.png" style="left:20px;top:5px;" alt="" /><img src="images/Avatar/mouths/f5bem3b.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/noses/f5ben14.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/hair/f5h3d.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/b/body5.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f9c.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/beards/f9b1c.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e24b.png" style="left:20px;top:7px;" alt="" /><img src="images/Avatar/mouths/f9bem14b.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/noses/f9ben35.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/hair/f9h3c.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/e/body3.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f8a.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/beards/f8b1d.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e11c.png" style="left:19px;top:11px;" alt="" /><img src="images/Avatar/mouths/f8bem31c.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/noses/f8ben35.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/hair/f8h0.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/a/body12.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f6a.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/beards/f6b1a.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e28a.png" style="left:22px;top:10px;" alt="" /><img src="images/Avatar/mouths/f6bem11a.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/noses/f6ben13.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/hair/f6h8a.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/d/body1.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f9c.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/beards/f9b3e.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e24c.png" style="left:20px;top:7px;" alt="" /><img src="images/Avatar/mouths/f9bem16c.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/noses/f9ben26.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/hair/f9h15e.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/d/body8.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f8b.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/beards/f8b3e.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e22b.png" style="left:17px;top:12px;" alt="" /><img src="images/Avatar/mouths/f8bem3b.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/noses/f8ben13.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/hair/f8h12e.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/c/body12.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f1a.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/beards/f1b1c.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e13c.png" style="left:22px;top:22px;" alt="" /><img src="images/Avatar/mouths/f1bem3c.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/noses/f1ben18.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/hair/f1h4c.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/b/body12.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f8c.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e16b.png" style="left:18px;top:8px;" alt="" /><img src="images/Avatar/mouths/m6b.png" style="left:25px;top:57px;" alt="" /><img src="images/Avatar/noses/n33mc.png" style="left:12px;top:10px;" alt="" /><img src="images/Avatar/hair/f8h15c.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/b/body8.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f9c.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/beards/f9b3b.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e31b.png" style="left:21px;top:10px;" alt="" /><img src="images/Avatar/mouths/f9bem9b.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/noses/f9ben10.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/hair/f9h12b.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/d/body3.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f1b.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e8c.png" style="left:20px;top:19px;" alt="" /><img src="images/Avatar/mouths/m39c.png" style="left:28px;top:67px;" alt="" /><img src="images/Avatar/noses/n12.png" style="left:16px;top:26px;" alt="" /><img src="images/Avatar/hair/f1h7a.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/b/body6.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f2a.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e13b.png" style="left:23px;top:21px;" alt="" /><img src="images/Avatar/mouths/m16b.png" style="left:27px;top:55px;" alt="" /><img src="images/Avatar/noses/n26.png" style="left:15px;top:33px;" alt="" /><img src="images/Avatar/hair/f2h7d.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/c/body9.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f8b.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e30c.png" style="left:21px;top:14px;" alt="" /><img src="images/Avatar/mouths/m28c.png" style="left:28px;top:59px;" alt="" /><img src="images/Avatar/noses/n17.png" style="left:14px;top:30px;" alt="" /><img src="images/Avatar/hair/f8h0.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/f/body7.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f2b.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e9c.png" style="left:21px;top:20px;" alt="" /><img src="images/Avatar/mouths/m1c.png" style="left:27px;top:60px;" alt="" /><img src="images/Avatar/noses/n26.png" style="left:15px;top:33px;" alt="" /><img src="images/Avatar/hair/f2h6b.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/d/body1.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f8b.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e36c.png" style="left:22px;top:14px;" alt="" /><img src="images/Avatar/mouths/m31c.png" style="left:28px;top:59px;" alt="" /><img src="images/Avatar/goatees/g3.png" style="left:15px;top:49px;" alt="" /><img src="images/Avatar/noses/n25me.png" style="left:15px;top:27px;" alt="" /><img src="images/Avatar/hair/f8h8e.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/a/body10.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f7a.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/beards/f7b1c.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e27c.png" style="left:21px;top:0px;" alt="" /><img src="images/Avatar/mouths/f7bem33c.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/noses/f7ben15.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/hair/f7h1c.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/c/body11.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f5b.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e13c.png" style="left:19px;top:9px;" alt="" /><img src="images/Avatar/mouths/m27cg.png" style="left:27px;top:52px;" alt="" /><img src="images/Avatar/noses/n25.png" style="left:14px;top:17px;" alt="" /><img src="images/Avatar/hair/f5h8e.png" style="left:5px;top:5px;" alt="" />');
-- Otro equipo
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/e/body2.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f7c.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e25c.png" style="left:20px;top:0px;" alt="" /><img src="images/Avatar/mouths/m35c.png" style="left:26px;top:35px;" alt="" /><img src="images/Avatar/noses/n39.png" style="left:14px;top:5px;" alt="" /><img src="images/Avatar/hair/f7h13c.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/c/body2.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f1b.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e6c.png" style="left:23px;top:19px;" alt="" /><img src="images/Avatar/mouths/m38c.png" style="left:27px;top:65px;" alt="" /><img src="images/Avatar/goatees/g2.png" style="left:15px;top:57px;" alt="" /><img src="images/Avatar/noses/n4ma.png" style="left:15px;top:29px;" alt="" /><img src="images/Avatar/hair/f1h10a.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/a/body5.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f6a.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e15c.png" style="left:21px;top:16px;" alt="" /><img src="images/Avatar/mouths/m31c.png" style="left:28px;top:60px;" alt="" /><img src="images/Avatar/goatees/g1.png" style="left:15px;top:48px;" alt="" /><img src="images/Avatar/noses/n25mc.png" style="left:15px;top:25px;" alt="" /><img src="images/Avatar/hair/f6h14c.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/b/body7.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f1a.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e20b.png" style="left:20px;top:15px;" alt="" /><img src="images/Avatar/mouths/m19b.png" style="left:28px;top:54px;" alt="" /><img src="images/Avatar/noses/n15.png" style="left:18px;top:27px;" alt="" /><img src="images/Avatar/hair/f1h2c.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/d/body2.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f6b.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e30c.png" style="left:21px;top:11px;" alt="" /><img src="images/Avatar/mouths/m30c.png" style="left:27px;top:60px;" alt="" /><img src="images/Avatar/noses/n1.png" style="left:18px;top:16px;" alt="" /><img src="images/Avatar/hair/f6h5d.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/d/body7.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f7a.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e29c.png" style="left:20px;top:1px;" alt="" /><img src="images/Avatar/mouths/m30c.png" style="left:27px;top:36px;" alt="" /><img src="images/Avatar/noses/n33.png" style="left:11px;top:-5px;" alt="" /><img src="images/Avatar/hair/f7h1e.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/f/body8.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f4a.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e25b.png" style="left:19px;top:13px;" alt="" /><img src="images/Avatar/mouths/m27b.png" style="left:26px;top:62px;" alt="" /><img src="images/Avatar/noses/n10.png" style="left:14px;top:24px;" alt="" /><img src="images/Avatar/hair/f4h12c.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/a/body10.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f5a.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e36c.png" style="left:20px;top:5px;" alt="" /><img src="images/Avatar/mouths/m21c.png" style="left:23px;top:41px;" alt="" /><img src="images/Avatar/noses/n25.png" style="left:14px;top:17px;" alt="" /><img src="images/Avatar/hair/f5h8a.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/f/body1.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f2c.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e9c.png" style="left:21px;top:20px;" alt="" /><img src="images/Avatar/mouths/m15c.png" style="left:26px;top:57px;" alt="" /><img src="images/Avatar/noses/n33.png" style="left:14px;top:20px;" alt="" /><img src="images/Avatar/hair/f2h0.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/b/body5.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f7b.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e16a.png" style="left:18px;top:0px;" alt="" /><img src="images/Avatar/mouths/m35c.png" style="left:26px;top:35px;" alt="" /><img src="images/Avatar/noses/n39.png" style="left:14px;top:5px;" alt="" /><img src="images/Avatar/hair/f7h10d.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/c/body5.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f3e.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e34c.png" style="left:21px;top:10px;" alt="" /><img src="images/Avatar/mouths/m39c.png" style="left:27px;top:60px;" alt="" /><img src="images/Avatar/noses/n23.png" style="left:16px;top:17px;" alt="" /><img src="images/Avatar/hair/f3h8i.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/b/body5.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f3d.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e28b.png" style="left:20px;top:8px;" alt="" /><img src="images/Avatar/mouths/m5b.png" style="left:26px;top:57px;" alt="" /><img src="images/Avatar/noses/n20.png" style="left:15px;top:27px;" alt="" /><img src="images/Avatar/hair/f3h12i.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/d/body9.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f6b.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e16c.png" style="left:18px;top:10px;" alt="" /><img src="images/Avatar/mouths/m38c.png" style="left:27px;top:60px;" alt="" /><img src="images/Avatar/noses/n20.png" style="left:16px;top:26px;" alt="" /><img src="images/Avatar/hair/f6h8e.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/a/body6.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f1b.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e25b.png" style="left:20px;top:14px;" alt="" /><img src="images/Avatar/mouths/m6b.png" style="left:27px;top:63px;" alt="" /><img src="images/Avatar/noses/n23.png" style="left:17px;top:23px;" alt="" /><img src="images/Avatar/hair/f1h5a.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/e/body6.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f6b.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e27c.png" style="left:21px;top:11px;" alt="" /><img src="images/Avatar/mouths/m11c.png" style="left:25px;top:54px;" alt="" /><img src="images/Avatar/noses/n10.png" style="left:15px;top:21px;" alt="" /><img src="images/Avatar/hair/f6h1a.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/d/body12.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f1c.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e11c.png" style="left:19px;top:19px;" alt="" /><img src="images/Avatar/mouths/m23c.png" style="left:25px;top:57px;" alt="" /><img src="images/Avatar/noses/n1.png" style="left:18px;top:20px;" alt="" /><img src="images/Avatar/hair/f1h15e.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/c/body8.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f5a.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e26b.png" style="left:20px;top:3px;" alt="" /><img src="images/Avatar/mouths/m33b.png" style="left:28px;top:48px;" alt="" /><img src="images/Avatar/goatees/g3.png" style="left:14px;top:39px;" alt="" /><img src="images/Avatar/noses/n27.png" style="left:12px;top:11px;" alt="" /><img src="images/Avatar/hair/f5h6a.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/e/body7.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f1c.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e1c.png" style="left:22px;top:21px;" alt="" /><img src="images/Avatar/mouths/m18c.png" style="left:28px;top:55px;" alt="" /><img src="images/Avatar/noses/n18.png" style="left:15px;top:25px;" alt="" /><img src="images/Avatar/hair/f1h13d.png" style="left:5px;top:5px;" alt="" />');
-- Otro equipo
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/e/body8.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f5b.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e3c.png" style="left:18px;top:6px;" alt="" /><img src="images/Avatar/mouths/m14c.png" style="left:25px;top:40px;" alt="" /><img src="images/Avatar/noses/n10.png" style="left:14px;top:11px;" alt="" /><img src="images/Avatar/hair/f5h7c.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/a/body7.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f1b.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e26c.png" style="left:22px;top:15px;" alt="" /><img src="images/Avatar/mouths/m1c.png" style="left:26px;top:62px;" alt="" /><img src="images/Avatar/noses/n6.png" style="left:19px;top:22px;" alt="" /><img src="images/Avatar/hair/f1h0.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/b/body4.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f7c.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e20b.png" style="left:20px;top:-1px;" alt="" /><img src="images/Avatar/mouths/m30b.png" style="left:27px;top:36px;" alt="" /><img src="images/Avatar/noses/n33.png" style="left:11px;top:-5px;" alt="" /><img src="images/Avatar/hair/f7h10e.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/d/body5.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f9b.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e31c.png" style="left:21px;top:10px;" alt="" /><img src="images/Avatar/mouths/m16c.png" style="left:24px;top:52px;" alt="" /><img src="images/Avatar/noses/n26.png" style="left:13px;top:28px;" alt="" /><img src="images/Avatar/hair/f9h11d.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/f/body4.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f8b.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e21b.png" style="left:21px;top:12px;" alt="" /><img src="images/Avatar/mouths/m7b.png" style="left:27px;top:58px;" alt="" /><img src="images/Avatar/goatees/g2.png" style="left:15px;top:47px;" alt="" /><img src="images/Avatar/noses/n10.png" style="left:16px;top:21px;" alt="" /><img src="images/Avatar/hair/f8h13c.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/a/body5.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f6c.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e28c.png" style="left:22px;top:10px;" alt="" /><img src="images/Avatar/mouths/m8c.png" style="left:27px;top:58px;" alt="" /><img src="images/Avatar/goatees/g2.png" style="left:16px;top:47px;" alt="" /><img src="images/Avatar/noses/n14.png" style="left:15px;top:28px;" alt="" /><img src="images/Avatar/hair/f6h12c.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/f/body7.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f5b.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e7c.png" style="left:19px;top:2px;" alt="" /><img src="images/Avatar/mouths/m27cg.png" style="left:27px;top:52px;" alt="" /><img src="images/Avatar/noses/n16md.png" style="left:15px;top:15px;" alt="" /><img src="images/Avatar/hair/f5h3d.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/e/body2.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f5c.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e31c.png" style="left:20px;top:4px;" alt="" /><img src="images/Avatar/mouths/m34c.png" style="left:28px;top:46px;" alt="" /><img src="images/Avatar/noses/n10.png" style="left:14px;top:11px;" alt="" /><img src="images/Avatar/hair/f5h3a.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/d/body5.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f2c.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e25c.png" style="left:22px;top:15px;" alt="" /><img src="images/Avatar/mouths/m14c.png" style="left:25px;top:55px;" alt="" /><img src="images/Avatar/noses/n31.png" style="left:14px;top:20px;" alt="" /><img src="images/Avatar/hair/f2h10b.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/c/body2.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f4c.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e36c.png" style="left:21px;top:12px;" alt="" /><img src="images/Avatar/mouths/m36c.png" style="left:25px;top:60px;" alt="" /><img src="images/Avatar/noses/n25.png" style="left:14px;top:27px;" alt="" /><img src="images/Avatar/hair/f4h14c.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/e/body11.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f4a.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e3c.png" style="left:20px;top:13px;" alt="" /><img src="images/Avatar/mouths/m28c.png" style="left:26px;top:62px;" alt="" /><img src="images/Avatar/noses/n14.png" style="left:13px;top:29px;" alt="" /><img src="images/Avatar/hair/f4h8e.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/e/body1.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f9b.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e34c.png" style="left:21px;top:10px;" alt="" /><img src="images/Avatar/mouths/m28c.png" style="left:26px;top:62px;" alt="" /><img src="images/Avatar/noses/n24.png" style="left:16px;top:22px;" alt="" /><img src="images/Avatar/hair/f9h4d.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/b/body6.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f1a.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e21b.png" style="left:20px;top:21px;" alt="" /><img src="images/Avatar/mouths/m2b.png" style="left:26px;top:55px;" alt="" /><img src="images/Avatar/goatees/g4.png" style="left:15px;top:57px;" alt="" /><img src="images/Avatar/noses/n18.png" style="left:15px;top:25px;" alt="" /><img src="images/Avatar/hair/f1h15a.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/d/body12.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f6c.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e25a.png" style="left:20px;top:12px;" alt="" /><img src="images/Avatar/mouths/m38a.png" style="left:27px;top:60px;" alt="" /><img src="images/Avatar/noses/n22.png" style="left:14px;top:25px;" alt="" /><img src="images/Avatar/hair/f6h10a.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/e/body4.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f1c.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e3b.png" style="left:20px;top:19px;" alt="" /><img src="images/Avatar/mouths/m19b.png" style="left:28px;top:54px;" alt="" /><img src="images/Avatar/noses/n22.png" style="left:15px;top:29px;" alt="" /><img src="images/Avatar/hair/f1h8c.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/a/body4.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f4d.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e34c.png" style="left:21px;top:11px;" alt="" /><img src="images/Avatar/mouths/m8c.png" style="left:27px;top:60px;" alt="" /><img src="images/Avatar/goatees/g1.png" style="left:14px;top:52px;" alt="" /><img src="images/Avatar/noses/n24mh.png" style="left:17px;top:21px;" alt="" /><img src="images/Avatar/hair/f4h14h.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/b/body3.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f2f.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e7c.png" style="left:22px;top:21px;" alt="" /><img src="images/Avatar/mouths/m17c.png" style="left:26px;top:54px;" alt="" /><img src="images/Avatar/noses/n8.png" style="left:18px;top:25px;" alt="" /><img src="images/Avatar/hair/f2h9f.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/d/body3.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f4c.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e13c.png" style="left:21px;top:17px;" alt="" /><img src="images/Avatar/mouths/m30c.png" style="left:26px;top:62px;" alt="" /><img src="images/Avatar/noses/n13.png" style="left:14px;top:21px;" alt="" /><img src="images/Avatar/hair/f4h15d.png" style="left:5px;top:5px;" alt="" />');
-- Otro equipo
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/a/body1.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f3a.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e26c.png" style="left:21px;top:9px;" alt="" /><img src="images/Avatar/mouths/m30c.png" style="left:26px;top:60px;" alt="" /><img src="images/Avatar/noses/n20.png" style="left:15px;top:27px;" alt="" /><img src="images/Avatar/hair/f3h6c.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/e/body11.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f2c.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e1c.png" style="left:23px;top:21px;" alt="" /><img src="images/Avatar/mouths/m31c.png" style="left:29px;top:61px;" alt="" /><img src="images/Avatar/goatees/g2.png" style="left:17px;top:49px;" alt="" /><img src="images/Avatar/noses/n24.png" style="left:19px;top:25px;" alt="" /><img src="images/Avatar/hair/f2h1a.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/c/body7.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f4c.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e3c.png" style="left:20px;top:13px;" alt="" /><img src="images/Avatar/mouths/m19c.png" style="left:27px;top:51px;" alt="" /><img src="images/Avatar/noses/n17.png" style="left:14px;top:31px;" alt="" /><img src="images/Avatar/hair/f4h5e.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/b/body8.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f5a.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e7b.png" style="left:19px;top:2px;" alt="" /><img src="images/Avatar/mouths/m33b.png" style="left:28px;top:48px;" alt="" /><img src="images/Avatar/noses/n27.png" style="left:12px;top:11px;" alt="" /><img src="images/Avatar/hair/f5h13e.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/d/body1.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f4d.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e25c.png" style="left:19px;top:13px;" alt="" /><img src="images/Avatar/mouths/m5c.png" style="left:25px;top:61px;" alt="" /><img src="images/Avatar/noses/n16.png" style="left:15px;top:28px;" alt="" /><img src="images/Avatar/hair/f4h10h.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/d/body12.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f1a.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e20c.png" style="left:20px;top:15px;" alt="" /><img src="images/Avatar/mouths/m23c.png" style="left:25px;top:57px;" alt="" /><img src="images/Avatar/goatees/g1.png" style="left:15px;top:57px;" alt="" /><img src="images/Avatar/noses/n24.png" style="left:17px;top:26px;" alt="" /><img src="images/Avatar/hair/f1h14e.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/e/body12.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f4a.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e13b.png" style="left:21px;top:17px;" alt="" /><img src="images/Avatar/mouths/m13b.png" style="left:24px;top:52px;" alt="" /><img src="images/Avatar/noses/n3.png" style="left:16px;top:22px;" alt="" /><img src="images/Avatar/hair/f4h14a.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/c/body6.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f7b.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e32b.png" style="left:21px;top:2px;" alt="" /><img src="images/Avatar/mouths/m32b.png" style="left:28px;top:36px;" alt="" /><img src="images/Avatar/goatees/g4.png" style="left:15px;top:24px;" alt="" /><img src="images/Avatar/noses/n28.png" style="left:14px;top:3px;" alt="" /><img src="images/Avatar/hair/f7h2e.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/f/body3.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f2a.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e18c.png" style="left:20px;top:19px;" alt="" /><img src="images/Avatar/mouths/m3c.png" style="left:26px;top:56px;" alt="" /><img src="images/Avatar/noses/n35.png" style="left:13px;top:26px;" alt="" /><img src="images/Avatar/hair/f2h6d.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/d/body10.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f9c.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e36b.png" style="left:21px;top:10px;" alt="" /><img src="images/Avatar/mouths/m30b.png" style="left:27px;top:59px;" alt="" /><img src="images/Avatar/noses/n16.png" style="left:15px;top:26px;" alt="" /><img src="images/Avatar/hair/f9h9c.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/c/body6.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f1h.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e25c.png" style="left:20px;top:14px;" alt="" /><img src="images/Avatar/mouths/m6c.png" style="left:27px;top:63px;" alt="" /><img src="images/Avatar/goatees/g5.png" style="left:15px;top:57px;" alt="" /><img src="images/Avatar/noses/n19.png" style="left:15px;top:30px;" alt="" /><img src="images/Avatar/hair/f1h15f.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/c/body4.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f2f.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e11c.png" style="left:20px;top:19px;" alt="" /><img src="images/Avatar/mouths/m27cg.png" style="left:29px;top:63px;" alt="" /><img src="images/Avatar/noses/n19mg.png" style="left:15px;top:30px;" alt="" /><img src="images/Avatar/hair/f2h1g.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/c/body2.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f8c.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e35c.png" style="left:21px;top:15px;" alt="" /><img src="images/Avatar/mouths/m24c.png" style="left:24px;top:56px;" alt="" /><img src="images/Avatar/goatees/g3.png" style="left:15px;top:49px;" alt="" /><img src="images/Avatar/noses/n14md.png" style="left:14px;top:29px;" alt="" /><img src="images/Avatar/hair/f8h1d.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/d/body1.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f6b.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e9b.png" style="left:19px;top:13px;" alt="" /><img src="images/Avatar/mouths/m8b.png" style="left:27px;top:58px;" alt="" /><img src="images/Avatar/noses/n34.png" style="left:11px;top:12px;" alt="" /><img src="images/Avatar/hair/f6h4c.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/d/body1.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f2c.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e17b.png" style="left:22px;top:20px;" alt="" /><img src="images/Avatar/mouths/m17bg.png" style="left:26px;top:54px;" alt="" /><img src="images/Avatar/noses/n23.png" style="left:19px;top:22px;" alt="" /><img src="images/Avatar/hair/f2h15e.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/f/body4.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f6a.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e15c.png" style="left:21px;top:16px;" alt="" /><img src="images/Avatar/mouths/m38c.png" style="left:27px;top:60px;" alt="" /><img src="images/Avatar/noses/n31.png" style="left:12px;top:13px;" alt="" /><img src="images/Avatar/hair/f6h1a.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/f/body6.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f1b.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e29b.png" style="left:21px;top:16px;" alt="" /><img src="images/Avatar/mouths/m16b.png" style="left:26px;top:58px;" alt="" /><img src="images/Avatar/noses/n12.png" style="left:16px;top:26px;" alt="" /><img src="images/Avatar/hair/f1h13b.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/a/body8.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f6a.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e9c.png" style="left:19px;top:13px;" alt="" /><img src="images/Avatar/mouths/m27cg.png" style="left:28px;top:61px;" alt="" /><img src="images/Avatar/noses/n9.png" style="left:15px;top:26px;" alt="" /><img src="images/Avatar/hair/f6h0.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/e/body2.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f3a.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e27c.png" style="left:20px;top:10px;" alt="" /><img src="images/Avatar/mouths/m4cg.png" style="left:26px;top:58px;" alt="" /><img src="images/Avatar/noses/n29me.png" style="left:14px;top:15px;" alt="" /><img src="images/Avatar/hair/f3h5e.png" style="left:5px;top:5px;" alt="" />');
-- Otro equipo
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/c/body5.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f6c.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e10c.png" style="left:18px;top:16px;" alt="" /><img src="images/Avatar/mouths/m3c.png" style="left:27px;top:53px;" alt="" /><img src="images/Avatar/noses/n4.png" style="left:15px;top:23px;" alt="" /><img src="images/Avatar/hair/f6h13a.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/e/body2.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f6k.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e36b.png" style="left:22px;top:12px;" alt="" /><img src="images/Avatar/mouths/m4bg.png" style="left:26px;top:61px;" alt="" /><img src="images/Avatar/noses/n9mk.png" style="left:15px;top:26px;" alt="" /><img src="images/Avatar/hair/f6h14k.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/a/body7.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f4b.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e22c.png" style="left:17px;top:15px;" alt="" /><img src="images/Avatar/mouths/m35c.png" style="left:25px;top:60px;" alt="" /><img src="images/Avatar/noses/n11.png" style="left:14px;top:24px;" alt="" /><img src="images/Avatar/hair/f4h4d.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/a/body7.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f4l.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e31c.png" style="left:20px;top:13px;" alt="" /><img src="images/Avatar/mouths/m9c.png" style="left:24px;top:58px;" alt="" /><img src="images/Avatar/goatees/g5.png" style="left:15px;top:50px;" alt="" /><img src="images/Avatar/noses/n12.png" style="left:14px;top:26px;" alt="" /><img src="images/Avatar/hair/f4h2j.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/d/body10.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f3c.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e34c.png" style="left:21px;top:10px;" alt="" /><img src="images/Avatar/mouths/m39c.png" style="left:27px;top:60px;" alt="" /><img src="images/Avatar/noses/n17.png" style="left:14px;top:27px;" alt="" /><img src="images/Avatar/hair/f3h5b.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/e/body4.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f5h.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e26c.png" style="left:20px;top:3px;" alt="" /><img src="images/Avatar/mouths/m9c.png" style="left:25px;top:44px;" alt="" /><img src="images/Avatar/noses/n20.png" style="left:15px;top:15px;" alt="" /><img src="images/Avatar/hair/f5h9f.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/a/body12.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f3c.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e26a.png" style="left:21px;top:9px;" alt="" /><img src="images/Avatar/mouths/m21c.png" style="left:23px;top:52px;" alt="" /><img src="images/Avatar/goatees/g4.png" style="left:15px;top:48px;" alt="" /><img src="images/Avatar/noses/n15.png" style="left:16px;top:20px;" alt="" /><img src="images/Avatar/hair/f3h14c.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/a/body6.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f6b.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e25c.png" style="left:20px;top:12px;" alt="" /><img src="images/Avatar/mouths/m29c.png" style="left:28px;top:59px;" alt="" /><img src="images/Avatar/noses/n4.png" style="left:15px;top:23px;" alt="" /><img src="images/Avatar/hair/f6h14d.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/f/body1.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f6b.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e16c.png" style="left:18px;top:10px;" alt="" /><img src="images/Avatar/mouths/m15c.png" style="left:25px;top:52px;" alt="" /><img src="images/Avatar/goatees/g1.png" style="left:15px;top:48px;" alt="" /><img src="images/Avatar/noses/n3.png" style="left:16px;top:21px;" alt="" /><img src="images/Avatar/hair/f6h12e.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/a/body12.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f9b.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e36b.png" style="left:21px;top:10px;" alt="" /><img src="images/Avatar/mouths/m9b.png" style="left:25px;top:55px;" alt="" /><img src="images/Avatar/goatees/g5.png" style="left:14px;top:46px;" alt="" /><img src="images/Avatar/noses/n9md.png" style="left:15px;top:23px;" alt="" /><img src="images/Avatar/hair/f9h4d.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/a/body3.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f2b.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e12b.png" style="left:20px;top:19px;" alt="" /><img src="images/Avatar/mouths/m26bg.png" style="left:28px;top:66px;" alt="" /><img src="images/Avatar/noses/n24.png" style="left:19px;top:25px;" alt="" /><img src="images/Avatar/hair/f2h2a.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/a/body12.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f3b.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e24b.png" style="left:19px;top:11px;" alt="" /><img src="images/Avatar/mouths/m24b.png" style="left:23px;top:56px;" alt="" /><img src="images/Avatar/noses/n4.png" style="left:14px;top:22px;" alt="" /><img src="images/Avatar/hair/f3h5d.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/f/body5.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f4c.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e36a.png" style="left:21px;top:12px;" alt="" /><img src="images/Avatar/mouths/m4ag.png" style="left:25px;top:61px;" alt="" /><img src="images/Avatar/noses/n15.png" style="left:16px;top:20px;" alt="" /><img src="images/Avatar/hair/f4h2e.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/c/body3.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f3k.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e23c.png" style="left:21px;top:9px;" alt="" /><img src="images/Avatar/mouths/m3c.png" style="left:25px;top:51px;" alt="" /><img src="images/Avatar/noses/n29.png" style="left:14px;top:15px;" alt="" /><img src="images/Avatar/hair/f3h5j.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/f/body11.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f4i.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e28c.png" style="left:20px;top:11px;" alt="" /><img src="images/Avatar/mouths/m5c.png" style="left:25px;top:61px;" alt="" /><img src="images/Avatar/goatees/g1.png" style="left:14px;top:52px;" alt="" /><img src="images/Avatar/noses/n17.png" style="left:14px;top:31px;" alt="" /><img src="images/Avatar/hair/f4h5i.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/e/body2.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f6c.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e15c.png" style="left:21px;top:16px;" alt="" /><img src="images/Avatar/mouths/m21c.png" style="left:25px;top:53px;" alt="" /><img src="images/Avatar/noses/n8.png" style="left:16px;top:22px;" alt="" /><img src="images/Avatar/hair/f6h1e.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/a/body8.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f6a.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e16c.png" style="left:18px;top:10px;" alt="" /><img src="images/Avatar/mouths/m26cg.png" style="left:27px;top:63px;" alt="" /><img src="images/Avatar/noses/n10.png" style="left:15px;top:21px;" alt="" /><img src="images/Avatar/hair/f6h14c.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/b/body12.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f5c.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e35c.png" style="left:19px;top:5px;" alt="" /><img src="images/Avatar/mouths/m11c.png" style="left:23px;top:42px;" alt="" /><img src="images/Avatar/noses/n32.png" style="left:11px;top:4px;" alt="" /><img src="images/Avatar/hair/f5h7c.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/e/body3.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f9b.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e10c.png" style="left:17px;top:12px;" alt="" /><img src="images/Avatar/mouths/m34c.png" style="left:28px;top:59px;" alt="" /><img src="images/Avatar/noses/n4.png" style="left:13px;top:24px;" alt="" /><img src="images/Avatar/hair/f9h5b.png" style="left:5px;top:5px;" alt="" />');
--Selección Italiana Sub20
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/c/body7.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f3a.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e22c.png" style="left:17px;top:13px;" alt="" /><img src="images/Avatar/mouths/m1c.png" style="left:25px;top:56px;" alt="" /><img src="images/Avatar/noses/n19.png" style="left:13px;top:23px;" alt="" /><img src="images/Avatar/hair/f3h2b.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/a/body4.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f1m.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e16b.png" style="left:18px;top:15px;" alt="" /><img src="images/Avatar/mouths/m30b.png" style="left:27px;top:65px;" alt="" /><img src="images/Avatar/goatees/g4.png" style="left:15px;top:57px;" alt="" /><img src="images/Avatar/noses/n12.png" style="left:16px;top:26px;" alt="" /><img src="images/Avatar/hair/f1h7b.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/a/body3.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f3c.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e28b.png" style="left:20px;top:8px;" alt="" /><img src="images/Avatar/mouths/m11bg.png" style="left:24px;top:52px;" alt="" /><img src="images/Avatar/noses/n22.png" style="left:13px;top:24px;" alt="" /><img src="images/Avatar/hair/f3h3d.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/e/body9.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f3a.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/beards/f3b3e.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e22c.png" style="left:17px;top:13px;" alt="" /><img src="images/Avatar/mouths/f3bem4c.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/noses/f3ben4.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/hair/f3h8e.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/d/body6.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f6b.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/beards/f6b2f.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e9c.png" style="left:19px;top:13px;" alt="" /><img src="images/Avatar/mouths/f6bem13c.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/noses/f6ben1.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/hair/f6h3f.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/d/body2.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f7b.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e14c.png" style="left:19px;top:-1px;" alt="" /><img src="images/Avatar/mouths/m39c.png" style="left:26px;top:35px;" alt="" /><img src="images/Avatar/noses/n37.png" style="left:14px;top:5px;" alt="" /><img src="images/Avatar/hair/f7h8d.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/e/body12.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f4d.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e13c.png" style="left:21px;top:17px;" alt="" /><img src="images/Avatar/mouths/m39c.png" style="left:27px;top:63px;" alt="" /><img src="images/Avatar/noses/n4.png" style="left:13px;top:25px;" alt="" /><img src="images/Avatar/hair/f4h10h.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/a/body9.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f3a.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/beards/f3b3c.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e29c.png" style="left:20px;top:10px;" alt="" /><img src="images/Avatar/mouths/f3bem14c.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/noses/f3ben25.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/hair/f3h10c.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/c/body9.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f6e.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e36c.png" style="left:22px;top:12px;" alt="" /><img src="images/Avatar/mouths/m39c.png" style="left:28px;top:61px;" alt="" /><img src="images/Avatar/goatees/g1.png" style="left:15px;top:48px;" alt="" /><img src="images/Avatar/noses/n4.png" style="left:15px;top:23px;" alt="" /><img src="images/Avatar/hair/f6h0.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/f/body10.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f8c.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e16c.png" style="left:18px;top:8px;" alt="" /><img src="images/Avatar/mouths/m6c.png" style="left:25px;top:57px;" alt="" /><img src="images/Avatar/noses/n6.png" style="left:18px;top:17px;" alt="" /><img src="images/Avatar/hair/f8h11b.png" style="left:5px;top:5px;" alt="" />');
--Seleccion Argentina
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/d/body3.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f9a.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e31c.png" style="left:21px;top:10px;" alt="" /><img src="images/Avatar/mouths/m14c.png" style="left:26px;top:52px;" alt="" /><img src="images/Avatar/goatees/g2.png" style="left:14px;top:45px;" alt="" /><img src="images/Avatar/noses/n13.png" style="left:15px;top:18px;" alt="" /><img src="images/Avatar/hair/f9h8a.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/b/body2.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f5d.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e36b.png" style="left:20px;top:5px;" alt="" /><img src="images/Avatar/mouths/m2b.png" style="left:25px;top:39px;" alt="" /><img src="images/Avatar/noses/n20.png" style="left:15px;top:15px;" alt="" /><img src="images/Avatar/hair/f5h10h.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/a/body9.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f2a.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e26c.png" style="left:23px;top:15px;" alt="" /><img src="images/Avatar/mouths/m10c.png" style="left:28px;top:60px;" alt="" /><img src="images/Avatar/noses/n28.png" style="left:16px;top:27px;" alt="" /><img src="images/Avatar/hair/f2h8e.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/f/body12.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f1c.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e16c.png" style="left:18px;top:15px;" alt="" /><img src="images/Avatar/mouths/m2c.png" style="left:26px;top:55px;" alt="" /><img src="images/Avatar/noses/n23.png" style="left:17px;top:23px;" alt="" /><img src="images/Avatar/hair/f1h5d.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/c/body2.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f1d.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e11c.png" style="left:19px;top:19px;" alt="" /><img src="images/Avatar/mouths/m5c.png" style="left:28px;top:65px;" alt="" /><img src="images/Avatar/goatees/g3.png" style="left:15px;top:57px;" alt="" /><img src="images/Avatar/noses/n1.png" style="left:18px;top:20px;" alt="" /><img src="images/Avatar/hair/f1h7i.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/f/body4.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f2a.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e21c.png" style="left:22px;top:21px;" alt="" /><img src="images/Avatar/mouths/m36c.png" style="left:28px;top:60px;" alt="" /><img src="images/Avatar/noses/n18.png" style="left:16px;top:24px;" alt="" /><img src="images/Avatar/hair/f2h13e.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/e/body2.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f9b.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e35c.png" style="left:21px;top:10px;" alt="" /><img src="images/Avatar/mouths/m16c.png" style="left:24px;top:52px;" alt="" /><img src="images/Avatar/noses/n10.png" style="left:15px;top:21px;" alt="" /><img src="images/Avatar/hair/f9h15a.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/a/body12.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f6b.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e9b.png" style="left:19px;top:13px;" alt="" /><img src="images/Avatar/mouths/m15b.png" style="left:25px;top:52px;" alt="" /><img src="images/Avatar/noses/n15.png" style="left:17px;top:18px;" alt="" /><img src="images/Avatar/hair/f6h8e.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/e/body12.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f1e.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e9c.png" style="left:20px;top:19px;" alt="" /><img src="images/Avatar/mouths/m3c.png" style="left:27px;top:58px;" alt="" /><img src="images/Avatar/noses/n23.png" style="left:17px;top:23px;" alt="" /><img src="images/Avatar/hair/f1h12h.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/e/body10.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f9d.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e31c.png" style="left:21px;top:10px;" alt="" /><img src="images/Avatar/mouths/m4c.png" style="left:26px;top:59px;" alt="" /><img src="images/Avatar/noses/n33.png" style="left:12px;top:12px;" alt="" /><img src="images/Avatar/hair/f9h13i.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/c/body7.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f2b.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e29c.png" style="left:22px;top:20px;" alt="" /><img src="images/Avatar/mouths/m12c.png" style="left:26px;top:57px;" alt="" /><img src="images/Avatar/noses/n28.png" style="left:16px;top:27px;" alt="" /><img src="images/Avatar/hair/f2h6f.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/c/body8.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f5b.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e7c.png" style="left:19px;top:2px;" alt="" /><img src="images/Avatar/mouths/m13c.png" style="left:25px;top:38px;" alt="" /><img src="images/Avatar/goatees/g3.png" style="left:14px;top:39px;" alt="" /><img src="images/Avatar/noses/n16.png" style="left:15px;top:15px;" alt="" /><img src="images/Avatar/hair/f5h5e.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/e/body12.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f7d.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e25b.png" style="left:20px;top:0px;" alt="" /><img src="images/Avatar/mouths/m30b.png" style="left:27px;top:36px;" alt="" /><img src="images/Avatar/noses/n39.png" style="left:14px;top:5px;" alt="" /><img src="images/Avatar/hair/f7h2i.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/a/body9.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f4e.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e27c.png" style="left:20px;top:13px;" alt="" /><img src="images/Avatar/mouths/m5c.png" style="left:25px;top:61px;" alt="" /><img src="images/Avatar/goatees/g5.png" style="left:15px;top:50px;" alt="" /><img src="images/Avatar/noses/n35.png" style="left:10px;top:23px;" alt="" /><img src="images/Avatar/hair/f4h1i.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/a/body4.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f7c.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e14b.png" style="left:19px;top:-1px;" alt="" /><img src="images/Avatar/mouths/m35b.png" style="left:26px;top:35px;" alt="" /><img src="images/Avatar/goatees/g2.png" style="left:14px;top:21px;" alt="" /><img src="images/Avatar/noses/n32.png" style="left:13px;top:-2px;" alt="" /><img src="images/Avatar/hair/f7h6a.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/c/body8.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f6d.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e28c.png" style="left:22px;top:10px;" alt="" /><img src="images/Avatar/mouths/m30c.png" style="left:27px;top:60px;" alt="" /><img src="images/Avatar/goatees/g5.png" style="left:16px;top:48px;" alt="" /><img src="images/Avatar/noses/n11mh.png" style="left:16px;top:22px;" alt="" /><img src="images/Avatar/hair/f6h5h.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/e/body1.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f9c.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e28c.png" style="left:21px;top:5px;" alt="" /><img src="images/Avatar/mouths/m33c.png" style="left:27px;top:59px;" alt="" /><img src="images/Avatar/noses/n20.png" style="left:14px;top:27px;" alt="" /><img src="images/Avatar/hair/f9h14c.png" style="left:5px;top:5px;" alt="" />');
insert into Avatar (RecetaHTML) values ('<img src="images/Avatar/background/bg_blue.png" style="box-shadow:grey 0px 0px 6px;left:5px;top:5px;" alt="" /><img src="images/Avatar/kits/b/body12.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/faces/f5d.png" style="left:5px;top:5px;" alt="" /><img src="images/Avatar/eyes/e10c.png" style="left:15px;top:8px;" alt="" /><img src="images/Avatar/mouths/m30c.png" style="left:26px;top:46px;" alt="" /><img src="images/Avatar/noses/n10.png" style="left:14px;top:11px;" alt="" /><img src="images/Avatar/hair/f5h10i.png" style="left:5px;top:5px;" alt="" />');

insert into Partido (FechaPartido, GolesEquipo1 , GolesEquipo2) values ('2022-09-20', 9,11);
insert into Partido (FechaPartido, GolesEquipo1 , GolesEquipo2) values ('2022-09-27', 9,10);
insert into Partido (FechaPartido, GolesEquipo1 , GolesEquipo2) values ('2022-10-04', 15,5);
insert into Partido (FechaPartido, GolesEquipo1 , GolesEquipo2) values ('2022-10-11', 13,8);
insert into Partido (FechaPartido, GolesEquipo1 , GolesEquipo2) values ('2022-10-18', 16,19);
insert into Partido (FechaPartido, GolesEquipo1 , GolesEquipo2) values ('2022-10-25', 10,9);
insert into Partido (FechaPartido, GolesEquipo1 , GolesEquipo2) values ('2022-11-01', 10,14);
insert into Partido (FechaPartido, GolesEquipo1 , GolesEquipo2) values ('2022-11-08', 8,9);
insert into Partido (FechaPartido, GolesEquipo1 , GolesEquipo2) values ('2022-11-15', 18,12);
insert into Partido (FechaPartido, GolesEquipo1 , GolesEquipo2) values ('2022-11-22', 9,17);
insert into Partido (FechaPartido, GolesEquipo1 , GolesEquipo2) values ('2022-11-29', 14,9);
insert into Partido (FechaPartido, GolesEquipo1 , GolesEquipo2) values ('2022-12-06', 8,12);
insert into Partido (FechaPartido, GolesEquipo1 , GolesEquipo2) values ('2022-12-13', 13,11);
insert into Partido (FechaPartido, GolesEquipo1 , GolesEquipo2) values ('2022-12-20', 14,16);
insert into Partido (FechaPartido, GolesEquipo1 , GolesEquipo2) values ('2022-12-27', 8,16);
insert into Partido (FechaPartido, GolesEquipo1 , GolesEquipo2) values ('2023-01-03', 11,10);
insert into Partido (FechaPartido, GolesEquipo1 , GolesEquipo2) values ('2023-01-10', 11,19);
insert into Partido (FechaPartido, GolesEquipo1 , GolesEquipo2) values ('2023-01-17', 12,15);
insert into Partido (FechaPartido, GolesEquipo1 , GolesEquipo2) values ('2023-01-24', 15,10);
insert into Partido (FechaPartido, GolesEquipo1 , GolesEquipo2) values ('2023-01-31', 11,17);
insert into Partido (FechaPartido, GolesEquipo1 , GolesEquipo2) values ('2023-02-07', 10,13);
insert into Partido (FechaPartido, GolesEquipo1 , GolesEquipo2) values ('2023-02-14', 5,11);
insert into Partido (FechaPartido, GolesEquipo1 , GolesEquipo2) values ('2023-02-28', 11,8);
insert into Partido (FechaPartido, GolesEquipo1 , GolesEquipo2) values ('2023-03-07', 8,17);
insert into Partido (FechaPartido, GolesEquipo1 , GolesEquipo2) values ('2023-03-14', 8,5);
insert into Partido (FechaPartido, GolesEquipo1 , GolesEquipo2) values ('2023-03-21', 7,8);
insert into Partido (FechaPartido, GolesEquipo1 , GolesEquipo2) values ('2023-03-28', 8,12);
insert into Partido (FechaPartido, GolesEquipo1 , GolesEquipo2) values ('2023-04-04', 8,8);
insert into Partido (FechaPartido, GolesEquipo1 , GolesEquipo2) values ('2023-04-11', 6,10);
insert into Partido (FechaPartido, GolesEquipo1 , GolesEquipo2) values ('2023-04-18', 8,14);
insert into Partido (FechaPartido, GolesEquipo1 , GolesEquipo2) values ('2023-04-25', 7,10);
insert into Partido (FechaPartido, GolesEquipo1 , GolesEquipo2) values ('2023-05-02', 13,11);
insert into Partido (FechaPartido, GolesEquipo1 , GolesEquipo2) values ('2023-05-09', 10,13);
insert into Partido (FechaPartido, GolesEquipo1 , GolesEquipo2) values ('2023-05-16', 20,8);
insert into Partido (FechaPartido, GolesEquipo1 , GolesEquipo2) values ('2023-05-23', 13,15);
insert into Partido (FechaPartido, GolesEquipo1 , GolesEquipo2) values ('2023-05-30', 18,16);
insert into Partido (FechaPartido, GolesEquipo1 , GolesEquipo2) values ('2023-06-06', 8,13);
insert into Partido (FechaPartido, GolesEquipo1 , GolesEquipo2) values ('2023-06-13', 12,10);
insert into Partido (FechaPartido, GolesEquipo1 , GolesEquipo2) values ('2023-06-20', 14,8);
insert into Partido (FechaPartido, GolesEquipo1 , GolesEquipo2) values ('2023-06-27', 13,13);
insert into Partido (FechaPartido, GolesEquipo1 , GolesEquipo2) values ('2023-07-04', 24,9);
insert into Partido (FechaPartido, GolesEquipo1 , GolesEquipo2) values ('2023-07-11', 11,10);
insert into Partido (FechaPartido, GolesEquipo1 , GolesEquipo2) values ('2023-07-18', 10,12);
insert into Partido (FechaPartido, GolesEquipo1 , GolesEquipo2) values ('2023-07-25', 12,12);
insert into Partido (FechaPartido, GolesEquipo1 , GolesEquipo2) values ('2023-08-01', 10,8);
insert into Partido (FechaPartido, GolesEquipo1 , GolesEquipo2) values ('2023-08-08', 9,10);
insert into Partido (FechaPartido, GolesEquipo1 , GolesEquipo2) values ('2023-08-15', 10,14);
insert into Partido (FechaPartido, GolesEquipo1 , GolesEquipo2) values ('2023-08-22', 5,11);
insert into Partido (FechaPartido, GolesEquipo1 , GolesEquipo2) values ('2023-08-29', 12,5);
insert into Partido (FechaPartido, GolesEquipo1 , GolesEquipo2) values ('2023-09-05', 12,10);
insert into Partido (FechaPartido, GolesEquipo1 , GolesEquipo2) values ('2023-09-12', 9,10);

insert into Jugador (Nombre, Apellido, PartidosJugados, Puntaje, AvatarID) values ('Fernando', 'Leiva', 0, 0, 117);
insert into Jugador (Nombre, Apellido, PartidosJugados, Puntaje, AvatarID) values ('Armando', 'Fava', 0, 0, 57);
insert into Jugador (Nombre, Apellido, PartidosJugados, Puntaje, AvatarID) values ('Juan Pablo', 'Leiva', 0, 0, 15);
insert into Jugador (Nombre, Apellido, PartidosJugados, Puntaje, AvatarID) values ('Mauricio', 'Roldan', 0, 0, 50);
insert into Jugador (Nombre, Apellido, PartidosJugados, Puntaje, AvatarID) values ('Geronimo', 'Garcia', 0, 0, 125);
insert into Jugador (Nombre, Apellido, PartidosJugados, Puntaje, AvatarID) values ('Lucas', 'Mobilia', 0, 0, 134);
insert into Jugador (Nombre, Apellido, PartidosJugados, Puntaje, AvatarID) values ('Matias', 'Paez', 0, 0, 146);
insert into Jugador (Nombre, Apellido, PartidosJugados, Puntaje, AvatarID) values ('Andres', 'Sosa', 0, 0, 108);
insert into Jugador (Nombre, Apellido, PartidosJugados, Puntaje, AvatarID) values ('Exequiel', 'Molli', 0, 0, 35);
insert into Jugador (Nombre, Apellido, PartidosJugados, Puntaje, AvatarID) values ('Ezequiel', 'Miceli', 0, 0, 95);
insert into Jugador (Nombre, Apellido, PartidosJugados, Puntaje, AvatarID) values ('Gonzalo', 'Cardon', 0, 0, 91);
insert into Jugador (Nombre, Apellido, PartidosJugados, Puntaje, AvatarID) values ('Fernando', 'Campillay', 0, 0, 69);
insert into Jugador (Nombre, Apellido, PartidosJugados, Puntaje, AvatarID) values ('Gaston', 'Banille', 0, 0, 6);
insert into Jugador (Nombre, Apellido, PartidosJugados, Puntaje, AvatarID) values ('Lucas', 'Vega', 0, 0, 105);
insert into Jugador (Nombre, Apellido, PartidosJugados, Puntaje, AvatarID) values ('Adriano', 'Bione', 0, 0, 40);
insert into Jugador (Nombre, Apellido, PartidosJugados, Puntaje, AvatarID) values ('Marcos', 'Benegas', 0, 0, 22);
insert into Jugador (Nombre, Apellido, PartidosJugados, Puntaje, AvatarID) values ('Maximiliano', 'Mobilia', 0, 0, 147);
insert into Jugador (Nombre, Apellido, PartidosJugados, Puntaje, AvatarID) values ('Mariano', 'Iniesta', 0, 0, 144);
insert into Jugador (Nombre, Apellido, PartidosJugados, Puntaje, AvatarID) values ('Nicolas', 'Genco', 0, 0, 152);
insert into Jugador (Nombre, Apellido, PartidosJugados, Puntaje, AvatarID) values ('Geronimo', 'Mobilia', 0, 0, 10);
insert into Jugador (Nombre, Apellido, PartidosJugados, Puntaje, AvatarID) values ('Leandro', 'Arancibia', 0, 0, 19);
insert into Jugador (Nombre, Apellido, PartidosJugados, Puntaje, AvatarID) values ('Gabriel', 'Rizzato', 0, 0, 70);
insert into Jugador (Nombre, Apellido, PartidosJugados, Puntaje, AvatarID) values ('Alan', 'Daminato', 0, 0, 145);
insert into Jugador (Nombre, Apellido, PartidosJugados, Puntaje, AvatarID) values ('Gabriel', 'Calabretto', 0, 0, 3);
insert into Jugador (Nombre, Apellido, PartidosJugados, Puntaje, AvatarID) values ('Mauricio', 'Vendemmia', 0, 0, 8);
insert into Jugador (Nombre, Apellido, PartidosJugados, Puntaje, AvatarID) values ('Juanjo', 'Cuaranda', 0, 0, 94);
insert into Jugador (Nombre, Apellido, PartidosJugados, Puntaje, AvatarID) values ('Jose', 'Bione', 0, 0, 137);
insert into Jugador (Nombre, Apellido, PartidosJugados, Puntaje, AvatarID) values ('German', 'Hellwig', 0, 0, 83);
insert into Jugador (Nombre, Apellido, PartidosJugados, Puntaje, AvatarID) values ('Nicolas', 'Guevara', 0, 0, 85);
insert into Jugador (Nombre, Apellido, PartidosJugados, Puntaje, AvatarID) values ('Julian', 'Mora', 0, 0, 23);
insert into Jugador (Nombre, Apellido, PartidosJugados, Puntaje, AvatarID) values ('Emiliano', 'Bione', 0, 0, 11);
insert into Jugador (Nombre, Apellido, PartidosJugados, Puntaje, AvatarID) values ('Rodrigo', 'Valdivia', 0, 0, 119);
insert into Jugador (Nombre, Apellido, PartidosJugados, Puntaje, AvatarID) values ('Mauricio', 'Portugal', 0, 0, 2);
insert into Jugador (Nombre, Apellido, PartidosJugados, Puntaje, AvatarID) values ('Cristian', 'Munafo', 0, 0, 86);
insert into Jugador (Nombre, Apellido, PartidosJugados, Puntaje, AvatarID) values ('Jorge', 'Tahan', 0, 0, 65);
insert into Jugador (Nombre, Apellido, PartidosJugados, Puntaje, AvatarID) values ('Alejo', 'Tenerini', 0, 0, 76);
insert into Jugador (Nombre, Apellido, PartidosJugados, Puntaje, AvatarID) values ('Exequiel', 'Mari', 0, 0, 45);
insert into Jugador (Nombre, Apellido, PartidosJugados, Puntaje, AvatarID) values ('Leandro', 'Cardozo', 0, 0, 138);
insert into Jugador (Nombre, Apellido, PartidosJugados, Puntaje, AvatarID) values ('Fernando', 'Balmaceda', 0, 0, 73);
insert into Jugador (Nombre, Apellido, PartidosJugados, Puntaje, AvatarID) values ('Lautaro', 'Martinez', 0, 0, 13);
insert into Jugador (Nombre, Apellido, PartidosJugados, Puntaje, AvatarID) values ('Facundo', 'Llul', 0, 0, 33);
insert into Jugador (Nombre, Apellido, PartidosJugados, Puntaje, AvatarID) values ('Mariano', 'Puppato', 0, 0, 41);
insert into Jugador (Nombre, Apellido, PartidosJugados, Puntaje, AvatarID) values ('Matias', 'Aguero', 0, 0, 143);
insert into Jugador (Nombre, Apellido, PartidosJugados, Puntaje, AvatarID) values ('Federico', 'Ciardullo', 0, 0, 5);
insert into Jugador (Nombre, Apellido, PartidosJugados, Puntaje, AvatarID) values ('Nicolas', 'Ali', 0, 0, 48);
insert into Jugador (Nombre, Apellido, PartidosJugados, Puntaje, AvatarID) values ('Matias', 'Vargas', 0, 0, 82);
insert into Jugador (Nombre, Apellido, PartidosJugados, Puntaje, AvatarID) values ('Pablo', 'Prospitti', 0, 0, 63);
insert into Jugador (Nombre, Apellido, PartidosJugados, Puntaje, AvatarID) values ('Sebastian', 'Zardain', 0, 0, 126);
insert into Jugador (Nombre, Apellido, PartidosJugados, Puntaje, AvatarID) values ('Andres', 'Pizzolatto', 0, 0, 121);
insert into Jugador (Nombre, Apellido, PartidosJugados, Puntaje, AvatarID) values ('Franco', 'Bravetti', 0, 0, 99);

insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (1,1,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (1,4,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (1,5,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (1,6,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (1,7,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (1,8,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (1,9,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (1,10,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (1,11,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (1,12,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (1,13,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (1,14,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (1,15,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (1,16,2);

insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (2,1,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (2,18,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (2,11,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (2,19,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (2,12,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (2,8,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (2,9,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (2,6,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (2,17,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (2,20,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (2,13,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (2,14,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (2,15,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (2,16,2);

insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (3,1,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (3,18,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (3,11,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (3,19,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (3,12,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (3,24,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (3,13,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (3,6,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (3,21,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (3,20,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (3,9,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (3,23,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (3,15,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (3,22,2);

insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (4,1,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (4,18,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (4,11,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (4,19,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (4,25,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (4,24,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (4,13,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (4,6,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (4,17,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (4,20,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (4,15,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (4,9,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (4,16,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (4,12,2);

insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (5,1,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (5,16,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (5,19,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (5,8,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (5,22,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (5,26,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (5,6,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (5,13,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (5,15,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (5,9,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (5,11,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (5,12,2);

insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (6,1,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (6,25,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (6,16,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (6,19,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (6,8,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (6,11,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (6,26,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (6,6,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (6,13,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (6,20,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (6,15,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (6,28,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (6,27,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (6,12,2);

insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (7,1,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (7,18,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (7,16,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (7,19,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (7,8,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (7,11,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (7,30,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (7,6,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (7,13,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (7,20,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (7,15,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (7,12,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (7,29,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (7,26,2);

insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (8,1,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (8,18,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (8,4,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (8,19,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (8,8,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (8,11,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (8,26,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (8,6,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (8,13,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (8,20,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (8,15,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (8,12,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (8,9,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (8,16,2);

insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (9,1,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (9,18,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (9,22,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (9,4,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (9,11,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (9,8,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (9,26,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (9,6,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (9,13,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (9,16,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (9,24,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (9,9,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (9,12,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (9,31,2);

insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (10,1,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (10,25,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (10,5,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (10,4,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (10,16,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (10,18,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (10,26,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (10,8,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (10,11,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (10,13,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (10,24,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (10,12,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (10,15,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (10,29,2);

insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (11,1,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (11,30,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (11,22,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (11,19,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (11,12,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (11,18,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (11,4,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (11,6,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (11,26,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (11,20,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (11,15,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (11,16,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (11,11,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (11,8,2);

insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (12,19,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (12,31,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (12,16,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (12,25,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (12,4,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (12,33,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (12,26,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (12,6,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (12,32,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (12,20,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (12,12,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (12,15,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (12,9,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (12,8,2);

insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (13,1,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (13,24,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (13,4,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (13,25,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (13,26,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (13,37,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (13,34,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (13,6,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (13,20,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (13,16,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (13,11,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (13,35,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (13,12,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (13,36,2);

insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (14,1,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (14,22,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (14,26,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (14,8,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (14,24,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (14,13,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (14,38,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (14,6,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (14,20,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (14,17,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (14,12,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (14,16,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (14,32,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (14,11,2);

insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (15,1,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (15,24,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (15,25,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (15,4,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (15,11,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (15,15,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (15,5,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (15,6,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (15,20,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (15,9,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (15,12,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (15,35,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (15,16,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (15,13,2);

insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (16,1,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (16,39,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (16,20,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (16,30,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (16,19,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (16,11,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (16,12,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (16,6,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (16,4,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (16,16,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (16,26,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (16,15,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (16,32,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (16,21,2);

insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (17,1,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (17,18,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (17,22,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (17,21,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (17,26,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (17,19,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (17,25,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (17,6,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (17,13,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (17,16,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (17,12,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (17,32,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (17,11,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (17,4,2);

insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (18,1,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (18,11,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (18,24,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (18,13,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (18,8,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (18,19,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (18,4,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (18,6,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (18,25,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (18,20,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (18,18,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (18,26,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (18,12,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (18,9,2);

insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (19,1,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (19,13,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (19,24,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (19,11,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (19,25,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (19,37,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (19,26,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (19,6,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (19,18,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (19,20,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (19,12,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (19,4,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (19,32,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (19,19,2);

insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (20,1,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (20,6,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (20,18,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (20,12,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (20,25,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (20,4,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (20,20,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (20,37,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (20,10,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (20,13,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (20,24,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (20,32,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (20,16,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (20,26,2);

insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (21,18,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (21,19,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (21,16,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (21,4,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (21,37,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (21,40,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (21,25,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (21,13,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (21,15,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (21,20,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (21,32,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (21,9,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (21,6,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (21,12,2);

insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (22,1,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (22,12,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (22,40,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (22,32,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (22,19,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (22,4,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (22,26,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (22,37,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (22,13,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (22,8,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (22,16,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (22,15,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (22,20,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (22,25,2);

insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (23,19,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (23,24,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (23,12,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (23,6,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (23,32,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (23,21,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (23,18,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (23,15,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (23,20,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (23,9,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (23,40,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (23,36,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (23,16,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (23,35,2);

insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (24,19,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (24,26,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (24,4,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (24,24,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (24,32,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (24,12,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (24,9,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (24,16,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (24,6,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (24,20,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (24,37,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (24,8,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (24,40,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (24,13,2);

insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (25,15,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (25,24,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (25,12,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (25,11,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (25,13,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (25,16,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (25,26,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (25,19,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (25,20,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (25,31,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (25,25,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (25,6,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (25,41,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (25,40,2);

insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (26,1,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (26,15,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (26,24,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (26,8,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (26,11,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (26,26,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (26,40,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (26,6,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (26,19,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (26,20,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (26,32,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (26,16,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (26,12,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (26,13,2);

insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (27,1,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (27,24,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (27,19,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (27,37,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (27,12,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (27,4,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (27,26,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (27,6,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (27,20,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (27,13,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (27,9,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (27,32,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (27,16,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (27,25,2);

insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (28,7,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (28,24,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (28,10,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (28,19,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (28,37,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (28,8,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (28,11,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (28,13,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (28,20,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (28,22,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (28,6,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (28,14,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (28,26,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (28,12,2);

insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (29,1,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (29,13,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (29,24,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (29,10,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (29,22,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (29,37,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (29,11,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (29,6,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (29,18,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (29,20,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (29,32,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (29,4,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (29,9,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (29,26,2);

insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (30,1,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (30,24,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (30,4,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (30,18,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (30,11,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (30,19,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (30,37,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (30,6,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (30,20,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (30,22,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (30,13,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (30,16,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (30,26,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (30,8,2);

insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (31,1,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (31,18,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (31,12,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (31,16,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (31,20,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (31,6,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (31,26,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (31,37,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (31,13,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (31,32,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (31,4,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (31,24,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (31,8,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (31,11,2);

insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (32,1,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (32,13,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (32,20,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (32,16,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (32,26,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (32,6,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (32,11,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (32,37,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (32,35,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (32,24,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (32,42,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (32,18,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (32,19,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (32,12,2);

insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (33,1,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (33,24,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (33,36,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (33,6,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (33,25,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (33,26,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (33,43,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (33,37,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (33,22,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (33,9,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (33,8,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (33,29,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (33,18,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (33,19,2);

insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (34,1,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (34,24,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (34,12,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (34,6,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (34,20,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (34,11,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (34,13,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (34,37,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (34,22,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (34,31,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (34,16,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (34,26,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (34,18,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (34,19,2);

insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (35,1,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (35,22,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (35,5,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (35,45,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (35,9,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (35,19,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (35,12,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (35,37,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (35,24,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (35,6,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (35,44,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (35,20,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (35,11,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (35,26,2);

insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (36,1,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (36,24,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (36,38,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (36,25,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (36,18,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (36,12,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (36,11,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (36,37,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (36,22,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (36,20,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (36,16,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (36,6,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (36,26,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (36,19,2);

insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (37,14,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (37,12,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (37,20,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (37,6,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (37,24,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (37,10,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (37,37,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (37,9,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (37,18,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (37,26,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (37,1,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (37,22,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (37,19,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (37,31,2);

insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (38,29,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (38,12,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (38,37,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (38,1,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (38,19,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (38,31,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (38,5,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (38,8,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (38,11,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (38,24,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (38,9,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (38,16,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (38,26,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (38,22,2);

insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (39,16,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (39,46,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (39,4,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (39,35,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (39,31,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (39,20,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (39,12,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (39,14,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (39,7,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (39,22,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (39,18,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (39,11,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (39,36,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (39,26,2);

insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (40,20,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (40,4,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (40,24,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (40,37,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (40,1,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (40,31,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (40,47,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (40,8,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (40,26,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (40,6,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (40,43,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (40,18,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (40,14,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (40,36,2);

insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (41,6,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (41,24,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (41,23,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (41,12,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (41,32,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (41,30,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (41,37,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (41,1,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (41,11,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (41,16,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (41,20,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (41,19,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (41,36,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (41,31,2);

insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (42,21,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (42,18,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (42,8,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (42,1,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (42,6,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (42,37,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (42,22,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (42,11,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (42,35,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (42,26,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (42,31,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (42,47,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (42,16,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (42,19,2);

insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (43,30,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (43,6,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (43,24,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (43,20,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (43,3,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (43,1,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (43,31,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (43,8,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (43,11,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (43,37,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (43,26,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (43,10,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (43,47,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (43,19,2);

insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (44,46,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (44,9,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (44,6,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (44,37,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (44,26,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (44,12,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (44,24,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (44,1,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (44,3,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (44,11,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (44,16,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (44,21,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (44,8,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (44,20,2);

insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (45,8,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (45,9,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (45,20,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (45,37,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (45,18,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (45,26,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (45,21,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (45,35,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (45,47,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (45,6,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (45,24,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (45,25,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (45,31,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (45,36,2);

insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (46,8,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (46,6,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (46,24,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (46,26,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (46,47,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (46,14,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (46,4,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (46,35,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (46,18,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (46,49,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (46,22,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (46,25,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (46,48,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (46,31,2);

insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (47,29,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (47,37,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (47,35,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (47,22,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (47,24,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (47,21,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (47,36,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (47,25,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (47,6,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (47,20,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (47,18,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (47,26,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (47,3,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (47,12,2);

insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (48,12,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (48,11,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (48,6,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (48,37,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (48,19,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (48,16,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (48,47,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (48,49,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (48,20,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (48,23,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (48,35,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (48,9,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (48,18,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (48,31,2);

insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (49,49,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (49,1,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (49,9,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (49,11,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (49,37,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (49,19,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (49,26,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (49,12,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (49,35,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (49,20,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (49,6,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (49,24,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (49,41,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (49,31,2);

insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (50,35,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (50,41,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (50,19,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (50,1,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (50,6,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (50,20,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (50,26,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (50,49,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (50,37,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (50,22,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (50,12,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (50,31,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (50,8,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (50,24,2);

insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (51,35,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (51,9,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (51,39,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (51,11,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (51,19,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (51,24,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (51,6,1);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (51,49,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (51,37,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (51,4,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (51,41,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (51,18,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (51,12,2);
insert into EquipoPartido (PartidoID, JugadorID, Equipo) values (51,26,2);


-- Creo función para calcular el premio de un partido especifico
CREATE OR REPLACE FUNCTION calcular_premios_equipo(tu_partidoid INT) RETURNS VOID AS $$
DECLARE 
    cant_jugadores_equipo1 INT;
    cant_jugadores_equipo2 INT;
BEGIN
    SELECT COUNT(*) INTO cant_jugadores_equipo1 FROM EquipoPartido ep WHERE PartidoID = tu_partidoid AND Equipo = 1;
    SELECT COUNT(*) INTO cant_jugadores_equipo2 FROM EquipoPartido ep WHERE PartidoID = tu_partidoid AND Equipo = 2;

    UPDATE Partido
    SET PremioEquipo1 = ((GolesEquipo1 * (cant_jugadores_equipo1 + cant_jugadores_equipo2))::NUMERIC / (GolesEquipo1 + GolesEquipo2)) / cant_jugadores_equipo1,
        PremioEquipo2 = ((GolesEquipo2 * (cant_jugadores_equipo1 + cant_jugadores_equipo2))::NUMERIC / (GolesEquipo1 + GolesEquipo2)) / cant_jugadores_equipo2
    WHERE PartidoID = tu_partidoid;
END;
$$ LANGUAGE plpgsql;


-------------------------------------------------------------------
-------------------------------------------------------------------
--Llamo al nuevo procedimiento con el ID de partido
SELECT calcular_premios_equipo(1);
SELECT calcular_premios_equipo(2);
SELECT calcular_premios_equipo(3);
SELECT calcular_premios_equipo(4);
SELECT calcular_premios_equipo(5);
SELECT calcular_premios_equipo(6);
SELECT calcular_premios_equipo(7);
SELECT calcular_premios_equipo(8);
SELECT calcular_premios_equipo(9);
SELECT calcular_premios_equipo(10);
SELECT calcular_premios_equipo(11);
SELECT calcular_premios_equipo(12);
SELECT calcular_premios_equipo(13);
SELECT calcular_premios_equipo(14);
SELECT calcular_premios_equipo(15);
SELECT calcular_premios_equipo(16);
SELECT calcular_premios_equipo(17);
SELECT calcular_premios_equipo(18);
SELECT calcular_premios_equipo(19);
SELECT calcular_premios_equipo(20);
SELECT calcular_premios_equipo(21);
SELECT calcular_premios_equipo(22);
SELECT calcular_premios_equipo(23);
SELECT calcular_premios_equipo(24);
SELECT calcular_premios_equipo(25);
SELECT calcular_premios_equipo(26);
SELECT calcular_premios_equipo(27);
SELECT calcular_premios_equipo(28);
SELECT calcular_premios_equipo(29);
SELECT calcular_premios_equipo(30);
SELECT calcular_premios_equipo(31);
SELECT calcular_premios_equipo(32);
SELECT calcular_premios_equipo(33);
SELECT calcular_premios_equipo(34);
SELECT calcular_premios_equipo(35);
SELECT calcular_premios_equipo(36);
SELECT calcular_premios_equipo(37);
SELECT calcular_premios_equipo(38);
SELECT calcular_premios_equipo(39);
SELECT calcular_premios_equipo(40);
SELECT calcular_premios_equipo(41);
SELECT calcular_premios_equipo(42);
SELECT calcular_premios_equipo(43);
SELECT calcular_premios_equipo(44);
SELECT calcular_premios_equipo(45);
SELECT calcular_premios_equipo(46);
SELECT calcular_premios_equipo(47);
SELECT calcular_premios_equipo(48);
SELECT calcular_premios_equipo(49);
SELECT calcular_premios_equipo(50);
SELECT calcular_premios_equipo(51);
SELECT calcular_premios_equipo(1);
SELECT calcular_premios_equipo(2);
SELECT calcular_premios_equipo(3);
SELECT calcular_premios_equipo(4);
SELECT calcular_premios_equipo(5);
SELECT calcular_premios_equipo(6);
SELECT calcular_premios_equipo(7);
SELECT calcular_premios_equipo(8);
SELECT calcular_premios_equipo(9);
SELECT calcular_premios_equipo(10);
SELECT calcular_premios_equipo(11);
SELECT calcular_premios_equipo(12);
SELECT calcular_premios_equipo(13);
SELECT calcular_premios_equipo(14);
SELECT calcular_premios_equipo(15);
SELECT calcular_premios_equipo(16);
SELECT calcular_premios_equipo(17);
SELECT calcular_premios_equipo(18);
SELECT calcular_premios_equipo(19);
SELECT calcular_premios_equipo(20);
SELECT calcular_premios_equipo(21);
SELECT calcular_premios_equipo(22);
SELECT calcular_premios_equipo(23);
SELECT calcular_premios_equipo(24);
SELECT calcular_premios_equipo(25);
SELECT calcular_premios_equipo(26);
SELECT calcular_premios_equipo(27);
SELECT calcular_premios_equipo(28);
SELECT calcular_premios_equipo(29);
SELECT calcular_premios_equipo(30);
SELECT calcular_premios_equipo(31);
SELECT calcular_premios_equipo(32);
SELECT calcular_premios_equipo(33);
SELECT calcular_premios_equipo(34);
SELECT calcular_premios_equipo(35);
SELECT calcular_premios_equipo(36);
SELECT calcular_premios_equipo(37);
SELECT calcular_premios_equipo(38);
SELECT calcular_premios_equipo(39);
SELECT calcular_premios_equipo(40);
SELECT calcular_premios_equipo(41);
SELECT calcular_premios_equipo(42);
SELECT calcular_premios_equipo(43);
SELECT calcular_premios_equipo(44);
SELECT calcular_premios_equipo(45);
SELECT calcular_premios_equipo(46);
SELECT calcular_premios_equipo(47);
SELECT calcular_premios_equipo(48);
SELECT calcular_premios_equipo(49);
SELECT calcular_premios_equipo(50);
SELECT calcular_premios_equipo(51);

-------------------------------------------------------------------
-------------------------------------------------------------------
-- Actualiza la cantidad de PartidosJugados de cada jugador 
UPDATE Jugador
SET PartidosJugados = T.PartidosJugados
FROM (
    SELECT JugadorID, COUNT(*) AS PartidosJugados
    FROM EquipoPartido
    GROUP BY JugadorID
) AS T
WHERE Jugador.JugadorID = T.JugadorID;
-------------------------------------------------------------------
-------------------------------------------------------------------
-- Actualizo Valoración de todos los jugadores
UPDATE Jugador j
SET Valoracion = subconsulta.PromedioPremios
FROM (
  SELECT ep.JugadorID, AVG(CASE WHEN ep.Equipo = 1 THEN p.PremioEquipo1
                               WHEN ep.Equipo = 2 THEN p.PremioEquipo2
                               ELSE NULL
                          END) AS PromedioPremios
  FROM Partido p
  JOIN EquipoPartido ep ON p.PartidoID = ep.PartidoID
  GROUP BY ep.JugadorID
) AS subconsulta
WHERE j.JugadorID = subconsulta.JugadorID;


