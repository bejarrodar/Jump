drop database if exists university;

create database university;
use university;

##################
#   DEPARTMENT   #
##################

create table department
(
	dept_id int auto_increment,
    dept_name varchar(30) unique,
    dept_phone char(10),
    primary key (dept_id)
);
alter table department auto_increment = 10000;

insert into department values(null, 'Accounting', '1234567890');
insert into department values(null, 'Astronomy', '1234567891');
insert into department values(null, 'Biology', '1234567892');
insert into department values(null, 'Chemistry', '1234567893');
insert into department values(null, 'Computer Science', '1234567894');
insert into department values(null, 'Economics', '1234567895');
insert into department values(null, 'English', '1234567896');
insert into department values(null, 'Finance', '1234567897');
insert into department values(null, 'Graphic Design', '1234567898');
insert into department values(null, 'History', '1234567899');
insert into department values(null, 'Journalism', '1234567810');
insert into department values(null, 'Linguistics', '1234567811');
insert into department values(null, 'Marketing', '1234567812');
insert into department values(null, 'Mathematics', '1234567813');
insert into department values(null, 'Music', '1234567814');
insert into department values(null, 'Nursing', '1234567815');
insert into department values(null, 'Political Science', '1234567816');
insert into department values(null, 'Statistics', '1234567817');
insert into department values(null, 'Women\'s Studies', '1234567818');

# select * from department;
# truncate table department;







##############
#   COURSE   #
##############

create table course 
(
	course_id int auto_increment,
    course_name varchar(50) not null unique,
    course_desc varchar(200),
    dept_id int not null,
    primary key (course_id),
    foreign key (dept_id) references department(dept_id)
);
alter table course auto_increment = 10000;

-- -------------- Accounting -------------- --
insert into course values (null, 'Introduction to Auditing', 
    'Intro to the conceptual framework of auditing.', 10000);
