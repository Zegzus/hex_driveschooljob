INSERT INTO `jobs`(`name`, `label`) VALUES
	('dmvschool', "Szkoła Jazdy")
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('dmvschool', 0, 'rookie', 'Początkujący egzaminator ', 500, '{}', '{}'),
	('dmvschool', 1, 'newbie', 'Doświadczony egzaminator ', 500, '{}', '{}'),
	('dmvschool', 2, 'employee', 'Zaawansowany egzaminator ', 500, '{}', '{}'),
	('dmvschool', 3, 'employee', 'Kierownik ', 500, '{}', '{}'),
	('dmvschool', 4, 'boss', 'Zastępca szefa', 500, '{}', '{}'),
	('dmvschool', 5, 'boss', 'Szef', 500, '{}', '{}')
;
INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_dmvschool', "Szkoła Jazdy", 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES
	('society_dmvschool', "Szkoła Jazdy", 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_dmvschool', "Szkoła Jazdy", 1)
;