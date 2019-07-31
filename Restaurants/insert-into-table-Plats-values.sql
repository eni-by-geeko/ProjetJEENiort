use Restaurants
SET IDENTITY_INSERT Plats ON
insert into Plats (ID_Plats, Descriptif, Ingredients, Prix, URL, Nom)
           values (1, 'Salade de tomates', 'tomates, concombres, oignons', 15.0, 'PlatN1.jpg', 'Méditerrannéenne');
insert into Plats (ID_Plats, Descriptif, Ingredients, Prix, URL, Nom)
           values (2, 'Poelée aux champignons de Paris', 'champignons de Paris, brocoli, radis', 18.0, 'PlatN2.jpg', 'Parisienne');
insert into Plats (ID_Plats, Descriptif, Ingredients, Prix, URL, Nom)
           values (3, 'Salade au chèvre', 'Pommes de terre, tomates cerises, lardons, oignons', 19.0, 'PlatN3.jpg', 'Niortaise');



SET IDENTITY_INSERT Plats OFF