insert into course values (null, 'Accounting in the Global Economy', 
    'Financial reporting issues in a global environment and accounting and 
    managerial issues faced by multinational corporations.', 10000);
-- -------------- Astronomy -------------- --
insert into course values (null, 'Stars, Galaxies, and Cosmology',
	'A survey of astronomy with a focus on the universe beyond our 
    solar system', 10001);
insert into course values (null, 'Stellar Astrophysics',
	'Looking into the interior structure and atmospheric properties of stars.', 10001);
insert into course values (null, 'Galactic Astronomy',
	'Overall structure of our Galaxy and the interstellar medium', 10001);
-- -------------- Biology -------------- --
insert into course values (null, 'Introductory Biology I',
	'Presentation of basic biological principles as well as topics and issues 
    of current human interest.', 10002);
insert into course values (null, 'Introductory Biology II',
	'Continuation of Intro to Bio I, continuation of basic biological 
    principles and topics.', 10002);
insert into course values (null, 'Biodiversity',
	'Survey of the major groups of organisms and biological systems.', 10002);
insert into course values (null, 'Plants and People',
	'Uses of plants and fungi by humans and the importance of plants in the past, 
    present, and future.', 10002);
insert into course values (null, 'Herpetology',
	'Biology, ecology, and evolution of amphibians (salamanders, frogs, caecilians) 
    and reptiles (lizards, snakes, tuatara, turtles, crocodilians).', 10002);    
insert into course values (null, 'Aquatic Ecology',
	'Structure and function of aquatic ecosystems with application to fishery 
    and pollution problems.', 10002);
-- -------------- Chemistry -------------- --
insert into course values (null, 'General Chemistry I',
	'The first semester of a two semester sequence which explores chemistry 
    at a greater depth and with more emphasis on concepts, problems, and 
    calculations.', 10003);
insert into course values (null, 'Laboratory in General Chemistry I',
	'Laboratory to accompany General Chemistry I.', 10003);
insert into course values (null, 'General Chemistry II',
	'Continuation of General Chemistry II.', 10003);
insert into course values (null, 'Laboratory in General Chemistry II',
	'Laboratory to accompany General Chemistry II.', 10003);
-- -------------- Computer Science -------------- --
insert into course values (null, 'Introduction to Web Programming',
	'Fundamentals of developing web pages using a comprehensive web 
    development life cycle.', 10004);
insert into course values (null, 'Fundamentals of Computer Science',
	'An introduction to computer programming using an object-oriented programming 
    language. Emphasis on the basics of good programming techniques and style.', 10004);
insert into course values (null, 'Linux Operating System Essentials',
	'Introduction to installation, utilization, and administration of 
    Linux systems.', 10004);
insert into course values (null, 'Software System Safety',
	'An introduction to the hazard analysis, safety requirements, design, and 
    testing of software for safety-critical and high-dependability systems.', 10004);
insert into course values (null, 'Computer Game and Media Programming',
	'Students will learn video game programming using current game engine interfaces 
    with real hardwaree.', 10004);
-- -------------- Economics -------------- --
insert into course values (null, 'Principles of Microeconomics',
	'Resource allocation, opportunity cost, comparative and absolute advantage.', 10005);
insert into course values (null, 'Economies of China and India',
	'The economic development of China and India within the larger historical, 
    political, and socioeconomic contexts.', 10005);
-- -------------- English -------------- --
insert into course values (null, 'Survey of Film History',
	'A survey of the history of film, both U.S. and international, from the 
    beginnings in the late nineteenth century to the present.', 10006);
insert into course values (null, 'Language and Society',
	'Introduction to variation in language use in society.', 10006);
insert into course values (null, 'Myth and Fairytale',
	'Study of traditional fairytales, myths, and legends from diverse cultures.', 10006);
insert into course values (null, 'Language as Data',
	'Methods of discovering language patterns in text documents solve practical 
    text analysis problems in the disciplines.', 10006);
-- -------------- Finance -------------- --
insert into course values (null, 'Investments',
	'Introduction to securities and markets from the viewpoint of the individual 
    investor.', 10007);
insert into course values (null, 'Fixed Income Securities',
	'Valuation of fixed income securities, including pricing conventions, term 
    structure of interest rates, default, duration, and hedging of interest rate 
    risk with derivatives.', 10007);
insert into course values (null, 'Real Estate Principles',
	'Legal, economic, social and financial aspects of real estate.', 10007);
insert into course values (null, 'Risk Management Derivatives',
	'Advanced models for options and bond pricing.', 10007);
-- -------------- Graphic Design -------------- --
insert into course values (null, 'Digital Imaging',
	'Studio in experimental techniques using the digital drawing tablet combined with 
    manual drawing mediums.', 10008);
insert into course values (null, 'Multimedia Design',
	'The design of visual, aural and textual communication for electronic media.', 10008);
insert into course values (null, 'Advanced Typography',
	'Typographic theory exploring traditional and non-traditional forms, both historical 
    and contemporary typographic achievements.', 10008);
insert into course values (null, 'Wayfinding Design',
	'Study of the navigational challenges of built environments and outdoor spaces, 
    including site analysis, development of navigational plans, and design of 
    wayfinding sign systems.', 10008);
-- -------------- History -------------- --
insert into course values (null, 'American Popular Culture',
	'Social practices, beliefs and material traits of everyday life in America from 
    the mid-19th century to the present. Includes literature, music, theater and other 
    entertainments.', 10009);
insert into course values (null, 'Mexican American History',
	'History of the Mexican American community in the U.S. from the 1820s to 
    the present.', 10009);
insert into course values (null, 'Greek Civilization',
	'Ancient Greece from the Bronze Age to the Hellenistic period.', 10009);
insert into course values (null, 'Civil Rights and Ethnic Power',
	'Comparative history of the civil rights and ethnic power movements (African 
    American, Chicano, American Indian, Puerto Rican, among others) in the U.S. 
    from World War II to the present.', 10009);
-- -------------- Journalism -------------- --
insert into course values (null, 'Principles of Journalism',
	'Analysis of journalism industry and specific audiences served by print, 
    electronic, visual and digital media.', 10010);
insert into course values (null, 'Broadcast Media Production',
	'Introduction to studio production using professional equipment.', 10010);
insert into course values (null, 'Mass Communication Theory',
	'Theory and research in mass communication processes and effects; the 
    scientific process; methods of measuring, evaluating and reporting mass 
    communication research.', 10010);
insert into course values (null, 'Communication Technology and Social Change',
	'Examination of historical and current communication technologies, including how 
    they shape and are shaped by the cultural and social practices into which they 
    are introduced.', 10010);
-- -------------- Linguistics -------------- --
insert into course values (null, 'Computers and Language',
	'Introduction to the use of linguistic knowledge in computer applications today and 
    the basic computational techniques used in such applications.', 10011);
insert into course values (null, 'The Use of Language in Society',
	'Introduction to variation in language use in society.', 10011);
insert into course values (null, 'Phonetics and Phonology',
	'Terminology, theory, research, and applications of the science of the sounds 
    of spoken language.', 10011);
insert into course values (null, 'Second Language Acquisition',
	'Theory, methods, and results of second language acquisition research with emphasis 
    on approaches relevant to second language teaching.', 10011);
insert into course values (null, 'Sociolinguistics',
	'Theories and methods of examining language in its social setting.', 10011);
insert into course values (null, 'Discourse Analysis',
	'Methods and theoretical foundations for linguistic approaches to discourse 
    analysis.', 10011);
-- -------------- Marketing -------------- --
insert into course values (null, 'Promotional Strategy',
	'Principles, concepts, and problems involved in the development and 
    implementation of promotional strategies.', 10012);
insert into course values (null, 'Marketing Research',
	'Marketing research techniques: problem formulation, research design, 
    questionnaire construction, etc.', 10012);
insert into course values (null, 'Consumer Behavior',
	'Study of how consumers select, purchase, use, and dispose of goods and 
    services.', 10012);
insert into course values (null, 'Advanced Professional Selling',
	'Analysis of the theory and practice of personal selling with the context of 
    relationship marketing and salesforce automation.', 10012);
insert into course values (null, 'Brand Management',
	'Examines the role of brands and branding in market environments characterized 
    by intense competition and consumer power.', 10012);
-- -------------- Mathematics -------------- --
insert into course values (null, 'Applied Trigonometry',
	'Mathematical ideas regarding the conception of space.', 10013);
insert into course values (null, 'Calculus I',
	'Differential calculus, applications of the derivative, introduction to 
    integral calculus.', 10013);
insert into course values (null, 'Calculus II',
	'Integral calculus, applications of the integral, infinite series, parametric 
    curves and polar coordinates.', 10013);
insert into course values (null, 'Matrices and Linear Algebra',
	'Systems of linear equations, determinants, vector spaces, linear transformations, 
    orthogonality, least-squares methods, eigenvalues and eigenvectors.', 10013);
insert into course values (null, 'Calculus III',
	'Analytic geometry and vectors, differential calculus of functions of several 
    variables, multiple integrals, vector calculus.', 10013);
insert into course values (null, 'Laplace Transforms',
	'Laplace transforms and power series solutions to ordinary differential 
    equations.', 10013);
insert into course values (null, 'Graph Theory',
	'Structure and extremal properties of graphs.', 10013);
insert into course values (null, 'Topology',
	'Set theory, metric spaces, topological spaces, continuity, connectedness, 
    homeomorphisms, compactness, and topological invariants.', 10013);
insert into course values (null, 'Number Theory',
	'Divisibility, integer representations, primes and divisors, linear diophantine 
    equations, congruences, and multiplicative functions.', 10013);
insert into course values (null, 'Applied Linear Algebra',
	'Advanced topics in applied linear algebra including eigenvalues, eigenvalue 
    localization, singular value decomposition, etc.', 10013);
insert into course values (null, 'Analysis I',
	'A rigorous development of calculus of functions of one real variable: 
    real number properties and topology, limits, continuity, differentiation, 
    integration, series.', 10013);
insert into course values (null, 'Analysis II',
	'Sequences and series of functions of a real variable, uniform convergence, 
    power series, metric spaces, calculus of functions of two or more real 
    variables.', 10013);
-- -------------- Music -------------- --
insert into course values (null, 'Basic Musicianship',
	'Beginning keyboard techniques, sight-reading, and ear training.', 10014);
insert into course values (null, 'Jazz Ensemble',
	'Designed to explore various styles and trends in contemporary jazz.', 10014);
insert into course values (null, 'Class Study in Piano I',
	'Beginning keyboard technique, transposition, harmonization, ensemble and solo 
    repertory, and sight-reading skills.', 10014);
insert into course values (null, 'Class Study in Piano II',
	'Continuation of beginning keyboard technique, transposition, harmonization, 
    ensemble and solo repertory, and sight-reading skills.', 10014);
insert into course values (null, 'Music in Elementary Education',
	'Experiencing and understanding the fundamentals of music through singing, 
    playing classroom instruments, body movement, reading notation, listening, 
    and creative activities.', 10014);
insert into course values (null, 'Opera Studio',
	'Study of selected opera scenes, chamber operas, and works from contemporary and 
    classical music theater. Basic stagecraft, role interpretation, production.', 10014);
insert into course values (null, 'Music of the Romantic Era',
	'Detailed survey of instrumental, vocal, choral, and keyboard music from 
    1825 to 1910.', 10014);
-- -------------- Nursing -------------- --
insert into course values (null, 'Ess. Concepts for Professional Nursing Practice',
	'Exploration of the philosophical, conceptual, and theoretical bases for baccalaureate 
    nursing practice.', 10015);
insert into course values (null, 'Nursing Research and Evidence-Based Practice',
	'Introduction to the critical thought processes and methods used in nursing 
    research.', 10015);
insert into course values (null, 'Population and Community Health Nursing',
	'Using nursing process and an evidence-based framework, the student will explore 
    epidemiology and genetics.', 10015);
-- -------------- Political Science -------------- --
insert into course values (null, 'Introduction to International Politics',
	'Dynamics of interstate relations pertaining to nationalism, the nation state, 
    peace and war, foreign policy making, the national interest, etc.', 10016);
insert into course values (null, 'Public Opinion and Voting Behavior',
	'The formation of political opinions and attitudes, political participation, and 
    voting behavior of the general public.', 10016);
insert into course values (null, 'Law and Politics',
	'American judicial system and controversies spanning law and politics.', 10016);
insert into course values (null, 'Science, Technology, and Public Policy',
	'Examines the history and political dynamics of public science and technology 
    policies.', 10016);
insert into course values (null, 'Latin American Government and Politics',
	'Political institutions, processes, and contemporary issues. Selected countries 
    examined intensively to illustrate generalizations.', 10016);
insert into course values (null, 'Legal Analysis',
	'Introduction to the style of legal analysis traditionally used in American 
    law schools to teach law and prepare for legal practice.', 10016);
insert into course values (null, 'Ethics and Public Policy',
	'Study of decision making approaches and application to case studies.', 10016);
-- -------------- Statistics -------------- --
insert into course values (null, 'Principles of Statistics',
	'Statistical concepts in modern society.', 10017);
insert into course values (null, 'Engineering Statistics',
	'Statistics for engineering problem solving.', 10017);
insert into course values (null, 'Statistical Quality Assurance',
	'Statistical methods for process improvement.', 10017);
insert into course values (null, 'Survey Sampling Techniques',
	'Concepts of sample surveys and the survey process.', 10017);
insert into course values (null, 'Applied Time Series',
	'Methods for analyzing data collected over time.', 10017);
-- -------------- Women's Studies -------------- --
insert into course values (null, 'Women in Science and Engineering',
	'The interrelationships of women and science and engineering examined from 
    historical, sociological, philosophical, and biological perspectives.', 10018);
insert into course values (null, 'Ecofeminism',
	'Women\'s relationships with the earth, non-human nature, and other humans.', 10018);
insert into course values (null, 'Women and Religion',
	'Examines the status of women in various religions, feminist critiques of religious 
    structures and belief systems, and contemporary women\'s spirituality movements.', 10018);
insert into course values (null, 'Psychology of Women',
	'Survey of theory and research related to major biological, interpersonal, and 
    cultural issues affecting girls\' and women\'s psychological development and 
    behavior.', 10018);
insert into course values (null, 'Women of Color in the U.S',
	'Economic, social, political and cultural roles of Women of Color in the U.S.', 10018);
insert into course values (null, 'Feminist Theories',
	'Current theories of feminism, the feminine and sexual difference.', 10018);
insert into course values (null, 'Goddess Religions',
	'Exploration of the foundational myths of Goddess spirituality, including historical 
    and cross-cultural female images of the divine and their modern usage by American 
    women.', 10018);

# select * from course;






############
#   TERM   #
############

create table term
(
	term_id int auto_increment,
    term_season varchar(6) not null,
    term_year year not null,
    primary key (term_id)
);
alter table term auto_increment = 10000;
alter table term add constraint unique(term_season, term_year);

insert into term values(null, 'FALL', 2017);
insert into term values(null, 'WINTER', 2017);

insert into term values(null, 'SPRING', 2018);
insert into term values(null, 'SUMMER', 2018);
insert into term values(null, 'FALL', 2018);
insert into term values(null, 'WINTER', 2018);

insert into term values(null, 'SPRING', 2019);
insert into term values(null, 'SUMMER', 2019);
insert into term values(null, 'FALL', 2019);
insert into term values(null, 'WINTER', 2019);

# select * from term;






#################
#   PROFESSOR   #
#################

create table professor
(
	prof_id int auto_increment,
    first_name varchar(30) not null,
    last_name varchar(30) not null,
    dept_id int,
    primary key (prof_id),
    foreign key (dept_id) references department(dept_id)
);
alter table professor auto_increment = 10000;

-- ---------------- Accounting ---------------- --
insert into professor values(null, 'Robin', 'Hogan', 10000);
insert into professor values(null, 'Jamie', 'Spencer', 10000);
insert into professor values(null, 'Alex', 'Frank', 10000);
insert into professor values(null, 'Peggy', 'Castillo', 10000);
insert into professor values(null, 'Rick', 'Gill', 10000);
insert into professor values(null, 'Audrey', 'Mcbride', 10000);
insert into professor values(null, 'Devin', 'Estrada', 10000);
insert into professor values(null, 'Raymond', 'Porter', 10000);
insert into professor values(null, 'Margeret', 'Malone', 10000);
insert into professor values(null, 'Dora', 'Curry', 10000);
-- ---------------- Astronomy ---------------- --
insert into professor values(null, 'Natasha', 'Jacobs', 10001);
insert into professor values(null, 'Rosie', 'Franklin', 10001);
insert into professor values(null, 'Vicki', 'Harrington', 10001);
insert into professor values(null, 'Meredith', 'Parks', 10001);
insert into professor values(null, 'Myron', 'Quinn', 10001);
insert into professor values(null, 'Jimmy', 'Pierce', 10001);
insert into professor values(null, 'Emma', 'Allison', 10001);
insert into professor values(null, 'Silvia', 'Carlson', 10001);
insert into professor values(null, 'Freddie', 'Moody', 10001);
insert into professor values(null, 'Valerie', 'Owens', 10001);
-- ---------------- Biology ---------------- --
insert into professor values(null, 'Fredrick', 'Powell', 10002);
insert into professor values(null, 'Santiago', 'Hart', 10002);
insert into professor values(null, 'Maria', 'Mendoza', 10002);
insert into professor values(null, 'Thelma', 'White', 10002);
insert into professor values(null, 'Tyler', 'Howell', 10002);
insert into professor values(null, 'Freda', 'Mcbride', 10002);
insert into professor values(null, 'Mindy', 'Meyer', 10002);
insert into professor values(null, 'Misty', 'Rice', 10002);
insert into professor values(null, 'Krista', 'Jimenez', 10002);
insert into professor values(null, 'Annetta', 'Green', 10002);
-- ---------------- Chemistry ---------------- --
insert into professor values(null, 'Shirley', 'Thornton', 10003);
insert into professor values(null, 'Cora', 'Schneider', 10003);
insert into professor values(null, 'Louis', 'Marshall', 10003);
insert into professor values(null, 'Clifton', 'Henry', 10003);
insert into professor values(null, 'Geoffrey', 'Lambert', 10003);
insert into professor values(null, 'Myrtle', 'Luna', 10003);
insert into professor values(null, 'Angel', 'Ball', 10003);
insert into professor values(null, 'Grant', 'Nguyen', 10003);
insert into professor values(null, 'Barry', 'Saunders', 10003);
insert into professor values(null, 'Abraham', 'Fitzgerald', 10003);
-- ---------------- Computer Science ---------------- --
insert into professor values(null, 'Janice', 'Curtis', 10004);
insert into professor values(null, 'Heidi', 'Gomez', 10004);
insert into professor values(null, 'Drew', 'Ortega', 10004);
insert into professor values(null, 'Eva', 'Perez', 10004);
insert into professor values(null, 'Tera', 'Obrien', 10004);
insert into professor values(null, 'Ira', 'Norman', 10004);
insert into professor values(null, 'Lawrence', 'Marsh', 10004);
insert into professor values(null, 'Steven', 'Newman', 10004);
insert into professor values(null, 'Alfred', 'Knight', 10004);
insert into professor values(null, 'Jorge', 'Frank', 10004);
-- ---------------- Economics ---------------- --
insert into professor values(null, 'Doris', 'Weaver', 10005);
insert into professor values(null, 'Crystal', 'Torres', 10005);
insert into professor values(null, 'Maxine', 'Gardner', 10005);
insert into professor values(null, 'Owen', 'West', 10005);
insert into professor values(null, 'Dean', 'Guzman', 10005);
insert into professor values(null, 'Allan', 'Cruz', 10005);
insert into professor values(null, 'Rhonda', 'Beck', 10005);
insert into professor values(null, 'Maureen', 'Clark', 10005);
insert into professor values(null, 'Lauren', 'Banks', 10005);
insert into professor values(null, 'Maryann', 'Dixon', 10005);
-- ---------------- English ---------------- --
insert into professor values(null, 'Tracey', 'Cooper', 10006);
insert into professor values(null, 'Jacqueline', 'Hamilton', 10006);
insert into professor values(null, 'Frederick', 'Phillips', 10006);
insert into professor values(null, 'Howard', 'Houston', 10006);
insert into professor values(null, 'Jamie', 'Obrien', 10006);
insert into professor values(null, 'Henry', 'Hubbard', 10006);
insert into professor values(null, 'Dennis', 'Nguyen', 10006);
insert into professor values(null, 'Beulah', 'Castillo', 10006);
insert into professor values(null, 'Roland', 'Baldwin', 10006);
insert into professor values(null, 'Cecil', 'Mason', 10006);
-- ---------------- Finance ---------------- --
insert into professor values(null, 'Michele', 'Lee', 10007);
insert into professor values(null, 'Karl', 'Wade', 10007);
insert into professor values(null, 'Aki', 'Ito', 10007);
insert into professor values(null, 'Lynette', 'Sanchez', 10007);
insert into professor values(null, 'Carlos', 'Morgan', 10007);
insert into professor values(null, 'Valerie', 'Figueroa', 10007);
insert into professor values(null, 'Elena', 'Gibbs', 10007);
insert into professor values(null, 'Cesar', 'Delgado', 10007);
insert into professor values(null, 'Mable', 'Bowers', 10007);
insert into professor values(null, 'Tracy', 'Bowen', 10007);
-- ---------------- Graphic Design ---------------- --
insert into professor values(null, 'Marcelle', 'Swan', 10008);
insert into professor values(null, 'Cassy', 'Heaton', 10008);
insert into professor values(null, 'Theda', 'Hess', 10008);
insert into professor values(null, 'Ronna', 'Luckett', 10008);
insert into professor values(null, 'Fredia', 'Chalmers', 10008);
insert into professor values(null, 'Mauricio', 'Durden', 10008);
insert into professor values(null, 'Echo', 'Morse', 10008);
insert into professor values(null, 'Hiroko', 'Lu', 10008);
insert into professor values(null, 'Michael', 'Kim', 10008);
insert into professor values(null, 'Kendrick', 'Bowen', 10008);
-- ---------------- History ---------------- --
insert into professor values(null, 'Amy', 'Hogan', 10009);
insert into professor values(null, 'William', 'Cheng', 10009);
insert into professor values(null, 'Ezra', 'Fisher', 10009);
insert into professor values(null, 'Latisha', 'Mcdonald', 10009);
insert into professor values(null, 'Isreal', 'Hudson', 10009);
insert into professor values(null, 'Nicole', 'Friedman', 10009);
insert into professor values(null, 'Isaac', 'Randall', 10009);
insert into professor values(null, 'Simon', 'Cantu', 10009);
insert into professor values(null, 'Sonya', 'Shelton', 10009);
insert into professor values(null, 'Annie', 'Johns', 10009);
-- ---------------- Journalism ---------------- --
insert into professor values(null, 'Timur', 'Frolov', 10010);
insert into professor values(null, 'Celia', 'Beneventi', 10010);
insert into professor values(null, 'Chandler', 'Slater', 10010);
insert into professor values(null, 'Anup', 'Vaidya', 10010);
insert into professor values(null, 'Hadi', 'Sader', 10010);
insert into professor values(null, 'Erwin', 'Schmitz', 10010);
insert into professor values(null, 'Ishihara', 'Natsuko', 10010);
insert into professor values(null, 'Min', 'Yun', 10010);
insert into professor values(null, 'Zhou', 'Qingling', 10010);
insert into professor values(null, 'Ricardo', 'Olmos', 10010);
-- ---------------- Linguistics ---------------- --
insert into professor values(null, 'Tabari', 'Orji', 10011);
insert into professor values(null, 'Arda', 'Yerli', 10011);
insert into professor values(null, 'Cerys', 'Mower', 10011);
insert into professor values(null, 'Dan', 'Hunter', 10011);
insert into professor values(null, 'Mike', 'Norris', 10011);
insert into professor values(null, 'Derek', 'Kim', 10011);
insert into professor values(null, 'Michael', 'Wilkins', 10011);
insert into professor values(null, 'Henry', 'Webster', 10011);
insert into professor values(null, 'Brenda', 'Brewer', 10011);
insert into professor values(null, 'Tom', 'Cunningham', 10011);
-- ---------------- Marketing ---------------- --
insert into professor values(null, 'Jacquelyn', 'Jacobs', 10012);
insert into professor values(null, 'Frank', 'Smith', 10012);
insert into professor values(null, 'Santiago', 'Olmos', 10012);
insert into professor values(null, 'Leon', 'Hernandez', 10012);
insert into professor values(null, 'Felix', 'Morris', 10012);
insert into professor values(null, 'Robin', 'Hogan', 10012);
insert into professor values(null, 'Lyle', 'Curtis', 10012);
insert into professor values(null, 'Desiree', 'Clayton', 10012);
insert into professor values(null, 'Tina', 'Summers', 10012);
insert into professor values(null, 'Luis', 'Delgado', 10012);
-- ---------------- Mathematics ---------------- --
insert into professor values(null, 'Terry', 'Clarke', 10013);
insert into professor values(null, 'Daniel', 'Burns', 10013);
insert into professor values(null, 'Rickey', 'Newton', 10013);
insert into professor values(null, 'Luis', 'Santiago', 10013);
insert into professor values(null, 'Cary', 'Wilson', 10013);
insert into professor values(null, 'Orville', 'Goodman', 10013);
insert into professor values(null, 'Jesus', 'Moreno', 10013);
insert into professor values(null, 'Judy', 'Ford', 10013);
insert into professor values(null, 'Evelyn', 'Cunningham', 10013);
insert into professor values(null, 'Shirley', 'Klein', 10013);
-- ---------------- Music ---------------- --
insert into professor values(null, 'Preston', 'Rogers', 10014);
insert into professor values(null, 'Jean', 'Rivera', 10014);
insert into professor values(null, 'Veronica', 'Copeland', 10014);
insert into professor values(null, 'Sophie', 'Kim', 10014);
insert into professor values(null, 'Rex', 'Gill', 10014);
insert into professor values(null, 'Leslie', 'Shelton', 10014);
insert into professor values(null, 'Krista', 'Fletcher', 10014);
insert into professor values(null, 'Nathan', 'Gates', 10014);
insert into professor values(null, 'Horace', 'Wong', 10014);
insert into professor values(null, 'Amanda', 'Guzman', 10014);
-- ---------------- Nursing ---------------- --
insert into professor values(null, 'Darla', 'Morris', 10015);
insert into professor values(null, 'Leona', 'Castro', 10015);
insert into professor values(null, 'Pat', 'Harris', 10015);
insert into professor values(null, 'Josephine', 'Mccormick', 10015);
insert into professor values(null, 'Wesley', 'Cook', 10015);
insert into professor values(null, 'Sheryl', 'Pratt', 10015);
insert into professor values(null, 'Loren', 'Poole', 10015);
insert into professor values(null, 'Sergio', 'Burns', 10015);
insert into professor values(null, 'Brandon', 'Martin', 10015);
insert into professor values(null, 'Cecilia', 'Knight', 10015);
-- ---------------- Political Science ---------------- --
insert into professor values(null, 'Josefina', 'Walton', 10016);
insert into professor values(null, 'Orlando', 'Hoffman', 10016);
insert into professor values(null, 'Mauree', 'Myers', 10016);
insert into professor values(null, 'Stella', 'Gordon', 10016);
insert into professor values(null, 'Troy', 'Williams', 10016);
insert into professor values(null, 'Adrienne', 'Cole', 10016);
insert into professor values(null, 'Belinda', 'Pratt', 10016);
insert into professor values(null, 'Michael', 'Watson', 10016);
insert into professor values(null, 'Michael', 'Ramos', 10016);
insert into professor values(null, 'Julie', 'Barnes', 10016);
-- ---------------- Statistics ---------------- --
insert into professor values(null, 'Darla', 'Berry', 10017);
insert into professor values(null, 'Matthew', 'Mcgee', 10017);
insert into professor values(null, 'Verna', 'Phelps', 10017);
insert into professor values(null, 'Nellie', 'Ramirez', 10017);
insert into professor values(null, 'Ramon', 'Guerrero', 10017);
insert into professor values(null, 'Ana', 'Lloyd', 10017);
insert into professor values(null, 'Jenna', 'Rogers', 10017);
insert into professor values(null, 'Max', 'Smith', 10017);
insert into professor values(null, 'Lindsey', 'Cheng', 10017);
insert into professor values(null, 'Steve', 'Quinn', 10017);
-- ---------------- Women's Studies ---------------- --
insert into professor values(null, 'Mary', 'Ito', 10018);
insert into professor values(null, 'Theresa', 'Parks', 10018);
insert into professor values(null, 'Elizabeth', 'Blair', 10018);
insert into professor values(null, 'Daisy', 'Estrada', 10018);
insert into professor values(null, 'Sue', 'Mendez', 10018);
insert into professor values(null, 'Alice', 'Barnes', 10018);
insert into professor values(null, 'Layla', 'Siddiqi', 10018);
insert into professor values(null, 'Seok', 'Hyun', 10018);
insert into professor values(null, 'Disha', 'Ramaswamy', 10018);
insert into professor values(null, 'Sarah', 'Black', 10018);

# select * from professor;





###################
#   COURSE_TERM   #
###################

create table course_term
(
	course_term_id int auto_increment,
    course_id int not null,
    term_id int not null,
    prof_id int,
    primary key (course_term_id),
    foreign key (course_id) references course(course_id),
    foreign key (term_id) references term(term_id),
    foreign key (prof_id) references professor(prof_id)
);
alter table course_term auto_increment = 10000;

-- ----------------- Fall 2017 ----------------- --
insert into course_term values(null, 10000, 10000, 10000);
insert into course_term values(null, 10001, 10000, 10001);
-- ----------------- Winter Intersession 2017 ----------------- --
insert into course_term values(null, 10002, 10001, 10010);
insert into course_term values(null, 10003, 10001, 10011);
-- ----------------- Spring 2018 ----------------- --
insert into course_term values(null, 10005, 10002, 10020);
insert into course_term values(null, 10006, 10002, 10021);
-- ----------------- Summer Intersession 2018 ----------------- --
insert into course_term values(null, 10011, 10003, 10030);
insert into course_term values(null, 10012, 10003, 10031);
-- ----------------- Fall 2018 ----------------- --
insert into course_term values(null, 10015, 10004, 10040);
insert into course_term values(null, 10016, 10004, 10041);
-- ----------------- Winter Intersession 2018 ----------------- --
insert into course_term values(null, 10020, 10005, 10050);
insert into course_term values(null, 10021, 10005, 10051);
-- ----------------- Spring 2019 ----------------- --
insert into course_term values(null, 10022, 10006, 10060);
insert into course_term values(null, 10023, 10006, 10061);
-- ----------------- Summer Intersession 2019 ----------------- --
insert into course_term values(null, 10026, 10007, 10070);
insert into course_term values(null, 10027, 10007, 10071);
-- ----------------- Fall 2019 ----------------- --
insert into course_term values(null, 10030, 10008, 10080);
insert into course_term values(null, 10031, 10008, 10081);

# select * from course_term;





###############
#   ADDRESS   #
###############

create table address 
(
	address_id int auto_increment,
    street varchar(100) not null,
    city varchar(100) not null,
    state char(2) not null,
    zip_code varchar(10) not null,
    primary key (address_id)
);
alter table address auto_increment = 10000;

insert into address values (null, '1711 Valley Drive', 'Philadelphia', 'PA', '19103');
insert into address values (null, '4595 Andell Road', 'Nashville', 'TN', '37201');
insert into address values (null, '1750 Sunny Glen Lane', 'Warrensville Heights', 'OH', '44128');
insert into address values (null, '3630 Layman Court', 'Atlanta', 'GA', '30303');
insert into address values (null, '1016 Adamsville Road', 'Laredo', 'TX', '78040');
insert into address values (null, '3857 Dungalow Road', 'Niobrara', 'NE', '68760');
insert into address values (null, '2982 Happy Hollow Road', 'Wilmington', 'NC', '28405');
insert into address values (null, '1223 Hall Place', 'Rosewood', 'TX', '75644');
insert into address values (null, '62 Maple Court', 'Cape Girardeau', 'MO', '63701');

# select * from address;






###############
#   STUDENT   #
###############

create table student
(
	student_id int auto_increment,
    first_name varchar(30) not null,
    last_name varchar(30) not null,
    gender char(1) not null,
    date_of_birth date not null,
    credits int not null,
    address_id int not null,
    dept_id int,
    primary key (student_id),
    foreign key (address_id) references address(address_id),
    foreign key (dept_id) references department(dept_id)
);
alter table student auto_increment = 10000;

insert into student values(null, 'Chris', 'Lee', 'M', '1992-05-11', 80, 10000, 10000);
insert into student values(null, 'Anna', 'Kim', 'F', '1996-09-19', 31, 10001, 10001);
insert into student values(null, 'Kimberly', 'Clark', 'F', '1998-12-07', 42, 10002, 10002);
insert into student values(null, 'Glen', 'Felts', 'M', '1998-10-18', 17, 10003, 10003);
insert into student values(null, 'Joyce', 'Valdez', 'F', '1997-12-30', 0, 10004, 10004);
insert into student values(null, 'Jarrell', 'Stokes', 'M', '1998-03-08', 79, 10005, 10005);
insert into student values(null, 'Librada', 'Lyles', 'F', '1999-07-04', 23, 10006, 10006);
insert into student values(null, 'Zach', 'Wiggins', 'M', '2000-04-23', 4, 10007, 10007);
insert into student values(null, 'Frank', 'Rader', 'M', '1997-01-09', 90, 10008, 10008);

insert into student values(null, 'Delete', 'Student', 'M', '1999-01-09', 0, 10008, 10008);

#select * from student;




####################
#   REGISTRATION   #
####################

create table registration
(
	registration_id int auto_increment,
    student_id int not null,
    course_term_id int not null,
    primary key (registration_id),
    foreign key (student_id) references student(student_id),
    foreign key (course_term_id) references course_term(course_term_id)
);
alter table registration auto_increment = 10000;

insert into registration values(null, 10000, 10000);
insert into registration values(null, 10001, 10002);
insert into registration values(null, 10002, 10004);
insert into registration values(null, 10003, 10006);
insert into registration values(null, 10004, 10008);
insert into registration values(null, 10005, 10010);
insert into registration values(null, 10006, 10012);
insert into registration values(null, 10007, 10014);
insert into registration values(null, 10008, 10016);


# select * from registration;

-- drop database university;
-- create table tempuser
-- (
-- 	col1 int,
--     col2 varchar(30)
-- );


-- create table users
-- (
-- 	username varchar(30),
--     password varchar(30) not null,
--     primary key(username)
-- );

-- insert into users values('user1', 'password1');
-- insert into users values('user2', 'password2');
-- insert into users values('user4', 'password4');
-- insert into users values('user5', 'password5');
-- insert into users values('user6', 'password6');

-- select * from users;