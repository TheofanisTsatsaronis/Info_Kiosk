-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Φιλοξενητής: 127.0.0.1
-- Χρόνος δημιουργίας: 18 Ιουν 2018 στις 17:57:15
-- Έκδοση διακομιστή: 10.1.25-MariaDB
-- Έκδοση PHP: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Βάση δεδομένων: `info_kiosk`
--

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `beach`
--

CREATE TABLE `beach` (
  `pathphoto` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `distance` varchar(50) NOT NULL,
  `link` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Άδειασμα δεδομένων του πίνακα `beach`
--

INSERT INTO `beach` (`pathphoto`, `name`, `address`, `distance`, `link`) VALUES
('asteras-vouliagmenis.jpg', 'ΑΣΤΕΡΑΣ ΒΟΥΛΙΑΓΜΕΝΗΣ', 'Aπόλλωνος 40 166 71 Βουλιαγμένη, Αθήνα', '19500', 'https://www.google.gr/maps/dir/Πλατεία+Συντάγματος+-+Syntagma+Square,+Πλ.+Συντάγματος,+Αθήνα+105+63/Παραλία+Αστέρα,+Απόλλωνος+40,+Βουλιαγμένη'),
('varkiza.jpg', 'VARKIZA RESORT', 'ΑΚΤΗ ΒΑΡΚΙΖΑΣ 166 72 ΑΘΗΝΑ', '20100', 'https://www.google.gr/maps/dir/Πλατεία+Συντάγματος+-+Syntagma+Square,+Πλ.+Συντάγματος,+Αθήνα+105+63/Varkiza+Resort,+Βάρη,+Ανατολική+Αττική');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `contact`
--

CREATE TABLE `contact` (
  `title` varchar(50) COLLATE utf16_unicode_ci DEFAULT NULL,
  `info` varchar(50) COLLATE utf16_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Άδειασμα δεδομένων του πίνακα `contact`
--

INSERT INTO `contact` (`title`, `info`) VALUES
('mobile:', '6973426432'),
('telephone:', '2103427432'),
('email:', 'contact_us@info.com'),
('facebook page:', 'https://www.facebook.com/contact_us');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `login`
--

CREATE TABLE `login` (
  `user` varchar(30) COLLATE utf16_unicode_ci DEFAULT NULL,
  `password` varchar(30) COLLATE utf16_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci ROW_FORMAT=COMPACT;

--
-- Άδειασμα δεδομένων του πίνακα `login`
--

INSERT INTO `login` (`user`, `password`) VALUES
('fanis', 'tsatsaronis');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `museums`
--

CREATE TABLE `museums` (
  `pathphoto` varchar(50) COLLATE utf16_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf16_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf16_unicode_ci NOT NULL,
  `address` varchar(50) COLLATE utf16_unicode_ci NOT NULL,
  `meters` varchar(50) COLLATE utf16_unicode_ci NOT NULL,
  `times` varchar(50) COLLATE utf16_unicode_ci NOT NULL,
  `epikoinwnia` varchar(50) COLLATE utf16_unicode_ci NOT NULL,
  `linkgooglemaps` varchar(500) COLLATE utf16_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Άδειασμα δεδομένων του πίνακα `museums`
--

INSERT INTO `museums` (`pathphoto`, `name`, `description`, `address`, `meters`, `times`, `epikoinwnia`, `linkgooglemaps`) VALUES
('museum_photo_1.jpg', 'Μουσείο Ακρόπολης', 'Το Mουσείο Ακρόπολης είναι αρχαιολογικό μουσείο επικεντρωμένο στα ευρήματα του αρχαιολογικού χώρου της Ακρόπολης των Αθηνών. Το μουσείο κτίστηκε για να στεγάσει κάθε αντικείμενο που έχει βρεθεί πάνω στον ιερό βράχο της Ακρόπολης και στους πρόποδές του καλύπτοντας μία ευρεία χρονική περίοδο από την Μυκηναϊκή περίοδο έως την Ρωμαϊκή και Παλαιοχριστιανική Αθήνα.', 'Διονυσίου Αρεοπαγίτου 15, 11742, Αθήνα, Ελλάδα', '1100', '10EUR', '210 9000900', 'https://www.google.gr/maps/dir/Πλατεία+Συντάγματος+-+Syntagma+Square,+Πλ.+Συντάγματος,+Αθήνα+105+63/Μουσείο+Ακρόπολης,+Διονυσίου+Αρεοπαγίτου'),
('megaro1_small.jpg', 'Βυζαντινό και Χριστιανικό Μουσείο', 'Το Βυζαντινό και Χριστιανικό Μουσείο από το 1914 που συστάθηκε έχει φθάσει να φιλοξενεί περισσότερα από 25.000 εκθέματα με μοναδικές συλλογές εικόνων, γλυπτών, μικροτεχνίας, τοιχογραφιών, κεραμικών, υφασμάτων, χειρογράφων αλλά και αντιγράφων από τον 3ο αιώνα μέχρι τον σύγχρονο.', 'Βασ. Σοφίας 22, 106 75 Αθήνα', '1000', '8EUR', '213 213 9572', 'https://www.google.gr/maps/dir/Πλατεία+Συντάγματος+-+Syntagma+Square/Λεωφ.+Βασιλίσσης+Σοφίας+22,+Αθήνα+'),
('parthenon.jpg', 'Παρθενώνας', 'Ο Παρθενώνας είναι ναός, χτισμένος προς τιμήν της θεάς Αθηνάς, προστάτιδας της πόλης της Αθήνας. Υπήρξε το αποτέλεσμα της συνεργασίας σημαντικών αρχιτεκτόνων και γλυπτών στα μέσα του 5ου π.Χ. αιώνα. Η εποχή της κατασκευής του συνταυτίζεται με τα φιλόδοξα επεκτατικά σχέδια της Αθήνας και της πολιτικής κύρους που ακολούθησε έναντι των συμμάχων της κατά την περίοδο της αθηναϊκής ηγεμονίας στην Αρχαία Ελλάδα.', 'Ακρόπολη', '1500', '20EUR', '210 3214172', 'https://www.google.gr/maps/dir/Πλατεία+Συντάγματος+-+Syntagma+Square,+Πλ.+Συντάγματος,+Αθήνα+105+63/Παρθενώνας,+Αθήνα+105+58'),
('Benaki_Main_Building_2small.jpg', 'Μουσείο Μπενάκη', 'Το Μουσείο Μπενάκη είναι ένα από τα πιο γνωστά μουσεία της Αθήνας. Ιδρύθηκε το 1929 από τον Αντώνη Μπενάκη στην μνήμη του πατέρα του Εμμανουήλ Μπενάκη και στεγάζεται στην οικία της ιστορικής από την Αλεξάνδρεια οικογένειας Μπενάκη. Σημειώνεται ότι η προσφορά της οικογένειας Μπενάκη στη πολιτική, κοινωνική και την πολιτιστική ζωή της Αθήνας, αλλά και γενικότερα της Ελλάδας κρίνεται ανεκτίμητη.', 'Κουμπάρη 1, Αθήνα 106 74', '650', '5EUR', '210 367 1000', 'https://www.google.gr/maps/dir/Πλατεία+Συντάγματος+-+Syntagma+Square,+Πλ.+Συντάγματος,+Αθήνα+105+63/Μουσείο+Μπενάκη,');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `sos`
--

CREATE TABLE `sos` (
  `name` varchar(100) CHARACTER SET utf16 NOT NULL,
  `thl` varchar(100) CHARACTER SET utf16 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Άδειασμα δεδομένων του πίνακα `sos`
--

INSERT INTO `sos` (`name`, `thl`) VALUES
('Εθνικό Κέντρο Άμεσης Βοήθειας', '166'),
('Άμεση Δράση Αστυνομίας', '100'),
('Πυροσβεστική Υπηρεσία', '199'),
('Κέντρο Δηλητηριάσεων', '210 7793777'),
('Ευρωπαϊκός Αριθμός Έκτακτης Ανάγκης', '112'),
('Σταθ. Πρώτων Βοηθειών ΙΚΑ', '210 6467811');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `today`
--

CREATE TABLE `today` (
  `address` varchar(100) CHARACTER SET utf16 NOT NULL,
  `thl` varchar(100) CHARACTER SET utf16 NOT NULL,
  `time` varchar(100) CHARACTER SET utf16 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Άδειασμα δεδομένων του πίνακα `today`
--

INSERT INTO `today` (`address`, `thl`, `time`) VALUES
('Αγίου Νικολάου 96, Ίλιον, 13123, ΑΤΤΙΚΗΣ', '2105028880', '08:00-23:00'),
('Ιλίου 33, κόμβος Ιλίου, Ίλιον, 13122, ΑΤΤΙΚΗΣ', '2102610016', '08:00-23:00'),
('Καζανόβα 30, Πειραιάς - Χατζηκυριάκειο, 18539, ΑΤΤΙΚΗΣ', '2104514058', '08:00-20:00'),
('Βασιλέως Γεωργίου Β 4, Πειραιάς, 18535, ΑΤΤΙΚΗΣ', '2104113232', '08:00-20:00');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `todayhospital`
--

CREATE TABLE `todayhospital` (
  `name` varchar(100) CHARACTER SET utf16 NOT NULL,
  `address` varchar(100) CHARACTER SET utf16 NOT NULL,
  `thl` varchar(100) CHARACTER SET utf16 NOT NULL,
  `wrario` varchar(100) CHARACTER SET utf16 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Άδειασμα δεδομένων του πίνακα `todayhospital`
--

INSERT INTO `todayhospital` (`name`, `address`, `thl`, `wrario`) VALUES
('Αγία Σοφία - Περιφερειακό Γενικό Νοσοκομείο Παίδων', 'Παπαδιαμαντοπούλου & Θηβών, ΑΘΗΝΑ', '2132013000', '08:00 - 08:00 (Επομένης)'),
('Ανδρέας Συγγρός - Νοσοκομείο', 'Ι.Δραγούμη 5 Καραβέλ, ΑΘΗΝΑ', '2107265000', '08:00 - 08:00 (Επομένης)'),
('Ασκληπιείο Βούλας - Περιφερειακό Γενικό Νοσοκομείο', 'Βασ. Παύλου 1, ΒΟΥΛΑ', '2132163000', '08:00 - 08:00 (Επομένης)'),
('Γ. Γεννηματάς - Περιφερειακό Γενικό Νοσοκομείο Αθηνών', 'Λεωφ. Μεσογείων 154, ΑΘΗΝΑ', '2132032000', '08:00 - 08:00 (Επομένης)'),
('Ερυθρός Σταυρός (Μπενάκειο)', 'Ερυθρού Σταυρού 1, ΑΘΗΝΑ', '2132068200', '08:00 - 08:00 (Επομένης)');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `tomorrow`
--

CREATE TABLE `tomorrow` (
  `address` varchar(100) CHARACTER SET utf16 NOT NULL,
  `thl` varchar(100) CHARACTER SET utf16 NOT NULL,
  `time` varchar(100) CHARACTER SET utf16 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Άδειασμα δεδομένων του πίνακα `tomorrow`
--

INSERT INTO `tomorrow` (`address`, `thl`, `time`) VALUES
('Λεωφόρος Αφεντούλη 26, Πειραιάς - Φρεαττύδα, 18536, ΑΤΤΙΚΗΣ', '2104185275', '08:00-20:00'),
('2ας Μεραρχίας 25, Πειραιάς, 18535, ΑΤΤΙΚΗΣ', '2104284840', '08:00-20:00'),
('Ευαγγελιστρίας 41-43 & Υψηλάντη, Πειραιάς, 18532, ΑΤΤΙΚΗΣ', '2104116698', '08:00-20:00'),
('Τσαμαδού 27, Πειραιάς, 18531, ΑΤΤΙΚΗΣ', '2104179162', '08:00-14:00  & 17:00-23:00  ');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `tomorrowhospital`
--

CREATE TABLE `tomorrowhospital` (
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `thl` varchar(50) NOT NULL,
  `wrario` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Άδειασμα δεδομένων του πίνακα `tomorrowhospital`
--

INSERT INTO `tomorrowhospital` (`name`, `address`, `thl`, `wrario`) VALUES
('Αγία Σοφία - Περιφερειακό Γενικό Νοσοκομείο Παίδων', 'Παπαδιαμαντοπούλου & Θηβών, ΑΘΗΝΑ', '2132013000', '08:00 - 08:00 (Επομένης)'),
('Νομαρχιακό Γενικό Ογκολογικό Νοσοκομείo', 'Τιμίου Σταυρού & Νουφάρων Καλυφτάκι Νέα Κηφισιά', '2103501500', '08:00 - 15:00 '),
('Αγιος Παντελεήμων - Περιφερειακό Γενικό Νοσοκομείο Νίκαιας Πειραιά', 'Μαντούβαλου 3, ΝΙΚΑΙΑ ΠΕΙΡΑΙΑ', '2132077000', '08:00 - 08:00 (Επομένης)'),
('Αγιος Σάββας - Περιφερειακό Αντικαρκινικό-Ογκολογικό Νοσοκομείο', 'Λεωφ. Αλεξάνδρας 171, ΑΘΗΝΑ', '2106409000,2132021000', '08:00 - 15:00 ');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
