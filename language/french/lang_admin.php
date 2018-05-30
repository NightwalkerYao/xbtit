<?php
$language["ACP_BAN_IP"]="Bannir IP";
$language["ACP_FORUM"]="Configurer le forum";
$language["ACP_USER_GROUP"]="Configuration des groupes";
$language["ACP_STYLES"]="Configuration du thème";
$language["ACP_LANGUAGES"]="Configuration de la langue";
$language["ACP_CATEGORIES"]="Configuration des catégories";
$language["ACP_TRACKER_SETTINGS"]="Configuration du Tracker";
$language["ACP_OPTIMIZE_DB"]="Optimiser la BDD";
$language["ACP_CENSORED"]="Configuration des mots censurés";
$language["ACP_DBUTILS"]="Outils de BDD";
$language["ACP_HACKS"]="Hacks";
$language["ACP_HACKS_CONFIG"]="Configuration des Hacks";
$language["ACP_MODULES"]="Modules";
$language["ACP_MODULES_CONFIG"]="Configuration des modules";
$language["ACP_MASSPM"]="Messages Privés en masse";
$language["ACP_PRUNE_TORRENTS"]="Elaguage des torrents";
$language["ACP_PRUNE_USERS"]="Elaguage des utilisateurs";
$language["ACP_SITE_LOG"]="Voir le journal de log";
$language["ACP_SEARCH_DIFF"]="Chercher une Différence.";
$language["ACP_BLOCKS"]="Configuration des blocs";
$language["ACP_POLLS"]="Configuration des sondages";
$language["ACP_MENU"]="Menu d'administration";
$language["ACP_FRONTEND"]="Configuration du contenu";
$language["ACP_USERS_TOOLS"]="Outils utilisateurs";
$language["ACP_TORRENTS_TOOLS"]="Outils torrents";
$language["ACP_OTHER_TOOLS"]="Outils divers";
$language["ACP_MYSQL_STATS"]="Stats MySQL";
$language["XBTT_BACKEND"]="Options xbtt";
$language["XBTT_USE"]="Utiliser <a href=\"http://xbtt.sourceforge.net/tracker/\" target=\"_blank\">xbtt</a> comme backend?"; // Pas de trad
$language["XBTT_URL"]="URL de base de xbtt (ex. http://localhost:2710)";
$language["GENERAL_SETTINGS"]="Configurations générales";
$language["TRACKER_NAME"]="Nom du site";
$language["TRACKER_BASEURL"]="URL de base du Tracker (sans / à la fin)";
$language["TRACKER_ANNOUNCE"]="URLs d'annonce du Tracker (une par ligne)".($XBTT_USE?"<br />\n<span style=\"color:#FF0000; font-weight: bold;\">Vérifiez les doublons !</span>":"");
$language["TRACKER_EMAIL"]="Adresse du Fondateur";
$language["TORRENT_FOLDER"]="Dossier des torrents";
$language["ALLOW_EXTERNAL"]="Permettre les torrents externes";
$language["ALLOW_GZIP"]="Compression GZIP";
$language["ALLOW_DEBUG"]="Afficher les infos de deboguage en bas de page";
$language["ALLOW_DHT"]="Désactiver DHT (drapeau privé en Torrent)<br />\nSera mis uniquement sur les nouveaux torrents";
$language["ALLOW_LIVESTATS"]="Activer les stats en direct (Attention, ceci peut surchargé le serveur !)";
$language["ALLOW_SITELOG"]="Activer le fichier journal";
$language["ALLOW_HISTORY"]="Activer l'historique (torrents/utilisateurs)";
$language["ALLOW_PRIVATE_ANNOUNCE"]="Annonce privée";
$language["ALLOW_PRIVATE_SCRAPE"]="Scrape privé";
$language["SHOW_UPLOADER"]="Montrer le pseudo de l'Uploadeur";
$language["USE_POPUP"]="Utiliser un popup pour les détails des Torrents";
$language["DEFAULT_LANGUAGE"]="Langue par défaut";
$language["DEFAULT_CHARSET"]="Encodage des caractères par défaut<br />\n(si votre langue ne s'affichent pas correctement, essayez UTF-8)";
$language["DEFAULT_STYLE"]="Thème par défaut";
$language["MAX_USERS"]="Nombre max. d'utilisateurs (0 = illimité)";
$language["MAX_TORRENTS_PER_PAGE"]="Torrents par page";
$language["SPECIFIC_SETTINGS"]="Configuration spécifique au Tracker";
$language["SETTING_INTERVAL_SANITY"]="Intervalle d'élaguage (0 = désactivé, en secondes)<br />La valeur conseillée est de 1800 (30 minutes)";
$language["SETTING_INTERVAL_EXTERNAL"]="Mise à jour externe (0 = désactivé, en secondes)<br />En fonction du nombre de torrents externes";
$language["SETTING_INTERVAL_MAX_REANNOUNCE"]="Intervalle max. de ré-annonce (en secondes)";
$language["SETTING_INTERVAL_MIN_REANNOUNCE"]="Intervalle min. de ré-annonce (en secondes)";
$language["SETTING_MAX_PEERS"]="Nombre max. de partages par requêtes";
$language["SETTING_DYNAMIC"]="Permettre les Torrents dynamiques (Non recommandé)";
$language["SETTING_NAT_CHECK"]="Verification NAT";
$language["SETTING_PERSISTENT_DB"]="Connexion persistante (BDD, non recommandé)";
$language["SETTING_OVERRIDE_IP"]="Permettre aux utilisateurs de passer outre la détection d'IP";
$language["SETTING_CALCULATE_SPEED"]="Calculer la vitesse (octets)";
$language["SETTING_PEER_CACHING"]="Mettre les tables en caches (devrait diminuer la charge)";
$language["SETTING_SEEDS_PID"]="Nombre max de Seeders par PID";
$language["SETTING_LEECHERS_PID"]="Nombre max. de Leechers par PID";
$language["SETTING_VALIDATION"]="Méthode de validation";
$language["SETTING_CAPTCHA"]="CAPTCHA Anti-bot";
$language['SETTING_SHOW_COMMENTS']='Montrer les Commentaires';
$language['SETTING_SHOW_RATING']='Montrer les Notes (évaluations)';
$language['TORRENT_LIST']='Réglages de la liste des Torrents';
$language["SETTING_FORUM"]="Lien du forum, peut être :<br /><li><font color='#FF0000'>Interne</font> ou vide si vous utilisez le forum interne</li><li><font color='#FF0000'>smf</font> pour intégrer <a target='_new' href='http://www.simplemachines.org'>Simple Machines Forum</a></li><li>Votre propre forum (spécifiez l'URL)</li>";
$language["BLOCKS_SETTING"]="Configuration des pages Index /Blocs";
$language["SETTING_CLOCK"]="Type d'horloge";
$language['SETTING_FORUMBLOCK']='Type de Blocs du Forum';
$language["SETTING_NUM_NEWS"]="Limite d'affichage des dernières nouvelles";
$language["SETTING_NUM_POSTS"]="Limite d'affichage des derniers éléments du Forum";
$language["SETTING_NUM_LASTTORRENTS"]="Limite d'affichage des derniers Torrents";
$language["SETTING_NUM_TOPTORRENTS"]="Limite d'affichage des Torrents du moments (populaires)";
$language["CLOCK_ANALOG"]="Analogique";
$language["CLOCK_DIGITAL"]="Digitale";
$language['FORUMBLOCK_POSTS']='Dernières publications';
$language['FORUMBLOCK_TOPICS']='Derniers topics actifs';
$language["CONFIG_SAVED"]="La configuration à bien été enregistrée !";
$language["CACHE_SITE"]="Intervalle de mise en cache (0 = désactivé, en secondes)";
$language["ALL_FIELDS_REQUIRED"]="Tous les champs sont requis !";
$language["SETTING_CUT_LONG_NAME"]="Tronquer les noms de Torrent trop longs aprés x caratères (0 = ignorer)";
$language["MAILER_SETTINGS"]="Envoi d'e-mail";
$language["SETTING_MAIL_TYPE"]="Type d'envoi";
$language["SETTING_SMTP_SERVER"]="Serveur SMTP";
$language["SETTING_SMTP_PORT"]="Port SMTP";
$language["SETTING_SMTP_USERNAME"]="Nom d'utilisateur SMTP";
$language["SETTING_SMTP_PASSWORD"]="Mot de passe SMTP";
$language["SETTING_SMTP_PASSWORD_REPEAT"]="Mot de passe SMTP (confirmation)";
$language["XBTT_TABLES_ERROR"]="Vous devez insérer un tableau xbtt (voir fichier d'aide)";
$language["XBTT_URL_ERROR"]="L'URL de base xbtt est obligatoire";

