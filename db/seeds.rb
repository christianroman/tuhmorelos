# encoding: utf-8

destinations = [
    [1, 'Cuernavaca'],
    [2, 'Tepoztlan'],
    [3, 'Cuautla'],
    [4, 'Tequesquitengo'],
    [5, 'Oaxtepec']
]

destinations.each do |id, name|
    Destination.create( id:id, name:name )
end


hotels = [

    [1, 'Finca Chipitlán', 'Calle Otilio Montaño  No.28', 'Chipitlan', '62070', 1, '7773143441', 'www.finca-chipitlan.com', 'reservaciones@finca-chipitlan.com', 3, 'alberca_spa.jpg'],
    [3, 'Hotel Villa del Conqusitador', 'Paseo del Conquistador 134', 'Lomas de Cortés', '62240', 1, '777 3131166', 'www.conquistador.com.mx', 'reservaciones@conquistador.com.mx', 3, 'diapositiva12.jpg'],
    [4, 'Anticavilla Hotel Restaurante & Spa', 'Río Amacuzac #10', 'Vista Hermosa', '62290', 1, '3133131', 'www.anticavillahotel.com', 'recepcion@anticavillahotel.com', 7, 'cascella.jpg'],
    [5, 'Canarios', 'Avenida Morelos #369', 'Centro', '62000', 1, '3134444', 'www.hotelcanarios.com.mx', 'reserva@hotelcanarios.com.mx', 4, 'pa310015.jpg'],
    [7, 'Hotel Haciendo del Rio', 'Carretera Oaxtepec - Cocoyoc ', 'Junto al Vado de Oaxtepec', '-', 5, '01 (735) 35 631 53', 'www.hotelhaciendadelrio.com.mx', 'reservaciones@hotelhaciendadelrio.com.mx', 2, 'haciendadelrofrente.jpg'],
    [8, 'TX Hotel Tequesquitengo', 'Av. Circunvalación 5A', 'Centro de Tequesquitengo', '62915', 4, '01800 837 8371', 'www.txhotel.com.mx', 'nay@txhotel.com.mx', 3, 'teques.jpg'],
    [12, 'La Palapa', 'Carretera Federal México-Acapulco Km.100', 'Alpuyeca', '62790', 4, '7773915635', 'www.hotellapalapa.com.mx', 'hotellapalapa@prodigy.net.mx', 2, 'panoramicapalapa.jpg'],
    [13, 'Argento', 'Río Mayo No. 1001', 'Vista Hermosa', '62290', 1, '018002217904', 'www.hotelargento.com', 'reservaciones@hotelargento.com', 4, 'argentobaja.jpg'],
    [14, 'Puerta Paraí­so', 'Av. Domingo Diez No. 1099', 'El Empleado', '62250', 1, '018003121111', 'www.puertaparaiso.com.mx', 'info@puertaparaiso.com.mx', 3, 'panoalbercabaja.jpg'],
    [15, 'Racquet', 'Francisco Villa No. 100', 'Rancho Cortés', '62120', 1, '018000025425', 'www.hotelracquet.com/', 'reservar@hotelracquet.com', 3, 'fuentejardnhorizontal.jpg'],
    [16, 'Imperial', 'Riva Palacio No.118', 'Centro', '62900', 4, '7343425400', 'www.imperialhotel.com.mx', 'ventas.hotelimperial@imperialhotel.com.mx', 2, 'albercabaja.jpg'],
    [18, 'Las Mañanitas', 'Ricardo Linares No. 107', 'Centro', '62000', 1, '(777) 362 0000 ext 202 y 203', 'www.lasmananitas.com.mx', 'reservaciones@lasmananitas.com.mx', 7, 'las_mananitas.jpg'],
    [20, 'Casa Colonial', 'Netzahualcóyotl No. 137', 'Centro', '62000', 1, '01800 221 7904, (777) 312 7033', 'www.casacolonial.com', 'sales@casacolonial.com', 4, 'restaurante.jpg'],
    [25, 'Los Sauces', 'Romulo Hernandez No 25', 'Centro', '62738', 5, '(735) 356 3103, 356 5351', 'www.lossauces.com.mx', 'lsauces@hotmail.com', 3, 'alberca_noche.jpg'],
    [26, 'Laam', 'Av. Morelos No. 239', 'Centro', '62000', 1, '777 318 7230, 318 9168', 'www.laamhotel.com', 'laamhotel@prodigy.net.mx', 3, 'dscf9647.jpg'],
    [27, 'Quinta del Gobernador', 'Av. Gobernador de Jalisco No. 11', 'Fracc. Lomas del Mirador', '62450', 1, '01800 832 9710, (777) 322 8071', 'www.quintadelgobernador.com.mx', 'cotizaciones@quintadelgobernador.com.mx', 4, 'quintagob_fachada.jpg'],
    [28, 'Quinta Roma', 'Ahuehuetitla No. 9', 'La Presa', '62520', 2, '(739) 3951201, 395 4131', 'www.quintaroma.com', 'info@quintaroma.com', 4, 'hotel_quinta_roma.jpg'],
    [29, 'Hosterí­a Las Quintas', 'Av. Díaz Ordaz No. 9', 'Cantarranas', '62440', 1, '01800 990 1888, 777 362 0203', 'www.hosterialasquintas.com.mx', 'reservas@hosterialasquintas.com.mx', 4, 'hosterialasquintas.jpg'],
    [30, 'Posada del Tepozteco', 'Paraíso No. 3 (a una cuadra del centro)', 'Barrio San Miguel', '62520', 2, ' 739) 395 00 10, 395 27 76', 'www.posadadeltepozteco.com.mx', 'posadadeltepoztecoventas@yahoo.com', 6, 'posadatepozteco.jpg'],
    [32, 'Roma', 'Mariano Matamoros No. 17', 'Centro', '62000', 1, '(777) 318 8778, 314 2186', 'www.hotelromacuernavaca.com.mx', 'hotelroma01@hotmail.com', 2, 'roma_3.jpg'],
    [35, 'En Cuernavaca', 'Amapola No. 47', 'Satelite', '62460', 1, '(777) 315 1531, 316 7864', 'www.hotelencuernavaca.com', 'hotelencuernavaca@hotmail.com', 1, 'en_cuernavaca_habitacin.jpg'],
    [36, 'Vista Hermosa', 'Río Panuco No. 600', 'Vista Hermosa', '62290', 1, '01800 713 3914, (777) 315 2374', 'www.hotelvistahermosa.com.mx', 'ventas@hotelvistahermosa.com.mx', 4, 'terrazaalberca.jpg'],
    [38, 'Barceló Cuernavaca Ejecutivo', 'Coronel Ahumada No. 203', 'Lomas del Mirador', '62450', 1, '(777) 316-0628, 316-3839, 01 800 BARCELO', 'www.barcelo.com/cuernavaca', 'cuernavaca.ventas@barcelo.com', 4, 'barcelcuernavaca.jpg'],
    [39, 'Misión del Sol', 'Av. Gral. Diego Díaz González', 'Parres', '62550', 1, '(777) 321 0999, 01800 9999 100, USA 1866 875 0380', 'www.misiondelsol.com.mx', 'inform@misiondelsol.com', 6, 'misiondelsolspa.jpg'],
    [42, 'Jacarandas', 'Cuauhtémoc No. 133', 'Chapultepec', '62450', 1, '01800 719 9799, (777) 100 7777', 'www.jacarandas.com.mx', 'reservaciones@jacarandas.com.mx', 4, 'albercafoso.jpg'],
    [43, 'Rinconada de Cortés', 'Bernal Díaz del Castillo No. 205', 'Lomas de Cortés', '62240', 1, '(777) 317 5080', 'www.rinconadadecortes.com', 'contacto@rinconadadecortes.com', 2, 'hotelrinconadadecorts.jpg'],
    [44, 'Hacienda Cocoyoc', 'Carretera Cuernavaca-Cuautla Km. 32.5', 'Cocoyoc', '62736', 5, '01800 504 6239, (55) 5550 2202, (735) 356 2111', 'www.cocoyoc.com.mx', 'reservaciones@cocoyoc.com.mx', 4, 'albercagrandeychapoteadero.jpg'],
    [45, 'El Grullo de Tepoztlán', 'Tejería No. 10 esq. Niño Artillero', 'Barrio de San José', '62520', 2, '(55) 5663 3239, (739) 395 2902', 'www.elgrullodetepoztlan.com', 'elgrullotpz@gmail.com', 4, 'hotelelgrullodetepoztlan_hamaca.jpg'],
    [47, 'Posada Tlaltenango & Spa', 'Priv. Eucalipto No.77', 'Fracc.Jardines de Tlaltenango', '62173', 1, '01800 570 5153, (777) 313 2525', 'www.posadatlaltenango.com.mx', 'hotelspa@posadatlaltenango.com.mx', 4, 'palapa.jpg'],
    [48, 'Bungalows Las Rosas', 'Av. Emiliano Zapata No. 117', 'Tlaltenango', '62170', 1, '(777) 313 1100', 'hotelbungalowslasrosas.blogspot.mx/', 'hlr_info@prodigy.net.mx', 2, 'fuentejardinbungalows.jpg'],
    [50, 'Ilebal', 'Chulavista No. 112', 'Centro', '62000', 1, '(777) 314 3820, 318 2725', 'www.hotelilebal.com.mx/', 'ilebal-reserva@prodigy.net.mx', 3, 'albercailebal.jpg'],
    [52, 'Hotel VF', 'Tabasco No. 218', 'Fracc. Maravillas', '62230', 1, '(777) 313 9834, 317 5038', 'www.hotelesvf.com', 'hotelvillasfantasy@msn.com', 3, 'hotelvf.jpg'],
    [56, 'Nuevo Amanecer', 'Carretera Federal Cuernavaca-Tepoztlán Km.16.5', 'Villas Ecológicas Tequimilpa', '62520', 2, '(739) 395 4506, 395 4507', 'www.nuevo-amanecer.com.mx', 'reserva@nuevo-amanecer.com.mx', 5, 'nuevoamanecer.jpg'],
    [58, 'Fiesta Palmar', 'Moctezuma s/n', 'Oaxtepec', '62738', 5, '(735) 3564718,  62*240563*2', 'www.hotelfiestapalmar.com.mx', 'contacto@hotelfiestapalmar.com.mx', 3, 'fiestapalmar.jpg'],
    [64, 'Magico Inn', 'Autopista La Pera Cuautla Km 32', 'Tetelcingo', '62751', 3, '(735) 131 2200', 'www.magicoinn.com.mx', 'recepcion@magicoinn.com.mx', 3, 'hotel3.jpg'],
    [66, 'Nuevo Hotel América', 'Aragón y León No. 14', 'Centro', '62000', 1, '(777) 318 6127', 'www.tourbymexico.com/hotelamerica', 'hotel_america@prodigy.net.mx', 1, 'hotel_america2.jpg'],
    [68, 'Real Santa Marí­a', 'Nacional No. 101', 'Santa María Ahuacatitlán', '-', 1, '(777) 323 7067, 323 7677', 'www.hotelrealsm.com', 'reservaciones@hotelrealsm.com', 2, 'realsantamara.jpg'],
    [69, 'Bio Calli', 'Calle Priv. Niños Héroes S/N', 'Barrio del Rosario, Tlayacapan', '62540', 3, '(735) 357 7501', 'www.biocalli.com.mx', 'spaciobiocalli@gmail.com', 2, 'biocalliimagen.jpg'],
    [76, 'Valle Mí­stico', 'Camino al Otlahyo No. 10 ', 'Xolatlahco', '62520 ', 2, '(739) 395 1770, 395 3788', 'www.vallemistico.com', 'valle_mistico@yahoo.com.mx', 4, 'paisajedescanso.jpg'],
    [74, 'Kazmay', 'Carretera México-Acapulco Km. 104, frente al Tec de Monterrey, ', 'Col. Granjas Mérida', '62590', 1, '(777) 385 0550, 385 44 29', 'www.hotelkazmay.com', 'kazmay_bsb@hotmail.com', 1, 'alberca_baja.jpg'],
    [75, 'Hotel & Spa Sitio Sagrado', 'Camino Real a Amatlán No. 10', 'Del Carmen', '62520', 2, '(55) 5663 3239, (739) 393 3292', 'www.sitiosagrado.com', 'info@sitiosagrado.com', 7, 'sitiosagrado.jpg'],
    [73, 'Orense Express', 'Chula Vista No. 7', 'Centro', '62000', 1, '(777) 314 53 07, 314 53 10', 'www.hotelorenseexpress.com', 'info@hotelorenseexpress.com', 2, 'terraza.jpg']

]

