-- Insérer les catégories
INSERT INTO categorie (nom) VALUES
('Antipastis'),
('Pizza'),
('Pasta'),
('Risotto'),
('Dessert'),
('Boisson');

-- Créer les utilisateurs
-- Mot de passe crypté simulé (à remplacer selon ton système)
INSERT INTO utilisateur (nom, email, mot_de_passe, role) VALUES
('Admin Principal', 'admin@restaurant.com', 'admin_hashed_password', 'admin'),
('Chef Mario', 'chef@restaurant.com', 'chef_hashed_password', 'chef');

-- Insérer les plats

-- Antipastis (id catégorie = 1)
INSERT INTO plat (libelle, description, prix, image, active, categorie_id) VALUES
('Bruschetta', 'Pain grillé avec tomates, ail et basilic', 6.50, 'bruschetta.jpg', TRUE, 1),
('Carpaccio de bœuf', 'Tranches fines de bœuf, parmesan et roquette', 9.00, 'carpaccio.jpg', TRUE, 1),
('Antipasto misto', 'Assortiment de charcuterie et fromages italiens', 12.00, 'antipasto.jpg', TRUE, 1),
('Mozzarella di Bufala', 'Mozzarella servie avec tomates cerises et basilic', 8.00, 'mozzarella.jpg', TRUE, 1),
('Arancini', 'Boulettes de riz farcies, panées et frites', 7.00, 'arancini.jpg', TRUE, 1),
('Frittata', 'Omelette italienne aux légumes', 6.00, 'frittata.jpg', TRUE, 1),
('Salade Caprese', 'Tomate, mozzarella et basilic', 7.50, 'caprese.jpg', TRUE, 1),
('Crostini Toscani', 'Petites tartines avec foie de volaille', 6.50, 'crostini.jpg', TRUE, 1),
('Involtini di Melanzane', 'Aubergines roulées farcies', 8.00, 'involtini.jpg', TRUE, 1),
('Olives marinées', 'Olives vertes et noires à l’huile d’olive', 4.50, 'olives.jpg', TRUE, 1);

-- Pizza (id catégorie = 2)
INSERT INTO plat (libelle, description, prix, image, active, categorie_id) VALUES
('Margherita', 'Tomate, mozzarella, basilic', 9.00, 'margherita.jpg', TRUE, 2),
('Quattro Stagioni', 'Artichauts, champignons, jambon, olives', 12.00, '4stagioni.jpg', TRUE, 2),
('Diavola', 'Salami piquant, mozzarella, tomate', 11.00, 'diavola.jpg', TRUE, 2),
('Capricciosa', 'Jambon, champignons, artichauts, œuf', 12.50, 'capricciosa.jpg', TRUE, 2),
('Prosciutto e Funghi', 'Jambon et champignons', 11.00, 'prosciutto_funghi.jpg', TRUE, 2),
('Quattro Formaggi', 'Mozzarella, gorgonzola, parmesan, provolone', 12.00, '4formaggi.jpg', TRUE, 2),
('Napolitaine', 'Anchois, câpres, olives noires', 10.00, 'napolitaine.jpg', TRUE, 2),
('Calzone', 'Pizza repliée avec jambon et fromage', 11.50, 'calzone.jpg', TRUE, 2),
('Pizza Truffe', 'Crème de truffe, champignons, mozzarella', 14.00, 'truffe.jpg', TRUE, 2),
('Pizza Végétarienne', 'Légumes grillés, mozzarella', 10.50, 'vegetarienne.jpg', TRUE, 2);

-- Pasta (id catégorie = 3)
INSERT INTO plat (libelle, description, prix, image, active, categorie_id) VALUES
('Spaghetti Carbonara', 'Crème, œuf, pancetta, parmesan', 11.00, 'carbonara.jpg', TRUE, 3),
('Tagliatelle al Ragù', 'Sauce bolognaise maison', 12.00, 'ragu.jpg', TRUE, 3),
('Penne all’Arrabbiata', 'Sauce tomate épicée', 10.00, 'arrabbiata.jpg', TRUE, 3),
('Lasagnes', 'Pâtes gratinées à la viande et béchamel', 13.00, 'lasagne.jpg', TRUE, 3),
('Spaghetti alle Vongole', 'Palourdes, ail, persil', 14.00, 'vongole.jpg', TRUE, 3),
('Tortellini alla panna', 'Tortellini à la crème et jambon', 12.50, 'tortellini.jpg', TRUE, 3),
('Fusilli al Pesto', 'Sauce pesto maison et parmesan', 11.00, 'pesto.jpg', TRUE, 3),
('Ravioli ricotta épinards', 'Servis avec beurre et sauge', 13.00, 'ravioli.jpg', TRUE, 3),
('Gnocchi al Gorgonzola', 'Sauce gorgonzola et noix', 12.50, 'gnocchi.jpg', TRUE, 3),
('Spaghetti à la puttanesca', 'Tomates, olives, câpres, anchois', 11.50, 'puttanesca.jpg', TRUE, 3);

