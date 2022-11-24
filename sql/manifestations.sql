-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : mariadb
-- Généré le : jeu. 24 nov. 2022 à 15:15
-- Version du serveur : 10.8.4-MariaDB-1:10.8.4+maria~ubu2204
-- Version de PHP : 8.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `sae301`
--

-- --------------------------------------------------------

--
-- Structure de la table `manifestations`
--

CREATE TABLE `manifestations` (
  `id` int(11) NOT NULL,
  `lieux_id` int(11) NOT NULL,
  `titre` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `casting` varchar(700) COLLATE utf8mb4_unicode_ci NOT NULL,
  `genre` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `affiche` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prix` double NOT NULL,
  `horaire` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `manifestations`
--

INSERT INTO `manifestations` (`id`, `lieux_id`, `titre`, `description`, `casting`, `genre`, `affiche`, `prix`, `horaire`, `date`) VALUES
(1, 1, 'Le temps à l\'œuvre', 'Damien Aspe interviendra lors d’une conférence sur le processus temporel comme matériau à part entière de la création. Le temps, au fil de l’histoire de l’art, est devenu un véritable composant plastique. Prenant appui sur les oeuvres présentées, dont les siennes, dans l’exposition À l’oeuvre du temps, Damien Aspe ouvrira son propos sur les questionnements qui permettent une mise au temps de l’oeuvre.', 'Damien Aspe', 'Conférence', '1.webp', 0, '18h30', '24/11/2022'),
(2, 2, 'Penser la ville autrement', 'Vous êtes architecte, urbaniste, designer ou vous aimez réfléchir à la manière il est possible de modeler l\'espace pour lui donner un but ? N\'hésitez plus et venez participer à la conférence de Sonia  Lavadinho, anthropologue urbaine, et Luc Gwiazdzinski, enseignant chercheur à l\'École nationale supérieure d\'architecture (ENSAT). Ils vous embarqueront dans leur univers de possibles pour modeler la ville pour tous !', 'Sonia Lavadinho, Luc Gwiazdzinski', 'Conférence', '2.jpg.webp', 0, '10h', '25/11/2022'),
(3, 3, 'Mise au noir', '\"Mathilde Thouron est docteure en architecture et enseignante à l’Éducation nationale en design et métiers d’art. Elle est membre associée du Laboratoire de Recherche en Architecture de Toulouse (LRA). Elle travaille sur l’usage de l’obscurité et du noir dans la conception en scénographie d’exposition ainsi que sur les modes de créations interdisciplinaires. Mise au noir, fonctions du visible et de l’invisible en scénographie est d’abord un travail de thèse de doctorat réalisée en école d’architecture par Mathilde Thouron qui a donné lieu à la publication d’un ouvrage du même nom, sorti en mai 2022 chez Elya éditions. La double direction de sa thèse entre un chercheur praticien, Rémi Papillault, et une chercheuse en esthétique, Andrea Urlberger, a véritablement permis d\'orienter les aspects pluridisciplinaires de son enquête. Cette thèse s\'intéresse autant aux questions pratiques que soulèvent les problématiques de conception dans la création des musées (de leur architecture à leur scénographie), qu\'aux questions esthétiques :  dans quelle mesure l\'orientation vers les scénographies de type sombres parle de notre rapport à la connaissance ? Son travail de recherche s’est focalisé sur 3 études de cas, parmi lesquels le musée du Quai Branly, le musée des Confluences et le Muséum d’histoire naturelle de Toulouse avec le même processus d’interviews du personnel joint à l\'analyse des étapes de projets qui ont préfiguré ces espaces. Avant de présenter les 3 études de cas, une focale sera faite sur le thème de l’obscurité, avec les articulations entre magiques optiques et découvertes scientifiques au tournant du 20e siècle. Puis Mathilde Thouron présentera la rédaction de son ouvrage en regard de son document de thèse. Travail de restitution de thèse avec pour étude de cas le Muséum de Toulouse\"', 'Mathilde Thouron', 'Conférence', '3.jpg.webp', 0, '16h30', '26/11/2022'),
(4, 3, 'Le silure, le géant d\'eau douce', '\"Un poisson aux dimensions hors norme, actuellement le plus grand en Europe, qui peut dépasser 2,70 m et plus de 130 kilos. Une espèce aux comportements alimentaires et sociaux à la fois surprenants et fascinants. Un animal aussi grand et mystérieux suscite forcément beaucoup d’interrogations et de fantasmes. Venez-vous faire votre propre opinion et découvrir un peu plus le silure glane. Un poisson aux dimensions hors norme, actuellement le plus grand en Europe, qui peut dépasser 2,70 m et plus de 130 kilos. Une espèce aux comportements alimentaires et sociaux à la fois surprenants et fascinants. Un animal aussi grand et mystérieux suscite forcément beaucoup d’interrogations et de fantasmes. Venez-vous faire votre propre opinion et découvrir un peu plus le silure glane.\"', 'Carl Linnaeus', 'Conférence', '4.jpg.webp', 0, '18h30', '30/11/2022'),
(5, 3, 'Enquête judiciaire : les experts de la mort', '\"Comment font les médecins légistes pour faire parler les cadavres ? Comment étudier une scène de crime ? Comment procèdent les experts des séries policières dans la vraie vie ? Quelles sont les techniques d’investigation des experts judiciaires ? Mourir n’est pas vraiment la fin, c’est même le début d’une suite de transformations bien ordonnées qui vont aller, dans des conditions normales, jusqu\'à l\'état de squelette. Bactéries et insectes mangeurs de cadavres entrent en scène pour activer la décomposition. Entre observations méticuleuses et méthodes scientifiques, les professionnels vont alors analyser la métamorphose et interpréter ces indices ténus pour expliquer un décès. Mettons-nous dans l’ambiance avec un bon polar et deux experts scientifiques pour discuter en vrai, de leur métier.\"', 'Patrice Georges, Damien Charabidze', 'Conférence', '5.jpg.webp', 0, '18h30', '01/12/2022'),
(6, 4, 'Conférence musicale', 'Le Funk a émergé vers le milieu des années 1960 aux Etats-Unis. Issu principalement de la soul et du jazz, le funk se caractérise par la prédominance de la section rythmique guitare / basse / batterie qui joue des motifs syncopés et par la présence fréquente des cuivres qui offrent des ponctuations rythmiques, des riffs ou bien des solos. C\'est cette histoire que Ferdinand va nous conter...', 'Ferdinand Doumerc', 'Conférence', '6.jpg.webp', 0, '18h30', '06/12/2022'),
(7, 5, 'Rencontre Photographie & livres photo', '\"Envie de partager votre image favorite de votre photographe préféré ? De découvrir de beaux livres photo ? D’échanger sur des projets de fanzines photo autoédités que vous adorez ? Rejoignez-nous ! L’objectif est tout simplement de passer un bon moment avec des personnes qui ont les mêmes intérêts que vous : photographie et livres photo. Pour cette rencontre, amenez votre livre photo préféré ou encore mieux demandez-le à la bibliothèque du Château d’Eau où aura lieu cette fois la rencontre !\"', 'Belén Jiménez', 'Conférence', '7.jpg.webp', 0, '15h', '10/12/2022'),
(8, 3, 'Objets célestes : le ciel va-t-il nous tomber sur la tête ?', 'A la recherche des traces d’impacts au sol, vous découvrirez un aperçu de ce que nous dit la géologie sur le risque d’une collision cosmique avec notre planète.', 'Renaud Mathieu', 'Conférence', '8.jpg.webp', 0, '18h30', '14/12/2022'),
(9, 5, 'Vernissage Prix Caritas Photo Sociale 2022', 'Le Prix Caritas Photo Sociale valorise les photographes qui donnent de la visibilité à la pauvreté et à l’exclusion en France. Il a été créé par le Réseau Caritas France.', 'Cyril Zannettacci, Karen Assayag, Pierre Jarlan', 'Exposition', '9.jpg.webp', 0, '18h', '22/11/2022'),
(10, 6, 'Exposition : Philippe Saucourt & Thierry Genay', '\"Graphiste dans le textile, Thierry Genay est devenu par la suite photographe de natures mortes. Du graphisme il a gardé l’expérience de la composition, du textile celle des matières. L’artiste a commencé par un travail graphique abstrait et épuré, prenant le contrepied des ambiances surchargées des tendances de la mode sur lesquelles il avait précédemment beaucoup travaillé. Ensuite est venu le choix du médium photographique par culture, par goût et par association avec un intérêt tout particulier pour la peinture hollandaise du XVII° siècle, que ce soit par la matière picturale des grands fonds ocres et gris des natures mortes ou la construction rigoureuse des scènes de genres. Thierry Genay est donc un photographe héritier d’une peinture qui, à défaut de motifs nobles et sublimes, se nourrit d’une perception du quotidien. Ses compositions photographiques s’inscrivent dans cette histoire sans cesse renouvelée de la nature morte. Nature morte miroir des modes de vie, d’une réalité quotidienne humaniste ou spirituelle, d’une réflexion sur l’harmonie de la nature, mais toujours écho de l’intime. Cabinet de curiosités composé d’objets simples, naturels ou manufacturés, perdant leur qualité d’usage pour devenir forme et matière intégrant parfaitement l’arrière-plan. Objets modestes qui se valorisent mutuellement, se fondant dans une composition qui glisse vers l’abstraction. Il s’agit d’un travail où l’on retranche plutôt que d’ajouter, il s’agit d’orchestrer précisément un silence, l’expression d’un équilibre en apparence tranquille entre formes et matières, entre plein et vide, entre ce qui se verrait et ce qui ne se voit pas. Philippe Saucourt est peintre et plasticien autodidacte. Le dialogue entre photographie et peinture caractérise sa démarche actuelle. Point de départ du tableau, la photographie est pour lui la marque indéfectible du réel. Son rôle de peintre est d’y mêler ensuite sa propre trace, à mi-chemin entre réalisme et onirisme. Bien qu’identifiables, ses paysages urbains, industriels ou naturels semblent parfois se soustraire au regard du spectateur, pour faire place à un travail sur la lumière.\"', 'Philippe Saucourt, Thierry Genay', 'Exposition', '10.jpg.webp', 0, '9h', '26/10/2022 - 24/11/2022'),
(11, 6, 'Exposition : Sarah Butsavage & José Almansa', '\"Sarah Butsavage peint des paysages abstraits, des endroits où elle aimerait aller, où elle va… en les créant. Elle décore ces espaces avec des sujets et des symboles qui touchent à la féminité, la métaphore, le paradoxe, l’enfance et l’ambiguïté de l’existence. Montaigne suggère dans son essai « de la solitude » que l’on devrait envisager un espace mental privé dans lequel personne ne pourrait entrer, une « arrière-boutique » pour le développement de soi. Puisque la conscience est la nôtre, nous pouvons embrasser cette analogie pour créer un espace où l’on développe l’éthique, le soin, la créativité, etc. Les peintures de l’artistes nous permettent de jeter un coup d’œil à son « arrière-boutique » et de voir des bouts de l’espace lui-même, en constante évolution, et les sujets à l’intérieur que sa curiosité examine. Sarah Butsavage a toujours été charmée par la façon dont le surréalisme est organique. Dès qu’on est capable de se souvenir d’un rêve, on voit combien il est humain que notre imagination crée des collages de ce que nous vivons. Ceci, associé à la fabrication de marques primitives et à l’expressionnisme, pousse sa main à dessiner. Grâce à cela, elle crée des peintures avec des palettes colorées et des images ludiques. L’artiste utilise de la peinture acrylique qui sert souvent de « sous-couche » pour les pastels à l’huile utilisés pour dessiner « par-dessus ». Elle a toujours eu du plaisir à voir une image, latente, et à la faire apparaître avec sa main sur du papier. Elle aime l’intimité et l’immédiateté de la création du dessin au trait. Vous l’imaginez, vous le faites, il est là. Sarah Butsavage est une peintre américaine née à Philadelphie, en Pennsylvanie. Elle a obtenu sa licence en beaux-arts à la School of Visual Arts de New York en 2012. Elle vit et travaille en France. José Almansa définit son travail artistique comme une recherche poétique d’associations de formes abstraites dont la finalité est de créer un objet esthétique. Ses pièces sont celles d’un sculpteur, créées à partir de bois et de métal, souvent monochromes, dans lesquelles il recherche une méthode de construction des caractères géométriques : point, ligne, surface, polyèdre, qui active l’opposition du simple et du complexe, de l’ordre et du désordre, dans l’idée d’une esthétique très personnelle de création de formes. Naissent alors des œuvres plus complexes, invitant le regardeur sur un chemin plus difficile, plus mystérieux. L’artiste a fait de nombreuses expositions en France et à l’étranger et est récompensé par de nombreux prix. Il est à l’origine du Tap (Toulouse Artiste Présent).\"', 'Sarah Butsavage, José Almansa', 'Exposition', '11.jpg.webp', 0, '9h', '8/11/2022 - 25/11/2022'),
(12, 7, 'Ricochets artistiques', 'Regards croisés autour des sculptures de Sandrine Verdier : en écho à l’exposition « Dans l’instant » proposée par l’artiste, les bibliothécaires jeunesse de la Médiathèque Saint-Cyprien et de la Galerie Le Château d’Eau présentent une sélection d’albums de photographes et d’illustrateurs. Cette toile artistique tissée de mystérieuses affinités convoque la sensibilité de chacun et invite à un dialogue avec les oeuvres.', 'Sandrine Verdier', 'Exposition', '12.jpg.webp', 0, '18h30', '25/11/2022'),
(13, 8, 'Exposition \"Jouons !\"', '\"La première déclinaison met à l’honneur des talents, du plus ordinaire au plus extraordinaire. L’exposition se dévoile autour du verbe JOUER et de la notion de TALENT. La deuxième déclinaison est totalement dédiée au JEU. À destination des plus jeunes (mais pas que !), cette version de l’exposition détourne les photos ou les actions rencontrées en supports ludiques.\"', 'Le collectif Le petit cowboy', 'Exposition', '13.jpg.webp', 0, '14h30', '08/11/2022 - 26/11/2022'),
(14, 5, 'Marion Gronier \"We were never meant to survive\"', '\"Marion Gronier est une photographe française. L\'exposition présente 3 séries de visages de descendants des peuples qui fondèrent les États-Unis. La série \"We never meant to survive\" est visible au rez-de-chaussée de la tour de la galerie Le Château d\'Eau\"', 'Marion Gronier', 'Exposition', '14.jpg.webp', 4, '13h', '08/09/2022 - 31/12/2022'),
(15, 3, 'Exposition Momies, corps préservés, corps éternels', 'L’année 2022 marque tout à la fois le bicentenaire du déchiffrement des hiéroglyphes par J.F. Champollion et le centenaire de la découverte du tombeau de Toutânkhamon. Pour autant, ce n’est pas une exposition d’égyptologie que propose le Muséum de Toulouse. La thématique des momies choisie pour sa nouvelle exposition temporaire va bien au-delà. Qu’il s’agisse de momies artificielles, témoins de rites funéraires anciens, ou de momies naturelles formées par l’action du gel, du sel, de la tourbe ou même de l’ambre, cette exposition s’intéresse à la conservation des corps, qu’ils soient humains ou animaux. Elle se penche également sur les techniques de conservation contemporaines et pose les questions éthiques et déontologiques liées à la conservation des restes humains. Le choix du Muséum est donc loin d’être anodin. Programmer une exposition sur les momies, c\'est questionner l’humanité sur son rapport au temps, à la recherche d’éternité et à la mort. C’est la première fois qu’une telle exposition est présentée à Toulouse. Par la diversité des thématiques abordées, Momies, corps préservés, corps éternels s\'ouvre donc sur de nombreuses disciplines : archéologie, anthropologie, thanatopraxie, médecine légale, ethnologie, biologie, génétique, sociologie… Elle donne aussi l’occasion de mettre en relief les collections patrimoniales du Muséum de Toulouse, parmi lesquelles trois momies admirables spécialement restaurées et étudiées pour l’occasion. Des prêts exceptionnels venant de collections publiques ou privées complètent une scénographie innovante, esthétique et interactive. Cette exposition est reconnue d’intérêt national par le ministère de la culture, qui lui apporte à ce titre un soutien financier exceptionnel. Elle est aussi l’une des 20 expositions soutenues par l\'Inrap sous le label « l\'Inrap a 20 ans ! » présentées en France en 2022.', 'J.F. Champollion', 'Exposition', '15.jpg.webp', 7, '10h', '22/11/2022 - 01/07/2022'),
(16, 9, 'Van Gogh, The Immersive Experience', '\"Qui n\'a jamais rêvé de plonger dans une peinture ? Préparez-vous à vivre un voyage inoubliable dans l\'univers de Van Gogh, figure majeure de la peinture du XIXe siècle. Partez à la découverte de sa vie, de son œuvre et de ses secrets grâce à des projections numériques à 360 degrés, une expérience en réalité virtuelle unique en son genre ainsi qu\'un spectacle son et lumière. Organisée par Exhibition Hub et en tournée depuis 2017, l\'exposition a déjà conquis plus de 5 millions de visiteurs dans une trentaine de villes du monde entier.\"', 'Exhibition Hub', 'Exposition', '16.jpg.webp', 15, '10h', '06/07/2022 - 31/12/2022'),
(17, 10, 'Alfred Nakache, le nageur d\'Auschwitz', 'Cette exposition retrace le parcours exceptionnel d’Alfred Nakache. Enfermé dans la prison Saint-Michel pendant la Seconde Guerre mondiale, il est déporté avec sa famille à Auschwitz. Il sera le seul rescapé. Il rentre à Toulouse à la fin de la guerre et arrive à revenir au plus haut niveau de la natation. Ses efforts lui permettront d\'être à nouveau champion de France, de battre un nouveau record du monde et même de participer aux Jeux olympiques de 1948. Exposition réalisée par le Mémorial de la Shoah', 'Memorial de la Shoah', 'Exposition', '17.jpg.webp', 0, '11h', '16/11/2022 - 31/12/2022'),
(18, 11, 'Émoi & moi', 'Nos émotions sont souvent bien plus qu\'un simple sentiment. Elles impliquent des réactions corporelles, des mouvements expressifs, des expressions faciales, ou des sons. Ces réactions corporelles et ces comportements ont alimenté le travail de Reflet 31 durant trois mois.', 'Reflet 31', 'Exposition', '18.jpg.webp', 0, '9h', '21/11/2022 - 03/12/2022'),
(19, 11, 'Clôture du NEUFNEUF FESTIVAL', 'Avec BAL, Christian Ubl vous invite à participer à une grande fête collective pour danser de courtes chorégraphies et enchaînements, inspirés des danses latines, de danses de couples « traditionnelles et folkloriques des alpes centrales » ou encore de la polka. Le public sera accompagné de seize danseurs, ambassadeurs de la soirée.', 'Christian Ubl, DJ Moulineux', 'Spectacle', '19.jpg.webp', 15.8, '20h30', '26/11/2022'),
(20, 12, 'She Past Away + Undertheskin / Setmana santa festival', '\"SAD NEWS : A notre grand regret KAELAN MIKLA annule sa tournée de fin d\'année. GOOD NEWS : Les islandaises que nous espérons revoir l\'année prochaine seront remplacées par un fantastique trio polonais, énorme coup de cœur depuis 2016 et pour la première fois en France : UNDERTHESKIN. En moins d\'une décennie, SHE PAST AWAY s\'est forgé un son et une réputation qui en fait un des leaders de la mouvance darkwave. Avec une attitude et une sensibilité véhiculées par une poésie minimaliste chantée en turc, ils ont réussi à faire adhérer le public à leurs enregistrements et performances live. UNDERTHESKIN (Varsovie / POL) « Mariusz Łuniewski est l\'homme derrière UNDERTHESKIN, l\'un des projets post-punk européens les plus respectés d\'aujourd\'hui ». Et pour cause ! Un son tout aussi froid que dansant, envoutant l\'esprit, sollicitant les chairs autant que le cœur, et convoquant respectueusement sur le dancefloor les spectres d\'un passé en perpétuel mouvement.\"', 'SHE PAST AWAY, UNDERTHESKIN', 'Festival', '20.jpg.webp', 21.8, '20h30', '07/12/2022'),
(21, 13, 'Féeries de Noël à Tibaous', 'Le Centre culturel de quartier Saint-Simon et l’association les P’tits Baous convient les habitants à une journée sous le signe de la féerie, avec le père Noël, une marche aux lampions, des animations musicales avec Dj Kuider, et un spectacle de feu à 18h30, avec la Cie Akouma, pour clôturer ce moment de convivialité.', 'Cie Akouma, DJ Kuider', 'Festival', '21.jpg.webp', 0, '16h30', '02/12/2022'),
(22, 14, 'L’Hiver des Merveilles', 'Après Reynerie, Bellefontaine et Mirail Université, c’est dans le quartier de Lardenne, sur le site du Petit Capitole, que ce temps fort des fêtes de fin d’année prendra ses quartiers. Un manège un peu spécial, une piste de luge sans neige, un mur d’escalade sans rocher, un père Noël sans ses rennes… le tout agrémenté de maquillage, de musique… Et en clôture, le spectacle Carillò de la compagnie catalane La Tal.', 'La Tal', 'Festival', '22.jpg.webp', 0, '14h', '17/12/2022'),
(23, 15, 'Noël à Mirail U', '14h - Père Noël, maquillage, château gonflable, ludothèque, jeux en bois, sulky 16h30 - Spectacle Jack et Momo, Cie Spectambul. Deux artistes circassiens toulousains proposent un spectacle de cabaret musical tout en équilibre.', 'l’accueil jeunes, Alliances et cultures, les mamans des vergers, Mirail jeunes, la Direction de l’Action Territoriale de la Mairie de Toulouse', 'Festival', '23.jpg.webp', 0, '14h', '14/12/2022'),
(24, 16, 'Les merveilles de l\'Hiver', 'L’hiver arrive, les quartiers s’illuminent et mettent leurs habits de fête. Tous les acteurs et partenaires du quartier s’associent, esprit de Noël oblige, pour un temps festif, un temps de partage et de convivialité. Un rendez-vous féerique pour toute la famille. Il vous suffit de tendre l’oreille et d’ouvrir les yeux, en grand !', 'Centre Culturel Alban-Minville, la CSF, le centre social , les structures partenaires du quartier', 'Festival', '24.jpg.webp', 0, '14h', '07/12/2022'),
(25, 3, 'Festival Terres d\'ailleurs - Aventures humaines et voyages ethnographiques', '\"Le festival Terre d’Ailleurs revient au Muséum de Toulouse autour des Aventures humaines et voyages ethnographiques. Cette édition promet une nouvelle fois découverte et évasion avec, en prime, une prise de conscience des enjeux liés à la biodiversité et à la diversité culturelle. Un thème cher au Muséum, qui ne cesse de nous faire prendre conscience de la beauté du monde et de la nécessité de le préserver. Fruit d’un partenariat étroit entre l’association Délires d’encre et le Muséum de Toulouse, la programmation est à la croisée de plusieurs mondes : les sciences, l’exploration, la littérature de voyage, l’ethnographie, l’art, le dessin... Des explorateurs, réalisateurs, écrivains, chercheurs et créateurs viendront sensibiliser le public aux grands bouleversements du 21e siècle, en mettant en lumière des territoires fascinants et méconnus, mais aussi en suscitant une réflexion quant à nos propres pratiques. Le Festival permet en effet d’explorer des territoires lointains avec ses richesses, sa nature, ses peuples et leur culture, et d’appréhender combien les préserver et les respecter est essentiel. Entre projections de documentaires, conférences, rencontres, dédicaces, ateliers, et tables rondes, vous croiserez le chemin d’hommes et de femmes aux destins hors du commun, partis au bout du monde à la découverte de territoires méconnus, cheminant à la rencontre de peuples aux cultures plurielles et ancestrales. Patrick Bernard, Sylvie Brieu, Étienne Druon, Vincent Hilaire, Pierre-Marie Hubert, Olivier Weber ou encore Delphine Zigoni… autant de grands noms de l’exploration, du dessin naturaliste ou du reportage qui seront présents pour vous montrer les beautés que recèlent notre planète et ses habitants.\"', 'l’association Délires d’encre et le Muséum de Toulouse', 'Festival', '25.jpg.webp', 0, '14h', '23/11/2022 - 27/11/2022'),
(26, 12, 'Festival Spirale', '4 Scènes 4 Dates 21 Artistes 1 Seule région Une sélection des meilleurs artistes live sur les scènes incontournables de la région toulousaine. Prépare toi à vibrer !', 'Visceral, Deep, Kelins, Blue Jay, Sabotage, Cie Charlene Convers, Kenozen, Deen CK', 'Festival', '26.jpg.webp', 10.8, '19h30', '06/01/2023'),
(27, 17, 'Festival Spirale', '4 Scènes 4 Dates 21 Artistes 1 Seule région Une sélection des meilleurs artistes live sur les scènes incontournables de la région toulousaine. Prépare toi à vibrer !', 'Kimia, Nicolaa, Nathy Green, Falk & Skapin, Chamalove', 'Festival', '26.jpg.webp', 7.6, '19h30', '13/01/2023'),
(28, 18, 'Festival Spirale', '4 Scènes 4 Dates 21 Artistes 1 Seule région Une sélection des meilleurs artistes live sur les scènes incontournables de la région toulousaine. Prépare toi à vibrer !', 'Fülü, Melanie Lesage, Blue Jay, Rudy Dez', 'Festival', '26.jpg.webp', 10.8, '19h30', '20/01/2023'),
(29, 19, 'Festival Spirale', '4 Scènes 4 Dates 21 Artistes 1 Seule région Une sélection des meilleurs artistes live sur les scènes incontournables de la région toulousaine. Prépare toi à vibrer !', 'Antes & Madzes, Dan, Damantra, Mandarine, El Gato Negro, Jack Mallett', 'Festival', '26.jpg.webp', 16.2, '19h30', '26/01/2023'),
(30, 20, 'La Ruée vers l\'or', 'Le génie de Charles Chaplin aux couleurs de l’orchestre ! Un siècle nous sépare de La Ruée vers l’or, ce témoignage de l’espoir d’un avenir meilleur, et pourtant le film conserve toute sa puissance. Les liens entre l’Orchestre national du Capitole et la Cinémathèque de Toulouse sont aussi forts que ceux qui lient la musique au Septième Art. Leur hommage à Charles Chaplin rappelle combien les images du réalisateur britannique résonnent avec notre temps.', 'Timothy Brock', 'Spectacle', '27.jpg.webp', 22, '20h', '25/11/2022'),
(31, 21, 'Blanche-Neige règle ses contes', '\"Anne-Gaëlle Duvochel nous fait partager ses OCNI (\"Objets Contés Non Identifiés\"). Du haut de ses 191 cm, elle subvertit les histoires par ses calembours perfides pour s\'attaquer, en Blanche Neige personnifiée, au sexisme dans les contes de fées. Non sans avoir d\'abord réclamé d\'être reconnue en tant que \"conteuse AOC\" grâce à l\'adoption de tous les tics et les trucs de la profession de conteuse. Du conte ? Du clown ? Du sketch ? Une performance, c\'est sûr !\"', 'Anne-Gaëlle Duvochel', 'Spectacle', '28.jpg.webp', 14, '19h30', '24/11/2022'),
(32, 22, 'Globule création 2022', '\"Derrière une paire de lunette rondes et épaisse, se cache Globule, un petit garçon discret très souvent « dans la lune » ! Ses journées se suivent et se ressemblent, le réveil, l’école, le chemin du retour… Contrairement aux adultes qui l’entourent, Globule adore prendre son temps. C’est même son « passe-temps » favori. Sans dormir, il se met à rêver, n’importe où, n’importe quand. Il invente des histoires absurdes, drôles, touchantes, effrayantes, et transforme ce qu’il voit.\"', 'Magali Esteban, Marina Montefusco, Célia Bornas', 'Spectacle', '29.jpg.webp', 3, '11h', '26/11/2022'),
(33, 23, 'Sans Humain à l’intérieur', 'Gaza, été 2014. Atef Abu Saïf tient un journal dans lequel il raconte les effets de la guerre et de la présence constante des drones dans sa vie de tous les jours. Aujourd’hui confrontées à son récit, Raquel et Candice mènent l\'enquête : qu\'est-ce que le drone militaire transforme du monde, alors même qu\'on n\'en voit pas les effets dans nos vies quotidiennes occidentales ?', 'Lisiane Durand, Lou Simon, Raquel Silva, Candice Picaud', 'Spectacle', '30.jpg.webp', 12, '20h30', '24/11/2022'),
(34, 1, 'BLITZ', 'L’éloge de la lenteur sous la forme d’un éclair est le pari d’une alliance anachronique. Blitz cherche à questionner ces états qui nous mettent hors du temps, où passé, présent et futur ne sont plus perceptibles. Marion Muzac, David Haudrechy, Romain Barbot, un trio musique et danse, une recherche commune de matière et de texture qui tente un voyage entre transe et somnolence. Blitz s’inspire des danses de nuit où le temps ne nous appartient plus allant de l’extase à l’épuisement.', 'Marion Muzac, David Haudrechy, Romain Barbot', 'Spectacle', '31.jpg.webp', 9, '19h', '30/11/2022'),
(35, 7, '2TK7', 'Un lecteur de cassettes. Un improvisateur, une improvisatrice. Choisir une k7*. Appuyer sur Play. Improviser.', 'Odile Cantero et Keng-Sam Chane Chick Té', 'Spectacle', '32.jpg.webp', 14.43, '21h', '29/11/2022'),
(36, 12, 'Finntroll + Skálmöld', '\"Finntroll est un groupe de folk metal finlandais, originaire de Helsinki. Le nom est inspiré par une vieille légende finnoise où des prêtres suédois ont rencontré un homme aux allures sauvages qui tua la majorité des membres de leur groupe. Les survivants sont revenus avec la légende du Finn-Troll. Ils combinent des éléments de folk metal, de black metal et de death metal avec la humppa, une variété finlandaise de polka. Le groupe sortira son septième album, intitulé Vredesvävd, le 18 septembre 2020. Skálmöld est un groupe de viking et folk metal islandais, originaire de Reykjavik. Les paroles sont écrites intégralement en islandais. Elles sont inspirées par la mythologie Nordique et les sagas islandaises.\"', 'Finntroll, Skálmöld', 'Spectacle', '33.jpg.webp', 25, '19h', '30/11/2022'),
(37, 7, 'Quidam', 'Quand la destinée d’une personne insignifiante bouleverse la grande Histoire. Marcius Brontius, coiffeur de Ponce Pilate, Babette du Ruisseau, amie d’enfance de Jeanne d’Arc, Edward Phillips, employé de nettoyage au Pentagone… Leurs noms ne vous disent rien, et pourtant les plus grands événements sont souvent vécus, voire provoqués par des personnes tout à fait banales. La Compagnie du Cachot vous propose de faire revivre ces anonymes dont on ne trouvera jamais la trace dans les livres d’Histoire !', 'Compagnie du Cachot', 'Spectacle', '34.jpg.webp', 14.43, '21h', '30/11/2022'),
(38, 16, 'Objection Votre Honneur', 'Le public choisit l\'arme du crime, la profession de la victime, et le ou la comédienne qui jouera l\'accusée. À partir de là, tout est possible : effets de manches, démonstration de mauvaise foi, ribambelles de témoins à charge, d\'experts déjantés, pour aboutir à une reconstitution improbable d\'une affaire juridique dont vous serez les jurées et jurés ! Alors, vous plaidez coupable ?', 'Cie du Cachot, Antoine Rup', 'Spectacle', '35.jpg.webp', 14.43, '21h', '01/12/2022'),
(39, 12, 'Les pépites du Metronum', '\"Le 1er décembre, 3 trésors sonores au programme avec La Chica, Léonie Pernet et la toulousaine Mafalda High. La Chica : D’un côté de l’océan, il y a l’Amérique Latine. Terre intense et pleine de magie. De l’autre côté, il y a Paris, Belleville. Terre pluriculturelle, urbaine et moderne. À travers sa musique, La Chica réunit ces deux mondes en proposant un collage de textures sonores, empruntées à son héritage traditionnel et diverses influences modernes, en cassant les codes établis. C’est autour du piano et des claviers que s’est créé son univers, mélangeant habilement ses inspirations classiques (comme son amour pour Debussy) avec la profondeur des nappes des synthés analogiques. Léonie Pernet : Faire cohabiter des univers hétéroclites, c’est la spécialité de Léonie Pernet, sa signature dans sa musique comme dans sa vie. Léonie ose constamment le mélange des genres et multiplie les facettes. Touche à tout insatiable et multi-fonctions, elle s\'est adonnée aussi bien à l\'organisation de soirées techno-queer-primitives, a sillonné le monde à la batterie pour son compatriote Yuksek, composé de la musique pour le cinéma, s\'est fait un nom sur Soundcloud avec ses Mix percutants et très relayés, avant de se jeter toute seule face au public et d\'apprivoiser sa propre musique. Mafalda High : Mafalda High est le nouveau nom de la chanteuse toulousaine Agathe Da Rama. C\'est en solo accompagnée de sa Harpe qu\'elle vous présentera les morceaux de son premier EP.\"', 'La Chica, Léonie Pernet, Mafalda High.', 'Spectacle', '36.jpg.webp', 18, '20h', '01/12/2022'),
(40, 12, 'Green Montana en concert', 'Originaire de Verviers en Belgique, Green Montana fait ses premiers pas dans la musique en reprenant les tracks de Booba et La Mafia K’1 Fry. Il écrit ses premiers textes en 2015, inspiré par des artistes américains comme Drake, Migos et Young Thug et pose les bases de son ADN musical : une trap sombre et mélodieuse, marquée par un flow à la fois puissant et insouciant.', 'Green Montana', 'Spectacle', '37.jpg.webp', 22.05, '20h', '02/12/2022');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `manifestations`
--
ALTER TABLE `manifestations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_DBDB8899A2C806AC` (`lieux_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `manifestations`
--
ALTER TABLE `manifestations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `manifestations`
--
ALTER TABLE `manifestations`
  ADD CONSTRAINT `FK_DBDB8899A2C806AC` FOREIGN KEY (`lieux_id`) REFERENCES `lieux` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
