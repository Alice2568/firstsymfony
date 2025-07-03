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
--INSERT INTO utilisateur (nom, email, mot_de_passe, role) VALUES
--('Admin Principal', 'admin@restaurant.com', 'admin_hashed_password', 'admin'),
--('Chef Mario', 'chef@restaurant.com', 'chef_hashed_password', 'chef');

-- Insérer les plats

-- Antipastis (id catégorie = 1)
INSERT INTO plat (libelle, description, prix, image, is_valid, category_id, slug) VALUES
('Bruschetta', 'Pain grillé avec tomates, ail et basilic', 6.50, 'bruschetta.jpg', TRUE, 1, 'bruschetta'),
('Carpaccio de bœuf', 'Tranches fines de bœuf, parmesan et roquette', 9.00, 'carpaccio.jpg', TRUE, 1, 'carpaccio_de_boeuf'),
('Antipasto misto', 'Assortiment de charcuterie et fromages italiens', 12.00, 'antipasto.jpg', TRUE, 1, 'antipasto_misto'),
('Mozzarella di Bufala', 'Mozzarella servie avec tomates cerises et basilic', 8.00, 'mozzarella.jpg', TRUE, 1, 'mozzarella_di_buffala'),
('Arancini', 'Boulettes de riz farcies, panées et frites', 7.00, 'arancini.jpg', TRUE, 1, 'arancini'),
('Frittata', 'Omelette italienne aux légumes', 6.00, 'frittata.jpg', TRUE, 1, 'frittata'),
('Salade Caprese', 'Tomate, mozzarella et basilic', 7.50, 'caprese.jpg', TRUE, 1, 'salade_caprese'),
('Crostini Toscani', 'Petites tartines avec foie de volaille', 6.50, 'crostini.jpg', TRUE, 1, 'crostini_toscani'),
('Involtini di Melanzane', 'Aubergines roulées farcies', 8.00, 'involtini.jpg', TRUE, 1, 'involtini_di_melanzane'),
('Olives marinées', 'Olives vertes et noires à l’huile d’olive', 4.50, 'olives.jpg', TRUE, 1, 'olives_marinés');

-- Pizza (id catégorie = 2)
INSERT INTO plat (libelle, description, prix, image, is_valid, category_id, slug) VALUES
('Margherita', 'Tomate, mozzarella, basilic', 9.00, 'margherita.jpg', TRUE, 2,'margherita'),
('Quattro Stagioni', 'Artichauts, champignons, jambon, olives', 12.00, '4stagioni.jpg', TRUE, 2, 'quattro_stagioni'),
('Diavola', 'Salami piquant, mozzarella, tomate', 11.00, 'diavola.jpg', TRUE, 2, 'diavola'),
('Capricciosa', 'Jambon, champignons, artichauts, œuf', 12.50, 'capricciosa.jpg', TRUE, 2, 'capricciosa'),
('Prosciutto e Funghi', 'Jambon et champignons', 11.00, 'prosciutto_funghi.jpg', TRUE, 2, 'proscuitto_e_funghi'),
('Quattro Formaggi', 'Mozzarella, gorgonzola, parmesan, provolone', 12.00, '4formaggi.jpg', TRUE, 2, 'quattro_formaggi'),
('Napolitaine', 'Anchois, câpres, olives noires', 10.00, 'napolitaine.jpg', TRUE, 2, 'napolitaine'),
('Calzone', 'Pizza repliée avec jambon et fromage', 11.50, 'calzone.jpg', TRUE, 2, 'calzone'),
('Pizza Truffe', 'Crème de truffe, champignons, mozzarella', 14.00, 'truffe.jpg', TRUE, 2, 'pizza_truffe'),
('Pizza Végétarienne', 'Légumes grillés, mozzarella', 10.50, 'vegetarienne.jpg', TRUE, 2, 'pizza_vegetarienne');

-- Pasta (id catégorie = 3)
INSERT INTO plat (libelle, description, prix, image, is_valid, category_id, slug) VALUES
('Spaghetti Carbonara', 'Crème, œuf, pancetta, parmesan', 11.00, 'carbonara.jpg', TRUE, 3, 'spaghetti_carbonara'),
('Tagliatelle al Ragù', 'Sauce bolognaise maison', 12.00, 'ragu.jpg', TRUE, 3, 'tagliatelle_al_ragu'),
('Penne all’Arrabbiata', 'Sauce tomate épicée', 10.00, 'arrabbiata.jpg', TRUE, 3, 'penne_allarrabiata'),
('Lasagnes', 'Pâtes gratinées à la viande et béchamel', 13.00, 'lasagne.jpg', TRUE, 3, 'lasagnes'),
('Spaghetti alle Vongole', 'Palourdes, ail, persil', 14.00, 'vongole.jpg', TRUE, 3, 'spaghetti_alle_vongole'),
('Tortellini alla panna', 'Tortellini à la crème et jambon', 12.50, 'tortellini.jpg', TRUE, 3, 'tortellini_alla_panna'),
('Fusilli al Pesto', 'Sauce pesto maison et parmesan', 11.00, 'pesto.jpg', TRUE, 3, 'fusilli_al_pesto'),
('Ravioli ricotta épinards', 'Servis avec beurre et sauge', 13.00, 'ravioli.jpg', TRUE, 3, 'ravioli_ricotta_epinards'),
('Gnocchi al Gorgonzola', 'Sauce gorgonzola et noix', 12.50, 'gnocchi.jpg', TRUE, 3, 'gnocchi_al_gorgonzola'),
('Spaghetti à la puttanesca', 'Tomates, olives, câpres, anchois', 11.50, 'puttanesca.jpg', TRUE, 3, 'spaghetti_a_la_puttanesca');