hotels.each do |id, name, street, district, zipcode, destination_id, phone, website, email, fare_id, image|

    Hotel.create( id:id, name:name, street:street, district:district, zipcode:zipcode, destination_id:destination_id, phone:phone, website:website, email:email, fare_id:fare_id, image:image )

end

fares = [

    [1, '250-500', 250, 500],
    [2, '500-800', 500, 800],
    [3, '800-1200', 800, 1200],
    [4, '1200-1800', 1200, 1800],
    [5, '1800-2500', 1800, 2500],
    [6, '2500-3500', 2500, 3500],
    [7, 'más de 3500', 3500, 100000]

]

fares.each do |id, name, start_val, end_val|
    
    Fare.create( id:id, name:name, start:start_val, end:end_val )

end


categories = [

    [1, 'Descansa'],
    [2, 'Familia y recreación'],
    [3, 'Romántica'],
    [4, 'Reuniones y negocios'],
    [5, 'Salud y Holística'],
    [6, 'Esotérico'],
    [7, 'Boutique'],
    [8, 'Bodas'],
    [9, 'B&B'],
    [10, 'Naturaleza'],
    [11, 'Pet Friendly']

]

categories.each do |id, name|

    Category.create( id:id, name:name )

end


categorizations = [

    [1, 1],
    [1, 2],
    [1, 3],
    [1, 5],
    [3, 2],
    [3, 4],
    [4, 4],
    [4, 7],
    [5, 2],
    [7, 2],
    [7, 4],
    [8, 1],
    [8, 2],
    [12, 1],
    [12, 2],
    [12, 8],
    [13, 1],
    [13, 4],
    [13, 8],
    [14, 2],
    [14, 4],
    [14, 8],
    [15, 2],
    [15, 4],
    [15, 8],
    [16, 1],
    [16, 2],
    [18, 1],
    [18, 4],
    [18, 7],
    [18, 8],
    [20, 1],
    [20, 4],
    [20, 7],
    [25, 2],
    [25, 4],
    [26, 1],
    [26, 2],
    [27, 1],
    [27, 4],
    [28, 1],
    [28, 4],
    [28, 5],
    [29, 1],
    [29, 4],
    [29, 5],
    [29, 8],
    [30, 1],
    [30, 3],
    [30, 7],
    [30, 8],
    [32, 1],
    [32, 3],
    [35, 2],
    [35, 1],
    [36, 2],
    [36, 4],
    [36, 8],
    [30, 4],
    [38, 4],
    [38, 8],
    [39, 1],
    [39, 5],
    [39, 4],
    [42, 2],
    [42, 4],
    [43, 1],
    [43, 2],
    [44, 2],
    [44, 4],
    [45, 5],
    [47, 3],
    [47, 5],
    [48, 1],
    [48, 2],
    [50, 1],
    [50, 9],
    [52, 1],
    [52, 2],
    [56, 1],
    [56, 4],
    [58, 1],
    [58, 2],
    [64, 4],
    [64, 2],
    [64, 8],
    [66, 1],
    [66, 2],
    [68, 1],
    [68, 2],
    [69, 1],
    [69, 3],
    [69, 5],
    [73, 3],
    [73, 1],
    [74, 1],
    [74, 2],
    [74, 8],
    [75, 7],
    [75, 5],
    [75, 1],
    [76, 5],
    [76, 10]

]

categorizations.each do |hotel_id, category_id|

    Categorization.create( hotel_id:hotel_id, category_id:category_id )

end