// BAN FORM
$language["BAN_NOTE"]="Dans cette partie du panneau d'administration, vous pouvez voir les IP bannies.<br />\nVous devez insérer une gamme de [première IP] à [dernière IP].";
$language["BAN_NOIP"]="Il n'y a pas d'IP bannies";
$language["BAN_FIRSTIP"]="Première IP";
$language["BAN_LASTIP"]="Dernière IP";
$language["BAN_COMMENTS"]="Commentaires";
$language["BAN_REMOVE"]="Supprimer";
$language["BAN_BY"]="Par";
$language["BAN_ADDED"]="Date";
$language["BAN_INSERT"]="Ajouter une nouvelle gamme d'IP bannies";
$language["BAN_IP_ERROR"]="Mauvaise adresse IP.";
$language["BAN_NO_IP_WRITE"]="Vous n'avez pas entré d'adresse IP. Désolé !";
$language["BAN_DELETED"]="La gamme d'adresse IP a été supprimée de la BDD.<br />\n<br />\n<a href=\"index.php?page=admin&amp;user=".$CURUSER["uid"]."&amp;code=".$CURUSER["random"]."&amp;do=banip&amp;action=read\">Retour</a>";

// LANGUAGES
$language["LANGUAGE_SETTINGS"]="Configuration de la langue";
$language["LANGUAGE"]="Langue";
$language["LANGUAGE_ADD"]="Insérer une nouvelle langue";
$language["LANGUAGE_SAVED"]="Félicitations, les changements ont bien été pris en compte !";

