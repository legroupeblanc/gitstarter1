CREATE TABLE admin (
  idadmin INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Utilisateur_idUtilisateur INTEGER UNSIGNED NOT NULL,
  Projet_Utilisateur_idUtilisateur INTEGER UNSIGNED NOT NULL,
  Projet_idProjet INTEGER UNSIGNED NOT NULL,
  userId INTEGER UNSIGNED NOT NULL,
  projectId INTEGER UNSIGNED NOT NULL,
  PRIMARY KEY(idadmin, Utilisateur_idUtilisateur, Projet_Utilisateur_idUtilisateur, Projet_idProjet),
  INDEX admin_FKIndex1(Utilisateur_idUtilisateur),
  INDEX admin_FKIndex2(Projet_idProjet, Projet_Utilisateur_idUtilisateur)
);

CREATE TABLE bankAccount (
  idbankAccount INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Utilisateur_idUtilisateur INTEGER UNSIGNED NOT NULL,
  cardNumber INTEGER UNSIGNED NOT NULL,
  ownerId INTEGER UNSIGNED NOT NULL,
  ownerLastName TEXT NOT NULL,
  PRIMARY KEY(idbankAccount, Utilisateur_idUtilisateur),
  INDEX bankAccount_FKIndex1(Utilisateur_idUtilisateur)
);

CREATE TABLE Commentary (
  idCommentary INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Utilisateur_idUtilisateur INTEGER UNSIGNED NOT NULL,
  Projet_Utilisateur_idUtilisateur INTEGER UNSIGNED NOT NULL,
  Projet_idProjet INTEGER UNSIGNED NOT NULL,
  idAuthor INTEGER UNSIGNED NOT NULL,
  idProject INTEGER UNSIGNED NOT NULL,
  comCorpse TEXT NOT NULL,
  postDate INTEGER UNSIGNED NOT NULL,
  PRIMARY KEY(idCommentary, Utilisateur_idUtilisateur, Projet_Utilisateur_idUtilisateur, Projet_idProjet),
  INDEX Commentary_FKIndex1(Utilisateur_idUtilisateur),
  INDEX Commentary_FKIndex2(Projet_idProjet, Projet_Utilisateur_idUtilisateur)
);

CREATE TABLE Experiences (
  idExperiences INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Projet_Utilisateur_idUtilisateur INTEGER UNSIGNED NOT NULL,
  Projet_idProjet INTEGER UNSIGNED NOT NULL,
  Utilisateur_idUtilisateur INTEGER UNSIGNED NOT NULL,
  idProjet INTEGER UNSIGNED NOT NULL,
  idUser INTEGER UNSIGNED NOT NULL,
  description TEXT NOT NULL,
  PRIMARY KEY(idExperiences, Projet_Utilisateur_idUtilisateur, Projet_idProjet, Utilisateur_idUtilisateur),
  INDEX Experiences_FKIndex1(Projet_idProjet, Projet_Utilisateur_idUtilisateur),
  INDEX Experiences_FKIndex2(Utilisateur_idUtilisateur)
);

CREATE TABLE illustration (
  idillustration INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Projet_Utilisateur_idUtilisateur INTEGER UNSIGNED NOT NULL,
  Projet_idProjet INTEGER UNSIGNED NOT NULL,
  idProject INTEGER UNSIGNED NOT NULL,
  url TEXT NOT NULL,
  PRIMARY KEY(idillustration, Projet_Utilisateur_idUtilisateur, Projet_idProjet),
  INDEX illustration_FKIndex1(Projet_idProjet, Projet_Utilisateur_idUtilisateur)
);

CREATE TABLE Job (
  idJob INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Projet_Utilisateur_idUtilisateur INTEGER UNSIGNED NOT NULL,
  Projet_idProjet INTEGER UNSIGNED NOT NULL,
  idProjet INTEGER UNSIGNED NOT NULL,
  idEmployee INTEGER UNSIGNED NULL,
  jobDescription TEXT NOT NULL,
  jobWages FLOAT NULL,
  PRIMARY KEY(idJob, Projet_Utilisateur_idUtilisateur, Projet_idProjet),
  INDEX Job_FKIndex2(Projet_idProjet, Projet_Utilisateur_idUtilisateur)
);

CREATE TABLE Projet (
  idProjet INTEGER UNSIGNED NOT NULL,
  Utilisateur_idUtilisateur INTEGER UNSIGNED NOT NULL,
  idOwner INTEGER UNSIGNED NOT NULL,
  title TEXT NOT NULL,
  creationDate DATE NOT NULL,
  description TEXT NULL,
  projectPicture TEXT NOT NULL,
  foundingObjective FLOAT NOT NULL,
  foundingDeadline DATE NOT NULL,
  avaiableFound FLOAT ZEROFILL NOT NULL,
  PRIMARY KEY(idProjet, Utilisateur_idUtilisateur),
  INDEX Projet_FKIndex1(Utilisateur_idUtilisateur)
);

CREATE TABLE task (
  idtask INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Projet_Utilisateur_idUtilisateur INTEGER UNSIGNED NOT NULL,
  Projet_idProjet INTEGER UNSIGNED NOT NULL,
  Job_Projet_idProjet INTEGER UNSIGNED NOT NULL,
  Job_Projet_Utilisateur_idUtilisateur INTEGER UNSIGNED NOT NULL,
  Job_idJob INTEGER UNSIGNED NOT NULL,
  delay TIME NULL,
  jehAmount INTEGER UNSIGNED NULL,
  isValidated BOOL NULL,
  projectId INTEGER UNSIGNED NOT NULL,
  jobId INTEGER UNSIGNED NOT NULL,
  PRIMARY KEY(idtask, Projet_Utilisateur_idUtilisateur, Projet_idProjet, Job_Projet_idProjet, Job_Projet_Utilisateur_idUtilisateur, Job_idJob),
  INDEX task_FKIndex1(Projet_idProjet, Projet_Utilisateur_idUtilisateur),
  INDEX task_FKIndex2(Job_idJob, Job_Projet_Utilisateur_idUtilisateur, Job_Projet_idProjet)
);

CREATE TABLE Transaction (
  idTransaction INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Utilisateur_idUtilisateur INTEGER UNSIGNED NOT NULL,
  bankAccount_Utilisateur_idUtilisateur INTEGER UNSIGNED NOT NULL,
  bankAccount_idbankAccount INTEGER UNSIGNED NOT NULL,
  transactionDate DATETIME NOT NULL,
  transactionAmount FLOAT NOT NULL,
  accountId INTEGER UNSIGNED NOT NULL,
  userId INTEGER UNSIGNED NOT NULL,
  PRIMARY KEY(idTransaction, Utilisateur_idUtilisateur, bankAccount_Utilisateur_idUtilisateur, bankAccount_idbankAccount),
  INDEX Transaction_FKIndex1(Utilisateur_idUtilisateur),
  INDEX Transaction_FKIndex2(bankAccount_idbankAccount, bankAccount_Utilisateur_idUtilisateur)
);

CREATE TABLE Utilisateur (
  idUtilisateur INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  lastName TEXT NOT NULL,
  firstName TEXT NOT NULL,
  email TEXT NOT NULL,
  adress TEXT NULL,
  birthDate DATE NOT NULL,
  profilPic TEXT NULL,
  webSite TEXT NULL,
  walletAmount FLOAT NOT NULL,
  PRIMARY KEY(idUtilisateur)
);