-- Risotto (id catégorie = 4)
INSERT INTO plat (libelle, description, prix, image, is_valid, category_id, slug) VALUES
('Risotto alla Milanese', 'Safran, parmesan', 12.00, 'milanese.jpg', TRUE, 4, 'risotto_alla_milanese'),
('Risotto aux champignons', 'Champignons, ail, persil', 13.00, 'champignons.jpg', TRUE, 4, 'risotto_aux_champignons'),
('Risotto aux fruits de mer', 'Calamars, crevettes, moules', 14.50, 'mare.jpg', TRUE, 4, 'risotto_aux_fruits_de_mer'),
('Risotto au gorgonzola et noix', 'Crèmeux et fondant', 13.50, 'gorgonzola_noix.jpg', TRUE, 4, 'risotto_au_gorgonzola_et_noix'),
('Risotto aux asperges', 'Asperges vertes, parmesan', 12.50, 'asperges.jpg', TRUE, 4, 'risotto_aux_asperges'),
('Risotto courgettes et menthe', 'Léger et rafraîchissant', 12.00, 'courgette.jpg', TRUE, 4, 'risotto_courgettes_et_menthe'),
('Risotto au potiron', 'Crémeux au potiron', 11.50, 'potiron.jpg', TRUE, 4, 'risotto_au_potiron'),
('Risotto aux truffes', 'Crème de truffe, parmesan', 15.00, 'truffes.jpg', TRUE, 4, 'risotto_aux_truffes'),
('Risotto aux artichauts', 'Fond d’artichaut et herbes', 13.00, 'artichaut.jpg', TRUE, 4, 'risotto_aux_artichauts'),
('Risotto citron et crevettes', 'Zeste de citron, crevettes grillées', 14.00, 'citron_crevettes.jpg', TRUE, 4, 'risotto_citron_et_crevettes');

-- Dessert (id catégorie = 5)
INSERT INTO plat (libelle, description, prix, image, is_valid, category_id, slug) VALUES
('Tiramisu', 'Dessert italien au café et mascarpone', 6.00, 'tiramisu.jpg', TRUE, 5, 'tiramisu'),
('Panna Cotta', 'Crème cuite vanillée et coulis de fruits rouges', 5.50, 'pannacotta.jpg', TRUE, 5, 'panna_cotta'),
('Cannoli Siciliani', 'Pâtisserie fourrée à la ricotta', 6.50, 'cannoli.jpg', TRUE, 5, 'cannoli_siciliani'),
('Gelato', 'Glace italienne artisanale', 5.00, 'gelato.jpg', TRUE, 5, 'gelato'),
('Zabaione', 'Crème mousseuse au marsala', 5.50, 'zabaione.jpg', TRUE, 5, 'zabaione'),
('Affogato al caffè', 'Glace vanille avec expresso chaud', 5.00, 'affogato.jpg', TRUE, 5, 'affogato_al_caffe'),
('Torta della Nonna', 'Tarte à la crème pâtissière et pignons', 6.00, 'nonna.jpg', TRUE, 5, 'torta_della_nonna'),
('Semifreddo', 'Dessert glacé au chocolat', 6.00, 'semifreddo.jpg', TRUE, 5, 'semifreddo'),
('Granita Sicilienne', 'Glace pilée citron ou amande', 4.50, 'granita.jpg', TRUE, 5, 'granita_sicilienne'),
('Tarte au citron meringuée', 'Version italienne maison', 5.50, 'citron.jpg', TRUE, 5, 'tarte_au_citron_meringuee');

-- Boissons (id catégorie = 6)
INSERT INTO plat (libelle, description, prix, image, is_valid, category_id, slug) VALUES
('Eau plate San Pellegrino', '50cl', 2.00, 'eau.jpg', TRUE, 6, 'eau_plate_san_pellegrino'),
('Eau gazeuse Perrier', '50cl', 2.50, 'perrier.jpg', TRUE, 6, 'eau_gazeuse_perrier'),
('Coca-Cola', '33cl', 2.50, 'coca.jpg', TRUE, 6, 'coca_cola'),
('Fanta orange', '33cl', 2.50, 'fanta.jpg', TRUE, 6, 'fanta_orange'),
('Thé glacé maison', 'Saveur citron ou pêche', 3.00, 'theglace.jpg', TRUE, 6, 'the_glace_maison'),
('Jus d’orange pressé', 'Frais', 3.50, 'jusorange.jpg', TRUE, 6, 'jus_d_orange_presse'),
('Limoncello', 'Digestif italien', 4.00, 'limoncello.jpg', TRUE, 6, 'limoncello'),
('Vin rouge Chianti', 'Verre 12cl', 4.50, 'chianti.jpg', TRUE, 6, 'vin_rouge_chianti'),
('Vin blanc Pinot Grigio', 'Verre 12cl', 4.50, 'pinot.jpg', TRUE, 6, 'vin_blanc_pinot_grigio'),
('Espresso', 'Café serré italien', 2.00, 'espresso.jpg', TRUE, 6, 'espresso');