// STYLES
$language["STYLE_SETTINGS"]="Configuration des Thèmes";
$language["STYLE_EDIT"]="Èditer le thème";
$language["STYLE_ADD"]="Insérer un thème";
$language["STYLE_NAME"]="Nom du thème";
$language["STYLE_URL"]="URL du thème";
$language["STYLE_FOLDER"]="Dossier du thème ";
$language["STYLE_NOTE"]="Dans cette section, vous pouvez gérer vos paramètres de thème, mais vous devez transférer des fichiers par FTP ou sFTP.";

// CATEGORIES
$language["CATEGORY_SETTINGS"]="Configuration des catégories";
$language["CATEGORY_IMAGE"]="Image de la catégorie";
$language["CATEGORY_ADD"]="Créer une nouvelle catégorie";
$language["CATEGORY_SORT_INDEX"]="Index court";
$language["CATEGORY_FULL"]="Catégorie";
$language["CATEGORY_EDIT"]="Èditer la catégorie";
$language["CATEGORY_SUB"]="Catégorie parente";
$language["CATEGORY_NAME"]="Catégorie";

// CENSORED
$language["CENSORED_NOTE"]="Entrez <b>un mot par ligne</b> pour le censurer (sera transformé en *censuré*)";
$language["CENSORED_EDIT"]="Èditer";

// BLOCKS
$language["BLOCKS_SETTINGS"]="Configuration des blocs";
$language["ENABLED"]="Activé";
$language["ORDER"]="Ordre";
$language["BLOCK_NAME"]="Nom du bloc";
$language["BLOCK_POSITION"]="Position";
$language["BLOCK_TITLE"]="Titre de la langue (sera utilisé pour afficher le titre traduit)";
$language["BLOCK_USE_CACHE"]="Mettre en cache ce bloc ?";
$language["ERR_BLOCK_NAME"]="Vous devez sélectionner quelque chose dans la liste déroulante !";
$language["BLOCK_ADD_NEW"]="Ajouter un nouveau bloc";

// POLLS (more in lang_polls.php)
$language["POLLS_SETTINGS"]="Configuration de sondage";
$language["POLLID"]="Identifiant du sondage";
$language["INSERT_NEW_POLL"]="Ajouter un nouveau sondage";
$language["CANT_FIND_POLL"]="Sondage introuvable";
$language["ADD_NEW_POLL"]="Ajouter sondage";