-- Risotto (id catégorie = 4)
INSERT INTO plat (libelle, description, prix, image, active, categorie_id) VALUES
('Risotto alla Milanese', 'Safran, parmesan', 12.00, 'milanese.jpg', TRUE, 4),
('Risotto aux champignons', 'Champignons, ail, persil', 13.00, 'champignons.jpg', TRUE, 4),
('Risotto aux fruits de mer', 'Calamars, crevettes, moules', 14.50, 'mare.jpg', TRUE, 4),
('Risotto au gorgonzola et noix', 'Crèmeux et fondant', 13.50, 'gorgonzola_noix.jpg', TRUE, 4),
('Risotto aux asperges', 'Asperges vertes, parmesan', 12.50, 'asperges.jpg', TRUE, 4),
('Risotto courgettes et menthe', 'Léger et rafraîchissant', 12.00, 'courgette.jpg', TRUE, 4),
('Risotto au potiron', 'Crémeux au potiron', 11.50, 'potiron.jpg', TRUE, 4),
('Risotto aux truffes', 'Crème de truffe, parmesan', 15.00, 'truffes.jpg', TRUE, 4),
('Risotto aux artichauts', 'Fond d’artichaut et herbes', 13.00, 'artichaut.jpg', TRUE, 4),
('Risotto citron et crevettes', 'Zeste de citron, crevettes grillées', 14.00, 'citron_crevettes.jpg', TRUE, 4);

-- Dessert (id catégorie = 5)
INSERT INTO plat (libelle, description, prix, image, active, categorie_id) VALUES
('Tiramisu', 'Dessert italien au café et mascarpone', 6.00, 'tiramisu.jpg', TRUE, 5),
('Panna Cotta', 'Crème cuite vanillée et coulis de fruits rouges', 5.50, 'pannacotta.jpg', TRUE, 5),
('Cannoli Siciliani', 'Pâtisserie fourrée à la ricotta', 6.50, 'cannoli.jpg', TRUE, 5),
('Gelato', 'Glace italienne artisanale', 5.00, 'gelato.jpg', TRUE, 5),
('Zabaione', 'Crème mousseuse au marsala', 5.50, 'zabaione.jpg', TRUE, 5),
('Affogato al caffè', 'Glace vanille avec expresso chaud', 5.00, 'affogato.jpg', TRUE, 5),
('Torta della Nonna', 'Tarte à la crème pâtissière et pignons', 6.00, 'nonna.jpg', TRUE, 5),
('Semifreddo', 'Dessert glacé au chocolat', 6.00, 'semifreddo.jpg', TRUE, 5),
('Granita Sicilienne', 'Glace pilée citron ou amande', 4.50, 'granita.jpg', TRUE, 5),
('Tarte au citron meringuée', 'Version italienne maison', 5.50, 'citron.jpg', TRUE, 5);

-- Boissons (id catégorie = 6)
INSERT INTO plat (libelle, description, prix, image, active, categorie_id) VALUES
('Eau plate San Pellegrino', '50cl', 2.00, 'eau.jpg', TRUE, 6),
('Eau gazeuse Perrier', '50cl', 2.50, 'perrier.jpg', TRUE, 6),
('Coca-Cola', '33cl', 2.50, 'coca.jpg', TRUE, 6),
('Fanta orange', '33cl', 2.50, 'fanta.jpg', TRUE, 6),
('Thé glacé maison', 'Saveur citron ou pêche', 3.00, 'theglace.jpg', TRUE, 6),
('Jus d’orange pressé', 'Frais', 3.50, 'jusorange.jpg', TRUE, 6),
('Limoncello', 'Digestif italien', 4.00, 'limoncello.jpg', TRUE, 6),
('Vin rouge Chianti', 'Verre 12cl', 4.50, 'chianti.jpg', TRUE, 6),
('Vin blanc Pinot Grigio', 'Verre 12cl', 4.50, 'pinot.jpg', TRUE, 6),
('Espresso', 'Café serré italien', 2.00, 'espresso.jpg', TRUE, 6);