// GROUPS
$language["USER_GROUPS"]="Configuration des groupes d'utilisateurs (cliquez sur un nom pour éditer)";
$language["VIEW_EDIT_DEL"]="Voir/Editer/Supprimer";
$language["CANT_DELETE_GROUP"]="Ce niveau/groupe ne peut être annulé !";
$language["GROUP_NAME"]="Nom du groupe";
$language["GROUP_VIEW_NEWS"]="Voir les nouvelles";
$language["GROUP_VIEW_FORUM"]="Voir le forum";
$language["GROUP_EDIT_FORUM"]="Editer le forum";
$language["GROUP_BASE_LEVEL"]="Choisir le niveau de base";
$language["GROUP_ERR_BASE_SEL"]="Erreur de sélection du niveau de base !";
$language["GROUP_DELETE_NEWS"]="Supprimer la nouvelle";
$language["GROUP_PCOLOR"]="Couleur du préfixe (comme ";
$language["GROUP_SCOLOR"]="Couleur du suffixe (comme ";
$language["GROUP_VIEW_TORR"]="Voir les Torrents";
$language["GROUP_EDIT_TORR"]="Editer les Torrents";
$language["GROUP_VIEW_USERS"]="Voir les Utilisateurs";
$language["GROUP_DELETE_TORR"]="Supprimer les Torrents";
$language["GROUP_EDIT_USERS"]="Editer les Utilisateurs";
$language["GROUP_DOWNLOAD"]="Peut Télécharger";
$language["GROUP_DELETE_USERS"]="Supprimer Utilisateurs";
$language["GROUP_DELETE_FORUM"]="Supprimer forum";
$language["GROUP_GO_CP"]="Peut accéder au panneau d'Administration";
$language["GROUP_EDIT_NEWS"]="Editer les nouvelles";
$language["GROUP_ADD_NEW"]="Ajouter un nouveau groupe";
$language["GROUP_UPLOAD"]="Peut Uploader";
$language["GROUP_WT"]="Temps d'attente si le ratio < 1";
$language["GROUP_EDIT_GROUP"]="Editer le groupe";
$language["GROUP_VIEW"]="Voir";
$language["GROUP_EDIT"]="Editer";
$language["GROUP_DELETE"]="Supprimer";
$language["INSERT_USER_GROUP"]="Insérer un nouveau groupe d'Utilisateurs";
$language["ERR_CANT_FIND_GROUP"]="Groupe introuvable !";
$language["GROUP_DELETED"]="Le groupe à bien été supprimé !";

// MASS PM
$language["USERS_FOUND"]="Utilisateurs trouvés";
$language["USERS_PMED"]="Utilisateurs contactés (par MP)";
$language["WHO_PM"]="Destinataires";
$language["MASS_SENT"]="MP en masse envoyés !!!";
$language["MASS_PM"]="Messages Privés en masse";
$language["MASS_PM_ERROR"]="Ècrivez quelque chose avant d'envoyer !!";
$language["RATIO_ONLY"]="ce Ratio seulement";
$language["RATIO_GREAT"]="supérieur à ce Ratio";
$language["RATIO_LOW"]="inférieur à ce Ratio";
$language["RATIO_FROM"]="De";
$language["RATIO_TO"]="Pour";
$language["MASSPM_INFO"]="Info";

// PRUNE USERS
$language["PRUNE_USERS_PRUNED"]="Utilisateurs bannis";
$language["PRUNE_USERS"]="Bannir les Utilisateurs";
$language["PRUNE_USERS_INFO"]="Entrez le nombre de jours pendant lesquels les utilisateurs doivent être considérés comme morts";

// SEARCH DIFF
$language["SEARCH_DIFF"]="Chercher une Différence.";
$language["SEARCH_DIFF_MESSAGE"]="Message";
$language["DIFFERENCE"]="Différence";
$language["SEARCH_DIFF_CHANGE_GROUP"]="Changer de groupe";

// PRUNE TORRENTS
$language["PRUNE_TORRENTS_PRUNED"]="Torrent bannis";
$language["PRUNE_TORRENTS"]="Bannir les Torrents";
$language["PRUNE_TORRENTS_INFO"]="Entrez le nombre de jours pendant lesquels les torrents doivent être considérés comme morts";
$language["LEECHERS"]="Leecher(s)";
$language["SEEDS"]="Seeder(s)";

// DBUTILS
$language["DBUTILS_TABLENAME"]="Nom de la Table";
$language["DBUTILS_RECORDS"]="Enrégistrements";
$language["DBUTILS_DATALENGTH"]="Longueur des données";
$language["DBUTILS_OVERHEAD"]="Dépacement";
$language["DBUTILS_REPAIR"]="Réparer";
$language["DBUTILS_OPTIMIZE"]="Optimiser";
$language["DBUTILS_ANALYSE"]="Analyser";
$language["DBUTILS_CHECK"]="Vérifier";
$language["DBUTILS_DELETE"]="Supprimer";
$language["DBUTILS_OPERATION"]="Opération";
$language["DBUTILS_INFO"]="Info";
$language["DBUTILS_STATUS"]="Statut";
$language["DBUTILS_TABLES"]="Tables";

// MYSQL STATUS
$language["MYSQL_STATUS"]="Statut de MySQL";

// SITE LOG
$language["SITE_LOG"]="Journal";

// FORUMS
$language["FORUM_MIN_CREATE"]="Droit minimum de création";
$language["FORUM_MIN_WRITE"]="Droit minimum d'écriture";
$language["FORUM_MIN_READ"]="Droit minimum de lecture";
$language["FORUM_SETTINGS"]="Configuration du forum";
$language["FORUM_EDIT"]="Èditer le forum";
$language["FORUM_ADD_NEW"]="Ajouter un nouveau forum";
$language["FORUM_PARENT"]="Forum parent";
$language["FORUM_SORRY_PARENT"]="(Desolé, je ne peux pas avoir de parent, parce que je suis moi-même un forum parent)";
$language["FORUM_PRUNE_1"]="Il y a des sujets et/ou messages dans ce forum !<br />Vous perdrez toutes les données...<br />";
$language["FORUM_PRUNE_2"]="Si vous êtes sûr";
$language["FORUM_PRUNE_3"]="sinon faîtes retour.";
$language["FORUM_ERR_CANNOT_DELETE_PARENT"]="Vous ne pouvez pas supprimer un forum qui possède des enfants, déplacez l'enfant vers d'autres forums et essayez à nouveau";

// MODULES
$language["ADD_NEW_MODULE"]="Ajouter un nouveau module";
$language["TYPE"]="Type";
$language["DATE_CHANGED"]="Date de changement";
$language["DATE_CREATED"]="Date de création";
$language["ACTIVE_MODULES"]="Modules actifs : ";
$language["NOT_ACTIVE_MODULES"]="Modules inactifs : ";
$language["TOTAL_MODULES"]="Modules totaux : ";
$language["DEACTIVATE"]="Désactiver";
$language["ACTIVATE"]="Activer";
$language["STAFF"]="Staff";
$language["MISC"]="Divers";
$language["TORRENT"]="Torrent";
$language["STYLE"]="Style";
$language["ID_MODULE"]="ID";

// HACKS
$language["HACK_TITLE"]="Titre";
$language["HACK_VERSION"]="Version";
$language["HACK_AUTHOR"]="Auteur";
$language["HACK_ADDED"]="Ajouté le";
$language["HACK_NONE"]="Il n'y a pas de Hack installé";
$language["HACK_ADD_NEW"]="Ajouter un Hack";
$language["HACK_SELECT"]="Sélectionner";
$language["HACK_STATUS"]="Statut";
$language["HACK_INSTALL"]="Installer";
$language["HACK_UNINSTALL"]="Désinstaller";
$language["HACK_INSTALLED_OK"]="Hack installé avec succès!<br />\nPour voir quels Hacks sont installés, retour au <a href=\"index.php?page=admin&amp;user=".$CURUSER["uid"]."&amp;code=".$CURUSER["random"]."&amp;do=hacks&amp;action=read\">panneau d'Administration (Hacks)</a>";
$language["HACK_BAD_ID"]="Erreur de récupération des informations sur le Hack avec cet ID.";
$language["HACK_UNINSTALLED_OK"]="Hack désinstallé avec succès!<br />\nPour voir quels Hacks sont installés retour au <a href=\"index.php?page=admin&amp;user=".$CURUSER["uid"]."&amp;code=".$CURUSER["random"]."&amp;do=hacks&amp;action=read\">panneau d'Administration (Hacks)</a>";
$language["HACK_OPERATION"]="Opération";
$language["HACK_SOLUTION"]="Solution";

// ADDED REV 520
$language["HACK_WHY_FTP"]="Certains fichiers de l'installateur du Hack ne sont pas inscriptibles. <br />\nVous devez mettre vos fichiers en CHMOD 777 sur votre serveur. <br />\nLes informations de votre FTP peuvent être temporairement misent en cache pour le fonctionnement correct de l'installateur de Hacks.";
$language["HACK_FTP_SERVER"]="Serveur FTP";
$language["HACK_FTP_PORT"]="Port FTP";
$language["HACK_FTP_USERNAME"]="Nom d'utilisateur FTP";
$language["HACK_FTP_PASSWORD"]="Mot de passe FTP";
$language["HACK_FTP_BASEDIR"]="Chemin d'accès local pour xbtit (chemin de la racine lorsque vous vous connectez via FTP)";

// USERS TOOLS
$language["USER_NOT_DELETE"]="Vous ne pouvez pas supprimer les Invités ou vous-même !";
$language["USER_NOT_EDIT"]="Vous ne pouvez pas éditer les Invités ou vous-même !";
$language['USER_NOT_DELETE_HIGHER']='Vous ne pouvez pas supprimer vos supérieurs en Grade.';
$language['USER_NOT_EDIT_HIGHER']='Vous ne pouvez pas éditer vos supérieurs en Grade.';
$language['USER_NO_CHANGE']='Aucun changement.';

// MANUAL HACK INSTALL
$language['MHI_VIEW_INSRUCT'] = 'Voir les instructions d\'installation manuelle ?';
$language['MHI_MAN_INSRUCT_FOR'] = 'Instructions d\'installation manuelle pour';
$language['MHI_RUN_QUERY'] = 'Exécuter la requête SQL via Adminer / phpMyAdmin';
$language['MHI_IN'] = 'Dans';
$language['MHI_ALSO_IN'] = 'Aussi dans';
$language['MHI_FIND_THIS'] = 'trouvez ceci';
$language['MHI_ADD_THIS'] = 'Ajoutez ceci';
$language['MHI_IT'] = 'il/le';
$language['MHI_REPLACE'] = 'Remplacez par';
$language['MHI_COPY'] = 'Copier';
$language['MHI_AS'] = 'en';

// SECURITE SUITE
$language["ACP_SECSUI_SET"]="Configuration de la Suite de Sécurité";
$language["SECSUI_QUAR_SETTING"]="Configuration de mise en Quarantaire des Uploads";
$language["SECSUI_QUAR_TERMS_1"]="Termes de recherche de Quarantaine (une par ligne)";
$language["SECSUI_QUAR_TERMS_2"]="Ajouter ci-dessous, les mots qui entaîneront la mise en Quarantaine :";
$language["SECSUI_QUAR_TERMS_3"]="REMARQUE : Il n'est pas conseillé d'ajouter <b>&lt;?php</b> et <b>?&gt;</b>,  car ils peuvent se produire naturellement dans le fichier, vous devez définir la valeur de <b>short_open_tag</b> &agrave; <b>Off</b> dans le fichier php.ini, cela empêchera votre site d'exécuter du code php qui commence avec <b>&lt?</b> et va forcer les potentiels pirates &agrave; utiliser le long_open_tag de PHP.<br /><br />La valeur actuelle est :<br />";
$language["SECSUI_QUAR_DIR_1"]="Dossier de Quarantaine";
$language["SECSUI_QUAR_DIR_2"]="Ce dossier devrait idéalement être impossible d'accés via Internet et au moins un niveau au-dessus du dossier racine de votre Tracker, ex:";
$language["SECSUI_QUAR_DIR_3"]="S'il vous plaît, assurez vous que ce répertoire soit CHOWN/CHMODé de sorte à ce que le serveur puisse y écrire des fichiers.";
$language["SECSUI_QUAR_PM"]="ID de l'Utilisateur à avertir pour mise en Quarantaine";
$language["SECSUI_QUAR_INV_USR"]="Utilisateur invalide";
$language["SECSUI_PASS_SETTINGS"]="R&eacute;glages de mot de passe";
$language["SECSUI_PASS_TYPE"]="M&eacute;thode de hachage de mot de passe";
$language["SECSUI_PASS_INFO"]="Ici vous pouvez s&eacute;lectionner l'algorithme de hachage de mot de passe que xbtit utilisera quand il le m&eacute;morisera en BDD :";
$language["SECSUI_NO_MEMBER"]="Aucun utilisateur dans le site avec cet ID";
$language["SECSUI_GAZ_TITLE"]="Gazelle Site Salt";
$language["SECSUI_GAZ_DESC"]="&nbsp;Vous devez définir une valeur aléatoire ici. Une fois mise, vous ne devriez pas le changer sinon tout le monde aura &agrave; changer de mot de passe.";
$language["SECSUI_COOKIE_SETTINGS"]="Configurations du Cookie";
$language["SECSUI_COOKIE_PRIMARY"]="Configurations du Cookie principal";
$language["SECSUI_COOKIE_TYPE"]="Type de Cookie";
$language["SECSUI_COOKIE_EXPIRE"]="Le Cookie expirera dans";
$language["SECSUI_COOKIE_T1"]="Classic xbtit";
$language["SECSUI_COOKIE_T2"]="New xbtit (Regular)";
$language["SECSUI_COOKIE_T3"]="New xbtit (Session)";
$language["SECSUI_COOKIE_NAME"]="Nom du Cookie";
$language["SECSUI_COOKIE_ITEMS"]="Composants du Cookie";
$language["SECSUI_COOKIE_PATH"]="Chemin du Cookie";
$language["SECSUI_COOKIE_DOMAIN"]="Domaine du Cookie";
$language["SECSUI_COOKIE_MIN"]="Minute";
$language["SECSUI_COOKIE_MINS"]="Minutes";
$language["SECSUI_COOKIE_HOUR"]="Heure";
$language["SECSUI_COOKIE_HOURS"]="Heures";
$language["SECSUI_COOKIE_DAY"]="Jour";
$language["SECSUI_COOKIE_DAYS"]="Jours";
$language["SECSUI_COOKIE_WEEK"]="Semaine";
$language["SECSUI_COOKIE_WEEKS"]="Semaines";
$language["SECSUI_COOKIE_MONTH"]="Mois";
$language["SECSUI_COOKIE_MONTHS"]="Mois";
$language["SECSUI_COOKIE_YEAR"]="Ann&eacute;e";
$language["SECSUI_COOKIE_YEARS"]="Ann&eacute;es";
$language["SECSUI_COOKIE_TOO_FAR"]="Désolé, ce serait mettre la date d'expiration au delà de la limite actuelle(Mardi 19 Janvier 2038 03:14:07 GMT). S'il vous plaît, ajustez votre date d'expiration en conséquence!";
$language["SECSUI_COOKIE_PSALT"]="Salt du mot de passe";
$language["SECSUI_COOKIE_UAGENT"]="Navigateur (User Agent) ";
$language["SECSUI_COOKIE_ALANG"]="Accepter la langue ";
$language["SECSUI_COOKIE_IP"]="Adresse IP ";
$language["SECSUI_COOKIE_DEF"]="REMARQUE : Tous les types de Cookies comprendront par défaut :<li>Tracker ID</li><li>Password Hash</li><li>Random Number</li>";
$language["SECSUI_COOKIE_PD"]="REMARQUE: Si vous ne savez pas quoi mettre pour le \"chemin du cookie\" ou pour le \"Domaine du Cookie\", vous pouvez les laisser vides et les valeurs par défaut seront utilis&eacute;es";
$language["SECSUI_COOKIE_IP_TYPE_1"] = "1er octet uniquement (Y.N.N.N)";
$language["SECSUI_COOKIE_IP_TYPE_2"] = "2e octet uniquement (N.Y.N.N)";
$language["SECSUI_COOKIE_IP_TYPE_3"] = "3e octet uniquement (N.N.Y.N)";
$language["SECSUI_COOKIE_IP_TYPE_4"] = "4e octet uniquement (N.N.N.Y)";
$language["SECSUI_COOKIE_IP_TYPE_5"] = "1er & 2e octets (Y.Y.N.N)";
$language["SECSUI_COOKIE_IP_TYPE_6"] = "2e & 3e octets (N.Y.Y.N)";
$language["SECSUI_COOKIE_IP_TYPE_7"] = "3e & 4e octets (N.N.Y.Y)";
$language["SECSUI_COOKIE_IP_TYPE_8"] = "1er & 3e octets (Y.N.Y.N)";
$language["SECSUI_COOKIE_IP_TYPE_9"] = "1st & 4th octets (Y.N.N.Y)";
$language["SECSUI_COOKIE_IP_TYPE_10"] = "2e & 4e octets (N.Y.N.Y)";
$language["SECSUI_COOKIE_IP_TYPE_11"] = "1er, 2e & 3e octets (Y.Y.Y.N)";
$language["SECSUI_COOKIE_IP_TYPE_12"] = "2e, 3e & 4e octets (N.Y.Y.Y)";
$language["SECSUI_COOKIE_IP_TYPE_13"] = "addresse IP entière (Y.Y.Y.Y)";
$language["SECSUI_PASSHASH_TYPE_1"] = "Classic xbtit";
$language["SECSUI_PASSHASH_TYPE_2"] = "TBDev";
$language["SECSUI_PASSHASH_TYPE_3"] = "TorrentStrike";
$language["SECSUI_PASSHASH_TYPE_4"] = "Gazelle";
$language["SECSUI_PASSHASH_TYPE_5"] = "Simple Machines Forum";
$language["SECSUI_PASSHASH_TYPE_6"] = "New xbtit";
$language["SECSUI_PASS_MUST"] = "Le mot de passe doit";
$language["SECSUI_PASS_BE_AT_LEAST"] = "&Ecirc;tre au moins de ";
$language["SECSUI_PASS_HAVE_AT_LEAST"] = "Avoir au moins ";
$language["SECSUI_PASS_CHAR_IN_LEN"] = "caract&egrave;re de long ";
$language["SECSUI_PASS_CHAR_IN_LEN_A"] = "caract&egrave;res de long ";
$language["SECSUI_PASS_LC_LET"] = "lettre minuscule";
$language["SECSUI_PASS_LC_LET_A"] = "lettres minuscules";
$language["SECSUI_PASS_UC_LET"] = "lettre majuscule";
$language["SECSUI_PASS_UC_LET_A"] = "lettres majuscules";
$language["SECSUI_PASS_NUM"] = "nombre";
$language["SECSUI_PASS_NUM_A"] = "nombres";
$language["SECSUI_PASS_SYM"] = "symbole";
$language["SECSUI_PASS_SYM_A"] = "symboles";
$language["SECSUI_PASS_ERR_1"] = "Vous ne pouvez pas avoir une valeur plus &eacute;lev&eacute;e pour les majuscules + minuscules + chiffres + symboles";
$language["SECSUI_PASS_ERR_2"] = "que vous en avez pour le nombre de caract&egrave;res minimum n&eacute;cessaire pour le mot de passe";
//  AJOUTS MANQUANT
$language["SMF_MIRROR"] = "Mirror SMF";
//$language["GROUP_SMF_MIRROR"] = "Mirroring rank on the SMF forum for rank changes etc.";
$language["SMF_LIST"] = "<b><u>Liste actuelle de Groupe SMF depuis la BDD</u></b><br />";

$language["IPB_AUTO_ID"] = "ID d'Autopost IPB";
$language["IPB_MIRROR"] = "Mirror IPB";
//$language["GROUP_IPB_MIRROR"] = "Mirroring rank on the IPB forum for rank changes etc.";
$language["IPB_LIST"] = "<b><u>Liste actuelle de Groupe IPB depuis la BDD</u></b><br />";

$language["STYLE_TYPE"]="Type de Thème"; 
$language["CLA_STYLE"]="xbtit classic style system"; 
$language["ATM_STYLE"]="atmoner's style system"; 
$language["PET_STYLE"]="Petr1fied's style system";

$language["USERNAME"]="Nom d'utilisateur ";
$language["SUBMIT"]="Valider";

?>