# Se pide:  

## Realiza la carga de la BBDD de Sakila, tal y como se muestra en los enlaces proporcionados.
### Realiza cada una de las siguientes consultas:



#### Actores que tienen de primer nombre Scarlett.

```sql
select * from actor where first_name ="Scarlett";
+----------+------------+-----------+---------------------+
| actor_id | first_name | last_name | last_update         |
+----------+------------+-----------+---------------------+
|       81 | SCARLETT   | DAMON     | 2006-02-15 04:34:33 |
|      124 | SCARLETT   | BENING    | 2006-02-15 04:34:33 |
+----------+------------+-----------+---------------------+

```

#### Actores que tienen de apellido Johansson.

```sql
select * from actor where last_name ="Johansson";
+----------+------------+-----------+---------------------+
| actor_id | first_name | last_name | last_update         |
+----------+------------+-----------+---------------------+
|        8 | MATTHEW    | JOHANSSON | 2006-02-15 04:34:33 |
|       64 | RAY        | JOHANSSON | 2006-02-15 04:34:33 |
|      146 | ALBERT     | JOHANSSON | 2006-02-15 04:34:33 |
+----------+------------+-----------+---------------------+

```

#### Actores que contengan una O en su nombre.

```sql
select * from actor where first_name regexp 'O';
+----------+-------------+--------------+---------------------+
| actor_id | first_name  | last_name    | last_update         |
+----------+-------------+--------------+---------------------+
|        1 | PENELOPE    | GUINESS      | 2006-02-15 04:34:33 |
|        5 | JOHNNY      | LOLLOBRIGIDA | 2006-02-15 04:34:33 |
|        9 | JOE         | SWANK        | 2006-02-15 04:34:33 |
|       11 | ZERO        | CAGE         | 2006-02-15 04:34:33 |
|       19 | BOB         | FAWCETT      | 2006-02-15 04:34:33 |
|       24 | CAMERON     | STREEP       | 2006-02-15 04:34:33 |
|       28 | WOODY       | HOFFMAN      | 2006-02-15 04:34:33 |
|       38 | TOM         | MCKELLEN     | 2006-02-15 04:34:33 |
|       39 | GOLDIE      | BRODY        | 2006-02-15 04:34:33 |
|       40 | JOHNNY      | CAGE         | 2006-02-15 04:34:33 |
|       41 | JODIE       | DEGENERES    | 2006-02-15 04:34:33 |
|       42 | TOM         | MIRANDA      | 2006-02-15 04:34:33 |
|       54 | PENELOPE    | PINKETT      | 2006-02-15 04:34:33 |
|       63 | CAMERON     | WRAY         | 2006-02-15 04:34:33 |
|       78 | GROUCHO     | SINATRA      | 2006-02-15 04:34:33 |
|       82 | WOODY       | JOLIE        | 2006-02-15 04:34:33 |
|       91 | CHRISTOPHER | BERRY        | 2006-02-15 04:34:33 |
|      104 | PENELOPE    | CRONYN       | 2006-02-15 04:34:33 |
|      106 | GROUCHO     | DUNST        | 2006-02-15 04:34:33 |
|      111 | CAMERON     | ZELLWEGER    | 2006-02-15 04:34:33 |
|      113 | MORGAN      | HOPKINS      | 2006-02-15 04:34:33 |
|      114 | MORGAN      | MCDORMAND    | 2006-02-15 04:34:33 |
|      115 | HARRISON    | BALE         | 2006-02-15 04:34:33 |
|      120 | PENELOPE    | MONROE       | 2006-02-15 04:34:33 |
|      137 | MORGAN      | WILLIAMS     | 2006-02-15 04:34:33 |
|      140 | WHOOPI      | HURT         | 2006-02-15 04:34:33 |
|      151 | GEOFFREY    | HESTON       | 2006-02-15 04:34:33 |
|      162 | OPRAH       | KILMER       | 2006-02-15 04:34:33 |
|      163 | CHRISTOPHER | WEST         | 2006-02-15 04:34:33 |
|      171 | OLYMPIA     | PFEIFFER     | 2006-02-15 04:34:33 |
|      172 | GROUCHO     | WILLIAMS     | 2006-02-15 04:34:33 |
|      176 | JON         | CHASE        | 2006-02-15 04:34:33 |
|      188 | ROCK        | DUKAKIS      | 2006-02-15 04:34:33 |
|      191 | GREGORY     | GOODING      | 2006-02-15 04:34:33 |
|      192 | JOHN        | SUVARI       | 2006-02-15 04:34:33 |
|      200 | THORA       | TEMPLE       | 2006-02-15 04:34:33 |
+----------+-------------+--------------+---------------------+

```

#### Actores que contengan una O en su nombre y en una A en su apellido.

```sql
select * from actor where first_name regexp 'O' and last_name regexp 'A';
+----------+------------+--------------+---------------------+
| actor_id | first_name | last_name    | last_update         |
+----------+------------+--------------+---------------------+
|        5 | JOHNNY     | LOLLOBRIGIDA | 2006-02-15 04:34:33 |
|        9 | JOE        | SWANK        | 2006-02-15 04:34:33 |
|       11 | ZERO       | CAGE         | 2006-02-15 04:34:33 |
|       19 | BOB        | FAWCETT      | 2006-02-15 04:34:33 |
|       28 | WOODY      | HOFFMAN      | 2006-02-15 04:34:33 |
|       40 | JOHNNY     | CAGE         | 2006-02-15 04:34:33 |
|       42 | TOM        | MIRANDA      | 2006-02-15 04:34:33 |
|       63 | CAMERON    | WRAY         | 2006-02-15 04:34:33 |
|       78 | GROUCHO    | SINATRA      | 2006-02-15 04:34:33 |
|      114 | MORGAN     | MCDORMAND    | 2006-02-15 04:34:33 |
|      115 | HARRISON   | BALE         | 2006-02-15 04:34:33 |
|      137 | MORGAN     | WILLIAMS     | 2006-02-15 04:34:33 |
|      172 | GROUCHO    | WILLIAMS     | 2006-02-15 04:34:33 |
|      176 | JON        | CHASE        | 2006-02-15 04:34:33 |
|      188 | ROCK       | DUKAKIS      | 2006-02-15 04:34:33 |
|      192 | JOHN       | SUVARI       | 2006-02-15 04:34:33 |
+----------+------------+--------------+---------------------+

```

#### Actores que contengan dos O en su nombre y en una A en su apellido.

```sql
select * from actor where first_name regexp '.*O.*O.*' and last_name regexp 'A';
+----------+------------+-----------+---------------------+
| actor_id | first_name | last_name | last_update         |
+----------+------------+-----------+---------------------+
|       28 | WOODY      | HOFFMAN   | 2006-02-15 04:34:33 |
|       78 | GROUCHO    | SINATRA   | 2006-02-15 04:34:33 |
|      172 | GROUCHO    | WILLIAMS  | 2006-02-15 04:34:33 |
+----------+------------+-----------+---------------------+

```

#### Actores donde su tercera letra sea B.

```sql
select * from actor where first_name regexp '...B';
+----------+------------+-----------+---------------------+
| actor_id | first_name | last_name | last_update         |
+----------+------------+-----------+---------------------+
|       15 | CUBA       | OLIVIER   | 2006-02-15 04:34:33 |
|       19 | BOB        | FAWCETT   | 2006-02-15 04:34:33 |
|      118 | CUBA       | ALLEN     | 2006-02-15 04:34:33 |
|      125 | ALBERT     | NOLTE     | 2006-02-15 04:34:33 |
|      146 | ALBERT     | JOHANSSON | 2006-02-15 04:34:33 |
|      182 | DEBBIE     | AKROYD    | 2006-02-15 04:34:33 |
|      189 | CUBA       | BIRCH     | 2006-02-15 04:34:33 |
+----------+------------+-----------+---------------------+

```

#### Ciudades que empiezan por a.

```sql
select * from city where city regexp '^A';
+---------+-------------------------+------------+---------------------+
| city_id | city                    | country_id | last_update         |
+---------+-------------------------+------------+---------------------+
|       1 | A Coruña (La Coruña)    |         87 | 2006-02-15 04:45:25 |
|       2 | Abha                    |         82 | 2006-02-15 04:45:25 |
|       3 | Abu Dhabi               |        101 | 2006-02-15 04:45:25 |
|       4 | Acuña                   |         60 | 2006-02-15 04:45:25 |
|       5 | Adana                   |         97 | 2006-02-15 04:45:25 |
|       6 | Addis Abeba             |         31 | 2006-02-15 04:45:25 |
|       7 | Aden                    |        107 | 2006-02-15 04:45:25 |
|       8 | Adoni                   |         44 | 2006-02-15 04:45:25 |
|       9 | Ahmadnagar              |         44 | 2006-02-15 04:45:25 |
|      10 | Akishima                |         50 | 2006-02-15 04:45:25 |
|      11 | Akron                   |        103 | 2006-02-15 04:45:25 |
|      12 | al-Ayn                  |        101 | 2006-02-15 04:45:25 |
|      13 | al-Hawiya               |         82 | 2006-02-15 04:45:25 |
|      14 | al-Manama               |         11 | 2006-02-15 04:45:25 |
|      15 | al-Qadarif              |         89 | 2006-02-15 04:45:25 |
|      16 | al-Qatif                |         82 | 2006-02-15 04:45:25 |
|      17 | Alessandria             |         49 | 2006-02-15 04:45:25 |
|      18 | Allappuzha (Alleppey)   |         44 | 2006-02-15 04:45:25 |
|      19 | Allende                 |         60 | 2006-02-15 04:45:25 |
|      20 | Almirante Brown         |          6 | 2006-02-15 04:45:25 |
|      21 | Alvorada                |         15 | 2006-02-15 04:45:25 |
|      22 | Ambattur                |         44 | 2006-02-15 04:45:25 |
|      23 | Amersfoort              |         67 | 2006-02-15 04:45:25 |
|      24 | Amroha                  |         44 | 2006-02-15 04:45:25 |
|      25 | Angra dos Reis          |         15 | 2006-02-15 04:45:25 |
|      26 | Anápolis                |         15 | 2006-02-15 04:45:25 |
|      27 | Antofagasta             |         22 | 2006-02-15 04:45:25 |
|      28 | Aparecida de Goiânia    |         15 | 2006-02-15 04:45:25 |
|      29 | Apeldoorn               |         67 | 2006-02-15 04:45:25 |
|      30 | Araçatuba               |         15 | 2006-02-15 04:45:25 |
|      31 | Arak                    |         46 | 2006-02-15 04:45:25 |
|      32 | Arecibo                 |         77 | 2006-02-15 04:45:25 |
|      33 | Arlington               |        103 | 2006-02-15 04:45:25 |
|      34 | Ashdod                  |         48 | 2006-02-15 04:45:25 |
|      35 | Ashgabat                |         98 | 2006-02-15 04:45:25 |
|      36 | Ashqelon                |         48 | 2006-02-15 04:45:25 |
|      37 | Asunción                |         73 | 2006-02-15 04:45:25 |
|      38 | Athenai                 |         39 | 2006-02-15 04:45:25 |
|      39 | Atšinsk                 |         80 | 2006-02-15 04:45:25 |
|      40 | Atlixco                 |         60 | 2006-02-15 04:45:25 |
|      41 | Augusta-Richmond County |        103 | 2006-02-15 04:45:25 |
|      42 | Aurora                  |        103 | 2006-02-15 04:45:25 |
|      43 | Avellaneda              |          6 | 2006-02-15 04:45:25 |
+---------+-------------------------+------------+---------------------+

```

#### Ciudades que acaban por s.

```sql
select * from city where city regexp 'S$';
+---------+----------------------------+------------+---------------------+
| city_id | city                       | country_id | last_update         |
+---------+----------------------------+------------+---------------------+
|      25 | Angra dos Reis             |         15 | 2006-02-15 04:45:25 |
|      26 | Anápolis                   |         15 | 2006-02-15 04:45:25 |
|      79 | Bilbays                    |         29 | 2006-02-15 04:45:25 |
|     102 | Caracas                    |        104 | 2006-02-15 04:45:25 |
|     118 | Ciomas                     |         45 | 2006-02-15 04:45:25 |
|     120 | Citrus Heights             |        103 | 2006-02-15 04:45:25 |
|     125 | Coatzacoalcos              |         60 | 2006-02-15 04:45:25 |
|     135 | Dallas                     |        103 | 2006-02-15 04:45:25 |
|     137 | Daugavpils                 |         54 | 2006-02-15 04:45:25 |
|     147 | Dos Quebradas              |         24 | 2006-02-15 04:45:25 |
|     190 | Águas Lindas de Goiás      |         15 | 2006-02-15 04:45:25 |
|     212 | Huejutla de Reyes          |         60 | 2006-02-15 04:45:25 |
|     221 | Imus                       |         75 | 2006-02-15 04:45:25 |
|     238 | Jelets                     |         80 | 2006-02-15 04:45:25 |
|     266 | Kilis                      |         97 | 2006-02-15 04:45:25 |
|     297 | Le Mans                    |         34 | 2006-02-15 04:45:25 |
|     330 | Matamoros                  |         60 | 2006-02-15 04:45:25 |
|     333 | Memphis                    |        103 | 2006-02-15 04:45:25 |
|     391 | Ozamis                     |         75 | 2006-02-15 04:45:25 |
|     401 | Patras                     |         39 | 2006-02-15 04:45:25 |
|     413 | Poços de Caldas            |         15 | 2006-02-15 04:45:25 |
|     424 | Quilmes                    |          6 | 2006-02-15 04:45:25 |
|     441 | Saint Louis                |        103 | 2006-02-15 04:45:25 |
|     442 | Saint-Denis                |         79 | 2006-02-15 04:45:25 |
|     446 | Salinas                    |        103 | 2006-02-15 04:45:25 |
|     460 | Santiago de los Caballeros |         27 | 2006-02-15 04:45:25 |
|     482 | Sivas                      |         97 | 2006-02-15 04:45:25 |
|     497 | Springs                    |         85 | 2006-02-15 04:45:25 |
|     499 | Sterling Heights           |        103 | 2006-02-15 04:45:25 |
|     529 | Tarsus                     |         97 | 2006-02-15 04:45:25 |
|     570 | Vilnius                    |         56 | 2006-02-15 04:45:25 |
+---------+----------------------------+------------+---------------------+

```

#### Ciudades del country 61.

```sql
select * from city where country_id=61;
+---------+----------+------------+---------------------+
| city_id | city     | country_id | last_update         |
+---------+----------+------------+---------------------+
|     115 | Chisinau |         61 | 2006-02-15 04:45:25 |
+---------+----------+------------+---------------------+

```

#### Ciudades del country Spain.

```sql
select c.* from city as c join country as co on co.country_id=c.country_id where co.country="Spain";
+---------+-------------------------+------------+---------------------+
| city_id | city                    | country_id | last_update         |
+---------+-------------------------+------------+---------------------+
|       1 | A Coruña (La Coruña)    |         87 | 2006-02-15 04:45:25 |
|     146 | Donostia-San Sebastián  |         87 | 2006-02-15 04:45:25 |
|     181 | Gijón                   |         87 | 2006-02-15 04:45:25 |
|     388 | Ourense (Orense)        |         87 | 2006-02-15 04:45:25 |
|     459 | Santiago de Compostela  |         87 | 2006-02-15 04:45:25 |
+---------+-------------------------+------------+---------------------+

```

#### Ciudades con nombres compuestos.

```sql
select * from country where country regexp ' ';
+------------+---------------------------------------+---------------------+
| country_id | country                               | last_update         |
+------------+---------------------------------------+---------------------+
|          3 | American Samoa                        | 2006-02-15 04:44:00 |
|         25 | Congo, The Democratic Republic of the | 2006-02-15 04:44:00 |
|         26 | Czech Republic                        | 2006-02-15 04:44:00 |
|         27 | Dominican Republic                    | 2006-02-15 04:44:00 |
|         32 | Faroe Islands                         | 2006-02-15 04:44:00 |
|         35 | French Guiana                         | 2006-02-15 04:44:00 |
|         36 | French Polynesia                      | 2006-02-15 04:44:00 |
|         41 | Holy See (Vatican City State)         | 2006-02-15 04:44:00 |
|         42 | Hong Kong                             | 2006-02-15 04:44:00 |
|         68 | New Zealand                           | 2006-02-15 04:44:00 |
|         70 | North Korea                           | 2006-02-15 04:44:00 |
|         77 | Puerto Rico                           | 2006-02-15 04:44:00 |
|         80 | Russian Federation                    | 2006-02-15 04:44:00 |
|         81 | Saint Vincent and the Grenadines      | 2006-02-15 04:44:00 |
|         82 | Saudi Arabia                          | 2006-02-15 04:44:00 |
|         85 | South Africa                          | 2006-02-15 04:44:00 |
|         86 | South Korea                           | 2006-02-15 04:44:00 |
|         88 | Sri Lanka                             | 2006-02-15 04:44:00 |
|        101 | United Arab Emirates                  | 2006-02-15 04:44:00 |
|        102 | United Kingdom                        | 2006-02-15 04:44:00 |
|        103 | United States                         | 2006-02-15 04:44:00 |
|        106 | Virgin Islands, U.S.                  | 2006-02-15 04:44:00 |
+------------+---------------------------------------+---------------------+

```

#### Películas con una duración entre 80 y 100.

```sql
select title from film where length between 80 and 100;
+-------------------------+
| title                   |
+-------------------------+
| ACADEMY DINOSAUR        |
| ALICE FANTASIA          |
| ALONE TRIP              |
| AMISTAD MIDSUMMER       |
| ANACONDA CONFESSIONS    |
| ANNIE IDENTITY          |
| ANTHEM LUKE             |
| ANYTHING SAVANNAH       |
| APACHE DIVINE           |
| ARMAGEDDON LOST         |
| ATTRACTION NEWTON       |
| BANG KWAI               |
| BASIC EASY              |
| BEAST HUNCHBACK         |
| BEHAVIOR RUNAWAY        |
| BEVERLY OUTLAW          |
| BILKO ANONYMOUS         |
| BILL OTHERS             |
| BLACKOUT PRIVATE        |
| BOUND CHEAPER           |
| BUTTERFLY CHOCOLAT      |
| CANYON STOCK            |
| CARIBBEAN LIBERTY       |
| CASABLANCA SUPER        |
| CHEAPER CLYDE           |
| CIRCUS YOUTH            |
| CLASH FREDDY            |
| CLUELESS BUCKET         |
| CONGENIALITY QUEST      |
| CORE SUIT               |
| DAISY MENAGERIE         |
| DARES PLUTO             |
| DARKNESS WAR            |
| DELIVERANCE MULHOLLAND  |
| DESPERATE TRAINSPOTTING |
| DETAILS PACKER          |
| DEVIL DESIRE            |
| DISTURBING SCARFACE     |
| DIVINE RESURRECTION     |
| DRUMS DYNAMITE          |
| EARLY HOME              |
| EARRING INSTINCT        |
| EARTH VISION            |
| EGYPT TENENBAUMS        |
| ENCOUNTERS CURTAIN      |
| ENDING CROWDS           |
| EXPENDABLE STALLION     |
| FATAL HAUNTED           |
| FEUD FROGMEN            |
| FIGHT JAWBREAKER        |
| FLAMINGOS CONNECTICUT   |
| FLATLINERS KILLER       |
| FORWARD TEMPLE          |
| FRENCH HOLIDAY          |
| FROST HEAD              |
| FUGITIVE MAGUIRE        |
| FULL FLATLINERS         |
| GANDHI KWAI             |
| GARDEN ISLAND           |
| GHOST GROUNDHOG         |
| GLEAMING JAWBREAKER     |
| GOLDFINGER SENSIBILITY  |
| GONE TROUBLE            |
| GRAIL FRANKENSTEIN      |
| GREATEST NORTH          |
| GUN BONNIE              |
| GUYS FALCON             |
| HAPPINESS UNITED        |
| HIGH ENCINO             |
| HILLS NEIGHBORS         |
| HOLY TADPOLE            |
| HONEY TIES              |
| HORN WORKING            |
| HUSTLER PARTY           |
| HYDE DOCTOR             |
| IDOLS SNATCHERS         |
| INVASION CYCLONE        |
| ISLAND EXORCIST         |
| JEEPERS WEDDING         |
| KANE EXORCIST           |
| LICENSE WEEKEND         |
| LOLA AGENT              |
| LOSER HUSTLER           |
| LOST BIRD               |
| LUCKY FLYING            |
| MADRE GABLES            |
| MEET CHOCOLATE          |
| MIDNIGHT WESTWARD       |
| MOON BUNCH              |
| MYSTIC TRUMAN           |
| NATIONAL STORY          |
| NONE SPIKING            |
| OPPOSITE NECKLACE       |
| OZ LIAISONS             |
| PACKER MADIGAN          |
| PANKY SUBMARINE         |
| PATIENT SISTER          |
| PEAK FOREVER            |
| PERDITION FARGO         |
| PERFECT GROOVE          |
| PET HAUNTING            |
| PIRATES ROXANNE         |
| PLUTO OLEANDER          |
| PREJUDICE OLEANDER      |
| PULP BEVERLY            |
| PUNK DIVORCE            |
| PURPLE MOVIE            |
| RAIDERS ANTITRUST       |
| REAR TRADING            |
| REIGN GENTLEMEN         |
| ROMAN PUNK              |
| ROOTS REMEMBER          |
| SABRINA MIDNIGHT        |
| SADDLE ANTITRUST        |
| SAVANNAH TOWN           |
| SEA VIRGIN              |
| SECRET GROUNDHOG        |
| SENSIBILITY REAR        |
| SHANE DARKNESS          |
| SHAWSHANK BUBBLE        |
| SLEUTH ORIENT           |
| SLING LUKE              |
| STAGE WORLD             |
| STING PERSONAL          |
| STONE FIRE              |
| SUICIDES SILENCE        |
| SUNDANCE INVASION       |
| TARZAN VIDEOTAPE        |
| TENENBAUMS COMMAND      |
| TERMINATOR CLUB         |
| TITANS JERK             |
| TREATMENT JEKYLL        |
| TRUMAN CRAZY            |
| TURN STAR               |
| TYCOON GATHERING        |
| UPTOWN YOUNG            |
| VARSITY TRIP            |
| VERTIGO NORTHWEST       |
| WAR NOTTING             |
| WARLOCK WEREWOLF        |
| WASTELAND DIVINE        |
| WINDOW SIDE             |
| WISDOM WORKER           |
| WITCHES PANIC           |
| WONKA SEA               |
| WYOMING STORM           |
| YENTL IDAHO             |
+-------------------------+

```

#### Peliculas con un rental_rate entre 1 y 3.

```sql
select title from film where rental_rate between 1 and 3;
+-----------------------------+
| title                       |
+-----------------------------+
| ADAPTATION HOLES            |
| AFFAIR PREJUDICE            |
| AFRICAN EGG                 |
| AGENT TRUMAN                |
| ALABAMA DEVIL               |
| ALIEN CENTER                |
| ALLEY EVOLUTION             |
| AMISTAD MIDSUMMER           |
| ANALYZE HOOSIERS            |
| ANGELS LIFE                 |
| ANTITRUST TOMATOES          |
| ANYTHING SAVANNAH           |
| APOLLO TEEN                 |
| ARACHNOPHOBIA ROLLERCOASTER |
| ARIZONA BANG                |
| ARTIST COLDBLOODED          |
| ATLANTIS CAUSE              |
| BADMAN DAWN                 |
| BAKED CLEOPATRA             |
| BALLOON HOMEWARD            |
| BANG KWAI                   |
| BARBARELLA STREETCAR        |
| BAREFOOT MANCHURIAN         |
| BASIC EASY                  |
| BEACH HEARTBREAKERS         |
| BEAR GRACELAND              |
| BED HIGHBALL                |
| BERETS AGENT                |
| BEVERLY OUTLAW              |
| BILL OTHERS                 |
| BINGO TALENTED              |
| BLACKOUT PRIVATE            |
| BLANKET BEVERLY             |
| BLUES INSTINCT              |
| BRAVEHEART HUMAN            |
| BREAKING HOME               |
| BRINGING HYSTERICAL         |
| BUGSY SONG                  |
| BULWORTH COMMANDMENTS       |
| BUNCH MINDS                 |
| CAMPUS REMEMBER             |
| CANDIDATE PERDITION         |
| CAROL TEXAS                 |
| CASSIDY WYOMING             |
| CAUSE DATE                  |
| CHANCE RESURRECTION         |
| CHAPLIN LICENSE             |
| CHARADE DUFFEL              |
| CHARIOTS CONSPIRACY         |
| CHITTY LOCK                 |
| CHOCOLATE DUCK              |
| CIDER DESIRE                |
| CIRCUS YOUTH                |
| CLASH FREDDY                |
| CLONES PINOCCHIO            |
| CLUELESS BUCKET             |
| COLOR PHILADELPHIA          |
| COMFORTS RUSH               |
| CONFUSED CANDLES            |
| CONSPIRACY SPIRIT           |
| CONTACT ANONYMOUS           |
| CORE SUIT                   |
| COWBOY DOOM                 |
| CRANES RESERVOIR            |
| CRAZY HOME                  |
| CROSSROADS CASUALTIES       |
| CRUSADE HONEY               |
| CRYSTAL BREAKING            |
| CUPBOARD SINNERS            |
| CYCLONE FAMILY              |
| DARES PLUTO                 |
| DARKNESS WAR                |
| DEER VIRGINIAN              |
| DESIRE ALIEN                |
| DIARY PANIC                 |
| DINOSAUR SECRETARY          |
| DIRTY ACE                   |
| DISTURBING SCARFACE         |
| DIVIDE MONSTER              |
| DIVINE RESURRECTION         |
| DIVORCE SHINING             |
| DOCTOR GRAIL                |
| DOLLS RAGE                  |
| DREAM PICKUP                |
| DRIVER ANNIE                |
| DUCK RACER                  |
| DWARFS ALTER                |
| EGG IGBY                    |
| ENOUGH RAGING               |
| ESCAPE METROPOLIS           |
| EXORCIST STING              |
| EXPRESS LONELY              |
| EXTRAORDINARY CONQUERER     |
| EYES DRIVING                |
| FANTASIA PARK               |
| FARGO GANDHI                |
| FATAL HAUNTED               |
| FERRIS MOTHER               |
| FISH OPUS                   |
| FLATLINERS KILLER           |
| FLOATS GARDEN               |
| FLYING HOOK                 |
| FOREVER CANDIDATE           |
| FORREST SONS                |
| FORWARD TEMPLE              |
| FREAKY POCUS                |
| FRIDA SLIPPER               |
| FULL FLATLINERS             |
| GANGS PRIDE                 |
| GASLIGHT CRUSADE            |
| GENTLEMEN STAGE             |
| GIANT TROOPERS              |
| GLEAMING JAWBREAKER         |
| GLORY TRACY                 |
| GODFATHER DIARY             |
| GONE TROUBLE                |
| GORGEOUS BINGO              |
| GRADUATE LORD               |
| GRAIL FRANKENSTEIN          |
| GREATEST NORTH              |
| GREEK EVERYONE              |
| GUNFIGHTER MUSSOLINI        |
| HALF OUTFIELD               |
| HALLOWEEN NUTS              |
| HAMLET WISDOM               |
| HANKY OCTOBER               |
| HAPPINESS UNITED            |
| HARDLY ROBBERS              |
| HEAVEN FREEDOM              |
| HEDWIG ALTER                |
| HELLFIGHTERS SIERRA         |
| HIGH ENCINO                 |
| HOCUS FRIDA                 |
| HOMICIDE PEACH              |
| HOOSIERS BIRDCAGE           |
| HOPE TOOTSIE                |
| HORN WORKING                |
| HOUSE DYNAMITE              |
| HUMAN GRAFFITI              |
| HUNTER ALTER                |
| HUNTING MUSKETEERS          |
| HURRICANE AFFAIR            |
| HYDE DOCTOR                 |
| ICE CROSSING                |
| IDAHO LOVE                  |
| IDENTITY LOVER              |
| IDOLS SNATCHERS             |
| IMAGE PRINCESS              |
| INSIDER ARIZONA             |
| INSTINCT AIRPORT            |
| INTENTIONS EMPIRE           |
| INVASION CYCLONE            |
| ISLAND EXORCIST             |
| JACKET FRISCO               |
| JADE BUNCH                  |
| JASON TRAP                  |
| JAWS HARRY                  |
| JEEPERS WEDDING             |
| JEKYLL FROGMEN              |
| JERICHO MULAN               |
| JERK PAYCHECK               |
| JUMANJI BLADE               |
| KENTUCKIAN GIANT            |
| KILLER INNOCENT             |
| KNOCK WARLOCK               |
| KRAMER CHOCOLATE            |
| LABYRINTH LEAGUE            |
| LEATHERNECKS DWARFS         |
| LEBOWSKI SOLDIERS           |
| LIBERTY MAGNIFICENT         |
| LICENSE WEEKEND             |
| LIFE TWISTED                |
| LOCK REAR                   |
| LOLITA WORLD                |
| LONELY ELEPHANT             |
| LORD ARIZONA                |
| LOST BIRD                   |
| LOVELY JINGLE               |
| LOVER TRUMAN                |
| LUCK OPUS                   |
| LUCKY FLYING                |
| LUKE MUMMY                  |
| LUST LOCK                   |
| MADISON TRAP                |
| MADRE GABLES                |
| MAGNIFICENT CHITTY          |
| MAGUIRE APACHE              |
| MALKOVICH PET               |
| MANCHURIAN CURTAIN          |
| MANNEQUIN WORST             |
| MARRIED GO                  |
| MASK PEACH                  |
| MASSAGE IMAGE               |
| MEET CHOCOLATE              |
| MENAGERIE RUSHMORE          |
| METAL ARMAGEDDON            |
| METROPOLIS COMA             |
| MICROCOSMOS PARADISE        |
| MIGHTY LUCK                 |
| MIRACLE VIRTUAL             |
| MIXED DOORS                 |
| MONEY HAROLD                |
| MONSTER SPARTACUS           |
| MULHOLLAND BEAST            |
| MURDER ANTITRUST            |
| MUSCLE BRIGHT               |
| MUSSOLINI SPOILERS          |
| NASH CHOCOLAT               |
| NATIONAL STORY              |
| NEMO CAMPUS                 |
| NETWORK PEAK                |
| NOON PAPI                   |
| NORTHWEST POLISH            |
| OPERATION OPERATION         |
| ORDER BETRAYED              |
| ORIENT CLOSER               |
| OSCAR GOLD                  |
| OTHERS SOUP                 |
| OZ LIAISONS                 |
| PARADISE SABRINA            |
| PARIS WEEKEND               |
| PARTY KNOCK                 |
| PATRIOT ROMAN               |
| PATTON INTERVIEW            |
| PEACH INNOCENT              |
| PEARL DESTINY               |
| PERFECT GROOVE              |
| PHANTOM GLORY               |
| PICKUP DRIVING              |
| PILOT HOOSIERS              |
| PIZZA JUMANJI               |
| POLLOCK DELIVERANCE         |
| POND SEATTLE                |
| POTLUCK MIXED               |
| POTTER CONNECTICUT          |
| PRINCESS GIANT              |
| PRIX UNDEFEATED             |
| PSYCHO SHRUNK               |
| PULP BEVERLY                |
| PURE RUNNER                 |
| PURPLE MOVIE                |
| QUEST MUSSOLINI             |
| RACER EGG                   |
| RANDOM GO                   |
| REAP UNFAITHFUL             |
| REDEMPTION COMFORTS         |
| REIGN GENTLEMEN             |
| REMEMBER DIARY              |
| RESERVOIR ADAPTATION        |
| RIDER CADDYSHACK            |
| ROBBERS JOON                |
| ROLLERCOASTER BRINGING      |
| RUSHMORE MERMAID            |
| SADDLE ANTITRUST            |
| SAGEBRUSH CLUELESS          |
| SAINTS BRIDE                |
| SALUTE APOLLO               |
| SAMURAI LION                |
| SANTA PARIS                 |
| SCISSORHANDS SLUMS          |
| SEA VIRGIN                  |
| SEABISCUIT PUNK             |
| SEARCHERS WAIT              |
| SHAKESPEARE SADDLE          |
| SHANE DARKNESS              |
| SHANGHAI TYCOON             |
| SHIP WONDERLAND             |
| SHOCK CABIN                 |
| SHREK LICENSE               |
| SHRUNK DIVINE               |
| SINNERS ATLANTIS            |
| SKY MIRACLE                 |
| SLEEPY JAPANESE             |
| SMILE EARRING               |
| SNATCHERS MONTEZUMA         |
| SONS INTERVIEW              |
| SOUTH WAIT                  |
| SPEAKEASY DATE              |
| SPIKING ELEMENT             |
| SPINAL ROCKY                |
| SPY MILE                    |
| SQUAD FISH                  |
| STAGE WORLD                 |
| STAR OPERATION              |
| STATE WASTELAND             |
| STOCK GLASS                 |
| STRICTLY SCARFACE           |
| SUSPECTS QUILLS             |
| SWEET BROTHERHOOD           |
| TADPOLE PARK                |
| TARZAN VIDEOTAPE            |
| TELEMARK HEARTBREAKERS      |
| TOMORROW HUSTLER            |
| TOWN ARK                    |
| TROJAN TOMORROW             |
| TROUBLE DATE                |
| TURN STAR                   |
| TUXEDO MILE                 |
| UNCUT SUICIDES              |
| UNFAITHFUL KILL             |
| UNTOUCHABLES SUNRISE        |
| UPRISING UPTOWN             |
| UPTOWN YOUNG                |
| VACATION BOONDOCK           |
| VANISHING ROCKY             |
| VARSITY TRIP                |
| VERTIGO NORTHWEST           |
| WAGON JAWS                  |
| WARDROBE PHANTOM            |
| WARLOCK WEREWOLF            |
| WARS PLUTO                  |
| WASTELAND DIVINE            |
| WEEKEND PERSONAL            |
| WILLOW TRACY                |
| WINDOW SIDE                 |
| WON DARES                   |
| WONDERFUL DROP              |
| WONKA SEA                   |
| WORDS HUNTER                |
| WORKER TARZAN               |
| WORST BANGER                |
| WRONG BEHAVIOR              |
| ZOOLANDER FICTION           |
+-----------------------------+

```

#### Películas con un titulo de más de 12 letras.

```sql
select title from film where title regexp '.{12,}';
+-----------------------------+
| title                       |
+-----------------------------+
| ACADEMY DINOSAUR            |
| ACE GOLDFINGER              |
| ADAPTATION HOLES            |
| AFFAIR PREJUDICE            |
| AGENT TRUMAN                |
| AIRPLANE SIERRA             |
| AIRPORT POLLOCK             |
| ALABAMA DEVIL               |
| ALADDIN CALENDAR            |
| ALAMO VIDEOTAPE             |
| ALASKA PHANTOM              |
| ALICE FANTASIA              |
| ALIEN CENTER                |
| ALLEY EVOLUTION             |
| ALTER VICTORY               |
| AMADEUS HOLY                |
| AMELIE HELLFIGHTERS         |
| AMERICAN CIRCUS             |
| AMISTAD MIDSUMMER           |
| ANACONDA CONFESSIONS        |
| ANALYZE HOOSIERS            |
| ANNIE IDENTITY              |
| ANONYMOUS HUMAN             |
| ANTITRUST TOMATOES          |
| ANYTHING SAVANNAH           |
| APACHE DIVINE               |
| APOCALYPSE FLAMINGOS        |
| ARABIA DOGMA                |
| ARACHNOPHOBIA ROLLERCOASTER |
| ARGONAUTS TOWN              |
| ARIZONA BANG                |
| ARK RIDGEMONT               |
| ARMAGEDDON LOST             |
| ARMY FLINTSTONES            |
| ARSENIC INDEPENDENCE        |
| ARTIST COLDBLOODED          |
| ATLANTIS CAUSE              |
| ATTACKS HATE                |
| ATTRACTION NEWTON           |
| BACKLASH UNDEFEATED         |
| BAKED CLEOPATRA             |
| BALLOON HOMEWARD            |
| BALLROOM MOCKINGBIRD        |
| BANGER PINOCCHIO            |
| BARBARELLA STREETCAR        |
| BAREFOOT MANCHURIAN         |
| BEACH HEARTBREAKERS         |
| BEAR GRACELAND              |
| BEAST HUNCHBACK             |
| BEAUTY GREASE               |
| BED HIGHBALL                |
| BEDAZZLED MARRIED           |
| BEETHOVEN EXORCIST          |
| BEHAVIOR RUNAWAY            |
| BENEATH RUSH                |
| BERETS AGENT                |
| BETRAYED REAR               |
| BEVERLY OUTLAW              |
| BIKINI BORROWERS            |
| BILKO ANONYMOUS             |
| BINGO TALENTED              |
| BIRCH ANTITRUST             |
| BIRD INDEPENDENCE           |
| BIRDCAGE CASPER             |
| BIRDS PERDITION             |
| BLACKOUT PRIVATE            |
| BLADE POLISH                |
| BLANKET BEVERLY             |
| BLINDNESS GUN               |
| BLOOD ARGONAUTS             |
| BLUES INSTINCT              |
| BOILED DARES                |
| BONNIE HOLOCAUST            |
| BOOGIE AMELIE               |
| BOONDOCK BALLROOM           |
| BORROWERS BEDAZZLED         |
| BOULEVARD MOB               |
| BOUND CHEAPER               |
| BOWFINGER GABLES            |
| BRANNIGAN SUNRISE           |
| BRAVEHEART HUMAN            |
| BREAKFAST GOLDFINGER        |
| BREAKING HOME               |
| BRIDE INTRIGUE              |
| BRIGHT ENCOUNTERS           |
| BRINGING HYSTERICAL         |
| BROOKLYN DESERT             |
| BROTHERHOOD BLANKET         |
| BUBBLE GROSSE               |
| BUCKET BROTHERHOOD          |
| BULL SHAWSHANK              |
| BULWORTH COMMANDMENTS       |
| BUTCH PANTHER               |
| BUTTERFLY CHOCOLAT          |
| CADDYSHACK JEDI             |
| CALENDAR GUNFIGHT           |
| CALIFORNIA BIRDS            |
| CAMELOT VACATION            |
| CAMPUS REMEMBER             |
| CANDIDATE PERDITION         |
| CANDLES GRAPES              |
| CANYON STOCK                |
| CAPER MOTIONS               |
| CARIBBEAN LIBERTY           |
| CARRIE BUNCH                |
| CASABLANCA SUPER            |
| CASPER DRAGONFLY            |
| CASSIDY WYOMING             |
| CASUALTIES ENCINO           |
| CAT CONEHEADS               |
| CATCH AMISTAD               |
| CELEBRITY HORN              |
| CENTER DINOSAUR             |
| CHAINSAW UPTOWN             |
| CHAMBER ITALIAN             |
| CHAMPION FLATLINERS         |
| CHANCE RESURRECTION         |
| CHAPLIN LICENSE             |
| CHARADE DUFFEL              |
| CHARIOTS CONSPIRACY         |
| CHASING FIGHT               |
| CHEAPER CLYDE               |
| CHICAGO NORTH               |
| CHICKEN HELLFIGHTERS        |
| CHINATOWN GLADIATOR         |
| CHISUM BEHAVIOR             |
| CHOCOLAT HARRY              |
| CHOCOLATE DUCK              |
| CHRISTMAS MOONSHINE         |
| CIDER DESIRE                |
| CINCINATTI WHISPERER        |
| CIRCUS YOUTH                |
| CITIZEN SHREK               |
| CLASH FREDDY                |
| CLEOPATRA DEVIL             |
| CLERKS ANGELS               |
| CLOCKWORK PARADISE          |
| CLONES PINOCCHIO            |
| CLUB GRAFFITI               |
| CLUELESS BUCKET             |
| CLYDE THEORY                |
| COAST RAINBOW               |
| COLDBLOODED DARLING         |
| COLOR PHILADELPHIA          |
| COMANCHEROS ENEMY           |
| COMFORTS RUSH               |
| COMMAND DARLING             |
| COMMANDMENTS EXPRESS        |
| CONEHEADS SMOOCHY           |
| CONFESSIONS MAGUIRE         |
| CONFIDENTIAL INTERVIEW      |
| CONFUSED CANDLES            |
| CONGENIALITY QUEST          |
| CONNECTICUT TRAMP           |
| CONNECTION MICROCOSMOS      |
| CONQUERER NUTS              |
| CONSPIRACY SPIRIT           |
| CONTACT ANONYMOUS           |
| CONTROL ANTHEM              |
| CONVERSATION DOWNHILL       |
| CRAFT OUTFIELD              |
| CRANES RESERVOIR            |
| CREATURES SHAKESPEARE       |
| CREEPERS KANE               |
| CROOKED FROGMEN             |
| CROSSING DIVORCE            |
| CROSSROADS CASUALTIES       |
| CROWDS TELEMARK             |
| CRUELTY UNFORGIVEN          |
| CRUSADE HONEY               |
| CRYSTAL BREAKING            |
| CUPBOARD SINNERS            |
| CURTAIN VIDEOTAPE           |
| CYCLONE FAMILY              |
| DADDY PITTSBURGH            |
| DAISY MENAGERIE             |
| DALMATIONS SWEDEN           |
| DANCING FEVER               |
| DANGEROUS UPTOWN            |
| DARKNESS WAR                |
| DARKO DORADO                |
| DARLING BREAKING            |
| DARN FORRESTER              |
| DAUGHTER MADIGAN            |
| DAY UNFAITHFUL              |
| DECEIVER BETRAYED           |
| DEEP CRUSADE                |
| DEER VIRGINIAN              |
| DELIVERANCE MULHOLLAND      |
| DESERT POSEIDON             |
| DESIRE ALIEN                |
| DESPERATE TRAINSPOTTING     |
| DESTINATION JERK            |
| DESTINY SATURDAY            |
| DETAILS PACKER              |
| DETECTIVE VISION            |
| DEVIL DESIRE                |
| DINOSAUR SECRETARY          |
| DISCIPLE MOTHER             |
| DISTURBING SCARFACE         |
| DIVIDE MONSTER              |
| DIVINE RESURRECTION         |
| DIVORCE SHINING             |
| DOCTOR GRAIL                |
| DOGMA FAMILY                |
| DONNIE ALLEY                |
| DOOM DANCING                |
| DOORS PRESIDENT             |
| DORADO NOTTING              |
| DOUBLE WRATH                |
| DOUBTFIRE LABYRINTH         |
| DOWNHILL ENOUGH             |
| DRACULA CRYSTAL             |
| DRAGON SQUAD                |
| DRAGONFLY STRANGERS         |
| DREAM PICKUP                |
| DRIFTER COMMANDMENTS        |
| DRIVER ANNIE                |
| DRIVING POLISH              |
| DROP WATERFRONT             |
| DRUMLINE CYCLONE            |
| DRUMS DYNAMITE              |
| DUDE BLINDNESS              |
| DUFFEL APOCALYPSE           |
| DURHAM PANKY                |
| DWARFS ALTER                |
| DYNAMITE TARZAN             |
| EAGLES PANKY                |
| EARRING INSTINCT            |
| EARTH VISION                |
| EASY GLADIATOR              |
| EDGE KISSING                |
| EFFECT GLADIATOR            |
| EGYPT TENENBAUMS            |
| ELEMENT FREDDY              |
| ELEPHANT TROJAN             |
| ELIZABETH SHANE             |
| EMPIRE MALKOVICH            |
| ENCOUNTERS CURTAIN          |
| ENDING CROWDS               |
| ENGLISH BULWORTH            |
| ENOUGH RAGING               |
| ENTRAPMENT SATISFACTION     |
| ESCAPE METROPOLIS           |
| EVE RESURRECTION            |
| EVERYONE CRAFT              |
| EVOLUTION ALTER             |
| EXCITEMENT EVE              |
| EXORCIST STING              |
| EXPECATIONS NATURAL         |
| EXPENDABLE STALLION         |
| EXPRESS LONELY              |
| EXTRAORDINARY CONQUERER     |
| EYES DRIVING                |
| FACTORY DRAGON              |
| FALCON VOLUME               |
| FAMILY SWEET                |
| FANTASIA PARK               |
| FANTASY TROOPERS            |
| FARGO GANDHI                |
| FATAL HAUNTED               |
| FEATHERS METAL              |
| FELLOWSHIP AUTUMN           |
| FERRIS MOTHER               |
| FEUD FROGMEN                |
| FEVER EMPIRE                |
| FICTION CHRISTMAS           |
| FIDDLER LOST                |
| FIDELITY DEVIL              |
| FIGHT JAWBREAKER            |
| FINDING ANACONDA            |
| FIREBALL PHILADELPHIA       |
| FIREHOUSE VIETNAM           |
| FLAMINGOS CONNECTICUT       |
| FLATLINERS KILLER           |
| FLINTSTONES HAPPINESS       |
| FLOATS GARDEN               |
| FOOL MOCKINGBIRD            |
| FOREVER CANDIDATE           |
| FORREST SONS                |
| FORRESTER COMANCHEROS       |
| FORWARD TEMPLE              |
| FRANKENSTEIN STRANGER       |
| FREAKY POCUS                |
| FREDDY STORM                |
| FREEDOM CLEOPATRA           |
| FRENCH HOLIDAY              |
| FRIDA SLIPPER               |
| FRISCO FORREST              |
| FROGMEN BREAKING            |
| FRONTIER CABIN              |
| FUGITIVE MAGUIRE            |
| FULL FLATLINERS             |
| GABLES METROPOLIS           |
| GALAXY SWEETHEARTS          |
| GAMES BOWFINGER             |
| GARDEN ISLAND               |
| GASLIGHT CRUSADE            |
| GATHERING CALENDAR          |
| GENTLEMEN STAGE             |
| GHOST GROUNDHOG             |
| GHOSTBUSTERS ELF            |
| GIANT TROOPERS              |
| GILBERT PELICAN             |
| GILMORE BOILED              |
| GLADIATOR WESTWARD          |
| GLEAMING JAWBREAKER         |
| GODFATHER DIARY             |
| GOLDFINGER SENSIBILITY      |
| GOLDMINE TYCOON             |
| GONE TROUBLE                |
| GOODFELLAS SALUTE           |
| GORGEOUS BINGO              |
| GOSFORD DONNIE              |
| GRACELAND DYNAMITE          |
| GRADUATE LORD               |
| GRAFFITI LOVE               |
| GRAIL FRANKENSTEIN          |
| GREASE YOUTH                |
| GREATEST NORTH              |
| GREEDY ROOTS                |
| GREEK EVERYONE              |
| GRINCH MASSAGE              |
| GRIT CLOCKWORK              |
| GROOVE FICTION              |
| GROSSE WONDERFUL            |
| GROUNDHOG UNCUT             |
| GUNFIGHT MOON               |
| GUNFIGHTER MUSSOLINI        |
| HALF OUTFIELD               |
| HALL CASSIDY                |
| HALLOWEEN NUTS              |
| HAMLET WISDOM               |
| HANDICAP BOONDOCK           |
| HANGING DEEP                |
| HANKY OCTOBER               |
| HANOVER GALAXY              |
| HAPPINESS UNITED            |
| HARDLY ROBBERS              |
| HAROLD FRENCH               |
| HARPER DYING                |
| HATE HANDICAP               |
| HAUNTED ANTITRUST           |
| HAUNTING PIANIST            |
| HEAD STRANGER               |
| HEARTBREAKERS BRIGHT        |
| HEAVEN FREEDOM              |
| HEAVENLY GUN                |
| HEAVYWEIGHTS BEAST          |
| HEDWIG ALTER                |
| HELLFIGHTERS SIERRA         |
| HIGHBALL POTTER             |
| HILLS NEIGHBORS             |
| HOBBIT ALIEN                |
| HOLES BRANNIGAN             |
| HOLIDAY GAMES               |
| HOLLOW JEOPARDY             |
| HOLLYWOOD ANONYMOUS         |
| HOLOCAUST HIGHBALL          |
| HOLY TADPOLE                |
| HOMEWARD CIDER              |
| HOMICIDE PEACH              |
| HOOK CHARIOTS               |
| HOOSIERS BIRDCAGE           |
| HOPE TOOTSIE                |
| HORN WORKING                |
| HORROR REIGN                |
| HOTEL HAPPINESS             |
| HOUSE DYNAMITE              |
| HUMAN GRAFFITI              |
| HUNCHBACK IMPOSSIBLE        |
| HUNTER ALTER                |
| HUNTING MUSKETEERS          |
| HURRICANE AFFAIR            |
| HUSTLER PARTY               |
| HYSTERICAL GRAIL            |
| ICE CROSSING                |
| IDENTITY LOVER              |
| IDOLS SNATCHERS             |
| ILLUSION AMELIE             |
| IMAGE PRINCESS              |
| IMPACT ALADDIN              |
| IMPOSSIBLE PREJUDICE        |
| INDEPENDENCE HOTEL          |
| INFORMER DOUBLE             |
| INNOCENT USUAL              |
| INSECTS STONE               |
| INSIDER ARIZONA             |
| INSTINCT AIRPORT            |
| INTENTIONS EMPIRE           |
| INTERVIEW LIAISONS          |
| INTOLERABLE INTENTIONS      |
| INTRIGUE WORST              |
| INVASION CYCLONE            |
| ISHTAR ROCKETEER            |
| ISLAND EXORCIST             |
| ITALIAN AFRICAN             |
| JACKET FRISCO               |
| JAPANESE RUN                |
| JAWBREAKER BROOKLYN         |
| JEDI BENEATH                |
| JEEPERS WEDDING             |
| JEKYLL FROGMEN              |
| JEOPARDY ENCINO             |
| JERICHO MULAN               |
| JERK PAYCHECK               |
| JERSEY SASSY                |
| JET NEIGHBORS               |
| JINGLE SAGEBRUSH            |
| JOON NORTHWEST              |
| JUGGLER HARDLY              |
| JUMANJI BLADE               |
| JUMPING WRATH               |
| JUNGLE CLOSER               |
| KANE EXORCIST               |
| KENTUCKIAN GIANT            |
| KICK SAVANNAH               |
| KILL BROTHERHOOD            |
| KILLER INNOCENT             |
| KING EVOLUTION              |
| KISSING DOLLS               |
| KNOCK WARLOCK               |
| KRAMER CHOCOLATE            |
| KWAI HOMEWARD               |
| LABYRINTH LEAGUE            |
| LADYBUGS ARMAGEDDON         |
| LAMBS CINCINATTI            |
| LANGUAGE COWBOY             |
| LAWLESS VISION              |
| LAWRENCE LOVE               |
| LEAGUE HELLFIGHTERS         |
| LEATHERNECKS DWARFS         |
| LEBOWSKI SOLDIERS           |
| LEGALLY SECRETARY           |
| LESSON CLEOPATRA            |
| LIAISONS SWEET              |
| LIBERTY MAGNIFICENT         |
| LICENSE WEEKEND             |
| LIES TREATMENT              |
| LIFE TWISTED                |
| LOATHING LEGALLY            |
| LOLITA WORLD                |
| LONELY ELEPHANT             |
| LORD ARIZONA                |
| LOSER HUSTLER               |
| LOUISIANA HARRY             |
| LOVE SUICIDES               |
| LOVELY JINGLE               |
| LOVER TRUMAN                |
| LOVERBOY ATTACKS            |
| LUCKY FLYING                |
| MADIGAN DORADO              |
| MADISON TRAP                |
| MADNESS ATTACKS             |
| MADRE GABLES                |
| MAGIC MALLRATS              |
| MAGNIFICENT CHITTY          |
| MAGNOLIA FORRESTER          |
| MAGUIRE APACHE              |
| MAJESTIC FLOATS             |
| MAKER GABLES                |
| MALKOVICH PET               |
| MALLRATS UNITED             |
| MALTESE HOPE                |
| MANCHURIAN CURTAIN          |
| MANNEQUIN WORST             |
| MASKED BUBBLE               |
| MASSACRE USUAL              |
| MASSAGE IMAGE               |
| MATRIX SNOWMAN              |
| MEET CHOCOLATE              |
| MEMENTO ZOOLANDER           |
| MENAGERIE RUSHMORE          |
| MERMAID INSECTS             |
| METAL ARMAGEDDON            |
| METROPOLIS COMA             |
| MICROCOSMOS PARADISE        |
| MIDNIGHT WESTWARD           |
| MIDSUMMER GROUNDHOG         |
| MINDS TRUMAN                |
| MINORITY KISS               |
| MIRACLE VIRTUAL             |
| MISSION ZOOLANDER           |
| MOCKINGBIRD HOLLYWOOD       |
| MOD SECRETARY               |
| MODERN DORADO               |
| MONEY HAROLD                |
| MONSOON CAUSE               |
| MONSTER SPARTACUS           |
| MONTEREY LABYRINTH          |
| MONTEZUMA COMMAND           |
| MOONSHINE CABIN             |
| MOONWALKER FOOL             |
| MOSQUITO ARMAGEDDON         |
| MOTHER OLEANDER             |
| MOTIONS DETAILS             |
| MOURNING PURPLE             |
| MOVIE SHAKESPEARE           |
| MULHOLLAND BEAST            |
| MUMMY CREATURES             |
| MURDER ANTITRUST            |
| MUSCLE BRIGHT               |
| MUSIC BOONDOCK              |
| MUSKETEERS WAIT             |
| MUSSOLINI SPOILERS          |
| MYSTIC TRUMAN               |
| NAME DETECTIVE              |
| NASH CHOCOLAT               |
| NATIONAL STORY              |
| NATURAL STOCK               |
| NECKLACE OUTBREAK           |
| NEIGHBORS CHARADE           |
| NETWORK PEAK                |
| NEWSIES STORY               |
| NEWTON LABYRINTH            |
| NIGHTMARE CHILL             |
| NONE SPIKING                |
| NORTH TEQUILA               |
| NORTHWEST POLISH            |
| NOTORIOUS REUNION           |
| NOTTING SPEAKEASY           |
| NOVOCAINE FLIGHT            |
| OCTOBER SUBMARINE           |
| OKLAHOMA JUMANJI            |
| OLEANDER CLUE               |
| OPEN AFRICAN                |
| OPERATION OPERATION         |
| OPPOSITE NECKLACE           |
| ORANGE GRAPES               |
| ORDER BETRAYED              |
| ORIENT CLOSER               |
| OUTBREAK DIVINE             |
| OUTFIELD MASSACRE           |
| OUTLAW HANKY                |
| PACIFIC AMISTAD             |
| PACKER MADIGAN              |
| PAJAMA JAWBREAKER           |
| PANKY SUBMARINE             |
| PANTHER REDS                |
| PAPI NECKLACE               |
| PARADISE SABRINA            |
| PARIS WEEKEND               |
| PARK CITIZEN                |
| PAST SUICIDES               |
| PATHS CONTROL               |
| PATIENT SISTER              |
| PATRIOT ROMAN               |
| PATTON INTERVIEW            |
| PAYCHECK WAIT               |
| PEACH INNOCENT              |
| PEAK FOREVER                |
| PEARL DESTINY               |
| PELICAN COMFORTS            |
| PERDITION FARGO             |
| PERFECT GROOVE              |
| PERSONAL LADYBUGS           |
| PET HAUNTING                |
| PHANTOM GLORY               |
| PHILADELPHIA WIFE           |
| PIANIST OUTFIELD            |
| PICKUP DRIVING              |
| PILOT HOOSIERS              |
| PINOCCHIO SIMON             |
| PIRATES ROXANNE             |
| PITTSBURGH HUNCHBACK        |
| PIZZA JUMANJI               |
| PLATOON INSTINCT            |
| PLUTO OLEANDER              |
| POLISH BROOKLYN             |
| POLLOCK DELIVERANCE         |
| POND SEATTLE                |
| POSEIDON FOREVER            |
| POTLUCK MIXED               |
| POTTER CONNECTICUT          |
| PREJUDICE OLEANDER          |
| PRESIDENT BANG              |
| PRIMARY GLASS               |
| PRINCESS GIANT              |
| PRIVATE DROP                |
| PRIX UNDEFEATED             |
| PSYCHO SHRUNK               |
| PULP BEVERLY                |
| PUNK DIVORCE                |
| PURPLE MOVIE                |
| QUEST MUSSOLINI             |
| RAGING AIRPLANE             |
| RAIDERS ANTITRUST           |
| RAINBOW SHOCK               |
| RANGE MOONWALKER            |
| REAP UNFAITHFUL             |
| REAR TRADING                |
| REBEL AIRPORT               |
| RECORDS ZORRO               |
| REDEMPTION COMFORTS         |
| REIGN GENTLEMEN             |
| REMEMBER DIARY              |
| REQUIEM TYCOON              |
| RESERVOIR ADAPTATION        |
| RESURRECTION SILVERADO      |
| REUNION WITCHES             |
| RIDER CADDYSHACK            |
| RIDGEMONT SUBMARINE         |
| RIGHT CRANES                |
| RINGS HEARTBREAKERS         |
| RIVER OUTLAW                |
| ROAD ROXANNE                |
| ROBBERS JOON                |
| ROBBERY BRIGHT              |
| ROCK INSTINCT               |
| ROCKETEER MOTHER            |
| ROLLERCOASTER BRINGING      |
| ROOF CHAMPION               |
| ROOTS REMEMBER              |
| ROSES TREASURE              |
| ROXANNE REBEL               |
| RUGRATS SHAKESPEARE         |
| RUNAWAY TENENBAUMS          |
| RUNNER MADIGAN              |
| RUSH GOODFELLAS             |
| RUSHMORE MERMAID            |
| SABRINA MIDNIGHT            |
| SADDLE ANTITRUST            |
| SAGEBRUSH CLUELESS          |
| SAINTS BRIDE                |
| SALUTE APOLLO               |
| SAMURAI LION                |
| SASSY PACKER                |
| SATISFACTION CONFIDENTIAL   |
| SATURDAY LAMBS              |
| SAVANNAH TOWN               |
| SCALAWAG DUCK               |
| SCARFACE BANG               |
| SCHOOL JACKET               |
| SCISSORHANDS SLUMS          |
| SCORPION APOLLO             |
| SEABISCUIT PUNK             |
| SEARCHERS WAIT              |
| SEATTLE EXPECATIONS         |
| SECRET GROUNDHOG            |
| SECRETARY ROUGE             |
| SECRETS PARADISE            |
| SENSIBILITY REAR            |
| SHAKESPEARE SADDLE          |
| SHANE DARKNESS              |
| SHANGHAI TYCOON             |
| SHAWSHANK BUBBLE            |
| SHEPHERD MIDSUMMER          |
| SHINING ROSES               |
| SHIP WONDERLAND             |
| SHOOTIST SUPERFLY           |
| SHREK LICENSE               |
| SHRUNK DIVINE               |
| SIERRA DIVIDE               |
| SILENCE KANE                |
| SILVERADO GOLDFINGER        |
| SINNERS ATLANTIS            |
| SISTER FREDDY               |
| SLACKER LIAISONS            |
| SLEEPING SUSPECTS           |
| SLEEPLESS MONSOON           |
| SLEEPY JAPANESE             |
| SLEUTH ORIENT               |
| SLIPPER FIDELITY            |
| SMILE EARRING               |
| SMOKING BARBARELLA          |
| SMOOCHY CONTROL             |
| SNATCH SLIPPER              |
| SNATCHERS MONTEZUMA         |
| SNOWMAN ROLLERCOASTER       |
| SOLDIERS EVOLUTION          |
| SOMETHING DUCK              |
| SONS INTERVIEW              |
| SORORITY QUEEN              |
| SPARTACUS CHEAPER           |
| SPEAKEASY DATE              |
| SPICE SORORITY              |
| SPIKING ELEMENT             |
| SPINAL ROCKY                |
| SPIRIT FLINTSTONES          |
| SPIRITED CASUALTIES         |
| SPLENDOR PATTON             |
| SPOILERS HELLFIGHTERS       |
| STAGECOACH ARMAGEDDON       |
| STALLION SUNDANCE           |
| STAMPEDE DISTURBING         |
| STAR OPERATION              |
| STATE WASTELAND             |
| STEERS ARMAGEDDON           |
| STEPMOM DREAM               |
| STING PERSONAL              |
| STORM HAPPINESS             |
| STRAIGHT HOURS              |
| STRANGELOVE DESIRE          |
| STRANGER STRANGERS          |
| STRANGERS GRAFFITI          |
| STREAK RIDGEMONT            |
| STREETCAR INTENTIONS        |
| STRICTLY SCARFACE           |
| SUBMARINE BED               |
| SUICIDES SILENCE            |
| SUMMER SCARFACE             |
| SUN CONFESSIONS             |
| SUNDANCE INVASION           |
| SUNRISE LEAGUE              |
| SUNSET RACER                |
| SUPER WYOMING               |
| SUPERFLY TRIP               |
| SUSPECTS QUILLS             |
| SWEDEN SHINING              |
| SWEET BROTHERHOOD           |
| SWEETHEARTS SUSPECTS        |
| TADPOLE PARK                |
| TALENTED HOMICIDE           |
| TARZAN VIDEOTAPE            |
| TELEGRAPH VOYAGE            |
| TELEMARK HEARTBREAKERS      |
| TEMPLE ATTRACTION           |
| TENENBAUMS COMMAND          |
| TEQUILA PAST                |
| TERMINATOR CLUB             |
| THEORY MERMAID              |
| THIEF PELICAN               |
| THIN SAGEBRUSH              |
| TIMBERLAND SKY              |
| TITANIC BOONDOCK            |
| TOMATOES HELLFIGHTERS       |
| TOMORROW HUSTLER            |
| TOOTSIE PILOT               |
| TORQUE BOUND                |
| TOURIST PELICAN             |
| TOWERS HURRICANE            |
| TRADING PINOCCHIO           |
| TRAFFIC HOBBIT              |
| TRAINSPOTTING STRANGERS     |
| TRAMP OTHERS                |
| TRANSLATION SUMMER          |
| TREASURE COMMAND            |
| TREATMENT JEKYLL            |
| TROJAN TOMORROW             |
| TROOPERS METAL              |
| TROUBLE DATE                |
| TRUMAN CRAZY                |
| TWISTED PIRATES             |
| TYCOON GATHERING            |
| UNBREAKABLE KARATE          |
| UNCUT SUICIDES              |
| UNDEFEATED DALMATIONS       |
| UNFAITHFUL KILL             |
| UNFORGIVEN ZOOLANDER        |
| UNITED PILOT                |
| UNTOUCHABLES SUNRISE        |
| UPRISING UPTOWN             |
| UPTOWN YOUNG                |
| USUAL UNTOUCHABLES          |
| VACATION BOONDOCK           |
| VALENTINE VANISHING         |
| VALLEY PACKER               |
| VAMPIRE WHALE               |
| VANISHED GARDEN             |
| VANISHING ROCKY             |
| VARSITY TRIP                |
| VELVET TERMINATOR           |
| VERTIGO NORTHWEST           |
| VICTORY ACADEMY             |
| VIDEOTAPE ARSENIC           |
| VIETNAM SMOOCHY             |
| VILLAIN DESPERATE           |
| VIRGIN DAISY                |
| VIRGINIAN PLUTO             |
| VIRTUAL SPOILERS            |
| VISION TORQUE               |
| VOLCANO TEXAS               |
| VOLUME HOUSE                |
| VOYAGE LEGALLY              |
| WALLS ARTIST                |
| WANDA CHAMBER               |
| WARDROBE PHANTOM            |
| WARLOCK WEREWOLF            |
| WASH HEAVENLY               |
| WASTELAND DIVINE            |
| WATERFRONT DELIVERANCE      |
| WATERSHIP FRONTIER          |
| WEDDING APOLLO              |
| WEEKEND PERSONAL            |
| WEREWOLF LOLA               |
| WESTWARD SEABISCUIT         |
| WHALE BIKINI                |
| WHISPERER GIANT             |
| WILLOW TRACY                |
| WIND PHANTOM                |
| WISDOM WORKER               |
| WITCHES PANIC               |
| WIZARD COLDBLOODED          |
| WOLVES DESIRE               |
| WOMEN DORADO                |
| WONDERFUL DROP              |
| WONDERLAND CHRISTMAS        |
| WORDS HUNTER                |
| WORKER TARZAN               |
| WORKING MICROCOSMOS         |
| WORLD LEATHERNECKS          |
| WORST BANGER                |
| WRONG BEHAVIOR              |
| WYOMING STORM               |
| YOUNG LANGUAGE              |
| ZHIVAGO CORE                |
| ZOOLANDER FICTION           |
+-----------------------------+

```

#### Peliculas con un rating de PG o G.

```sql
select title,rating from film where rating ="PG" or rating="G";
+---------------------------+--------+
| title                     | rating |
+---------------------------+--------+
| ACADEMY DINOSAUR          | PG     |
| ACE GOLDFINGER            | G      |
| AFFAIR PREJUDICE          | G      |
| AFRICAN EGG               | G      |
| AGENT TRUMAN              | PG     |
| ALAMO VIDEOTAPE           | G      |
| ALASKA PHANTOM            | PG     |
| ALI FOREVER               | PG     |
| AMADEUS HOLY              | PG     |
| AMISTAD MIDSUMMER         | G      |
| ANGELS LIFE               | G      |
| ANNIE IDENTITY            | G      |
| ARIZONA BANG              | PG     |
| ARMAGEDDON LOST           | G      |
| ARSENIC INDEPENDENCE      | PG     |
| ATLANTIS CAUSE            | G      |
| AUTUMN CROW               | G      |
| BAKED CLEOPATRA           | G      |
| BALLROOM MOCKINGBIRD      | G      |
| BARBARELLA STREETCAR      | G      |
| BAREFOOT MANCHURIAN       | G      |
| BEACH HEARTBREAKERS       | G      |
| BEAUTY GREASE             | G      |
| BEDAZZLED MARRIED         | PG     |
| BEHAVIOR RUNAWAY          | PG     |
| BILL OTHERS               | PG     |
| BIRCH ANTITRUST           | PG     |
| BIRD INDEPENDENCE         | G      |
| BIRDS PERDITION           | G      |
| BLACKOUT PRIVATE          | PG     |
| BLANKET BEVERLY           | G      |
| BLOOD ARGONAUTS           | G      |
| BLUES INSTINCT            | G      |
| BOILED DARES              | PG     |
| BONNIE HOLOCAUST          | G      |
| BORN SPINAL               | PG     |
| BORROWERS BEDAZZLED       | G      |
| BOUND CHEAPER             | PG     |
| BRANNIGAN SUNRISE         | PG     |
| BREAKFAST GOLDFINGER      | G      |
| BRIDE INTRIGUE            | G      |
| BRINGING HYSTERICAL       | PG     |
| BUCKET BROTHERHOOD        | PG     |
| BUGSY SONG                | G      |
| BULWORTH COMMANDMENTS     | G      |
| BUNCH MINDS               | G      |
| BUTTERFLY CHOCOLAT        | G      |
| CAPER MOTIONS             | G      |
| CAROL TEXAS               | PG     |
| CARRIE BUNCH              | PG     |
| CASABLANCA SUPER          | G      |
| CASUALTIES ENCINO         | G      |
| CAT CONEHEADS             | G      |
| CATCH AMISTAD             | G      |
| CENTER DINOSAUR           | PG     |
| CHAINSAW UPTOWN           | PG     |
| CHAMPION FLATLINERS       | PG     |
| CHARADE DUFFEL            | PG     |
| CHASING FIGHT             | PG     |
| CHEAPER CLYDE             | G      |
| CHICKEN HELLFIGHTERS      | PG     |
| CHILL LUCK                | PG     |
| CHINATOWN GLADIATOR       | PG     |
| CHISUM BEHAVIOR           | G      |
| CHITTY LOCK               | G      |
| CIDER DESIRE              | PG     |
| CITIZEN SHREK             | G      |
| CLASH FREDDY              | G      |
| CLERKS ANGELS             | G      |
| COAST RAINBOW             | PG     |
| COLDBLOODED DARLING       | G      |
| COLOR PHILADELPHIA        | G      |
| CONNECTION MICROCOSMOS    | G      |
| CONQUERER NUTS            | G      |
| CONTROL ANTHEM            | G      |
| COWBOY DOOM               | PG     |
| CRAZY HOME                | PG     |
| CROSSROADS CASUALTIES     | G      |
| CROW GREASE               | PG     |
| CRUELTY UNFORGIVEN        | G      |
| CYCLONE FAMILY            | PG     |
| DADDY PITTSBURGH          | G      |
| DAISY MENAGERIE           | G      |
| DALMATIONS SWEDEN         | PG     |
| DANCING FEVER             | G      |
| DANGEROUS UPTOWN          | PG     |
| DARN FORRESTER            | G      |
| DAWN POND                 | PG     |
| DAY UNFAITHFUL            | G      |
| DAZED PUNK                | G      |
| DESPERATE TRAINSPOTTING   | G      |
| DESTINY SATURDAY          | G      |
| DIARY PANIC               | G      |
| DISCIPLE MOTHER           | PG     |
| DIVORCE SHINING           | G      |
| DOCTOR GRAIL              | G      |
| DOGMA FAMILY              | G      |
| DOWNHILL ENOUGH           | G      |
| DRACULA CRYSTAL           | G      |
| DREAM PICKUP              | PG     |
| DRUMLINE CYCLONE          | G      |
| DRUMS DYNAMITE            | PG     |
| DUDE BLINDNESS            | G      |
| DUFFEL APOCALYPSE         | G      |
| DWARFS ALTER              | G      |
| DYING MAKER               | PG     |
| EASY GLADIATOR            | G      |
| EFFECT GLADIATOR          | PG     |
| EGG IGBY                  | PG     |
| EGYPT TENENBAUMS          | PG     |
| EMPIRE MALKOVICH          | G      |
| ENCINO ELF                | G      |
| EVE RESURRECTION          | G      |
| EVERYONE CRAFT            | PG     |
| EXCITEMENT EVE            | G      |
| EXORCIST STING            | G      |
| EXPENDABLE STALLION       | PG     |
| EXTRAORDINARY CONQUERER   | G      |
| FANTASIA PARK             | G      |
| FARGO GANDHI              | G      |
| FATAL HAUNTED             | PG     |
| FERRIS MOTHER             | PG     |
| FICTION CHRISTMAS         | PG     |
| FIDELITY DEVIL            | G      |
| FIREBALL PHILADELPHIA     | PG     |
| FIREHOUSE VIETNAM         | G      |
| FLATLINERS KILLER         | G      |
| FOOL MOCKINGBIRD          | PG     |
| FRENCH HOLIDAY            | PG     |
| FRISCO FORREST            | PG     |
| FROST HEAD                | PG     |
| FULL FLATLINERS           | PG     |
| GABLES METROPOLIS         | PG     |
| GARDEN ISLAND             | G      |
| GASLIGHT CRUSADE          | PG     |
| GHOST GROUNDHOG           | G      |
| GILBERT PELICAN           | G      |
| GLADIATOR WESTWARD        | PG     |
| GLASS DYING               | G      |
| GOLDFINGER SENSIBILITY    | G      |
| GOODFELLAS SALUTE         | PG     |
| GOSFORD DONNIE            | G      |
| GRADUATE LORD             | G      |
| GRAFFITI LOVE             | PG     |
| GRAPES FURY               | G      |
| GREASE YOUTH              | G      |
| GREEK EVERYONE            | PG     |
| GRIT CLOCKWORK            | PG     |
| GUN BONNIE                | G      |
| HANGING DEEP              | G      |
| HAPPINESS UNITED          | G      |
| HARPER DYING              | G      |
| HATE HANDICAP             | PG     |
| HEARTBREAKERS BRIGHT      | G      |
| HEAVEN FREEDOM            | PG     |
| HEAVYWEIGHTS BEAST        | G      |
| HELLFIGHTERS SIERRA       | PG     |
| HILLS NEIGHBORS           | G      |
| HOCUS FRIDA               | G      |
| HOLES BRANNIGAN           | PG     |
| HOLLYWOOD ANONYMOUS       | PG     |
| HOOK CHARIOTS             | G      |
| HOOSIERS BIRDCAGE         | G      |
| HORN WORKING              | PG     |
| HUNGER ROOF               | G      |
| HURRICANE AFFAIR          | PG     |
| HYDE DOCTOR               | G      |
| HYSTERICAL GRAIL          | PG     |
| INSTINCT AIRPORT          | PG     |
| INTRIGUE WORST            | G      |
| INVASION CYCLONE          | PG     |
| IRON MOON                 | PG     |
| ITALIAN AFRICAN           | G      |
| JAPANESE RUN              | G      |
| JAWBREAKER BROOKLYN       | PG     |
| JAWS HARRY                | G      |
| JEDI BENEATH              | PG     |
| JEKYLL FROGMEN            | PG     |
| JERSEY SASSY              | PG     |
| JUMANJI BLADE             | G      |
| KENTUCKIAN GIANT          | PG     |
| KILL BROTHERHOOD          | G      |
| LADY STAGE                | PG     |
| LAWLESS VISION            | G      |
| LEGALLY SECRETARY         | PG     |
| LEGEND JEDI               | PG     |
| LIAISONS SWEET            | PG     |
| LIBERTY MAGNIFICENT       | G      |
| LION UNCUT                | PG     |
| LOLA AGENT                | PG     |
| LONELY ELEPHANT           | G      |
| LOSER HUSTLER             | PG     |
| LOVELY JINGLE             | PG     |
| LOVER TRUMAN              | G      |
| LUST LOCK                 | G      |
| MAGIC MALLRATS            | PG     |
| MAIDEN HOME               | PG     |
| MAJESTIC FLOATS           | PG     |
| MALKOVICH PET             | G      |
| MALLRATS UNITED           | PG     |
| MANCHURIAN CURTAIN        | PG     |
| MARRIED GO                | G      |
| MASSAGE IMAGE             | PG     |
| MEET CHOCOLATE            | G      |
| MENAGERIE RUSHMORE        | G      |
| MIDNIGHT WESTWARD         | G      |
| MIDSUMMER GROUNDHOG       | G      |
| MIGHTY LUCK               | PG     |
| MILE MULAN                | PG     |
| MINORITY KISS             | G      |
| MOB DUFFEL                | G      |
| MOCKINGBIRD HOLLYWOOD     | PG     |
| MODERN DORADO             | PG     |
| MONEY HAROLD              | PG     |
| MONSOON CAUSE             | PG     |
| MONSTER SPARTACUS         | PG     |
| MONTEREY LABYRINTH        | G      |
| MOON BUNCH                | PG     |
| MOONWALKER FOOL           | G      |
| MOSQUITO ARMAGEDDON       | G      |
| MOTIONS DETAILS           | PG     |
| MOURNING PURPLE           | PG     |
| MOVIE SHAKESPEARE         | PG     |
| MULAN MOON                | G      |
| MULHOLLAND BEAST          | PG     |
| MUPPET MILE               | PG     |
| MURDER ANTITRUST          | PG     |
| MUSCLE BRIGHT             | G      |
| MUSKETEERS WAIT           | PG     |
| MUSSOLINI SPOILERS        | G      |
| NECKLACE OUTBREAK         | PG     |
| NEWSIES STORY             | G      |
| NEWTON LABYRINTH          | PG     |
| NIGHTMARE CHILL           | PG     |
| NOON PAPI                 | G      |
| NORTHWEST POLISH          | PG     |
| NOVOCAINE FLIGHT          | G      |
| OKLAHOMA JUMANJI          | PG     |
| OLEANDER CLUE             | PG     |
| OPEN AFRICAN              | PG     |
| OPERATION OPERATION       | G      |
| OPPOSITE NECKLACE         | PG     |
| OSCAR GOLD                | PG     |
| OTHERS SOUP               | PG     |
| PACIFIC AMISTAD           | G      |
| PANIC CLUB                | G      |
| PANKY SUBMARINE           | G      |
| PAPI NECKLACE             | PG     |
| PARTY KNOCK               | PG     |
| PATHS CONTROL             | PG     |
| PATRIOT ROMAN             | PG     |
| PATTON INTERVIEW          | PG     |
| PEAK FOREVER              | PG     |
| PELICAN COMFORTS          | PG     |
| PET HAUNTING              | PG     |
| PICKUP DRIVING            | G      |
| PILOT HOOSIERS            | PG     |
| PINOCCHIO SIMON           | PG     |
| PIRATES ROXANNE           | PG     |
| POLISH BROOKLYN           | PG     |
| POLLOCK DELIVERANCE       | PG     |
| POTLUCK MIXED             | G      |
| POTTER CONNECTICUT        | PG     |
| PRESIDENT BANG            | PG     |
| PRIMARY GLASS             | G      |
| PRIVATE DROP              | PG     |
| PULP BEVERLY              | G      |
| PUNK DIVORCE              | PG     |
| QUEEN LUKE                | PG     |
| RAINBOW SHOCK             | PG     |
| RANGE MOONWALKER          | PG     |
| REBEL AIRPORT             | G      |
| RECORDS ZORRO             | PG     |
| RESURRECTION SILVERADO    | PG     |
| RIDER CADDYSHACK          | PG     |
| RINGS HEARTBREAKERS       | G      |
| ROCK INSTINCT             | G      |
| ROOM ROMAN                | PG     |
| RUSH GOODFELLAS           | PG     |
| SABRINA MIDNIGHT          | PG     |
| SAGEBRUSH CLUELESS        | G      |
| SAINTS BRIDE              | G      |
| SAMURAI LION              | G      |
| SANTA PARIS               | PG     |
| SASSY PACKER              | G      |
| SATISFACTION CONFIDENTIAL | G      |
| SATURDAY LAMBS            | G      |
| SCISSORHANDS SLUMS        | G      |
| SEA VIRGIN                | PG     |
| SECRET GROUNDHOG          | PG     |
| SECRETARY ROUGE           | PG     |
| SECRETS PARADISE          | G      |
| SENSIBILITY REAR          | PG     |
| SHANE DARKNESS            | PG     |
| SHANGHAI TYCOON           | PG     |
| SHAWSHANK BUBBLE          | PG     |
| SHINING ROSES             | G      |
| SIDE ARK                  | G      |
| SILVERADO GOLDFINGER      | PG     |
| SKY MIRACLE               | PG     |
| SLEEPLESS MONSOON         | G      |
| SLEEPY JAPANESE           | PG     |
| SLUMS DUCK                | PG     |
| SMILE EARRING             | G      |
| SNATCH SLIPPER            | PG     |
| SNOWMAN ROLLERCOASTER     | G      |
| SPIKING ELEMENT           | G      |
| SPLASH GUMP               | PG     |
| SPOILERS HELLFIGHTERS     | G      |
| SQUAD FISH                | PG     |
| STAGE WORLD               | PG     |
| STAR OPERATION            | PG     |
| STEERS ARMAGEDDON         | PG     |
| STOCK GLASS               | PG     |
| STONE FIRE                | G      |
| STRANGER STRANGERS        | G      |
| SUGAR WONKA               | PG     |
| SUICIDES SILENCE          | G      |
| SUMMER SCARFACE           | G      |
| SUPER WYOMING             | PG     |
| SUPERFLY TRIP             | PG     |
| SUSPECTS QUILLS           | PG     |
| SWEDEN SHINING            | PG     |
| SWEETHEARTS SUSPECTS      | G      |
| TADPOLE PARK              | PG     |
| TALENTED HOMICIDE         | PG     |
| TEEN APOLLO               | G      |
| TELEGRAPH VOYAGE          | PG     |
| TEMPLE ATTRACTION         | PG     |
| TEQUILA PAST              | PG     |
| TIMBERLAND SKY            | G      |
| TITANS JERK               | PG     |
| TOMATOES HELLFIGHTERS     | PG     |
| TOOTSIE PILOT             | PG     |
| TORQUE BOUND              | G      |
| TRACY CIDER               | G      |
| TRADING PINOCCHIO         | PG     |
| TRAFFIC HOBBIT            | G      |
| TRAMP OTHERS              | PG     |
| TRAP GUYS                 | G      |
| TREATMENT JEKYLL          | PG     |
| TROJAN TOMORROW           | PG     |
| TROUBLE DATE              | PG     |
| TRUMAN CRAZY              | G      |
| TURN STAR                 | G      |
| TWISTED PIRATES           | PG     |
| TYCOON GATHERING          | G      |
| UNBREAKABLE KARATE        | G      |
| UNFORGIVEN ZOOLANDER      | PG     |
| UPTOWN YOUNG              | PG     |
| VALLEY PACKER             | G      |
| VOLUME HOUSE              | PG     |
| WAGON JAWS                | PG     |
| WAKE JAWS                 | G      |
| WALLS ARTIST              | PG     |
| WAR NOTTING               | G      |
| WARDROBE PHANTOM          | G      |
| WARLOCK WEREWOLF          | G      |
| WARS PLUTO                | G      |
| WASTELAND DIVINE          | PG     |
| WATCH TRACY               | PG     |
| WATERFRONT DELIVERANCE    | G      |
| WATERSHIP FRONTIER        | G      |
| WEDDING APOLLO            | PG     |
| WEREWOLF LOLA             | G      |
| WEST LION                 | G      |
| WIZARD COLDBLOODED        | PG     |
| WON DARES                 | PG     |
| WONDERLAND CHRISTMAS      | PG     |
| WORDS HUNTER              | PG     |
| WORST BANGER              | PG     |
| YOUNG LANGUAGE            | G      |
+---------------------------+--------+

```

#### Peliculas que no tengan un rating de NC-17.

```sql
select title,rating from film where rating !="NC-17";
+-----------------------------+--------+
| title                       | rating |
+-----------------------------+--------+
| ACADEMY DINOSAUR            | PG     |
| ACE GOLDFINGER              | G      |
| AFFAIR PREJUDICE            | G      |
| AFRICAN EGG                 | G      |
| AGENT TRUMAN                | PG     |
| AIRPLANE SIERRA             | PG-13  |
| AIRPORT POLLOCK             | R      |
| ALABAMA DEVIL               | PG-13  |
| ALAMO VIDEOTAPE             | G      |
| ALASKA PHANTOM              | PG     |
| ALI FOREVER                 | PG     |
| ALONE TRIP                  | R      |
| ALTER VICTORY               | PG-13  |
| AMADEUS HOLY                | PG     |
| AMELIE HELLFIGHTERS         | R      |
| AMERICAN CIRCUS             | R      |
| AMISTAD MIDSUMMER           | G      |
| ANACONDA CONFESSIONS        | R      |
| ANALYZE HOOSIERS            | R      |
| ANGELS LIFE                 | G      |
| ANNIE IDENTITY              | G      |
| ANTHEM LUKE                 | PG-13  |
| ANYTHING SAVANNAH           | R      |
| APOCALYPSE FLAMINGOS        | R      |
| APOLLO TEEN                 | PG-13  |
| ARACHNOPHOBIA ROLLERCOASTER | PG-13  |
| ARGONAUTS TOWN              | PG-13  |
| ARIZONA BANG                | PG     |
| ARMAGEDDON LOST             | G      |
| ARMY FLINTSTONES            | R      |
| ARSENIC INDEPENDENCE        | PG     |
| ATLANTIS CAUSE              | G      |
| ATTACKS HATE                | PG-13  |
| ATTRACTION NEWTON           | PG-13  |
| AUTUMN CROW                 | G      |
| BACKLASH UNDEFEATED         | PG-13  |
| BADMAN DAWN                 | R      |
| BAKED CLEOPATRA             | G      |
| BALLROOM MOCKINGBIRD        | G      |
| BANGER PINOCCHIO            | R      |
| BARBARELLA STREETCAR        | G      |
| BAREFOOT MANCHURIAN         | G      |
| BASIC EASY                  | PG-13  |
| BEACH HEARTBREAKERS         | G      |
| BEAR GRACELAND              | R      |
| BEAST HUNCHBACK             | R      |
| BEAUTY GREASE               | G      |
| BEDAZZLED MARRIED           | PG     |
| BEETHOVEN EXORCIST          | PG-13  |
| BEHAVIOR RUNAWAY            | PG     |
| BERETS AGENT                | PG-13  |
| BEVERLY OUTLAW              | R      |
| BILKO ANONYMOUS             | PG-13  |
| BILL OTHERS                 | PG     |
| BINGO TALENTED              | PG-13  |
| BIRCH ANTITRUST             | PG     |
| BIRD INDEPENDENCE           | G      |
| BIRDS PERDITION             | G      |
| BLACKOUT PRIVATE            | PG     |
| BLADE POLISH                | PG-13  |
| BLANKET BEVERLY             | G      |
| BLINDNESS GUN               | PG-13  |
| BLOOD ARGONAUTS             | G      |
| BLUES INSTINCT              | G      |
| BOILED DARES                | PG     |
| BONNIE HOLOCAUST            | G      |
| BOOGIE AMELIE               | R      |
| BORN SPINAL                 | PG     |
| BORROWERS BEDAZZLED         | G      |
| BOULEVARD MOB               | R      |
| BOUND CHEAPER               | PG     |
| BRANNIGAN SUNRISE           | PG     |
| BRAVEHEART HUMAN            | PG-13  |
| BREAKFAST GOLDFINGER        | G      |
| BREAKING HOME               | PG-13  |
| BRIDE INTRIGUE              | G      |
| BRIGHT ENCOUNTERS           | PG-13  |
| BRINGING HYSTERICAL         | PG     |
| BROOKLYN DESERT             | R      |
| BROTHERHOOD BLANKET         | R      |
| BUBBLE GROSSE               | R      |
| BUCKET BROTHERHOOD          | PG     |
| BUGSY SONG                  | G      |
| BULWORTH COMMANDMENTS       | G      |
| BUNCH MINDS                 | G      |
| BUTCH PANTHER               | PG-13  |
| BUTTERFLY CHOCOLAT          | G      |
| CAMPUS REMEMBER             | R      |
| CANDIDATE PERDITION         | R      |
| CANYON STOCK                | R      |
| CAPER MOTIONS               | G      |
| CAROL TEXAS                 | PG     |
| CARRIE BUNCH                | PG     |
| CASABLANCA SUPER            | G      |
| CASPER DRAGONFLY            | PG-13  |
| CASUALTIES ENCINO           | G      |
| CAT CONEHEADS               | G      |
| CATCH AMISTAD               | G      |
| CAUSE DATE                  | R      |
| CELEBRITY HORN              | PG-13  |
| CENTER DINOSAUR             | PG     |
| CHAINSAW UPTOWN             | PG     |
| CHAMPION FLATLINERS         | PG     |
| CHANCE RESURRECTION         | R      |
| CHARADE DUFFEL              | PG     |
| CHARIOTS CONSPIRACY         | R      |
| CHASING FIGHT               | PG     |
| CHEAPER CLYDE               | G      |
| CHICAGO NORTH               | PG-13  |
| CHICKEN HELLFIGHTERS        | PG     |
| CHILL LUCK                  | PG     |
| CHINATOWN GLADIATOR         | PG     |
| CHISUM BEHAVIOR             | G      |
| CHITTY LOCK                 | G      |
| CHOCOLATE DUCK              | R      |
| CIDER DESIRE                | PG     |
| CIRCUS YOUTH                | PG-13  |
| CITIZEN SHREK               | G      |
| CLASH FREDDY                | G      |
| CLEOPATRA DEVIL             | PG-13  |
| CLERKS ANGELS               | G      |
| CLOCKWORK PARADISE          | PG-13  |
| CLONES PINOCCHIO            | R      |
| CLOSER BANG                 | R      |
| CLUB GRAFFITI               | PG-13  |
| CLUELESS BUCKET             | R      |
| CLYDE THEORY                | PG-13  |
| COAST RAINBOW               | PG     |
| COLDBLOODED DARLING         | G      |
| COLOR PHILADELPHIA          | G      |
| COMANCHEROS ENEMY           | R      |
| COMMAND DARLING             | PG-13  |
| COMMANDMENTS EXPRESS        | R      |
| CONFESSIONS MAGUIRE         | PG-13  |
| CONFUSED CANDLES            | PG-13  |
| CONGENIALITY QUEST          | PG-13  |
| CONNECTICUT TRAMP           | R      |
| CONNECTION MICROCOSMOS      | G      |
| CONQUERER NUTS              | G      |
| CONSPIRACY SPIRIT           | PG-13  |
| CONTACT ANONYMOUS           | PG-13  |
| CONTROL ANTHEM              | G      |
| CONVERSATION DOWNHILL       | R      |
| CORE SUIT                   | PG-13  |
| COWBOY DOOM                 | PG     |
| CRAZY HOME                  | PG     |
| CROOKED FROGMEN             | PG-13  |
| CROSSING DIVORCE            | R      |
| CROSSROADS CASUALTIES       | G      |
| CROW GREASE                 | PG     |
| CROWDS TELEMARK             | R      |
| CRUELTY UNFORGIVEN          | G      |
| CRUSADE HONEY               | R      |
| CUPBOARD SINNERS            | R      |
| CURTAIN VIDEOTAPE           | PG-13  |
| CYCLONE FAMILY              | PG     |
| DADDY PITTSBURGH            | G      |
| DAISY MENAGERIE             | G      |
| DALMATIONS SWEDEN           | PG     |
| DANCING FEVER               | G      |
| DANGEROUS UPTOWN            | PG     |
| DARES PLUTO                 | PG-13  |
| DARLING BREAKING            | PG-13  |
| DARN FORRESTER              | G      |
| DATE SPEED                  | R      |
| DAUGHTER MADIGAN            | PG-13  |
| DAWN POND                   | PG     |
| DAY UNFAITHFUL              | G      |
| DAZED PUNK                  | G      |
| DEEP CRUSADE                | PG-13  |
| DELIVERANCE MULHOLLAND      | R      |
| DESERT POSEIDON             | R      |
| DESPERATE TRAINSPOTTING     | G      |
| DESTINATION JERK            | PG-13  |
| DESTINY SATURDAY            | G      |
| DETAILS PACKER              | R      |
| DETECTIVE VISION            | PG-13  |
| DEVIL DESIRE                | R      |
| DIARY PANIC                 | G      |
| DINOSAUR SECRETARY          | R      |
| DISCIPLE MOTHER             | PG     |
| DISTURBING SCARFACE         | R      |
| DIVIDE MONSTER              | PG-13  |
| DIVINE RESURRECTION         | R      |
| DIVORCE SHINING             | G      |
| DOCTOR GRAIL                | G      |
| DOGMA FAMILY                | G      |
| DOLLS RAGE                  | PG-13  |
| DOOM DANCING                | R      |
| DOUBLE WRATH                | R      |
| DOUBTFIRE LABYRINTH         | R      |
| DOWNHILL ENOUGH             | G      |
| DRACULA CRYSTAL             | G      |
| DREAM PICKUP                | PG     |
| DRIFTER COMMANDMENTS        | PG-13  |
| DRIVER ANNIE                | PG-13  |
| DROP WATERFRONT             | R      |
| DRUMLINE CYCLONE            | G      |
| DRUMS DYNAMITE              | PG     |
| DUDE BLINDNESS              | G      |
| DUFFEL APOCALYPSE           | G      |
| DURHAM PANKY                | R      |
| DWARFS ALTER                | G      |
| DYING MAKER                 | PG     |
| DYNAMITE TARZAN             | PG-13  |
| EARRING INSTINCT            | R      |
| EASY GLADIATOR              | G      |
| EFFECT GLADIATOR            | PG     |
| EGG IGBY                    | PG     |
| EGYPT TENENBAUMS            | PG     |
| ELEPHANT TROJAN             | PG-13  |
| EMPIRE MALKOVICH            | G      |
| ENCINO ELF                  | G      |
| ENGLISH BULWORTH            | PG-13  |
| ENTRAPMENT SATISFACTION     | R      |
| ESCAPE METROPOLIS           | R      |
| EVE RESURRECTION            | G      |
| EVERYONE CRAFT              | PG     |
| EVOLUTION ALTER             | PG-13  |
| EXCITEMENT EVE              | G      |
| EXORCIST STING              | G      |
| EXPECATIONS NATURAL         | PG-13  |
| EXPENDABLE STALLION         | PG     |
| EXPRESS LONELY              | R      |
| EXTRAORDINARY CONQUERER     | G      |
| EYES DRIVING                | PG-13  |
| FACTORY DRAGON              | PG-13  |
| FALCON VOLUME               | PG-13  |
| FAMILY SWEET                | R      |
| FANTASIA PARK               | G      |
| FANTASY TROOPERS            | PG-13  |
| FARGO GANDHI                | G      |
| FATAL HAUNTED               | PG     |
| FEATHERS METAL              | PG-13  |
| FERRIS MOTHER               | PG     |
| FEUD FROGMEN                | R      |
| FEVER EMPIRE                | R      |
| FICTION CHRISTMAS           | PG     |
| FIDDLER LOST                | R      |
| FIDELITY DEVIL              | G      |
| FIGHT JAWBREAKER            | R      |
| FINDING ANACONDA            | R      |
| FIRE WOLVES                 | R      |
| FIREBALL PHILADELPHIA       | PG     |
| FIREHOUSE VIETNAM           | G      |
| FISH OPUS                   | R      |
| FLAMINGOS CONNECTICUT       | PG-13  |
| FLATLINERS KILLER           | G      |
| FLIGHT LIES                 | R      |
| FLINTSTONES HAPPINESS       | PG-13  |
| FLOATS GARDEN               | PG-13  |
| FOOL MOCKINGBIRD            | PG     |
| FORREST SONS                | R      |
| FREAKY POCUS                | R      |
| FREEDOM CLEOPATRA           | PG-13  |
| FRENCH HOLIDAY              | PG     |
| FRIDA SLIPPER               | R      |
| FRISCO FORREST              | PG     |
| FROGMEN BREAKING            | R      |
| FRONTIER CABIN              | PG-13  |
| FROST HEAD                  | PG     |
| FUGITIVE MAGUIRE            | R      |
| FULL FLATLINERS             | PG     |
| FURY MURDER                 | PG-13  |
| GABLES METROPOLIS           | PG     |
| GALAXY SWEETHEARTS          | R      |
| GAMES BOWFINGER             | PG-13  |
| GANDHI KWAI                 | PG-13  |
| GANGS PRIDE                 | PG-13  |
| GARDEN ISLAND               | G      |
| GASLIGHT CRUSADE            | PG     |
| GATHERING CALENDAR          | PG-13  |
| GHOST GROUNDHOG             | G      |
| GHOSTBUSTERS ELF            | R      |
| GIANT TROOPERS              | R      |
| GILBERT PELICAN             | G      |
| GILMORE BOILED              | R      |
| GLADIATOR WESTWARD          | PG     |
| GLASS DYING                 | G      |
| GLORY TRACY                 | PG-13  |
| GO PURPLE                   | R      |
| GOLD RIVER                  | R      |
| GOLDFINGER SENSIBILITY      | G      |
| GOLDMINE TYCOON             | R      |
| GONE TROUBLE                | R      |
| GOODFELLAS SALUTE           | PG     |
| GORGEOUS BINGO              | R      |
| GOSFORD DONNIE              | G      |
| GRACELAND DYNAMITE          | R      |
| GRADUATE LORD               | G      |
| GRAFFITI LOVE               | PG     |
| GRAPES FURY                 | G      |
| GREASE YOUTH                | G      |
| GREEDY ROOTS                | R      |
| GREEK EVERYONE              | PG     |
| GRINCH MASSAGE              | R      |
| GRIT CLOCKWORK              | PG     |
| GROSSE WONDERFUL            | R      |
| GROUNDHOG UNCUT             | PG-13  |
| GUN BONNIE                  | G      |
| GUNFIGHTER MUSSOLINI        | PG-13  |
| GUYS FALCON                 | R      |
| HALF OUTFIELD               | PG-13  |
| HALLOWEEN NUTS              | PG-13  |
| HAMLET WISDOM               | R      |
| HANDICAP BOONDOCK           | R      |
| HANGING DEEP                | G      |
| HAPPINESS UNITED            | G      |
| HARDLY ROBBERS              | R      |
| HARPER DYING                | G      |
| HARRY IDAHO                 | PG-13  |
| HATE HANDICAP               | PG     |
| HAUNTING PIANIST            | R      |
| HAWK CHILL                  | PG-13  |
| HEAD STRANGER               | R      |
| HEARTBREAKERS BRIGHT        | G      |
| HEAVEN FREEDOM              | PG     |
| HEAVYWEIGHTS BEAST          | G      |
| HELLFIGHTERS SIERRA         | PG     |
| HIGH ENCINO                 | R      |
| HIGHBALL POTTER             | R      |
| HILLS NEIGHBORS             | G      |
| HOBBIT ALIEN                | PG-13  |
| HOCUS FRIDA                 | G      |
| HOLES BRANNIGAN             | PG     |
| HOLIDAY GAMES               | PG-13  |
| HOLLYWOOD ANONYMOUS         | PG     |
| HOLOCAUST HIGHBALL          | R      |
| HOLY TADPOLE                | R      |
| HOME PITY                   | R      |
| HOMEWARD CIDER              | R      |
| HOMICIDE PEACH              | PG-13  |
| HONEY TIES                  | R      |
| HOOK CHARIOTS               | G      |
| HOOSIERS BIRDCAGE           | G      |
| HORN WORKING                | PG     |
| HORROR REIGN                | R      |
| HOTEL HAPPINESS             | PG-13  |
| HOUSE DYNAMITE              | R      |
| HUNCHBACK IMPOSSIBLE        | PG-13  |
| HUNGER ROOF                 | G      |
| HUNTER ALTER                | PG-13  |
| HURRICANE AFFAIR            | PG     |
| HYDE DOCTOR                 | G      |
| HYSTERICAL GRAIL            | PG     |
| ICE CROSSING                | R      |
| IDAHO LOVE                  | PG-13  |
| IDENTITY LOVER              | PG-13  |
| ILLUSION AMELIE             | R      |
| IMAGE PRINCESS              | PG-13  |
| IMPACT ALADDIN              | PG-13  |
| INNOCENT USUAL              | PG-13  |
| INSTINCT AIRPORT            | PG     |
| INTENTIONS EMPIRE           | PG-13  |
| INTERVIEW LIAISONS          | R      |
| INTOLERABLE INTENTIONS      | PG-13  |
| INTRIGUE WORST              | G      |
| INVASION CYCLONE            | PG     |
| IRON MOON                   | PG     |
| ISHTAR ROCKETEER            | R      |
| ITALIAN AFRICAN             | G      |
| JACKET FRISCO               | PG-13  |
| JAPANESE RUN                | G      |
| JAWBREAKER BROOKLYN         | PG     |
| JAWS HARRY                  | G      |
| JEDI BENEATH                | PG     |
| JEEPERS WEDDING             | R      |
| JEKYLL FROGMEN              | PG     |
| JEOPARDY ENCINO             | R      |
| JERSEY SASSY                | PG     |
| JET NEIGHBORS               | R      |
| JINGLE SAGEBRUSH            | PG-13  |
| JUGGLER HARDLY              | PG-13  |
| JUMANJI BLADE               | G      |
| KANE EXORCIST               | R      |
| KARATE MOON                 | PG-13  |
| KENTUCKIAN GIANT            | PG     |
| KICK SAVANNAH               | PG-13  |
| KILL BROTHERHOOD            | G      |
| KILLER INNOCENT             | R      |
| KISS GLORY                  | PG-13  |
| KISSING DOLLS               | R      |
| KNOCK WARLOCK               | PG-13  |
| KRAMER CHOCOLATE            | R      |
| KWAI HOMEWARD               | PG-13  |
| LABYRINTH LEAGUE            | PG-13  |
| LADY STAGE                  | PG     |
| LAMBS CINCINATTI            | PG-13  |
| LAWLESS VISION              | G      |
| LEAGUE HELLFIGHTERS         | PG-13  |
| LEATHERNECKS DWARFS         | PG-13  |
| LEBOWSKI SOLDIERS           | PG-13  |
| LEGALLY SECRETARY           | PG     |
| LEGEND JEDI                 | PG     |
| LIAISONS SWEET              | PG     |
| LIBERTY MAGNIFICENT         | G      |
| LIGHTS DEER                 | R      |
| LION UNCUT                  | PG     |
| LOATHING LEGALLY            | R      |
| LOCK REAR                   | R      |
| LOLA AGENT                  | PG     |
| LONELY ELEPHANT             | G      |
| LORD ARIZONA                | PG-13  |
| LOSE INCH                   | R      |
| LOSER HUSTLER               | PG     |
| LOST BIRD                   | PG-13  |
| LOUISIANA HARRY             | PG-13  |
| LOVE SUICIDES               | R      |
| LOVELY JINGLE               | PG     |
| LOVER TRUMAN                | G      |
| LOVERBOY ATTACKS            | PG-13  |
| LUCKY FLYING                | PG-13  |
| LUST LOCK                   | G      |
| MADIGAN DORADO              | R      |
| MADISON TRAP                | R      |
| MADNESS ATTACKS             | PG-13  |
| MADRE GABLES                | PG-13  |
| MAGIC MALLRATS              | PG     |
| MAGNIFICENT CHITTY          | R      |
| MAGNOLIA FORRESTER          | PG-13  |
| MAIDEN HOME                 | PG     |
| MAJESTIC FLOATS             | PG     |
| MAKER GABLES                | PG-13  |
| MALKOVICH PET               | G      |
| MALLRATS UNITED             | PG     |
| MALTESE HOPE                | PG-13  |
| MANCHURIAN CURTAIN          | PG     |
| MANNEQUIN WORST             | PG-13  |
| MARRIED GO                  | G      |
| MASKED BUBBLE               | PG-13  |
| MASSACRE USUAL              | R      |
| MASSAGE IMAGE               | PG     |
| MATRIX SNOWMAN              | PG-13  |
| MAUDE MOD                   | R      |
| MEET CHOCOLATE              | G      |
| MENAGERIE RUSHMORE          | G      |
| METAL ARMAGEDDON            | PG-13  |
| METROPOLIS COMA             | PG-13  |
| MICROCOSMOS PARADISE        | PG-13  |
| MIDNIGHT WESTWARD           | G      |
| MIDSUMMER GROUNDHOG         | G      |
| MIGHTY LUCK                 | PG     |
| MILE MULAN                  | PG     |
| MILLION ACE                 | PG-13  |
| MINDS TRUMAN                | PG-13  |
| MINE TITANS                 | PG-13  |
| MINORITY KISS               | G      |
| MIRACLE VIRTUAL             | PG-13  |
| MISSION ZOOLANDER           | PG-13  |
| MIXED DOORS                 | PG-13  |
| MOB DUFFEL                  | G      |
| MOCKINGBIRD HOLLYWOOD       | PG     |
| MODERN DORADO               | PG     |
| MONEY HAROLD                | PG     |
| MONSOON CAUSE               | PG     |
| MONSTER SPARTACUS           | PG     |
| MONTEREY LABYRINTH          | G      |
| MOON BUNCH                  | PG     |
| MOONSHINE CABIN             | PG-13  |
| MOONWALKER FOOL             | G      |
| MOSQUITO ARMAGEDDON         | G      |
| MOTHER OLEANDER             | R      |
| MOTIONS DETAILS             | PG     |
| MOULIN WAKE                 | PG-13  |
| MOURNING PURPLE             | PG     |
| MOVIE SHAKESPEARE           | PG     |
| MULAN MOON                  | G      |
| MULHOLLAND BEAST            | PG     |
| MUPPET MILE                 | PG     |
| MURDER ANTITRUST            | PG     |
| MUSCLE BRIGHT               | G      |
| MUSIC BOONDOCK              | R      |
| MUSKETEERS WAIT             | PG     |
| MUSSOLINI SPOILERS          | G      |
| NAME DETECTIVE              | PG-13  |
| NASH CHOCOLAT               | PG-13  |
| NATURAL STOCK               | PG-13  |
| NECKLACE OUTBREAK           | PG     |
| NEIGHBORS CHARADE           | R      |
| NETWORK PEAK                | PG-13  |
| NEWSIES STORY               | G      |
| NEWTON LABYRINTH            | PG     |
| NIGHTMARE CHILL             | PG     |
| NOON PAPI                   | G      |
| NORTHWEST POLISH            | PG     |
| NOTTING SPEAKEASY           | PG-13  |
| NOVOCAINE FLIGHT            | G      |
| OCTOBER SUBMARINE           | PG-13  |
| OKLAHOMA JUMANJI            | PG     |
| OLEANDER CLUE               | PG     |
| OPEN AFRICAN                | PG     |
| OPERATION OPERATION         | G      |
| OPPOSITE NECKLACE           | PG     |
| OPUS ICE                    | R      |
| ORANGE GRAPES               | PG-13  |
| ORDER BETRAYED              | PG-13  |
| ORIENT CLOSER               | R      |
| OSCAR GOLD                  | PG     |
| OTHERS SOUP                 | PG     |
| OUTLAW HANKY                | PG-13  |
| OZ LIAISONS                 | R      |
| PACIFIC AMISTAD             | G      |
| PACKER MADIGAN              | PG-13  |
| PAJAMA JAWBREAKER           | R      |
| PANIC CLUB                  | G      |
| PANKY SUBMARINE             | G      |
| PAPI NECKLACE               | PG     |
| PARADISE SABRINA            | PG-13  |
| PARIS WEEKEND               | PG-13  |
| PARK CITIZEN                | PG-13  |
| PARTY KNOCK                 | PG     |
| PAST SUICIDES               | PG-13  |
| PATHS CONTROL               | PG     |
| PATRIOT ROMAN               | PG     |
| PATTON INTERVIEW            | PG     |
| PAYCHECK WAIT               | PG-13  |
| PEACH INNOCENT              | PG-13  |
| PEAK FOREVER                | PG     |
| PELICAN COMFORTS            | PG     |
| PERFECT GROOVE              | PG-13  |
| PERSONAL LADYBUGS           | PG-13  |
| PET HAUNTING                | PG     |
| PHILADELPHIA WIFE           | PG-13  |
| PICKUP DRIVING              | G      |
| PILOT HOOSIERS              | PG     |
| PINOCCHIO SIMON             | PG     |
| PIRATES ROXANNE             | PG     |
| PITTSBURGH HUNCHBACK        | PG-13  |
| PLATOON INSTINCT            | PG-13  |
| PLUTO OLEANDER              | R      |
| POLISH BROOKLYN             | PG     |
| POLLOCK DELIVERANCE         | PG     |
| POND SEATTLE                | PG-13  |
| POSEIDON FOREVER            | PG-13  |
| POTLUCK MIXED               | G      |
| POTTER CONNECTICUT          | PG     |
| PREJUDICE OLEANDER          | PG-13  |
| PRESIDENT BANG              | PG     |
| PRIMARY GLASS               | G      |
| PRIVATE DROP                | PG     |
| PRIX UNDEFEATED             | R      |
| PSYCHO SHRUNK               | PG-13  |
| PULP BEVERLY                | G      |
| PUNK DIVORCE                | PG     |
| PURPLE MOVIE                | R      |
| QUEEN LUKE                  | PG     |
| QUEST MUSSOLINI             | R      |
| QUILLS BULL                 | R      |
| RAGE GAMES                  | R      |
| RAGING AIRPLANE             | R      |
| RAIDERS ANTITRUST           | PG-13  |
| RAINBOW SHOCK               | PG     |
| RANGE MOONWALKER            | PG     |
| REAP UNFAITHFUL             | PG-13  |
| REBEL AIRPORT               | G      |
| RECORDS ZORRO               | PG     |
| REDS POCUS                  | PG-13  |
| REIGN GENTLEMEN             | PG-13  |
| REMEMBER DIARY              | R      |
| REQUIEM TYCOON              | R      |
| RESERVOIR ADAPTATION        | PG-13  |
| RESURRECTION SILVERADO      | PG     |
| REUNION WITCHES             | R      |
| RIDER CADDYSHACK            | PG     |
| RIDGEMONT SUBMARINE         | PG-13  |
| RIGHT CRANES                | PG-13  |
| RINGS HEARTBREAKERS         | G      |
| RIVER OUTLAW                | PG-13  |
| ROAD ROXANNE                | R      |
| ROBBERS JOON                | PG-13  |
| ROBBERY BRIGHT              | R      |
| ROCK INSTINCT               | G      |
| ROCKETEER MOTHER            | PG-13  |
| ROCKY WAR                   | PG-13  |
| ROLLERCOASTER BRINGING      | PG-13  |
| ROOF CHAMPION               | R      |
| ROOM ROMAN                  | PG     |
| ROOTS REMEMBER              | PG-13  |
| ROSES TREASURE              | PG-13  |
| ROXANNE REBEL               | R      |
| RUGRATS SHAKESPEARE         | PG-13  |
| RULES HUMAN                 | R      |
| RUN PACIFIC                 | R      |
| RUSH GOODFELLAS             | PG     |
| RUSHMORE MERMAID            | PG-13  |
| SABRINA MIDNIGHT            | PG     |
| SADDLE ANTITRUST            | PG-13  |
| SAGEBRUSH CLUELESS          | G      |
| SAINTS BRIDE                | G      |
| SALUTE APOLLO               | R      |
| SAMURAI LION                | G      |
| SANTA PARIS                 | PG     |
| SASSY PACKER                | G      |
| SATISFACTION CONFIDENTIAL   | G      |
| SATURDAY LAMBS              | G      |
| SATURN NAME                 | R      |
| SAVANNAH TOWN               | PG-13  |
| SCARFACE BANG               | PG-13  |
| SCHOOL JACKET               | PG-13  |
| SCISSORHANDS SLUMS          | G      |
| SEA VIRGIN                  | PG     |
| SEATTLE EXPECATIONS         | PG-13  |
| SECRET GROUNDHOG            | PG     |
| SECRETARY ROUGE             | PG     |
| SECRETS PARADISE            | G      |
| SENSE GREEK                 | R      |
| SENSIBILITY REAR            | PG     |
| SEVEN SWARM                 | R      |
| SHAKESPEARE SADDLE          | PG-13  |
| SHANE DARKNESS              | PG     |
| SHANGHAI TYCOON             | PG     |
| SHAWSHANK BUBBLE            | PG     |
| SHEPHERD MIDSUMMER          | R      |
| SHINING ROSES               | G      |
| SHIP WONDERLAND             | R      |
| SHOCK CABIN                 | PG-13  |
| SHOOTIST SUPERFLY           | PG-13  |
| SHOW LORD                   | PG-13  |
| SHREK LICENSE               | PG-13  |
| SHRUNK DIVINE               | R      |
| SIDE ARK                    | G      |
| SIEGE MADRE                 | R      |
| SILENCE KANE                | R      |
| SILVERADO GOLDFINGER        | PG     |
| SINNERS ATLANTIS            | PG-13  |
| SISTER FREDDY               | PG-13  |
| SKY MIRACLE                 | PG     |
| SLACKER LIAISONS            | R      |
| SLEEPING SUSPECTS           | PG-13  |
| SLEEPLESS MONSOON           | G      |
| SLEEPY JAPANESE             | PG     |
| SLING LUKE                  | R      |
| SLIPPER FIDELITY            | PG-13  |
| SLUMS DUCK                  | PG     |
| SMILE EARRING               | G      |
| SMOKING BARBARELLA          | PG-13  |
| SMOOCHY CONTROL             | R      |
| SNATCH SLIPPER              | PG     |
| SNATCHERS MONTEZUMA         | PG-13  |
| SNOWMAN ROLLERCOASTER       | G      |
| SOLDIERS EVOLUTION          | R      |
| SONG HEDWIG                 | PG-13  |
| SOUP WISDOM                 | R      |
| SOUTH WAIT                  | R      |
| SPEAKEASY DATE              | PG-13  |
| SPEED SUIT                  | PG-13  |
| SPIKING ELEMENT             | G      |
| SPINAL ROCKY                | PG-13  |
| SPIRIT FLINTSTONES          | R      |
| SPIRITED CASUALTIES         | PG-13  |
| SPLASH GUMP                 | PG     |
| SPLENDOR PATTON             | R      |
| SPOILERS HELLFIGHTERS       | G      |
| SPY MILE                    | PG-13  |
| SQUAD FISH                  | PG     |
| STAGE WORLD                 | PG     |
| STAGECOACH ARMAGEDDON       | R      |
| STALLION SUNDANCE           | PG-13  |
| STAMPEDE DISTURBING         | R      |
| STAR OPERATION              | PG     |
| STEERS ARMAGEDDON           | PG     |
| STOCK GLASS                 | PG     |
| STONE FIRE                  | G      |
| STORY SIDE                  | R      |
| STRAIGHT HOURS              | R      |
| STRANGER STRANGERS          | G      |
| STRANGERS GRAFFITI          | R      |
| STREAK RIDGEMONT            | PG-13  |
| STREETCAR INTENTIONS        | R      |
| STRICTLY SCARFACE           | PG-13  |
| SUBMARINE BED               | R      |
| SUGAR WONKA                 | PG     |
| SUICIDES SILENCE            | G      |
| SUIT WALLS                  | R      |
| SUMMER SCARFACE             | G      |
| SUN CONFESSIONS             | R      |
| SUNRISE LEAGUE              | PG-13  |
| SUPER WYOMING               | PG     |
| SUPERFLY TRIP               | PG     |
| SUSPECTS QUILLS             | PG     |
| SWARM GOLD                  | PG-13  |
| SWEDEN SHINING              | PG     |
| SWEET BROTHERHOOD           | R      |
| SWEETHEARTS SUSPECTS        | G      |
| TADPOLE PARK                | PG     |
| TALENTED HOMICIDE           | PG     |
| TARZAN VIDEOTAPE            | PG-13  |
| TAXI KICK                   | PG-13  |
| TEEN APOLLO                 | G      |
| TELEGRAPH VOYAGE            | PG     |
| TELEMARK HEARTBREAKERS      | PG-13  |
| TEMPLE ATTRACTION           | PG     |
| TENENBAUMS COMMAND          | PG-13  |
| TEQUILA PAST                | PG     |
| TERMINATOR CLUB             | R      |
| THEORY MERMAID              | PG-13  |
| THIEF PELICAN               | PG-13  |
| THIN SAGEBRUSH              | PG-13  |
| TIES HUNGER                 | R      |
| TIGHTS DAWN                 | R      |
| TIMBERLAND SKY              | G      |
| TITANIC BOONDOCK            | R      |
| TITANS JERK                 | PG     |
| TOMATOES HELLFIGHTERS       | PG     |
| TOMORROW HUSTLER            | R      |
| TOOTSIE PILOT               | PG     |
| TORQUE BOUND                | G      |
| TOURIST PELICAN             | PG-13  |
| TOWN ARK                    | R      |
| TRACY CIDER                 | G      |
| TRADING PINOCCHIO           | PG     |
| TRAFFIC HOBBIT              | G      |
| TRAIN BUNCH                 | R      |
| TRAINSPOTTING STRANGERS     | PG-13  |
| TRAMP OTHERS                | PG     |
| TRANSLATION SUMMER          | PG-13  |
| TRAP GUYS                   | G      |
| TREASURE COMMAND            | PG-13  |
| TREATMENT JEKYLL            | PG     |
| TRIP NEWTON                 | PG-13  |
| TROJAN TOMORROW             | PG     |
| TROOPERS METAL              | R      |
| TROUBLE DATE                | PG     |
| TRUMAN CRAZY                | G      |
| TURN STAR                   | G      |
| TUXEDO MILE                 | R      |
| TWISTED PIRATES             | PG     |
| TYCOON GATHERING            | G      |
| UNBREAKABLE KARATE          | G      |
| UNCUT SUICIDES              | PG-13  |
| UNDEFEATED DALMATIONS       | PG-13  |
| UNFAITHFUL KILL             | R      |
| UNFORGIVEN ZOOLANDER        | PG     |
| UNITED PILOT                | R      |
| UPTOWN YOUNG                | PG     |
| USUAL UNTOUCHABLES          | PG-13  |
| VACATION BOONDOCK           | R      |
| VALENTINE VANISHING         | PG-13  |
| VALLEY PACKER               | G      |
| VANISHED GARDEN             | R      |
| VELVET TERMINATOR           | R      |
| VERTIGO NORTHWEST           | R      |
| VICTORY ACADEMY             | PG-13  |
| VIETNAM SMOOCHY             | PG-13  |
| VILLAIN DESPERATE           | PG-13  |
| VIRGIN DAISY                | PG-13  |
| VIRGINIAN PLUTO             | R      |
| VISION TORQUE               | PG-13  |
| VOICE PEACH                 | PG-13  |
| VOLUME HOUSE                | PG     |
| VOYAGE LEGALLY              | PG-13  |
| WAGON JAWS                  | PG     |
| WAIT CIDER                  | PG-13  |
| WAKE JAWS                   | G      |
| WALLS ARTIST                | PG     |
| WANDA CHAMBER               | PG-13  |
| WAR NOTTING                 | G      |
| WARDROBE PHANTOM            | G      |
| WARLOCK WEREWOLF            | G      |
| WARS PLUTO                  | G      |
| WASH HEAVENLY               | R      |
| WASTELAND DIVINE            | PG     |
| WATCH TRACY                 | PG     |
| WATERFRONT DELIVERANCE      | G      |
| WATERSHIP FRONTIER          | G      |
| WEDDING APOLLO              | PG     |
| WEEKEND PERSONAL            | R      |
| WEREWOLF LOLA               | G      |
| WEST LION                   | G      |
| WHALE BIKINI                | PG-13  |
| WHISPERER GIANT             | PG-13  |
| WILD APOLLO                 | R      |
| WILLOW TRACY                | R      |
| WIND PHANTOM                | R      |
| WINDOW SIDE                 | R      |
| WISDOM WORKER               | R      |
| WIZARD COLDBLOODED          | PG     |
| WOMEN DORADO                | R      |
| WON DARES                   | PG     |
| WONDERLAND CHRISTMAS        | PG     |
| WORDS HUNTER                | PG     |
| WORKER TARZAN               | R      |
| WORKING MICROCOSMOS         | R      |
| WORLD LEATHERNECKS          | PG-13  |
| WORST BANGER                | PG     |
| WRONG BEHAVIOR              | PG-13  |
| WYOMING STORM               | PG-13  |
| YENTL IDAHO                 | R      |
| YOUNG LANGUAGE              | G      |
| ZOOLANDER FICTION           | R      |
+-----------------------------+--------+

```

#### Peliculas con un rating PG y duracion de más de 120.

```sql
select title,rating,length from film where rating ="PG" and length>"120";
+-----------------------+--------+--------+
| title                 | rating | length |
+-----------------------+--------+--------+
| AGENT TRUMAN          | PG     |    169 |
| ALASKA PHANTOM        | PG     |    136 |
| ALI FOREVER           | PG     |    150 |
| ARIZONA BANG          | PG     |    121 |
| ARSENIC INDEPENDENCE  | PG     |    137 |
| BIRCH ANTITRUST       | PG     |    162 |
| BORN SPINAL           | PG     |    179 |
| BRANNIGAN SUNRISE     | PG     |    121 |
| BRINGING HYSTERICAL   | PG     |    136 |
| BUCKET BROTHERHOOD    | PG     |    133 |
| CAROL TEXAS           | PG     |    151 |
| CENTER DINOSAUR       | PG     |    152 |
| CHICKEN HELLFIGHTERS  | PG     |    122 |
| CHILL LUCK            | PG     |    142 |
| COWBOY DOOM           | PG     |    146 |
| CRAZY HOME            | PG     |    136 |
| CYCLONE FAMILY        | PG     |    176 |
| DANGEROUS UPTOWN      | PG     |    121 |
| DISCIPLE MOTHER       | PG     |    141 |
| DREAM PICKUP          | PG     |    135 |
| DYING MAKER           | PG     |    168 |
| EVERYONE CRAFT        | PG     |    163 |
| FERRIS MOTHER         | PG     |    142 |
| FIREBALL PHILADELPHIA | PG     |    148 |
| FOOL MOCKINGBIRD      | PG     |    158 |
| GABLES METROPOLIS     | PG     |    161 |
| GLADIATOR WESTWARD    | PG     |    173 |
| GREEK EVERYONE        | PG     |    176 |
| GRIT CLOCKWORK        | PG     |    137 |
| HOLES BRANNIGAN       | PG     |    128 |
| HYSTERICAL GRAIL      | PG     |    150 |
| JEDI BENEATH          | PG     |    128 |
| KENTUCKIAN GIANT      | PG     |    169 |
| LIAISONS SWEET        | PG     |    140 |
| MAIDEN HOME           | PG     |    138 |
| MAJESTIC FLOATS       | PG     |    130 |
| MALLRATS UNITED       | PG     |    133 |
| MANCHURIAN CURTAIN    | PG     |    177 |
| MASSAGE IMAGE         | PG     |    161 |
| MIGHTY LUCK           | PG     |    122 |
| MONEY HAROLD          | PG     |    135 |
| MONSOON CAUSE         | PG     |    182 |
| MOTIONS DETAILS       | PG     |    166 |
| MOURNING PURPLE       | PG     |    146 |
| MULHOLLAND BEAST      | PG     |    157 |
| MURDER ANTITRUST      | PG     |    166 |
| NECKLACE OUTBREAK     | PG     |    132 |
| NIGHTMARE CHILL       | PG     |    149 |
| NORTHWEST POLISH      | PG     |    172 |
| OLEANDER CLUE         | PG     |    161 |
| OPEN AFRICAN          | PG     |    131 |
| PAPI NECKLACE         | PG     |    128 |
| PATTON INTERVIEW      | PG     |    175 |
| POLLOCK DELIVERANCE   | PG     |    137 |
| PRESIDENT BANG        | PG     |    144 |
| QUEEN LUKE            | PG     |    163 |
| RANGE MOONWALKER      | PG     |    147 |
| RECORDS ZORRO         | PG     |    182 |
| RIDER CADDYSHACK      | PG     |    177 |
| SANTA PARIS           | PG     |    154 |
| SECRETARY ROUGE       | PG     |    158 |
| SKY MIRACLE           | PG     |    132 |
| SLEEPY JAPANESE       | PG     |    137 |
| SLUMS DUCK            | PG     |    147 |
| SPLASH GUMP           | PG     |    175 |
| SQUAD FISH            | PG     |    136 |
| STAR OPERATION        | PG     |    181 |
| STEERS ARMAGEDDON     | PG     |    140 |
| STOCK GLASS           | PG     |    160 |
| SWEDEN SHINING        | PG     |    176 |
| TADPOLE PARK          | PG     |    155 |
| TALENTED HOMICIDE     | PG     |    173 |
| TELEGRAPH VOYAGE      | PG     |    148 |
| TOOTSIE PILOT         | PG     |    157 |
| TRADING PINOCCHIO     | PG     |    170 |
| TRAMP OTHERS          | PG     |    171 |
| TWISTED PIRATES       | PG     |    152 |
| UNFORGIVEN ZOOLANDER  | PG     |    129 |
| VOLUME HOUSE          | PG     |    132 |
| WAGON JAWS            | PG     |    152 |
| WALLS ARTIST          | PG     |    135 |
| WORST BANGER          | PG     |    185 |
+-----------------------+--------+--------+

```

#### ¿Cuantos actores hay?

```sql
select count(actor_id) from actor;
+-----------------+
| count(actor_id) |
+-----------------+
|             200 |
+-----------------+

```

#### ¿Cuántas ciudades tiene el country Spain?

```sql
select count(c.city_id) from city as c join country as co on co.country_id=c.country_id where co.country="Spain";
+------------------+
| count(c.city_id) |
+------------------+
|                5 |
+------------------+

```

#### ¿Cuántos countries hay que empiezan por a?

```sql
  select Count(country) from country where country regexp '^A';
+----------------+
| Count(country) |
+----------------+
|             10 |
+----------------+

```

#### Media de duración de peliculas con PG.

```sql
select avg(length) from film;
+-------------+
| avg(length) |
+-------------+
|    115.2720 |
+-------------+

```

#### Suma de rental_rate de todas las peliculas.

```sql
select sum(rental_rate) from film;
+------------------+
| sum(rental_rate) |
+------------------+
|          2980.00 |
+------------------+

```

#### Pelicula con mayor duración.

```sql
mysql> select * from film order by length desc Limit 1;
+---------+---------------+------------------------------------------------------------------------------------+--------------+-------------+----------------------+-----------------+-------------+--------+------------------+--------+----------------------------------+---------------------+
| film_id | title         | description                                                                        | release_year | language_id | original_language_id | rental_duration | rental_rate | length | replacement_cost | rating | special_features                 | last_update         |
+---------+---------------+------------------------------------------------------------------------------------+--------------+-------------+----------------------+-----------------+-------------+--------+------------------+--------+----------------------------------+---------------------+
|     141 | CHICAGO NORTH | A Fateful Yarn of a Mad Cow And a Waitress who must Battle a Student in California |         2006 |           1 |                 NULL |               6 |        4.99 |    185 |            11.99 | PG-13  | Deleted Scenes,Behind the Scenes | 2006-02-15 05:03:42 |
+---------+---------------+------------------------------------------------------------------------------------+--------------+-------------+----------------------+-----------------+-------------+--------+------------------+--------+----------------------------------+---------------------+

```

#### Película con menor duración.

```sql
select * from film order by length Limit 1;
+---------+--------------+-------------------------------------------------------------------------------------------------+--------------+-------------+----------------------+-----------------+-------------+--------+------------------+--------+-----------------------------------------+---------------------+
| film_id | title        | description                                                                                     | release_year | language_id | original_language_id | rental_duration | rental_rate | length | replacement_cost | rating | special_features                        | last_update         |
+---------+--------------+-------------------------------------------------------------------------------------------------+--------------+-------------+----------------------+-----------------+-------------+--------+------------------+--------+-----------------------------------------+---------------------+
|      15 | ALIEN CENTER | A Brilliant Drama of a Cat And a Mad Scientist who must Battle a Feminist in A MySQL Convention |         2006 |           1 |                 NULL |               5 |        2.99 |     46 |            10.99 | NC-17  | Trailers,Commentaries,Behind the Scenes | 2006-02-15 05:03:42 |
+---------+--------------+-------------------------------------------------------------------------------------------------+--------------+-------------+----------------------+-----------------+-------------+--------+------------------+--------+-----------------------------------------+---------------------+

```

#### Mostrar las ciudades del country Spain (multitabla).

```sql
 select city from city as c join country as co on co.country_id=c.country_id where co.country="Spain";
+-------------------------+
| city                    |
+-------------------------+
| A Coruña (La Coruña)    |
| Donostia-San Sebastián  |
| Gijón                   |
| Ourense (Orense)        |
| Santiago de Compostela  |
+-------------------------+

```

#### Mostrar el nombre de la película y el nombre de los actores.

```sql
select a.first_name,f.title from actor as a join film_actor as fa on a.actor_id=fa.actor_id join film as f on f.film_id=fa.film_id;
+-------------+-----------------------------+
| first_name  | title                       |
+-------------+-----------------------------+
| PENELOPE    | ACADEMY DINOSAUR            |
| PENELOPE    | ANACONDA CONFESSIONS        |
| PENELOPE    | ANGELS LIFE                 |
| PENELOPE    | BULWORTH COMMANDMENTS       |
| PENELOPE    | CHEAPER CLYDE               |
| PENELOPE    | COLOR PHILADELPHIA          |
| PENELOPE    | ELEPHANT TROJAN             |
| PENELOPE    | GLEAMING JAWBREAKER         |
| PENELOPE    | HUMAN GRAFFITI              |
| PENELOPE    | KING EVOLUTION              |
| PENELOPE    | LADY STAGE                  |
| PENELOPE    | LANGUAGE COWBOY             |
| PENELOPE    | MULHOLLAND BEAST            |
| PENELOPE    | OKLAHOMA JUMANJI            |
| PENELOPE    | RULES HUMAN                 |
| PENELOPE    | SPLASH GUMP                 |
| PENELOPE    | VERTIGO NORTHWEST           |
| PENELOPE    | WESTWARD SEABISCUIT         |
| PENELOPE    | WIZARD COLDBLOODED          |
| NICK        | ADAPTATION HOLES            |
| NICK        | APACHE DIVINE               |
| NICK        | BABY HALL                   |
| NICK        | BULL SHAWSHANK              |
| NICK        | CHAINSAW UPTOWN             |
| NICK        | CHISUM BEHAVIOR             |
| NICK        | DESTINY SATURDAY            |
| NICK        | DRACULA CRYSTAL             |
| NICK        | FIGHT JAWBREAKER            |
| NICK        | FLASH WARS                  |
| NICK        | GILBERT PELICAN             |
| NICK        | GOODFELLAS SALUTE           |
| NICK        | HAPPINESS UNITED            |
| NICK        | INDIAN LOVE                 |
| NICK        | JEKYLL FROGMEN              |
| NICK        | JERSEY SASSY                |
| NICK        | LIAISONS SWEET              |
| NICK        | LUCKY FLYING                |
| NICK        | MAGUIRE APACHE              |
| NICK        | MALLRATS UNITED             |
| NICK        | MASK PEACH                  |
| NICK        | ROOF CHAMPION               |
| NICK        | RUSHMORE MERMAID            |
| NICK        | SMILE EARRING               |
| NICK        | WARDROBE PHANTOM            |
| ED          | ALONE TRIP                  |
| ED          | ARMY FLINTSTONES            |
| ED          | ARTIST COLDBLOODED          |
| ED          | BOONDOCK BALLROOM           |
| ED          | CADDYSHACK JEDI             |
| ED          | COWBOY DOOM                 |
| ED          | EVE RESURRECTION            |
| ED          | FORREST SONS                |
| ED          | FRENCH HOLIDAY              |
| ED          | FROST HEAD                  |
| ED          | HALLOWEEN NUTS              |
| ED          | HUNTER ALTER                |
| ED          | IMAGE PRINCESS              |
| ED          | JEEPERS WEDDING             |
| ED          | LUCK OPUS                   |
| ED          | NECKLACE OUTBREAK           |
| ED          | PLATOON INSTINCT            |
| ED          | SPICE SORORITY              |
| ED          | WEDDING APOLLO              |
| ED          | WEEKEND PERSONAL            |
| ED          | WHALE BIKINI                |
| ED          | YOUNG LANGUAGE              |
| JENNIFER    | ANACONDA CONFESSIONS        |
| JENNIFER    | ANGELS LIFE                 |
| JENNIFER    | BAREFOOT MANCHURIAN         |
| JENNIFER    | BED HIGHBALL                |
| JENNIFER    | BLADE POLISH                |
| JENNIFER    | BOONDOCK BALLROOM           |
| JENNIFER    | GHOSTBUSTERS ELF            |
| JENNIFER    | GREEDY ROOTS                |
| JENNIFER    | HANOVER GALAXY              |
| JENNIFER    | INSTINCT AIRPORT            |
| JENNIFER    | JUMANJI BLADE               |
| JENNIFER    | NATIONAL STORY              |
| JENNIFER    | OKLAHOMA JUMANJI            |
| JENNIFER    | POSEIDON FOREVER            |
| JENNIFER    | RAIDERS ANTITRUST           |
| JENNIFER    | RANDOM GO                   |
| JENNIFER    | REDS POCUS                  |
| JENNIFER    | SILVERADO GOLDFINGER        |
| JENNIFER    | SPLASH GUMP                 |
| JENNIFER    | SUBMARINE BED               |
| JENNIFER    | TREASURE COMMAND            |
| JENNIFER    | UNFORGIVEN ZOOLANDER        |
| JOHNNY      | AMADEUS HOLY                |
| JOHNNY      | BANGER PINOCCHIO            |
| JOHNNY      | BONNIE HOLOCAUST            |
| JOHNNY      | CHITTY LOCK                 |
| JOHNNY      | COMMANDMENTS EXPRESS        |
| JOHNNY      | CONEHEADS SMOOCHY           |
| JOHNNY      | DADDY PITTSBURGH            |
| JOHNNY      | DAISY MENAGERIE             |
| JOHNNY      | ENOUGH RAGING               |
| JOHNNY      | ESCAPE METROPOLIS           |
| JOHNNY      | FIRE WOLVES                 |
| JOHNNY      | FRONTIER CABIN              |
| JOHNNY      | GOODFELLAS SALUTE           |
| JOHNNY      | GRAIL FRANKENSTEIN          |
| JOHNNY      | GROOVE FICTION              |
| JOHNNY      | HALL CASSIDY                |
| JOHNNY      | HEAVENLY GUN                |
| JOHNNY      | KRAMER CHOCOLATE            |
| JOHNNY      | LOVE SUICIDES               |
| JOHNNY      | METAL ARMAGEDDON            |
| JOHNNY      | PACIFIC AMISTAD             |
| JOHNNY      | PATTON INTERVIEW            |
| JOHNNY      | POCUS PULP                  |
| JOHNNY      | RIDGEMONT SUBMARINE         |
| JOHNNY      | RINGS HEARTBREAKERS         |
| JOHNNY      | SMILE EARRING               |
| JOHNNY      | SOLDIERS EVOLUTION          |
| JOHNNY      | STAR OPERATION              |
| JOHNNY      | SUNRISE LEAGUE              |
| BETTE       | ANTITRUST TOMATOES          |
| BETTE       | BANG KWAI                   |
| BETTE       | BEAST HUNCHBACK             |
| BETTE       | BIKINI BORROWERS            |
| BETTE       | CALENDAR GUNFIGHT           |
| BETTE       | COAST RAINBOW               |
| BETTE       | COLDBLOODED DARLING         |
| BETTE       | CROSSROADS CASUALTIES       |
| BETTE       | DROP WATERFRONT             |
| BETTE       | IGBY MAKER                  |
| BETTE       | KRAMER CHOCOLATE            |
| BETTE       | LANGUAGE COWBOY             |
| BETTE       | LESSON CLEOPATRA            |
| BETTE       | LIBERTY MAGNIFICENT         |
| BETTE       | MULHOLLAND BEAST            |
| BETTE       | POTLUCK MIXED               |
| BETTE       | SPEED SUIT                  |
| BETTE       | TITANIC BOONDOCK            |
| BETTE       | TRADING PINOCCHIO           |
| BETTE       | WYOMING STORM               |
| GRACE       | ANGELS LIFE                 |
| GRACE       | ANONYMOUS HUMAN             |
| GRACE       | ARACHNOPHOBIA ROLLERCOASTER |
| GRACE       | BERETS AGENT                |
| GRACE       | BREAKING HOME               |
| GRACE       | COMMAND DARLING             |
| GRACE       | CONFESSIONS MAGUIRE         |
| GRACE       | DAZED PUNK                  |
| GRACE       | DECEIVER BETRAYED           |
| GRACE       | DESTINATION JERK            |
| GRACE       | EXCITEMENT EVE              |
| GRACE       | GASLIGHT CRUSADE            |
| GRACE       | HELLFIGHTERS SIERRA         |
| GRACE       | INSTINCT AIRPORT            |
| GRACE       | MALKOVICH PET               |
| GRACE       | NECKLACE OUTBREAK           |
| GRACE       | OCTOBER SUBMARINE           |
| GRACE       | OPEN AFRICAN                |
| GRACE       | POSEIDON FOREVER            |
| GRACE       | SAINTS BRIDE                |
| GRACE       | SAVANNAH TOWN               |
| GRACE       | SCISSORHANDS SLUMS          |
| GRACE       | SLEEPLESS MONSOON           |
| GRACE       | SLEEPY JAPANESE             |
| GRACE       | STING PERSONAL              |
| GRACE       | TOWN ARK                    |
| GRACE       | TRACY CIDER                 |
| GRACE       | TREATMENT JEKYLL            |
| GRACE       | WAR NOTTING                 |
| GRACE       | WARLOCK WEREWOLF            |
| MATTHEW     | BABY HALL                   |
| MATTHEW     | CAMPUS REMEMBER             |
| MATTHEW     | CLONES PINOCCHIO            |
| MATTHEW     | CONQUERER NUTS              |
| MATTHEW     | CROWDS TELEMARK             |
| MATTHEW     | DANCES NONE                 |
| MATTHEW     | DRIVING POLISH              |
| MATTHEW     | DURHAM PANKY                |
| MATTHEW     | FLASH WARS                  |
| MATTHEW     | HANGING DEEP                |
| MATTHEW     | INDIAN LOVE                 |
| MATTHEW     | LIGHTS DEER                 |
| MATTHEW     | LOSER HUSTLER               |
| MATTHEW     | MALKOVICH PET               |
| MATTHEW     | RUNNER MADIGAN              |
| MATTHEW     | SCHOOL JACKET               |
| MATTHEW     | SCORPION APOLLO             |
| MATTHEW     | SUGAR WONKA                 |
| MATTHEW     | TOMORROW HUSTLER            |
| MATTHEW     | VANISHING ROCKY             |
| JOE         | ANYTHING SAVANNAH           |
| JOE         | BIRCH ANTITRUST             |
| JOE         | CHOCOLAT HARRY              |
| JOE         | CHOCOLATE DUCK              |
| JOE         | CROOKED FROGMEN             |
| JOE         | CURTAIN VIDEOTAPE           |
| JOE         | DALMATIONS SWEDEN           |
| JOE         | HORROR REIGN                |
| JOE         | LAWLESS VISION              |
| JOE         | LEBOWSKI SOLDIERS           |
| JOE         | MAJESTIC FLOATS             |
| JOE         | PACIFIC AMISTAD             |
| JOE         | PERDITION FARGO             |
| JOE         | PRIMARY GLASS               |
| JOE         | REEF SALUTE                 |
| JOE         | RUNNER MADIGAN              |
| JOE         | SMILE EARRING               |
| JOE         | SNATCHERS MONTEZUMA         |
| JOE         | SUNRISE LEAGUE              |
| JOE         | SWEETHEARTS SUSPECTS        |
| JOE         | TIES HUNGER                 |
| JOE         | TRAFFIC HOBBIT              |
| JOE         | UNTOUCHABLES SUNRISE        |
| JOE         | WATERFRONT DELIVERANCE      |
| JOE         | WILD APOLLO                 |
| CHRISTIAN   | ACADEMY DINOSAUR            |
| CHRISTIAN   | ALABAMA DEVIL               |
| CHRISTIAN   | CROOKED FROGMEN             |
| CHRISTIAN   | DIVINE RESURRECTION         |
| CHRISTIAN   | DRAGONFLY STRANGERS         |
| CHRISTIAN   | GOLDFINGER SENSIBILITY      |
| CHRISTIAN   | JAWBREAKER BROOKLYN         |
| CHRISTIAN   | JEEPERS WEDDING             |
| CHRISTIAN   | LIFE TWISTED                |
| CHRISTIAN   | LORD ARIZONA                |
| CHRISTIAN   | MOD SECRETARY               |
| CHRISTIAN   | PREJUDICE OLEANDER          |
| CHRISTIAN   | PUNK DIVORCE                |
| CHRISTIAN   | REAP UNFAITHFUL             |
| CHRISTIAN   | SHAKESPEARE SADDLE          |
| CHRISTIAN   | TROUBLE DATE                |
| CHRISTIAN   | USUAL UNTOUCHABLES          |
| CHRISTIAN   | VACATION BOONDOCK           |
| CHRISTIAN   | WATERFRONT DELIVERANCE      |
| CHRISTIAN   | WEDDING APOLLO              |
| CHRISTIAN   | WIZARD COLDBLOODED          |
| CHRISTIAN   | WON DARES                   |
| ZERO        | CANYON STOCK                |
| ZERO        | DANCES NONE                 |
| ZERO        | ENCINO ELF                  |
| ZERO        | ENDING CROWDS               |
| ZERO        | GANDHI KWAI                 |
| ZERO        | GODFATHER DIARY             |
| ZERO        | HANDICAP BOONDOCK           |
| ZERO        | HONEY TIES                  |
| ZERO        | HORN WORKING                |
| ZERO        | IMAGE PRINCESS              |
| ZERO        | JERSEY SASSY                |
| ZERO        | LOSER HUSTLER               |
| ZERO        | MEET CHOCOLATE              |
| ZERO        | MOD SECRETARY               |
| ZERO        | MOONWALKER FOOL             |
| ZERO        | OLEANDER CLUE               |
| ZERO        | RACER EGG                   |
| ZERO        | STORY SIDE                  |
| ZERO        | STRANGERS GRAFFITI          |
| ZERO        | THIN SAGEBRUSH              |
| ZERO        | TOOTSIE PILOT               |
| ZERO        | UPTOWN YOUNG                |
| ZERO        | VELVET TERMINATOR           |
| ZERO        | WEST LION                   |
| ZERO        | WORKER TARZAN               |
| KARL        | ALLEY EVOLUTION             |
| KARL        | ALONE TRIP                  |
| KARL        | ARABIA DOGMA                |
| KARL        | ARIZONA BANG                |
| KARL        | BOUND CHEAPER               |
| KARL        | BOWFINGER GABLES            |
| KARL        | BUNCH MINDS                 |
| KARL        | CLEOPATRA DEVIL             |
| KARL        | CONNECTICUT TRAMP           |
| KARL        | DARES PLUTO                 |
| KARL        | DATE SPEED                  |
| KARL        | DAY UNFAITHFUL              |
| KARL        | DOORS PRESIDENT             |
| KARL        | FURY MURDER                 |
| KARL        | HARDLY ROBBERS              |
| KARL        | HIGHBALL POTTER             |
| KARL        | HOLES BRANNIGAN             |
| KARL        | INDEPENDENCE HOTEL          |
| KARL        | LEATHERNECKS DWARFS         |
| KARL        | LUCKY FLYING                |
| KARL        | MONTEREY LABYRINTH          |
| KARL        | NOVOCAINE FLIGHT            |
| KARL        | OKLAHOMA JUMANJI            |
| KARL        | PERFECT GROOVE              |
| KARL        | REAP UNFAITHFUL             |
| KARL        | REUNION WITCHES             |
| KARL        | SMOKING BARBARELLA          |
| KARL        | STAGECOACH ARMAGEDDON       |
| KARL        | SWEDEN SHINING              |
| KARL        | TELEMARK HEARTBREAKERS      |
| KARL        | VIRGINIAN PLUTO             |
| UMA         | ALONE TRIP                  |
| UMA         | ANTITRUST TOMATOES          |
| UMA         | ATTRACTION NEWTON           |
| UMA         | BOONDOCK BALLROOM           |
| UMA         | CABIN FLASH                 |
| UMA         | CHINATOWN GLADIATOR         |
| UMA         | CLASH FREDDY                |
| UMA         | CLUELESS BUCKET             |
| UMA         | DAISY MENAGERIE             |
| UMA         | DRIVER ANNIE                |
| UMA         | FRIDA SLIPPER               |
| UMA         | GALAXY SWEETHEARTS          |
| UMA         | GRINCH MASSAGE              |
| UMA         | GROUNDHOG UNCUT             |
| UMA         | HOMEWARD CIDER              |
| UMA         | INCH JET                    |
| UMA         | LEATHERNECKS DWARFS         |
| UMA         | LEGALLY SECRETARY           |
| UMA         | LIFE TWISTED                |
| UMA         | LION UNCUT                  |
| UMA         | LOLITA WORLD                |
| UMA         | METAL ARMAGEDDON            |
| UMA         | MODEL FISH                  |
| UMA         | MOONWALKER FOOL             |
| UMA         | MOTIONS DETAILS             |
| UMA         | REBEL AIRPORT               |
| UMA         | RIDER CADDYSHACK            |
| UMA         | SNOWMAN ROLLERCOASTER       |
| UMA         | SOLDIERS EVOLUTION          |
| UMA         | SPLASH GUMP                 |
| UMA         | SPLENDOR PATTON             |
| UMA         | STEEL SANTA                 |
| UMA         | TORQUE BOUND                |
| UMA         | WEDDING APOLLO              |
| UMA         | ZHIVAGO CORE                |
| VIVIEN      | CLASH FREDDY                |
| VIVIEN      | CRANES RESERVOIR            |
| VIVIEN      | DIRTY ACE                   |
| VIVIEN      | DONNIE ALLEY                |
| VIVIEN      | DRIFTER COMMANDMENTS        |
| VIVIEN      | DRIVING POLISH              |
| VIVIEN      | DRUMS DYNAMITE              |
| VIVIEN      | ENEMY ODDS                  |
| VIVIEN      | EXCITEMENT EVE              |
| VIVIEN      | GORGEOUS BINGO              |
| VIVIEN      | HIGH ENCINO                 |
| VIVIEN      | HILLS NEIGHBORS             |
| VIVIEN      | HOBBIT ALIEN                |
| VIVIEN      | IMPACT ALADDIN              |
| VIVIEN      | ITALIAN AFRICAN             |
| VIVIEN      | JAPANESE RUN                |
| VIVIEN      | KENTUCKIAN GIANT            |
| VIVIEN      | LOVELY JINGLE               |
| VIVIEN      | LOVER TRUMAN                |
| VIVIEN      | MUSSOLINI SPOILERS          |
| VIVIEN      | POLISH BROOKLYN             |
| VIVIEN      | SALUTE APOLLO               |
| VIVIEN      | SATURDAY LAMBS              |
| VIVIEN      | STOCK GLASS                 |
| VIVIEN      | STREETCAR INTENTIONS        |
| VIVIEN      | TIGHTS DAWN                 |
| VIVIEN      | TRAP GUYS                   |
| VIVIEN      | TYCOON GATHERING            |
| VIVIEN      | VOICE PEACH                 |
| VIVIEN      | WESTWARD SEABISCUIT         |
| CUBA        | APACHE DIVINE               |
| CUBA        | BORROWERS BEDAZZLED         |
| CUBA        | BOUND CHEAPER               |
| CUBA        | BUTCH PANTHER               |
| CUBA        | CASSIDY WYOMING             |
| CUBA        | DIVINE RESURRECTION         |
| CUBA        | EGYPT TENENBAUMS            |
| CUBA        | EMPIRE MALKOVICH            |
| CUBA        | FLYING HOOK                 |
| CUBA        | FUGITIVE MAGUIRE            |
| CUBA        | HELLFIGHTERS SIERRA         |
| CUBA        | HYDE DOCTOR                 |
| CUBA        | KISS GLORY                  |
| CUBA        | KNOCK WARLOCK               |
| CUBA        | LUKE MUMMY                  |
| CUBA        | MAKER GABLES                |
| CUBA        | MONTEZUMA COMMAND           |
| CUBA        | NOON PAPI                   |
| CUBA        | OKLAHOMA JUMANJI            |
| CUBA        | ROSES TREASURE              |
| CUBA        | SHANE DARKNESS              |
| CUBA        | SIEGE MADRE                 |
| CUBA        | SOLDIERS EVOLUTION          |
| CUBA        | THEORY MERMAID              |
| CUBA        | UNFORGIVEN ZOOLANDER        |
| CUBA        | VOLCANO TEXAS               |
| CUBA        | WEREWOLF LOLA               |
| CUBA        | WONDERLAND CHRISTMAS        |
| FRED        | BLANKET BEVERLY             |
| FRED        | BOONDOCK BALLROOM           |
| FRED        | BROTHERHOOD BLANKET         |
| FRED        | CAROL TEXAS                 |
| FRED        | CLEOPATRA DEVIL             |
| FRED        | CONNECTICUT TRAMP           |
| FRED        | DECEIVER BETRAYED           |
| FRED        | DELIVERANCE MULHOLLAND      |
| FRED        | EAGLES PANKY                |
| FRED        | EARRING INSTINCT            |
| FRED        | EASY GLADIATOR              |
| FRED        | EMPIRE MALKOVICH            |
| FRED        | ENTRAPMENT SATISFACTION     |
| FRED        | GABLES METROPOLIS           |
| FRED        | HUMAN GRAFFITI              |
| FRED        | IMAGE PRINCESS              |
| FRED        | IMPOSSIBLE PREJUDICE        |
| FRED        | INCH JET                    |
| FRED        | KRAMER CHOCOLATE            |
| FRED        | MAGNIFICENT CHITTY          |
| FRED        | MIRACLE VIRTUAL             |
| FRED        | MISSION ZOOLANDER           |
| FRED        | REAR TRADING                |
| FRED        | SAINTS BRIDE                |
| FRED        | SENSE GREEK                 |
| FRED        | THEORY MERMAID              |
| FRED        | WEEKEND PERSONAL            |
| HELEN       | BREAKING HOME               |
| HELEN       | CAPER MOTIONS               |
| HELEN       | CASPER DRAGONFLY            |
| HELEN       | CAT CONEHEADS               |
| HELEN       | CLASH FREDDY                |
| HELEN       | CUPBOARD SINNERS            |
| HELEN       | CYCLONE FAMILY              |
| HELEN       | DIVINE RESURRECTION         |
| HELEN       | EMPIRE MALKOVICH            |
| HELEN       | FEVER EMPIRE                |
| HELEN       | FIDELITY DEVIL              |
| HELEN       | GREATEST NORTH              |
| HELEN       | INDEPENDENCE HOTEL          |
| HELEN       | IRON MOON                   |
| HELEN       | JAWS HARRY                  |
| HELEN       | KISS GLORY                  |
| HELEN       | LEGALLY SECRETARY           |
| HELEN       | LIES TREATMENT              |
| HELEN       | MICROCOSMOS PARADISE        |
| HELEN       | MOVIE SHAKESPEARE           |
| HELEN       | MUMMY CREATURES             |
| HELEN       | ROAD ROXANNE                |
| HELEN       | SCISSORHANDS SLUMS          |
| HELEN       | SIDE ARK                    |
| HELEN       | SINNERS ATLANTIS            |
| HELEN       | STRANGER STRANGERS          |
| HELEN       | SWEETHEARTS SUSPECTS        |
| HELEN       | TADPOLE PARK                |
| HELEN       | TELEMARK HEARTBREAKERS      |
| HELEN       | VOICE PEACH                 |
| HELEN       | WAR NOTTING                 |
| HELEN       | WARLOCK WEREWOLF            |
| DAN         | ATTACKS HATE                |
| DAN         | BOILED DARES                |
| DAN         | CHINATOWN GLADIATOR         |
| DAN         | CONEHEADS SMOOCHY           |
| DAN         | EARLY HOME                  |
| DAN         | ELIZABETH SHANE             |
| DAN         | EMPIRE MALKOVICH            |
| DAN         | FLASH WARS                  |
| DAN         | GUMP DATE                   |
| DAN         | INNOCENT USUAL              |
| DAN         | INSIDER ARIZONA             |
| DAN         | JERK PAYCHECK               |
| DAN         | LOVELY JINGLE               |
| DAN         | MASK PEACH                  |
| DAN         | MUSSOLINI SPOILERS          |
| DAN         | REAR TRADING                |
| DAN         | SLING LUKE                  |
| DAN         | STATE WASTELAND             |
| DAN         | SUN CONFESSIONS             |
| DAN         | TEQUILA PAST                |
| DAN         | TUXEDO MILE                 |
| DAN         | VIRGIN DAISY                |
| BOB         | ACE GOLDFINGER              |
| BOB         | ADAPTATION HOLES            |
| BOB         | CHINATOWN GLADIATOR         |
| BOB         | CIRCUS YOUTH                |
| BOB         | CONTROL ANTHEM              |
| BOB         | DARES PLUTO                 |
| BOB         | DARN FORRESTER              |
| BOB         | DAZED PUNK                  |
| BOB         | DYNAMITE TARZAN             |
| BOB         | HATE HANDICAP               |
| BOB         | HOMICIDE PEACH              |
| BOB         | JACKET FRISCO               |
| BOB         | JUMANJI BLADE               |
| BOB         | LAWLESS VISION              |
| BOB         | LEATHERNECKS DWARFS         |
| BOB         | OSCAR GOLD                  |
| BOB         | PELICAN COMFORTS            |
| BOB         | PERSONAL LADYBUGS           |
| BOB         | RAGING AIRPLANE             |
| BOB         | RUN PACIFIC                 |
| BOB         | RUNNER MADIGAN              |
| BOB         | SADDLE ANTITRUST            |
| BOB         | SCORPION APOLLO             |
| BOB         | SHAWSHANK BUBBLE            |
| BOB         | TAXI KICK                   |
| LUCILLE     | ACADEMY DINOSAUR            |
| LUCILLE     | BANGER PINOCCHIO            |
| LUCILLE     | BEDAZZLED MARRIED           |
| LUCILLE     | CHEAPER CLYDE               |
| LUCILLE     | CHITTY LOCK                 |
| LUCILLE     | COLDBLOODED DARLING         |
| LUCILLE     | DINOSAUR SECRETARY          |
| LUCILLE     | DOORS PRESIDENT             |
| LUCILLE     | EARRING INSTINCT            |
| LUCILLE     | EGG IGBY                    |
| LUCILLE     | GANDHI KWAI                 |
| LUCILLE     | GOLDFINGER SENSIBILITY      |
| LUCILLE     | HYDE DOCTOR                 |
| LUCILLE     | JAWS HARRY                  |
| LUCILLE     | JUNGLE CLOSER               |
| LUCILLE     | KING EVOLUTION              |
| LUCILLE     | LOLA AGENT                  |
| LUCILLE     | LOSE INCH                   |
| LUCILLE     | LOVERBOY ATTACKS            |
| LUCILLE     | MODERN DORADO               |
| LUCILLE     | ORIENT CLOSER               |
| LUCILLE     | PAJAMA JAWBREAKER           |
| LUCILLE     | PATIENT SISTER              |
| LUCILLE     | RANDOM GO                   |
| LUCILLE     | REAR TRADING                |
| LUCILLE     | SAGEBRUSH CLUELESS          |
| LUCILLE     | SHANGHAI TYCOON             |
| LUCILLE     | SUN CONFESSIONS             |
| LUCILLE     | WASTELAND DIVINE            |
| LUCILLE     | WINDOW SIDE                 |
| KIRSTEN     | AGENT TRUMAN                |
| KIRSTEN     | BOONDOCK BALLROOM           |
| KIRSTEN     | BORN SPINAL                 |
| KIRSTEN     | CHICKEN HELLFIGHTERS        |
| KIRSTEN     | CLOSER BANG                 |
| KIRSTEN     | CONQUERER NUTS              |
| KIRSTEN     | DRIFTER COMMANDMENTS        |
| KIRSTEN     | ENCINO ELF                  |
| KIRSTEN     | FLASH WARS                  |
| KIRSTEN     | HANOVER GALAXY              |
| KIRSTEN     | HOME PITY                   |
| KIRSTEN     | HONEY TIES                  |
| KIRSTEN     | KILL BROTHERHOOD            |
| KIRSTEN     | LADYBUGS ARMAGEDDON         |
| KIRSTEN     | LORD ARIZONA                |
| KIRSTEN     | PINOCCHIO SIMON             |
| KIRSTEN     | PLUTO OLEANDER              |
| KIRSTEN     | PRIX UNDEFEATED             |
| KIRSTEN     | PULP BEVERLY                |
| KIRSTEN     | RIVER OUTLAW                |
| KIRSTEN     | ROAD ROXANNE                |
| KIRSTEN     | SILVERADO GOLDFINGER        |
| KIRSTEN     | SLEEPING SUSPECTS           |
| KIRSTEN     | THIEF PELICAN               |
| KIRSTEN     | TITANS JERK                 |
| KIRSTEN     | UNBREAKABLE KARATE          |
| KIRSTEN     | WON DARES                   |
| ELVIS       | ALABAMA DEVIL               |
| ELVIS       | ANACONDA CONFESSIONS        |
| ELVIS       | BAREFOOT MANCHURIAN         |
| ELVIS       | BORROWERS BEDAZZLED         |
| ELVIS       | CADDYSHACK JEDI             |
| ELVIS       | CHITTY LOCK                 |
| ELVIS       | EVOLUTION ALTER             |
| ELVIS       | EXPECATIONS NATURAL         |
| ELVIS       | GANGS PRIDE                 |
| ELVIS       | GOODFELLAS SALUTE           |
| ELVIS       | HOBBIT ALIEN                |
| ELVIS       | HOOK CHARIOTS               |
| ELVIS       | JERICHO MULAN               |
| ELVIS       | JUMPING WRATH               |
| ELVIS       | KENTUCKIAN GIANT            |
| ELVIS       | LOVELY JINGLE               |
| ELVIS       | MOTIONS DETAILS             |
| ELVIS       | ODDS BOOGIE                 |
| ELVIS       | OUTLAW HANKY                |
| ELVIS       | POLISH BROOKLYN             |
| ELVIS       | RIGHT CRANES                |
| ELVIS       | ROOF CHAMPION               |
| ELVIS       | SEATTLE EXPECATIONS         |
| ELVIS       | SKY MIRACLE                 |
| ELVIS       | TROJAN TOMORROW             |
| ELVIS       | WATERFRONT DELIVERANCE      |
| SANDRA      | AGENT TRUMAN                |
| SANDRA      | ARTIST COLDBLOODED          |
| SANDRA      | BLACKOUT PRIVATE            |
| SANDRA      | BULL SHAWSHANK              |
| SANDRA      | CANDIDATE PERDITION         |
| SANDRA      | CANDLES GRAPES              |
| SANDRA      | CASSIDY WYOMING             |
| SANDRA      | DARN FORRESTER              |
| SANDRA      | DESTINY SATURDAY            |
| SANDRA      | DIVIDE MONSTER              |
| SANDRA      | DRIVER ANNIE                |
| SANDRA      | GOLDMINE TYCOON             |
| SANDRA      | GORGEOUS BINGO              |
| SANDRA      | HELLFIGHTERS SIERRA         |
| SANDRA      | HOCUS FRIDA                 |
| SANDRA      | HOTEL HAPPINESS             |
| SANDRA      | IDENTITY LOVER              |
| SANDRA      | JUMPING WRATH               |
| SANDRA      | LOVELY JINGLE               |
| SANDRA      | MAGNOLIA FORRESTER          |
| SANDRA      | OLEANDER CLUE               |
| SANDRA      | OZ LIAISONS                 |
| SANDRA      | PERSONAL LADYBUGS           |
| SANDRA      | POSEIDON FOREVER            |
| SANDRA      | SAVANNAH TOWN               |
| SANDRA      | SHAKESPEARE SADDLE          |
| SANDRA      | SLEEPING SUSPECTS           |
| SANDRA      | SONS INTERVIEW              |
| SANDRA      | SPEED SUIT                  |
| SANDRA      | SPLENDOR PATTON             |
| SANDRA      | STATE WASTELAND             |
| SANDRA      | STRANGER STRANGERS          |
| SANDRA      | STREAK RIDGEMONT            |
| SANDRA      | STREETCAR INTENTIONS        |
| SANDRA      | VANISHED GARDEN             |
| SANDRA      | WOLVES DESIRE               |
| SANDRA      | YOUTH KICK                  |
| CAMERON     | ADAPTATION HOLES            |
| CAMERON     | BLUES INSTINCT              |
| CAMERON     | CALENDAR GUNFIGHT           |
| CAMERON     | CASUALTIES ENCINO           |
| CAMERON     | CHOCOLATE DUCK              |
| CAMERON     | COAST RAINBOW               |
| CAMERON     | CONNECTION MICROCOSMOS      |
| CAMERON     | CROW GREASE                 |
| CAMERON     | CUPBOARD SINNERS            |
| CAMERON     | DOOM DANCING                |
| CAMERON     | DROP WATERFRONT             |
| CAMERON     | ELEPHANT TROJAN             |
| CAMERON     | FREEDOM CLEOPATRA           |
| CAMERON     | HAUNTED ANTITRUST           |
| CAMERON     | INSTINCT AIRPORT            |
| CAMERON     | LEGALLY SECRETARY           |
| CAMERON     | MOB DUFFEL                  |
| CAMERON     | MOVIE SHAKESPEARE           |
| CAMERON     | PANIC CLUB                  |
| CAMERON     | PURE RUNNER                 |
| CAMERON     | SEVEN SWARM                 |
| CAMERON     | SPINAL ROCKY                |
| CAMERON     | SPLASH GUMP                 |
| CAMERON     | WEST LION                   |
| KEVIN       | AMERICAN CIRCUS             |
| KEVIN       | BOOGIE AMELIE               |
| KEVIN       | CITIZEN SHREK               |
| KEVIN       | CONQUERER NUTS              |
| KEVIN       | DALMATIONS SWEDEN           |
| KEVIN       | DATE SPEED                  |
| KEVIN       | DESTINY SATURDAY            |
| KEVIN       | DOUBLE WRATH                |
| KEVIN       | FICTION CHRISTMAS           |
| KEVIN       | HATE HANDICAP               |
| KEVIN       | HEAVENLY GUN                |
| KEVIN       | HOLES BRANNIGAN             |
| KEVIN       | LOVERBOY ATTACKS            |
| KEVIN       | MASSAGE IMAGE               |
| KEVIN       | MISSION ZOOLANDER           |
| KEVIN       | MUMMY CREATURES             |
| KEVIN       | POLISH BROOKLYN             |
| KEVIN       | PRIMARY GLASS               |
| KEVIN       | SABRINA MIDNIGHT            |
| KEVIN       | SWEDEN SHINING              |
| KEVIN       | TROUBLE DATE                |
| RIP         | ALABAMA DEVIL               |
| RIP         | AMERICAN CIRCUS             |
| RIP         | ARABIA DOGMA                |
| RIP         | BOULEVARD MOB               |
| RIP         | BRANNIGAN SUNRISE           |
| RIP         | BUCKET BROTHERHOOD          |
| RIP         | CHOCOLAT HARRY              |
| RIP         | CRAFT OUTFIELD              |
| RIP         | CYCLONE FAMILY              |
| RIP         | DESTINATION JERK            |
| RIP         | DONNIE ALLEY                |
| RIP         | FOOL MOCKINGBIRD            |
| RIP         | FORREST SONS                |
| RIP         | FRONTIER CABIN              |
| RIP         | GABLES METROPOLIS           |
| RIP         | GUYS FALCON                 |
| RIP         | HALL CASSIDY                |
| RIP         | LONELY ELEPHANT             |
| RIP         | MADISON TRAP                |
| RIP         | MASSAGE IMAGE               |
| RIP         | OKLAHOMA JUMANJI            |
| RIP         | OSCAR GOLD                  |
| RIP         | PITTSBURGH HUNCHBACK        |
| RIP         | POLISH BROOKLYN             |
| RIP         | RANGE MOONWALKER            |
| RIP         | RINGS HEARTBREAKERS         |
| RIP         | SAINTS BRIDE                |
| RIP         | SATURDAY LAMBS              |
| RIP         | SIEGE MADRE                 |
| RIP         | SORORITY QUEEN              |
| RIP         | TEXAS WATCH                 |
| RIP         | TRAIN BUNCH                 |
| RIP         | TRAMP OTHERS                |
| JULIA       | AMADEUS HOLY                |
| JULIA       | ARABIA DOGMA                |
| JULIA       | BONNIE HOLOCAUST            |
| JULIA       | CIDER DESIRE                |
| JULIA       | CONEHEADS SMOOCHY           |
| JULIA       | EFFECT GLADIATOR            |
| JULIA       | FREDDY STORM                |
| JULIA       | GAMES BOWFINGER             |
| JULIA       | GLADIATOR WESTWARD          |
| JULIA       | HANOVER GALAXY              |
| JULIA       | HIGH ENCINO                 |
| JULIA       | INSIDER ARIZONA             |
| JULIA       | JAWBREAKER BROOKLYN         |
| JULIA       | KISS GLORY                  |
| JULIA       | KRAMER CHOCOLATE            |
| JULIA       | LUCKY FLYING                |
| JULIA       | MOCKINGBIRD HOLLYWOOD       |
| JULIA       | MONTEREY LABYRINTH          |
| JULIA       | OPEN AFRICAN                |
| JULIA       | PILOT HOOSIERS              |
| JULIA       | PITTSBURGH HUNCHBACK        |
| JULIA       | PRESIDENT BANG              |
| JULIA       | SCORPION APOLLO             |
| JULIA       | SLEEPLESS MONSOON           |
| JULIA       | SPIRIT FLINTSTONES          |
| JULIA       | STRANGERS GRAFFITI          |
| JULIA       | SWEETHEARTS SUSPECTS        |
| JULIA       | TELEMARK HEARTBREAKERS      |
| JULIA       | TIES HUNGER                 |
| JULIA       | TRAIN BUNCH                 |
| JULIA       | WEEKEND PERSONAL            |
| JULIA       | WONKA SEA                   |
| JULIA       | YOUNG LANGUAGE              |
| WOODY       | ALICE FANTASIA              |
| WOODY       | ATLANTIS CAUSE              |
| WOODY       | BEACH HEARTBREAKERS         |
| WOODY       | BIRCH ANTITRUST             |
| WOODY       | BREAKING HOME               |
| WOODY       | BUNCH MINDS                 |
| WOODY       | DUCK RACER                  |
| WOODY       | DURHAM PANKY                |
| WOODY       | ENTRAPMENT SATISFACTION     |
| WOODY       | GILMORE BOILED              |
| WOODY       | KNOCK WARLOCK               |
| WOODY       | LAMBS CINCINATTI            |
| WOODY       | LOSER HUSTLER               |
| WOODY       | MAIDEN HOME                 |
| WOODY       | MIDNIGHT WESTWARD           |
| WOODY       | MOONWALKER FOOL             |
| WOODY       | NEIGHBORS CHARADE           |
| WOODY       | NONE SPIKING                |
| WOODY       | PAJAMA JAWBREAKER           |
| WOODY       | PILOT HOOSIERS              |
| WOODY       | ROOM ROMAN                  |
| WOODY       | SHOOTIST SUPERFLY           |
| WOODY       | SHRUNK DIVINE               |
| WOODY       | SNOWMAN ROLLERCOASTER       |
| WOODY       | SPICE SORORITY              |
| WOODY       | SPY MILE                    |
| WOODY       | TELEGRAPH VOYAGE            |
| WOODY       | TRAP GUYS                   |
| WOODY       | WAIT CIDER                  |
| WOODY       | WIFE TURN                   |
| WOODY       | WYOMING STORM               |
| ALEC        | ALADDIN CALENDAR            |
| ALEC        | BLADE POLISH                |
| ALEC        | BULL SHAWSHANK              |
| ALEC        | CABIN FLASH                 |
| ALEC        | CENTER DINOSAUR             |
| ALEC        | CHAMBER ITALIAN             |
| ALEC        | CONEHEADS SMOOCHY           |
| ALEC        | DESTINY SATURDAY            |
| ALEC        | EFFECT GLADIATOR            |
| ALEC        | ENCOUNTERS CURTAIN          |
| ALEC        | EXPRESS LONELY              |
| ALEC        | FICTION CHRISTMAS           |
| ALEC        | FREEDOM CLEOPATRA           |
| ALEC        | FUGITIVE MAGUIRE            |
| ALEC        | HOURS RAGE                  |
| ALEC        | HUSTLER PARTY               |
| ALEC        | IDENTITY LOVER              |
| ALEC        | INSIDER ARIZONA             |
| ALEC        | JEOPARDY ENCINO             |
| ALEC        | JOON NORTHWEST              |
| ALEC        | LIBERTY MAGNIFICENT         |
| ALEC        | MAGIC MALLRATS              |
| ALEC        | MONEY HAROLD                |
| ALEC        | OUTBREAK DIVINE             |
| ALEC        | REIGN GENTLEMEN             |
| ALEC        | SMOKING BARBARELLA          |
| ALEC        | SUMMER SCARFACE             |
| ALEC        | UPTOWN YOUNG                |
| ALEC        | VIRGIN DAISY                |
| SANDRA      | ACADEMY DINOSAUR            |
| SANDRA      | BANG KWAI                   |
| SANDRA      | BEETHOVEN EXORCIST          |
| SANDRA      | BEVERLY OUTLAW              |
| SANDRA      | BIRDS PERDITION             |
| SANDRA      | BOONDOCK BALLROOM           |
| SANDRA      | DUDE BLINDNESS              |
| SANDRA      | DUMBO LUST                  |
| SANDRA      | ENOUGH RAGING               |
| SANDRA      | EXCITEMENT EVE              |
| SANDRA      | FAMILY SWEET                |
| SANDRA      | FIREHOUSE VIETNAM           |
| SANDRA      | FLASH WARS                  |
| SANDRA      | GILBERT PELICAN             |
| SANDRA      | MATRIX SNOWMAN              |
| SANDRA      | RINGS HEARTBREAKERS         |
| SANDRA      | SILENCE KANE                |
| SANDRA      | STAGECOACH ARMAGEDDON       |
| SANDRA      | VIRGINIAN PLUTO             |
| SISSY       | BORN SPINAL                 |
| SISSY       | CHITTY LOCK                 |
| SISSY       | CLYDE THEORY                |
| SISSY       | COAST RAINBOW               |
| SISSY       | CRAZY HOME                  |
| SISSY       | FACTORY DRAGON              |
| SISSY       | FERRIS MOTHER               |
| SISSY       | GONE TROUBLE                |
| SISSY       | GREEK EVERYONE              |
| SISSY       | HOOSIERS BIRDCAGE           |
| SISSY       | MOB DUFFEL                  |
| SISSY       | OPEN AFRICAN                |
| SISSY       | PRIX UNDEFEATED             |
| SISSY       | ROCKY WAR                   |
| SISSY       | SHRUNK DIVINE               |
| SISSY       | SKY MIRACLE                 |
| SISSY       | TELEMARK HEARTBREAKERS      |
| SISSY       | WISDOM WORKER               |
| TIM         | BEHAVIOR RUNAWAY            |
| TIM         | BOILED DARES                |
| TIM         | BUCKET BROTHERHOOD          |
| TIM         | CALENDAR GUNFIGHT           |
| TIM         | CHAPLIN LICENSE             |
| TIM         | CRUSADE HONEY               |
| TIM         | CUPBOARD SINNERS            |
| TIM         | DEEP CRUSADE                |
| TIM         | FEUD FROGMEN                |
| TIM         | FIDDLER LOST                |
| TIM         | HAROLD FRENCH               |
| TIM         | HOMEWARD CIDER              |
| TIM         | HOOSIERS BIRDCAGE           |
| TIM         | LIGHTS DEER                 |
| TIM         | MEET CHOCOLATE              |
| TIM         | MOB DUFFEL                  |
| TIM         | MUMMY CREATURES             |
| TIM         | PACKER MADIGAN              |
| TIM         | PEACH INNOCENT              |
| TIM         | PEARL DESTINY               |
| TIM         | SNATCHERS MONTEZUMA         |
| TIM         | UPTOWN YOUNG                |
| TIM         | WIZARD COLDBLOODED          |
| MILLA       | BAREFOOT MANCHURIAN         |
| MILLA       | CALENDAR GUNFIGHT           |
| MILLA       | CHANCE RESURRECTION         |
| MILLA       | CLASH FREDDY                |
| MILLA       | DAUGHTER MADIGAN            |
| MILLA       | DREAM PICKUP                |
| MILLA       | FATAL HAUNTED               |
| MILLA       | FEATHERS METAL              |
| MILLA       | JACKET FRISCO               |
| MILLA       | JUGGLER HARDLY              |
| MILLA       | MIDNIGHT WESTWARD           |
| MILLA       | NECKLACE OUTBREAK           |
| MILLA       | PEACH INNOCENT              |
| MILLA       | PREJUDICE OLEANDER          |
| MILLA       | RAIDERS ANTITRUST           |
| MILLA       | ROBBERS JOON                |
| MILLA       | ROCK INSTINCT               |
| MILLA       | RUSHMORE MERMAID            |
| MILLA       | SEATTLE EXPECATIONS         |
| MILLA       | TEEN APOLLO                 |
| MILLA       | TEMPLE ATTRACTION           |
| MILLA       | WATERSHIP FRONTIER          |
| MILLA       | WHISPERER GIANT             |
| MILLA       | WRONG BEHAVIOR              |
| AUDREY      | ATLANTIS CAUSE              |
| AUDREY      | BOULEVARD MOB               |
| AUDREY      | CAPER MOTIONS               |
| AUDREY      | CASSIDY WYOMING             |
| AUDREY      | CONEHEADS SMOOCHY           |
| AUDREY      | CONTROL ANTHEM              |
| AUDREY      | DORADO NOTTING              |
| AUDREY      | FRENCH HOLIDAY              |
| AUDREY      | GUNFIGHTER MUSSOLINI        |
| AUDREY      | HALLOWEEN NUTS              |
| AUDREY      | HUMAN GRAFFITI              |
| AUDREY      | KANE EXORCIST               |
| AUDREY      | KNOCK WARLOCK               |
| AUDREY      | LOATHING LEGALLY            |
| AUDREY      | PEAK FOREVER                |
| AUDREY      | REDEMPTION COMFORTS         |
| AUDREY      | SENSE GREEK                 |
| AUDREY      | SHIP WONDERLAND             |
| AUDREY      | SIDE ARK                    |
| AUDREY      | SQUAD FISH                  |
| AUDREY      | STING PERSONAL              |
| AUDREY      | STRANGER STRANGERS          |
| AUDREY      | USUAL UNTOUCHABLES          |
| AUDREY      | VOLUME HOUSE                |
| AUDREY      | WHALE BIKINI                |
| JUDY        | ALADDIN CALENDAR            |
| JUDY        | ARACHNOPHOBIA ROLLERCOASTER |
| JUDY        | BALLROOM MOCKINGBIRD        |
| JUDY        | CYCLONE FAMILY              |
| JUDY        | DROP WATERFRONT             |
| JUDY        | GUNFIGHTER MUSSOLINI        |
| JUDY        | MODERN DORADO               |
| JUDY        | MUSSOLINI SPOILERS          |
| JUDY        | NASH CHOCOLAT               |
| JUDY        | QUEST MUSSOLINI             |
| JUDY        | RINGS HEARTBREAKERS         |
| JUDY        | ROCKETEER MOTHER            |
| JUDY        | RUGRATS SHAKESPEARE         |
| JUDY        | SOLDIERS EVOLUTION          |
| JUDY        | TROUBLE DATE                |
| BURT        | ALIEN CENTER                |
| BURT        | BLINDNESS GUN               |
| BURT        | COMMANDMENTS EXPRESS        |
| BURT        | DINOSAUR SECRETARY          |
| BURT        | DOUBLE WRATH                |
| BURT        | ENDING CROWDS               |
| BURT        | GREEK EVERYONE              |
| BURT        | GRINCH MASSAGE              |
| BURT        | GUN BONNIE                  |
| BURT        | GUYS FALCON                 |
| BURT        | HEAVEN FREEDOM              |
| BURT        | HOME PITY                   |
| BURT        | HOMEWARD CIDER              |
| BURT        | IMAGE PRINCESS              |
| BURT        | INTOLERABLE INTENTIONS      |
| BURT        | JERK PAYCHECK               |
| BURT        | KANE EXORCIST               |
| BURT        | KING EVOLUTION              |
| BURT        | MENAGERIE RUSHMORE          |
| BURT        | MONEY HAROLD                |
| BURT        | MOTIONS DETAILS             |
| BURT        | RANDOM GO                   |
| BURT        | RANGE MOONWALKER            |
| BURT        | REAP UNFAITHFUL             |
| BURT        | RIGHT CRANES                |
| BURT        | TALENTED HOMICIDE           |
| BURT        | TRUMAN CRAZY                |
| BURT        | VALENTINE VANISHING         |
| BURT        | WANDA CHAMBER               |
| VAL         | ALADDIN CALENDAR            |
| VAL         | ALASKA PHANTOM              |
| VAL         | AMADEUS HOLY                |
| VAL         | CANYON STOCK                |
| VAL         | CAPER MOTIONS               |
| VAL         | CARRIE BUNCH                |
| VAL         | CHITTY LOCK                 |
| VAL         | DALMATIONS SWEDEN           |
| VAL         | DRIFTER COMMANDMENTS        |
| VAL         | DUDE BLINDNESS              |
| VAL         | ELEPHANT TROJAN             |
| VAL         | FIREBALL PHILADELPHIA       |
| VAL         | INTRIGUE WORST              |
| VAL         | JAWBREAKER BROOKLYN         |
| VAL         | JERSEY SASSY                |
| VAL         | LAMBS CINCINATTI            |
| VAL         | LONELY ELEPHANT             |
| VAL         | MAKER GABLES                |
| VAL         | MALLRATS UNITED             |
| VAL         | METROPOLIS COMA             |
| VAL         | MODEL FISH                  |
| VAL         | PATHS CONTROL               |
| VAL         | PATIENT SISTER              |
| VAL         | PREJUDICE OLEANDER          |
| VAL         | PRIMARY GLASS               |
| VAL         | SHAWSHANK BUBBLE            |
| VAL         | STALLION SUNDANCE           |
| VAL         | STAMPEDE DISTURBING         |
| VAL         | STRANGER STRANGERS          |
| VAL         | TOWN ARK                    |
| VAL         | UNITED PILOT                |
| VAL         | WATCH TRACY                 |
| VAL         | WEDDING APOLLO              |
| VAL         | WORKING MICROCOSMOS         |
| VAL         | YOUTH KICK                  |
| TOM         | ANALYZE HOOSIERS            |
| TOM         | CADDYSHACK JEDI             |
| TOM         | CLUB GRAFFITI               |
| TOM         | CONGENIALITY QUEST          |
| TOM         | DESIRE ALIEN                |
| TOM         | DONNIE ALLEY                |
| TOM         | EGG IGBY                    |
| TOM         | FREEDOM CLEOPATRA           |
| TOM         | FRISCO FORREST              |
| TOM         | GENTLEMEN STAGE             |
| TOM         | IDAHO LOVE                  |
| TOM         | IDOLS SNATCHERS             |
| TOM         | INDIAN LOVE                 |
| TOM         | KISSING DOLLS               |
| TOM         | LEGEND JEDI                 |
| TOM         | MAGIC MALLRATS              |
| TOM         | MISSION ZOOLANDER           |
| TOM         | NECKLACE OUTBREAK           |
| TOM         | NEIGHBORS CHARADE           |
| TOM         | PURPLE MOVIE                |
| TOM         | SHRUNK DIVINE               |
| TOM         | SPICE SORORITY              |
| TOM         | STALLION SUNDANCE           |
| TOM         | STRANGER STRANGERS          |
| TOM         | TARZAN VIDEOTAPE            |
| GOLDIE      | BILKO ANONYMOUS             |
| GOLDIE      | BINGO TALENTED              |
| GOLDIE      | COMANCHEROS ENEMY           |
| GOLDIE      | DAISY MENAGERIE             |
| GOLDIE      | DESERT POSEIDON             |
| GOLDIE      | EVERYONE CRAFT              |
| GOLDIE      | EXORCIST STING              |
| GOLDIE      | FLAMINGOS CONNECTICUT       |
| GOLDIE      | HIGH ENCINO                 |
| GOLDIE      | HOLY TADPOLE                |
| GOLDIE      | HOOSIERS BIRDCAGE           |
| GOLDIE      | INCH JET                    |
| GOLDIE      | JASON TRAP                  |
| GOLDIE      | MARRIED GO                  |
| GOLDIE      | MOD SECRETARY               |
| GOLDIE      | MOSQUITO ARMAGEDDON         |
| GOLDIE      | MUMMY CREATURES             |
| GOLDIE      | OUTLAW HANKY                |
| GOLDIE      | PITY BOUND                  |
| GOLDIE      | POLLOCK DELIVERANCE         |
| GOLDIE      | PRIDE ALAMO                 |
| GOLDIE      | PRIX UNDEFEATED             |
| GOLDIE      | PUNK DIVORCE                |
| GOLDIE      | ROBBERY BRIGHT              |
| GOLDIE      | SEA VIRGIN                  |
| GOLDIE      | SNATCHERS MONTEZUMA         |
| GOLDIE      | SPIRITED CASUALTIES         |
| GOLDIE      | UNBREAKABLE KARATE          |
| JOHNNY      | ACADEMY DINOSAUR            |
| JOHNNY      | ALAMO VIDEOTAPE             |
| JOHNNY      | ARABIA DOGMA                |
| JOHNNY      | BUNCH MINDS                 |
| JOHNNY      | CATCH AMISTAD               |
| JOHNNY      | CLYDE THEORY                |
| JOHNNY      | CONNECTICUT TRAMP           |
| JOHNNY      | DESIRE ALIEN                |
| JOHNNY      | DISCIPLE MOTHER             |
| JOHNNY      | FLYING HOOK                 |
| JOHNNY      | GRAFFITI LOVE               |
| JOHNNY      | HAMLET WISDOM               |
| JOHNNY      | HANGING DEEP                |
| JOHNNY      | INSTINCT AIRPORT            |
| JOHNNY      | INTOLERABLE INTENTIONS      |
| JOHNNY      | KARATE MOON                 |
| JOHNNY      | LIES TREATMENT              |
| JOHNNY      | REIGN GENTLEMEN             |
| JOHNNY      | ROCK INSTINCT               |
| JOHNNY      | ROOTS REMEMBER              |
| JOHNNY      | ROXANNE REBEL               |
| JOHNNY      | RUSHMORE MERMAID            |
| JOHNNY      | SIMON NORTH                 |
| JOHNNY      | SPY MILE                    |
| JOHNNY      | SUPERFLY TRIP               |
| JOHNNY      | SUSPECTS QUILLS             |
| JOHNNY      | THIEF PELICAN               |
| JOHNNY      | VAMPIRE WHALE               |
| JOHNNY      | VELVET TERMINATOR           |
| JODIE       | AFFAIR PREJUDICE            |
| JODIE       | BEAST HUNCHBACK             |
| JODIE       | BEVERLY OUTLAW              |
| JODIE       | BOOGIE AMELIE               |
| JODIE       | BROOKLYN DESERT             |
| JODIE       | CIDER DESIRE                |
| JODIE       | CLOSER BANG                 |
| JODIE       | CROW GREASE                 |
| JODIE       | DAISY MENAGERIE             |
| JODIE       | DARN FORRESTER              |
| JODIE       | DIARY PANIC                 |
| JODIE       | DRACULA CRYSTAL             |
| JODIE       | DREAM PICKUP                |
| JODIE       | FATAL HAUNTED               |
| JODIE       | FRENCH HOLIDAY              |
| JODIE       | GROOVE FICTION              |
| JODIE       | MADISON TRAP                |
| JODIE       | MOONSHINE CABIN             |
| JODIE       | PARADISE SABRINA            |
| JODIE       | PET HAUNTING                |
| JODIE       | PICKUP DRIVING              |
| JODIE       | REDS POCUS                  |
| JODIE       | REMEMBER DIARY              |
| JODIE       | SENSE GREEK                 |
| JODIE       | SHANGHAI TYCOON             |
| JODIE       | SIMON NORTH                 |
| JODIE       | TOMATOES HELLFIGHTERS       |
| JODIE       | TROJAN TOMORROW             |
| JODIE       | VIETNAM SMOOCHY             |
| TOM         | ANALYZE HOOSIERS            |
| TOM         | CHASING FIGHT               |
| TOM         | FEUD FROGMEN                |
| TOM         | FLAMINGOS CONNECTICUT       |
| TOM         | FREAKY POCUS                |
| TOM         | KISS GLORY                  |
| TOM         | KNOCK WARLOCK               |
| TOM         | LABYRINTH LEAGUE            |
| TOM         | LOLA AGENT                  |
| TOM         | LOVE SUICIDES               |
| TOM         | MADRE GABLES                |
| TOM         | MEMENTO ZOOLANDER           |
| TOM         | OUTLAW HANKY                |
| TOM         | PATTON INTERVIEW            |
| TOM         | PERSONAL LADYBUGS           |
| TOM         | POCUS PULP                  |
| TOM         | RAINBOW SHOCK               |
| TOM         | ROCKETEER MOTHER            |
| TOM         | SILVERADO GOLDFINGER        |
| TOM         | SUIT WALLS                  |
| TOM         | SUNRISE LEAGUE              |
| TOM         | SUPER WYOMING               |
| TOM         | TARZAN VIDEOTAPE            |
| TOM         | TIGHTS DAWN                 |
| TOM         | TRANSLATION SUMMER          |
| TOM         | UNDEFEATED DALMATIONS       |
| TOM         | VALLEY PACKER               |
| KIRK        | AMADEUS HOLY                |
| KIRK        | ARTIST COLDBLOODED          |
| KIRK        | BAREFOOT MANCHURIAN         |
| KIRK        | BORROWERS BEDAZZLED         |
| KIRK        | BULL SHAWSHANK              |
| KIRK        | CHOCOLAT HARRY              |
| KIRK        | CLUE GRAIL                  |
| KIRK        | CONSPIRACY SPIRIT           |
| KIRK        | DOGMA FAMILY                |
| KIRK        | ELEMENT FREDDY              |
| KIRK        | FORRESTER COMANCHEROS       |
| KIRK        | FURY MURDER                 |
| KIRK        | GLADIATOR WESTWARD          |
| KIRK        | GREASE YOUTH                |
| KIRK        | HEAVEN FREEDOM              |
| KIRK        | INSIDER ARIZONA             |
| KIRK        | LOST BIRD                   |
| KIRK        | MOSQUITO ARMAGEDDON         |
| KIRK        | MULHOLLAND BEAST            |
| KIRK        | MURDER ANTITRUST            |
| KIRK        | NETWORK PEAK                |
| KIRK        | RUSH GOODFELLAS             |
| KIRK        | SPICE SORORITY              |
| KIRK        | SPLENDOR PATTON             |
| KIRK        | TUXEDO MILE                 |
| KIRK        | WARDROBE PHANTOM            |
| NICK        | BEACH HEARTBREAKERS         |
| NICK        | BOILED DARES                |
| NICK        | BORN SPINAL                 |
| NICK        | BRAVEHEART HUMAN            |
| NICK        | BUTTERFLY CHOCOLAT          |
| NICK        | CONGENIALITY QUEST          |
| NICK        | DOOM DANCING                |
| NICK        | EFFECT GLADIATOR            |
| NICK        | FLATLINERS KILLER           |
| NICK        | HOLES BRANNIGAN             |
| NICK        | HORROR REIGN                |
| NICK        | JUMANJI BLADE               |
| NICK        | MONSOON CAUSE               |
| NICK        | MOSQUITO ARMAGEDDON         |
| NICK        | MULAN MOON                  |
| NICK        | PRIVATE DROP                |
| NICK        | RUNAWAY TENENBAUMS          |
| NICK        | SHANGHAI TYCOON             |
| NICK        | SPEAKEASY DATE              |
| NICK        | STRANGERS GRAFFITI          |
| NICK        | TALENTED HOMICIDE           |
| NICK        | TEEN APOLLO                 |
| NICK        | TEQUILA PAST                |
| NICK        | TOOTSIE PILOT               |
| NICK        | TRADING PINOCCHIO           |
| NICK        | VARSITY TRIP                |
| NICK        | VIRGIN DAISY                |
| NICK        | WAGON JAWS                  |
| NICK        | WOMEN DORADO                |
| NICK        | ZHIVAGO CORE                |
| REESE       | ALTER VICTORY               |
| REESE       | BEHAVIOR RUNAWAY            |
| REESE       | BENEATH RUSH                |
| REESE       | CAMPUS REMEMBER             |
| REESE       | CANDLES GRAPES              |
| REESE       | COAST RAINBOW               |
| REESE       | CRANES RESERVOIR            |
| REESE       | CRYSTAL BREAKING            |
| REESE       | DEEP CRUSADE                |
| REESE       | FORRESTER COMANCHEROS       |
| REESE       | HAWK CHILL                  |
| REESE       | HIGHBALL POTTER             |
| REESE       | INSTINCT AIRPORT            |
| REESE       | INTRIGUE WORST              |
| REESE       | JERK PAYCHECK               |
| REESE       | KNOCK WARLOCK               |
| REESE       | KRAMER CHOCOLATE            |
| REESE       | LAMBS CINCINATTI            |
| REESE       | LOVER TRUMAN                |
| REESE       | PINOCCHIO SIMON             |
| REESE       | RANDOM GO                   |
| REESE       | SCALAWAG DUCK               |
| REESE       | SECRETS PARADISE            |
| REESE       | SILENCE KANE                |
| REESE       | SLUMS DUCK                  |
| REESE       | TOMORROW HUSTLER            |
| REESE       | TOWN ARK                    |
| REESE       | TRACY CIDER                 |
| REESE       | UNBREAKABLE KARATE          |
| REESE       | UNITED PILOT                |
| REESE       | WILLOW TRACY                |
| REESE       | WISDOM WORKER               |
| PARKER      | ARK RIDGEMONT               |
| PARKER      | BALLOON HOMEWARD            |
| PARKER      | CONFIDENTIAL INTERVIEW      |
| PARKER      | DRIVER ANNIE                |
| PARKER      | EXPRESS LONELY              |
| PARKER      | FISH OPUS                   |
| PARKER      | HAWK CHILL                  |
| PARKER      | IDAHO LOVE                  |
| PARKER      | INCH JET                    |
| PARKER      | INSTINCT AIRPORT            |
| PARKER      | JAWS HARRY                  |
| PARKER      | LOVERBOY ATTACKS            |
| PARKER      | LUCKY FLYING                |
| PARKER      | MEET CHOCOLATE              |
| PARKER      | RIGHT CRANES                |
| PARKER      | SAVANNAH TOWN               |
| PARKER      | SCARFACE BANG               |
| PARKER      | SONS INTERVIEW              |
| PARKER      | SPINAL ROCKY                |
| PARKER      | SPIRIT FLINTSTONES          |
| PARKER      | SQUAD FISH                  |
| PARKER      | TIES HUNGER                 |
| PARKER      | WIZARD COLDBLOODED          |
| PARKER      | WORST BANGER                |
| JULIA       | ANGELS LIFE                 |
| JULIA       | ARGONAUTS TOWN              |
| JULIA       | BANG KWAI                   |
| JULIA       | BERETS AGENT                |
| JULIA       | CONEHEADS SMOOCHY           |
| JULIA       | DISCIPLE MOTHER             |
| JULIA       | EFFECT GLADIATOR            |
| JULIA       | GASLIGHT CRUSADE            |
| JULIA       | GROUNDHOG UNCUT             |
| JULIA       | JERK PAYCHECK               |
| JULIA       | LAMBS CINCINATTI            |
| JULIA       | MIGHTY LUCK                 |
| JULIA       | PELICAN COMFORTS            |
| JULIA       | ROAD ROXANNE                |
| JULIA       | ROCK INSTINCT               |
| JULIA       | SCISSORHANDS SLUMS          |
| JULIA       | SECRETARY ROUGE             |
| JULIA       | SHINING ROSES               |
| JULIA       | SHOOTIST SUPERFLY           |
| JULIA       | TROOPERS METAL              |
| JULIA       | UNFAITHFUL KILL             |
| JULIA       | UNFORGIVEN ZOOLANDER        |
| JULIA       | VIRGIN DAISY                |
| JULIA       | WIFE TURN                   |
| FRANCES     | BRINGING HYSTERICAL         |
| FRANCES     | BROTHERHOOD BLANKET         |
| FRANCES     | CHAMPION FLATLINERS         |
| FRANCES     | CIDER DESIRE                |
| FRANCES     | COAST RAINBOW               |
| FRANCES     | DARLING BREAKING            |
| FRANCES     | DOUBLE WRATH                |
| FRANCES     | EAGLES PANKY                |
| FRANCES     | ENTRAPMENT SATISFACTION     |
| FRANCES     | EXPENDABLE STALLION         |
| FRANCES     | FIDDLER LOST                |
| FRANCES     | FINDING ANACONDA            |
| FRANCES     | GABLES METROPOLIS           |
| FRANCES     | GANGS PRIDE                 |
| FRANCES     | HOMICIDE PEACH              |
| FRANCES     | LADY STAGE                  |
| FRANCES     | MADNESS ATTACKS             |
| FRANCES     | MARRIED GO                  |
| FRANCES     | MERMAID INSECTS             |
| FRANCES     | MOTHER OLEANDER             |
| FRANCES     | OTHERS SOUP                 |
| FRANCES     | PURPLE MOVIE                |
| FRANCES     | SAGEBRUSH CLUELESS          |
| FRANCES     | SHREK LICENSE               |
| FRANCES     | UNDEFEATED DALMATIONS       |
| FRANCES     | UNTOUCHABLES SUNRISE        |
| ANNE        | APACHE DIVINE               |
| ANNE        | CINCINATTI WHISPERER        |
| ANNE        | CROWDS TELEMARK             |
| ANNE        | DANGEROUS UPTOWN            |
| ANNE        | DRAGON SQUAD                |
| ANNE        | ENCOUNTERS CURTAIN          |
| ANNE        | GANDHI KWAI                 |
| ANNE        | HALF OUTFIELD               |
| ANNE        | HARDLY ROBBERS              |
| ANNE        | HAWK CHILL                  |
| ANNE        | HOLLYWOOD ANONYMOUS         |
| ANNE        | HORN WORKING                |
| ANNE        | IRON MOON                   |
| ANNE        | LADY STAGE                  |
| ANNE        | LUST LOCK                   |
| ANNE        | MANNEQUIN WORST             |
| ANNE        | MINDS TRUMAN                |
| ANNE        | MOON BUNCH                  |
| ANNE        | PATHS CONTROL               |
| ANNE        | RACER EGG                   |
| ANNE        | REAP UNFAITHFUL             |
| ANNE        | REQUIEM TYCOON              |
| ANNE        | RIDER CADDYSHACK            |
| ANNE        | SMILE EARRING               |
| ANNE        | UPRISING UPTOWN             |
| ANNE        | WINDOW SIDE                 |
| ANNE        | WIZARD COLDBLOODED          |
| NATALIE     | CADDYSHACK JEDI             |
| NATALIE     | CONNECTION MICROCOSMOS      |
| NATALIE     | DOORS PRESIDENT             |
| NATALIE     | DOZEN LION                  |
| NATALIE     | EGG IGBY                    |
| NATALIE     | ESCAPE METROPOLIS           |
| NATALIE     | FANTASY TROOPERS            |
| NATALIE     | FEATHERS METAL              |
| NATALIE     | FOOL MOCKINGBIRD            |
| NATALIE     | GRACELAND DYNAMITE          |
| NATALIE     | HAROLD FRENCH               |
| NATALIE     | HILLS NEIGHBORS             |
| NATALIE     | HOLES BRANNIGAN             |
| NATALIE     | HOUSE DYNAMITE              |
| NATALIE     | JASON TRAP                  |
| NATALIE     | KWAI HOMEWARD               |
| NATALIE     | LICENSE WEEKEND             |
| NATALIE     | MAJESTIC FLOATS             |
| NATALIE     | MONSOON CAUSE               |
| NATALIE     | NETWORK PEAK                |
| NATALIE     | NUTS TIES                   |
| NATALIE     | OTHERS SOUP                 |
| NATALIE     | PERFECT GROOVE              |
| NATALIE     | REAR TRADING                |
| NATALIE     | RINGS HEARTBREAKERS         |
| NATALIE     | SIEGE MADRE                 |
| NATALIE     | SPINAL ROCKY                |
| NATALIE     | STAMPEDE DISTURBING         |
| NATALIE     | TORQUE BOUND                |
| NATALIE     | TWISTED PIRATES             |
| NATALIE     | UNFORGIVEN ZOOLANDER        |
| NATALIE     | WAR NOTTING                 |
| GARY        | AFRICAN EGG                 |
| GARY        | BEDAZZLED MARRIED           |
| GARY        | BUCKET BROTHERHOOD          |
| GARY        | CALENDAR GUNFIGHT           |
| GARY        | CAROL TEXAS                 |
| GARY        | CITIZEN SHREK               |
| GARY        | HANDICAP BOONDOCK           |
| GARY        | HEAD STRANGER               |
| GARY        | HOLES BRANNIGAN             |
| GARY        | INSECTS STONE               |
| GARY        | JUMANJI BLADE               |
| GARY        | LOATHING LEGALLY            |
| GARY        | NORTH TEQUILA               |
| GARY        | PICKUP DRIVING              |
| GARY        | RIVER OUTLAW                |
| GARY        | ROAD ROXANNE                |
| GARY        | ROCK INSTINCT               |
| GARY        | RUN PACIFIC                 |
| GARY        | STOCK GLASS                 |
| GARY        | TIMBERLAND SKY              |
| GARY        | TOMORROW HUSTLER            |
| GARY        | VICTORY ACADEMY             |
| GARY        | WILD APOLLO                 |
| GARY        | WORLD LEATHERNECKS          |
| GARY        | WRONG BEHAVIOR              |
| CARMEN      | AMELIE HELLFIGHTERS         |
| CARMEN      | BOWFINGER GABLES            |
| CARMEN      | BREAKING HOME               |
| CARMEN      | BUTCH PANTHER               |
| CARMEN      | DAISY MENAGERIE             |
| CARMEN      | DRACULA CRYSTAL             |
| CARMEN      | FROST HEAD                  |
| CARMEN      | GRAPES FURY                 |
| CARMEN      | GUNFIGHT MOON               |
| CARMEN      | HAWK CHILL                  |
| CARMEN      | HOLOCAUST HIGHBALL          |
| CARMEN      | JADE BUNCH                  |
| CARMEN      | LEGALLY SECRETARY           |
| CARMEN      | LESSON CLEOPATRA            |
| CARMEN      | MIXED DOORS                 |
| CARMEN      | MOONSHINE CABIN             |
| CARMEN      | PATRIOT ROMAN               |
| CARMEN      | PHANTOM GLORY               |
| CARMEN      | POLLOCK DELIVERANCE         |
| CARMEN      | RANDOM GO                   |
| CARMEN      | SMOKING BARBARELLA          |
| CARMEN      | TEEN APOLLO                 |
| CARMEN      | TELEGRAPH VOYAGE            |
| CARMEN      | TRUMAN CRAZY                |
| CARMEN      | VOYAGE LEGALLY              |
| CARMEN      | ZOOLANDER FICTION           |
| MENA        | ACADEMY DINOSAUR            |
| MENA        | ALABAMA DEVIL               |
| MENA        | BALLOON HOMEWARD            |
| MENA        | BEACH HEARTBREAKERS         |
| MENA        | BUTTERFLY CHOCOLAT          |
| MENA        | CARRIE BUNCH                |
| MENA        | CASUALTIES ENCINO           |
| MENA        | CONTACT ANONYMOUS           |
| MENA        | DROP WATERFRONT             |
| MENA        | EARLY HOME                  |
| MENA        | ENGLISH BULWORTH            |
| MENA        | FELLOWSHIP AUTUMN           |
| MENA        | GILMORE BOILED              |
| MENA        | GUMP DATE                   |
| MENA        | ICE CROSSING                |
| MENA        | INTERVIEW LIAISONS          |
| MENA        | JUMANJI BLADE               |
| MENA        | JUNGLE CLOSER               |
| MENA        | LAMBS CINCINATTI            |
| MENA        | LIAISONS SWEET              |
| MENA        | MICROCOSMOS PARADISE        |
| MENA        | MIGHTY LUCK                 |
| MENA        | MILE MULAN                  |
| MENA        | PRIMARY GLASS               |
| MENA        | REQUIEM TYCOON              |
| MENA        | RESURRECTION SILVERADO      |
| MENA        | VARSITY TRIP                |
| MENA        | VISION TORQUE               |
| MENA        | WASH HEAVENLY               |
| MENA        | WIZARD COLDBLOODED          |
| PENELOPE    | BOILED DARES                |
| PENELOPE    | CAUSE DATE                  |
| PENELOPE    | CIDER DESIRE                |
| PENELOPE    | CORE SUIT                   |
| PENELOPE    | ENGLISH BULWORTH            |
| PENELOPE    | EXCITEMENT EVE              |
| PENELOPE    | FAMILY SWEET                |
| PENELOPE    | GANDHI KWAI                 |
| PENELOPE    | JUGGLER HARDLY              |
| PENELOPE    | LAWLESS VISION              |
| PENELOPE    | LION UNCUT                  |
| PENELOPE    | MADRE GABLES                |
| PENELOPE    | MOTIONS DETAILS             |
| PENELOPE    | OLEANDER CLUE               |
| PENELOPE    | OZ LIAISONS                 |
| PENELOPE    | PARIS WEEKEND               |
| PENELOPE    | RUSHMORE MERMAID            |
| PENELOPE    | SATURDAY LAMBS              |
| PENELOPE    | STATE WASTELAND             |
| PENELOPE    | SUBMARINE BED               |
| PENELOPE    | SUIT WALLS                  |
| PENELOPE    | TROOPERS METAL              |
| PENELOPE    | WESTWARD SEABISCUIT         |
| PENELOPE    | WORKER TARZAN               |
| PENELOPE    | WORLD LEATHERNECKS          |
| FAY         | AIRPORT POLLOCK             |
| FAY         | ANONYMOUS HUMAN             |
| FAY         | BIRD INDEPENDENCE           |
| FAY         | CRUSADE HONEY               |
| FAY         | FELLOWSHIP AUTUMN           |
| FAY         | FLAMINGOS CONNECTICUT       |
| FAY         | FRONTIER CABIN              |
| FAY         | HARRY IDAHO                 |
| FAY         | JERSEY SASSY                |
| FAY         | JET NEIGHBORS               |
| FAY         | MOVIE SHAKESPEARE           |
| FAY         | MUSSOLINI SPOILERS          |
| FAY         | NEMO CAMPUS                 |
| FAY         | RACER EGG                   |
| FAY         | SECRET GROUNDHOG            |
| FAY         | SHOOTIST SUPERFLY           |
| FAY         | SNATCHERS MONTEZUMA         |
| FAY         | SPICE SORORITY              |
| FAY         | VACATION BOONDOCK           |
| FAY         | WATCH TRACY                 |
| DAN         | BEDAZZLED MARRIED           |
| DAN         | BOONDOCK BALLROOM           |
| DAN         | DESTINY SATURDAY            |
| DAN         | DIVINE RESURRECTION         |
| DAN         | EYES DRIVING                |
| DAN         | FELLOWSHIP AUTUMN           |
| DAN         | GHOST GROUNDHOG             |
| DAN         | GROOVE FICTION              |
| DAN         | HILLS NEIGHBORS             |
| DAN         | HOLIDAY GAMES               |
| DAN         | INDEPENDENCE HOTEL          |
| DAN         | INSIDER ARIZONA             |
| DAN         | JADE BUNCH                  |
| DAN         | LIES TREATMENT              |
| DAN         | MONTEREY LABYRINTH          |
| DAN         | REUNION WITCHES             |
| DAN         | RUN PACIFIC                 |
| DAN         | SCHOOL JACKET               |
| DAN         | SEVEN SWARM                 |
| DAN         | SIEGE MADRE                 |
| DAN         | STEERS ARMAGEDDON           |
| DAN         | STRAIGHT HOURS              |
| DAN         | SUMMER SCARFACE             |
| DAN         | SUPERFLY TRIP               |
| DAN         | TITANIC BOONDOCK            |
| DAN         | TITANS JERK                 |
| DAN         | VANISHING ROCKY             |
| DAN         | WATERSHIP FRONTIER          |
| JUDE        | ALLEY EVOLUTION             |
| JUDE        | ARABIA DOGMA                |
| JUDE        | BROTHERHOOD BLANKET         |
| JUDE        | CAMELOT VACATION            |
| JUDE        | CARRIE BUNCH                |
| JUDE        | CHAMPION FLATLINERS         |
| JUDE        | CHINATOWN GLADIATOR         |
| JUDE        | CITIZEN SHREK               |
| JUDE        | CROSSING DIVORCE            |
| JUDE        | DATE SPEED                  |
| JUDE        | DRUMS DYNAMITE              |
| JUDE        | EAGLES PANKY                |
| JUDE        | FIREBALL PHILADELPHIA       |
| JUDE        | FRONTIER CABIN              |
| JUDE        | HALLOWEEN NUTS              |
| JUDE        | HOUSE DYNAMITE              |
| JUDE        | ICE CROSSING                |
| JUDE        | KNOCK WARLOCK               |
| JUDE        | MONSTER SPARTACUS           |
| JUDE        | MULHOLLAND BEAST            |
| JUDE        | OPEN AFRICAN                |
| JUDE        | PLATOON INSTINCT            |
| JUDE        | QUEST MUSSOLINI             |
| JUDE        | RANDOM GO                   |
| JUDE        | REAR TRADING                |
| JUDE        | ROCK INSTINCT               |
| JUDE        | SCALAWAG DUCK               |
| JUDE        | STRANGELOVE DESIRE          |
| JUDE        | TIMBERLAND SKY              |
| JUDE        | TWISTED PIRATES             |
| CHRISTIAN   | BACKLASH UNDEFEATED         |
| CHRISTIAN   | BETRAYED REAR               |
| CHRISTIAN   | CAPER MOTIONS               |
| CHRISTIAN   | CATCH AMISTAD               |
| CHRISTIAN   | CHANCE RESURRECTION         |
| CHRISTIAN   | CONFUSED CANDLES            |
| CHRISTIAN   | CUPBOARD SINNERS            |
| CHRISTIAN   | DIVIDE MONSTER              |
| CHRISTIAN   | DOOM DANCING                |
| CHRISTIAN   | DOORS PRESIDENT             |
| CHRISTIAN   | DRIVER ANNIE                |
| CHRISTIAN   | FEATHERS METAL              |
| CHRISTIAN   | FIRE WOLVES                 |
| CHRISTIAN   | HILLS NEIGHBORS             |
| CHRISTIAN   | HOME PITY                   |
| CHRISTIAN   | INNOCENT USUAL              |
| CHRISTIAN   | JAWBREAKER BROOKLYN         |
| CHRISTIAN   | LUKE MUMMY                  |
| CHRISTIAN   | MAGNOLIA FORRESTER          |
| CHRISTIAN   | MAIDEN HOME                 |
| CHRISTIAN   | MAKER GABLES                |
| CHRISTIAN   | MILLION ACE                 |
| CHRISTIAN   | MOURNING PURPLE             |
| CHRISTIAN   | NUTS TIES                   |
| CHRISTIAN   | OKLAHOMA JUMANJI            |
| CHRISTIAN   | OPERATION OPERATION         |
| CHRISTIAN   | PRINCESS GIANT              |
| CHRISTIAN   | RESERVOIR ADAPTATION        |
| CHRISTIAN   | SABRINA MIDNIGHT            |
| CHRISTIAN   | SINNERS ATLANTIS            |
| CHRISTIAN   | STREETCAR INTENTIONS        |
| CHRISTIAN   | SUBMARINE BED               |
| DUSTIN      | AFRICAN EGG                 |
| DUSTIN      | AUTUMN CROW                 |
| DUSTIN      | BANGER PINOCCHIO            |
| DUSTIN      | BILL OTHERS                 |
| DUSTIN      | BORN SPINAL                 |
| DUSTIN      | CAROL TEXAS                 |
| DUSTIN      | CAUSE DATE                  |
| DUSTIN      | CELEBRITY HORN              |
| DUSTIN      | CONVERSATION DOWNHILL       |
| DUSTIN      | DARKO DORADO                |
| DUSTIN      | DONNIE ALLEY                |
| DUSTIN      | EXPENDABLE STALLION         |
| DUSTIN      | HOBBIT ALIEN                |
| DUSTIN      | METROPOLIS COMA             |
| DUSTIN      | OSCAR GOLD                  |
| DUSTIN      | PACIFIC AMISTAD             |
| DUSTIN      | POLLOCK DELIVERANCE         |
| DUSTIN      | PREJUDICE OLEANDER          |
| DUSTIN      | PULP BEVERLY                |
| DUSTIN      | RAINBOW SHOCK               |
| DUSTIN      | RULES HUMAN                 |
| DUSTIN      | SEA VIRGIN                  |
| DUSTIN      | STRANGER STRANGERS          |
| DUSTIN      | SUMMER SCARFACE             |
| DUSTIN      | VILLAIN DESPERATE           |
| DUSTIN      | VIRTUAL SPOILERS            |
| DUSTIN      | WONDERFUL DROP              |
| HENRY       | APACHE DIVINE               |
| HENRY       | BONNIE HOLOCAUST            |
| HENRY       | CHAMBER ITALIAN             |
| HENRY       | CHICKEN HELLFIGHTERS        |
| HENRY       | CONNECTICUT TRAMP           |
| HENRY       | CONQUERER NUTS              |
| HENRY       | CRAFT OUTFIELD              |
| HENRY       | DESERT POSEIDON             |
| HENRY       | DIVIDE MONSTER              |
| HENRY       | DOGMA FAMILY                |
| HENRY       | DRIFTER COMMANDMENTS        |
| HENRY       | DUMBO LUST                  |
| HENRY       | EXTRAORDINARY CONQUERER     |
| HENRY       | FACTORY DRAGON              |
| HENRY       | FREDDY STORM                |
| HENRY       | GRAPES FURY                 |
| HENRY       | HOLLYWOOD ANONYMOUS         |
| HENRY       | HOURS RAGE                  |
| HENRY       | KANE EXORCIST               |
| HENRY       | LOUISIANA HARRY             |
| HENRY       | MAIDEN HOME                 |
| HENRY       | PARIS WEEKEND               |
| HENRY       | PATTON INTERVIEW            |
| HENRY       | PILOT HOOSIERS              |
| HENRY       | RUSHMORE MERMAID            |
| HENRY       | SCORPION APOLLO             |
| HENRY       | SHANE DARKNESS              |
| HENRY       | SHANGHAI TYCOON             |
| HENRY       | SLEEPLESS MONSOON           |
| HENRY       | SPIRIT FLINTSTONES          |
| HENRY       | SPY MILE                    |
| HENRY       | UPTOWN YOUNG                |
| HENRY       | WAGON JAWS                  |
| HENRY       | WHALE BIKINI                |
| HENRY       | WONKA SEA                   |
| CHRISTIAN   | DIVIDE MONSTER              |
| CHRISTIAN   | DIVORCE SHINING             |
| CHRISTIAN   | FELLOWSHIP AUTUMN           |
| CHRISTIAN   | GLORY TRACY                 |
| CHRISTIAN   | GRACELAND DYNAMITE          |
| CHRISTIAN   | GRAFFITI LOVE               |
| CHRISTIAN   | HOLLYWOOD ANONYMOUS         |
| CHRISTIAN   | HORN WORKING                |
| CHRISTIAN   | LAMBS CINCINATTI            |
| CHRISTIAN   | LIAISONS SWEET              |
| CHRISTIAN   | LIBERTY MAGNIFICENT         |
| CHRISTIAN   | LOVE SUICIDES               |
| CHRISTIAN   | LOVER TRUMAN                |
| CHRISTIAN   | MOB DUFFEL                  |
| CHRISTIAN   | OPPOSITE NECKLACE           |
| CHRISTIAN   | OUTLAW HANKY                |
| CHRISTIAN   | OZ LIAISONS                 |
| CHRISTIAN   | PUNK DIVORCE                |
| CHRISTIAN   | RUNNER MADIGAN              |
| CHRISTIAN   | SAVANNAH TOWN               |
| CHRISTIAN   | SCALAWAG DUCK               |
| CHRISTIAN   | SENSIBILITY REAR            |
| CHRISTIAN   | SPIRITED CASUALTIES         |
| CHRISTIAN   | SPLASH GUMP                 |
| CHRISTIAN   | WORLD LEATHERNECKS          |
| JAYNE       | AGENT TRUMAN                |
| JAYNE       | ARTIST COLDBLOODED          |
| JAYNE       | BANGER PINOCCHIO            |
| JAYNE       | BROOKLYN DESERT             |
| JAYNE       | BROTHERHOOD BLANKET         |
| JAYNE       | CAUSE DATE                  |
| JAYNE       | CRYSTAL BREAKING            |
| JAYNE       | DARLING BREAKING            |
| JAYNE       | DINOSAUR SECRETARY          |
| JAYNE       | EDGE KISSING                |
| JAYNE       | EXPENDABLE STALLION         |
| JAYNE       | FRIDA SLIPPER               |
| JAYNE       | GRAIL FRANKENSTEIN          |
| JAYNE       | GROUNDHOG UNCUT             |
| JAYNE       | HALLOWEEN NUTS              |
| JAYNE       | HANOVER GALAXY              |
| JAYNE       | HAUNTING PIANIST            |
| JAYNE       | HEDWIG ALTER                |
| JAYNE       | HOMICIDE PEACH              |
| JAYNE       | HYDE DOCTOR                 |
| JAYNE       | INDEPENDENCE HOTEL          |
| JAYNE       | INTERVIEW LIAISONS          |
| JAYNE       | POLISH BROOKLYN             |
| JAYNE       | QUEST MUSSOLINI             |
| JAYNE       | RECORDS ZORRO               |
| JAYNE       | VOYAGE LEGALLY              |
| JAYNE       | WOLVES DESIRE               |
| JAYNE       | WORKER TARZAN               |
| JAYNE       | WORLD LEATHERNECKS          |
| CAMERON     | BINGO TALENTED              |
| CAMERON     | CHAMPION FLATLINERS         |
| CAMERON     | COMA HEAD                   |
| CAMERON     | DARES PLUTO                 |
| CAMERON     | DESTINATION JERK            |
| CAMERON     | DOZEN LION                  |
| CAMERON     | DRACULA CRYSTAL             |
| CAMERON     | ELF MURDER                  |
| CAMERON     | HALL CASSIDY                |
| CAMERON     | LESSON CLEOPATRA            |
| CAMERON     | OCTOBER SUBMARINE           |
| CAMERON     | SATISFACTION CONFIDENTIAL   |
| CAMERON     | SEVEN SWARM                 |
| CAMERON     | SLIPPER FIDELITY            |
| CAMERON     | TITANS JERK                 |
| CAMERON     | VALLEY PACKER               |
| CAMERON     | VIRGIN DAISY                |
| CAMERON     | VIRGINIAN PLUTO             |
| CAMERON     | WOLVES DESIRE               |
| RAY         | ADAPTATION HOLES            |
| RAY         | ALADDIN CALENDAR            |
| RAY         | ARIZONA BANG                |
| RAY         | BOONDOCK BALLROOM           |
| RAY         | BORN SPINAL                 |
| RAY         | CASPER DRAGONFLY            |
| RAY         | CRUSADE HONEY               |
| RAY         | EMPIRE MALKOVICH            |
| RAY         | EVOLUTION ALTER             |
| RAY         | FELLOWSHIP AUTUMN           |
| RAY         | FREEDOM CLEOPATRA           |
| RAY         | GABLES METROPOLIS           |
| RAY         | IDAHO LOVE                  |
| RAY         | IRON MOON                   |
| RAY         | ISLAND EXORCIST             |
| RAY         | LADY STAGE                  |
| RAY         | MADIGAN DORADO              |
| RAY         | MANCHURIAN CURTAIN          |
| RAY         | MENAGERIE RUSHMORE          |
| RAY         | METROPOLIS COMA             |
| RAY         | MOONWALKER FOOL             |
| RAY         | NATIONAL STORY              |
| RAY         | OUTBREAK DIVINE             |
| RAY         | PREJUDICE OLEANDER          |
| RAY         | SPLASH GUMP                 |
| RAY         | STRANGELOVE DESIRE          |
| RAY         | SUICIDES SILENCE            |
| RAY         | UNCUT SUICIDES              |
| RAY         | UNITED PILOT                |
| RAY         | WIZARD COLDBLOODED          |
| ANGELA      | ARMAGEDDON LOST             |
| ANGELA      | AUTUMN CROW                 |
| ANGELA      | BRIDE INTRIGUE              |
| ANGELA      | BULWORTH COMMANDMENTS       |
| ANGELA      | CANDLES GRAPES              |
| ANGELA      | CASSIDY WYOMING             |
| ANGELA      | CLONES PINOCCHIO            |
| ANGELA      | ELEMENT FREDDY              |
| ANGELA      | FATAL HAUNTED               |
| ANGELA      | FRISCO FORREST              |
| ANGELA      | GAMES BOWFINGER             |
| ANGELA      | GOSFORD DONNIE              |
| ANGELA      | HANOVER GALAXY              |
| ANGELA      | ISLAND EXORCIST             |
| ANGELA      | JAPANESE RUN                |
| ANGELA      | JASON TRAP                  |
| ANGELA      | JUMPING WRATH               |
| ANGELA      | KICK SAVANNAH               |
| ANGELA      | LEGEND JEDI                 |
| ANGELA      | LESSON CLEOPATRA            |
| ANGELA      | LUKE MUMMY                  |
| ANGELA      | MALTESE HOPE                |
| ANGELA      | METAL ARMAGEDDON            |
| ANGELA      | MILE MULAN                  |
| ANGELA      | NASH CHOCOLAT               |
| ANGELA      | PARIS WEEKEND               |
| ANGELA      | PITY BOUND                  |
| ANGELA      | PREJUDICE OLEANDER          |
| ANGELA      | RANDOM GO                   |
| ANGELA      | ROBBERS JOON                |
| ANGELA      | STRANGELOVE DESIRE          |
| ANGELA      | VELVET TERMINATOR           |
| ANGELA      | VOYAGE LEGALLY              |
| ANGELA      | WATERSHIP FRONTIER          |
| MARY        | BARBARELLA STREETCAR        |
| MARY        | CHILL LUCK                  |
| MARY        | DANGEROUS UPTOWN            |
| MARY        | DESTINY SATURDAY            |
| MARY        | DEVIL DESIRE                |
| MARY        | DIARY PANIC                 |
| MARY        | ENDING CROWDS               |
| MARY        | FALCON VOLUME               |
| MARY        | FUGITIVE MAGUIRE            |
| MARY        | GARDEN ISLAND               |
| MARY        | GLEAMING JAWBREAKER         |
| MARY        | GRAPES FURY                 |
| MARY        | HOLOCAUST HIGHBALL          |
| MARY        | HORROR REIGN                |
| MARY        | MAKER GABLES                |
| MARY        | MURDER ANTITRUST            |
| MARY        | PHILADELPHIA WIFE           |
| MARY        | PRIMARY GLASS               |
| MARY        | QUEEN LUKE                  |
| MARY        | REQUIEM TYCOON              |
| MARY        | SCHOOL JACKET               |
| MARY        | SHRUNK DIVINE               |
| MARY        | SPINAL ROCKY                |
| MARY        | SWEDEN SHINING              |
| MARY        | TREASURE COMMAND            |
| MARY        | TRUMAN CRAZY                |
| MARY        | UPTOWN YOUNG                |
| MARY        | VOYAGE LEGALLY              |
| MARY        | WAR NOTTING                 |
| MARY        | WARS PLUTO                  |
| MARY        | ZOOLANDER FICTION           |
| JESSICA     | ANALYZE HOOSIERS            |
| JESSICA     | BASIC EASY                  |
| JESSICA     | BERETS AGENT                |
| JESSICA     | CHINATOWN GLADIATOR         |
| JESSICA     | DOOM DANCING                |
| JESSICA     | DORADO NOTTING              |
| JESSICA     | DROP WATERFRONT             |
| JESSICA     | HEAD STRANGER               |
| JESSICA     | JAWBREAKER BROOKLYN         |
| JESSICA     | KICK SAVANNAH               |
| JESSICA     | LEAGUE HELLFIGHTERS         |
| JESSICA     | MIGHTY LUCK                 |
| JESSICA     | MOULIN WAKE                 |
| JESSICA     | REQUIEM TYCOON              |
| JESSICA     | RESERVOIR ADAPTATION        |
| JESSICA     | RIGHT CRANES                |
| JESSICA     | SAVANNAH TOWN               |
| JESSICA     | SUIT WALLS                  |
| JESSICA     | SWARM GOLD                  |
| JESSICA     | TRUMAN CRAZY                |
| JESSICA     | VIRGINIAN PLUTO             |
| JESSICA     | WHISPERER GIANT             |
| JESSICA     | WOLVES DESIRE               |
| RIP         | ALABAMA DEVIL               |
| RIP         | ATTRACTION NEWTON           |
| RIP         | CHAMBER ITALIAN             |
| RIP         | CLUE GRAIL                  |
| RIP         | DANCES NONE                 |
| RIP         | DATE SPEED                  |
| RIP         | DAWN POND                   |
| RIP         | DRIVING POLISH              |
| RIP         | EXPRESS LONELY              |
| RIP         | FINDING ANACONDA            |
| RIP         | FLOATS GARDEN               |
| RIP         | FORWARD TEMPLE              |
| RIP         | GAMES BOWFINGER             |
| RIP         | GILBERT PELICAN             |
| RIP         | GREATEST NORTH              |
| RIP         | GREEK EVERYONE              |
| RIP         | GUMP DATE                   |
| RIP         | HANGING DEEP                |
| RIP         | HOTEL HAPPINESS             |
| RIP         | KILL BROTHERHOOD            |
| RIP         | MUPPET MILE                 |
| RIP         | PANKY SUBMARINE             |
| RIP         | PATTON INTERVIEW            |
| RIP         | PERDITION FARGO             |
| RIP         | QUEEN LUKE                  |
| RIP         | ROXANNE REBEL               |
| RIP         | SPOILERS HELLFIGHTERS       |
| RIP         | STALLION SUNDANCE           |
| RIP         | STAMPEDE DISTURBING         |
| RIP         | WHALE BIKINI                |
| KENNETH     | ALIEN CENTER                |
| KENNETH     | BORN SPINAL                 |
| KENNETH     | CADDYSHACK JEDI             |
| KENNETH     | DADDY PITTSBURGH            |
| KENNETH     | DIVINE RESURRECTION         |
| KENNETH     | EXCITEMENT EVE              |
| KENNETH     | FALCON VOLUME               |
| KENNETH     | FEATHERS METAL              |
| KENNETH     | GRAFFITI LOVE               |
| KENNETH     | HANGING DEEP                |
| KENNETH     | ILLUSION AMELIE             |
| KENNETH     | INTOLERABLE INTENTIONS      |
| KENNETH     | LONELY ELEPHANT             |
| KENNETH     | MUSSOLINI SPOILERS          |
| KENNETH     | REDEMPTION COMFORTS         |
| KENNETH     | REEF SALUTE                 |
| KENNETH     | SANTA PARIS                 |
| KENNETH     | SHOW LORD                   |
| KENNETH     | SUNDANCE INVASION           |
| KENNETH     | TAXI KICK                   |
| KENNETH     | TROUBLE DATE                |
| MICHELLE    | BAKED CLEOPATRA             |
| MICHELLE    | BANG KWAI                   |
| MICHELLE    | BOWFINGER GABLES            |
| MICHELLE    | DADDY PITTSBURGH            |
| MICHELLE    | DETAILS PACKER              |
| MICHELLE    | DRACULA CRYSTAL             |
| MICHELLE    | EVERYONE CRAFT              |
| MICHELLE    | FARGO GANDHI                |
| MICHELLE    | FULL FLATLINERS             |
| MICHELLE    | HELLFIGHTERS SIERRA         |
| MICHELLE    | IMAGE PRINCESS              |
| MICHELLE    | INTOLERABLE INTENTIONS      |
| MICHELLE    | KWAI HOMEWARD               |
| MICHELLE    | MIXED DOORS                 |
| MICHELLE    | NORTHWEST POLISH            |
| MICHELLE    | PANKY SUBMARINE             |
| MICHELLE    | REQUIEM TYCOON              |
| MICHELLE    | SOUTH WAIT                  |
| MICHELLE    | SPOILERS HELLFIGHTERS       |
| MICHELLE    | STREETCAR INTENTIONS        |
| MICHELLE    | SUSPECTS QUILLS             |
| MICHELLE    | WAIT CIDER                  |
| MICHELLE    | WATERFRONT DELIVERANCE      |
| ADAM        | ANNIE IDENTITY              |
| ADAM        | BALLROOM MOCKINGBIRD        |
| ADAM        | DISCIPLE MOTHER             |
| ADAM        | FIREBALL PHILADELPHIA       |
| ADAM        | GLADIATOR WESTWARD          |
| ADAM        | GLORY TRACY                 |
| ADAM        | GROUNDHOG UNCUT             |
| ADAM        | HAPPINESS UNITED            |
| ADAM        | IDOLS SNATCHERS             |
| ADAM        | LOSER HUSTLER               |
| ADAM        | MARS ROMAN                  |
| ADAM        | MIDNIGHT WESTWARD           |
| ADAM        | OPERATION OPERATION         |
| ADAM        | SEABISCUIT PUNK             |
| ADAM        | SPLENDOR PATTON             |
| ADAM        | TADPOLE PARK                |
| ADAM        | TWISTED PIRATES             |
| ADAM        | WANDA CHAMBER               |
| SEAN        | ARABIA DOGMA                |
| SEAN        | CHINATOWN GLADIATOR         |
| SEAN        | DIVORCE SHINING             |
| SEAN        | DRACULA CRYSTAL             |
| SEAN        | ENOUGH RAGING               |
| SEAN        | EXPRESS LONELY              |
| SEAN        | FLOATS GARDEN               |
| SEAN        | FORWARD TEMPLE              |
| SEAN        | HAUNTED ANTITRUST           |
| SEAN        | IDOLS SNATCHERS             |
| SEAN        | MAGUIRE APACHE              |
| SEAN        | MUSCLE BRIGHT               |
| SEAN        | NEWTON LABYRINTH            |
| SEAN        | OLEANDER CLUE               |
| SEAN        | OPUS ICE                    |
| SEAN        | PATTON INTERVIEW            |
| SEAN        | REBEL AIRPORT               |
| SEAN        | ROOM ROMAN                  |
| SEAN        | SAGEBRUSH CLUELESS          |
| SEAN        | SEABISCUIT PUNK             |
| SEAN        | STRANGERS GRAFFITI          |
| SEAN        | SUNRISE LEAGUE              |
| SEAN        | VELVET TERMINATOR           |
| SEAN        | WANDA CHAMBER               |
| SEAN        | WATERFRONT DELIVERANCE      |
| SEAN        | WEST LION                   |
| GARY        | ARGONAUTS TOWN              |
| GARY        | ATTRACTION NEWTON           |
| GARY        | BALLOON HOMEWARD            |
| GARY        | BIRDS PERDITION             |
| GARY        | CHOCOLATE DUCK              |
| GARY        | DOUBLE WRATH                |
| GARY        | EGYPT TENENBAUMS            |
| GARY        | FLATLINERS KILLER           |
| GARY        | GRAFFITI LOVE               |
| GARY        | GREEDY ROOTS                |
| GARY        | INTRIGUE WORST              |
| GARY        | MAGNIFICENT CHITTY          |
| GARY        | MASK PEACH                  |
| GARY        | MASKED BUBBLE               |
| GARY        | MATRIX SNOWMAN              |
| GARY        | NORTH TEQUILA               |
| GARY        | PAYCHECK WAIT               |
| GARY        | PEACH INNOCENT              |
| GARY        | QUEST MUSSOLINI             |
| GARY        | RUGRATS SHAKESPEARE         |
| GARY        | SEA VIRGIN                  |
| GARY        | SOUTH WAIT                  |
| GARY        | VANISHING ROCKY             |
| GARY        | VIRTUAL SPOILERS            |
| GARY        | VOLUME HOUSE                |
| GARY        | ZHIVAGO CORE                |
| MILLA       | ANTHEM LUKE                 |
| MILLA       | ATTACKS HATE                |
| MILLA       | CANDLES GRAPES              |
| MILLA       | COWBOY DOOM                 |
| MILLA       | CROSSING DIVORCE            |
| MILLA       | DAISY MENAGERIE             |
| MILLA       | DURHAM PANKY                |
| MILLA       | FLASH WARS                  |
| MILLA       | HIGH ENCINO                 |
| MILLA       | JERK PAYCHECK               |
| MILLA       | KRAMER CHOCOLATE            |
| MILLA       | LOVER TRUMAN                |
| MILLA       | MADIGAN DORADO              |
| MILLA       | NATURAL STOCK               |
| MILLA       | NOON PAPI                   |
| MILLA       | OPEN AFRICAN                |
| MILLA       | PATIENT SISTER              |
| MILLA       | PURE RUNNER                 |
| MILLA       | REDEMPTION COMFORTS         |
| MILLA       | ROXANNE REBEL               |
| MILLA       | SENSIBILITY REAR            |
| MILLA       | SLEEPING SUSPECTS           |
| MILLA       | SPOILERS HELLFIGHTERS       |
| MILLA       | SQUAD FISH                  |
| MILLA       | STONE FIRE                  |
| MILLA       | SWEET BROTHERHOOD           |
| MILLA       | TRADING PINOCCHIO           |
| MILLA       | WANDA CHAMBER               |
| BURT        | ALASKA PHANTOM              |
| BURT        | ARABIA DOGMA                |
| BURT        | CHILL LUCK                  |
| BURT        | COMMAND DARLING             |
| BURT        | DESERT POSEIDON             |
| BURT        | FAMILY SWEET                |
| BURT        | GAMES BOWFINGER             |
| BURT        | GRACELAND DYNAMITE          |
| BURT        | HOURS RAGE                  |
| BURT        | HYDE DOCTOR                 |
| BURT        | HYSTERICAL GRAIL            |
| BURT        | JUNGLE CLOSER               |
| BURT        | KILLER INNOCENT             |
| BURT        | LAMBS CINCINATTI            |
| BURT        | LUKE MUMMY                  |
| BURT        | MAGIC MALLRATS              |
| BURT        | MINDS TRUMAN                |
| BURT        | OTHERS SOUP                 |
| BURT        | PEACH INNOCENT              |
| BURT        | ROOTS REMEMBER              |
| BURT        | SATURDAY LAMBS              |
| BURT        | SENSIBILITY REAR            |
| BURT        | SWARM GOLD                  |
| BURT        | UNBREAKABLE KARATE          |
| ANGELINA    | BEAST HUNCHBACK             |
| ANGELINA    | BENEATH RUSH                |
| ANGELINA    | BETRAYED REAR               |
| ANGELINA    | BREAKFAST GOLDFINGER        |
| ANGELINA    | CARRIE BUNCH                |
| ANGELINA    | CRANES RESERVOIR            |
| ANGELINA    | DESIRE ALIEN                |
| ANGELINA    | DISTURBING SCARFACE         |
| ANGELINA    | DRAGONFLY STRANGERS         |
| ANGELINA    | GANDHI KWAI                 |
| ANGELINA    | HUSTLER PARTY               |
| ANGELINA    | INTENTIONS EMPIRE           |
| ANGELINA    | JADE BUNCH                  |
| ANGELINA    | KILLER INNOCENT             |
| ANGELINA    | MEMENTO ZOOLANDER           |
| ANGELINA    | MULAN MOON                  |
| ANGELINA    | MUMMY CREATURES             |
| ANGELINA    | ORDER BETRAYED              |
| ANGELINA    | OUTLAW HANKY                |
| ANGELINA    | PACIFIC AMISTAD             |
| ANGELINA    | RACER EGG                   |
| ANGELINA    | SAMURAI LION                |
| ANGELINA    | SATURN NAME                 |
| ANGELINA    | SEVEN SWARM                 |
| ANGELINA    | STORY SIDE                  |
| ANGELINA    | SUMMER SCARFACE             |
| ANGELINA    | SUNSET RACER                |
| ANGELINA    | SWARM GOLD                  |
| ANGELINA    | TROJAN TOMORROW             |
| ANGELINA    | VANISHED GARDEN             |
| ANGELINA    | WARDROBE PHANTOM            |
| CARY        | ALI FOREVER                 |
| CARY        | AMISTAD MIDSUMMER           |
| CARY        | ARMY FLINTSTONES            |
| CARY        | BINGO TALENTED              |
| CARY        | BLACKOUT PRIVATE            |
| CARY        | CITIZEN SHREK               |
| CARY        | DESPERATE TRAINSPOTTING     |
| CARY        | DOLLS RAGE                  |
| CARY        | DOUBLE WRATH                |
| CARY        | DUFFEL APOCALYPSE           |
| CARY        | FULL FLATLINERS             |
| CARY        | HUNTING MUSKETEERS          |
| CARY        | INDIAN LOVE                 |
| CARY        | LOVERBOY ATTACKS            |
| CARY        | MAUDE MOD                   |
| CARY        | MUSSOLINI SPOILERS          |
| CARY        | OKLAHOMA JUMANJI            |
| CARY        | PREJUDICE OLEANDER          |
| CARY        | RULES HUMAN                 |
| CARY        | VELVET TERMINATOR           |
| CARY        | VILLAIN DESPERATE           |
| CARY        | WATCH TRACY                 |
| CARY        | WEST LION                   |
| CARY        | WRONG BEHAVIOR              |
| GROUCHO     | BOOGIE AMELIE               |
| GROUCHO     | DOGMA FAMILY                |
| GROUCHO     | DUDE BLINDNESS              |
| GROUCHO     | DUFFEL APOCALYPSE           |
| GROUCHO     | DYING MAKER                 |
| GROUCHO     | FAMILY SWEET                |
| GROUCHO     | GUN BONNIE                  |
| GROUCHO     | HALLOWEEN NUTS              |
| GROUCHO     | HOMICIDE PEACH              |
| GROUCHO     | INDEPENDENCE HOTEL          |
| GROUCHO     | LABYRINTH LEAGUE            |
| GROUCHO     | LICENSE WEEKEND             |
| GROUCHO     | LORD ARIZONA                |
| GROUCHO     | MAGNOLIA FORRESTER          |
| GROUCHO     | MAJESTIC FLOATS             |
| GROUCHO     | MOTHER OLEANDER             |
| GROUCHO     | PELICAN COMFORTS            |
| GROUCHO     | PET HAUNTING                |
| GROUCHO     | POLLOCK DELIVERANCE         |
| GROUCHO     | SASSY PACKER                |
| GROUCHO     | SCALAWAG DUCK               |
| GROUCHO     | SMILE EARRING               |
| GROUCHO     | STRANGELOVE DESIRE          |
| GROUCHO     | TELEMARK HEARTBREAKERS      |
| GROUCHO     | WATCH TRACY                 |
| GROUCHO     | WEREWOLF LOLA               |
| MAE         | APOCALYPSE FLAMINGOS        |
| MAE         | APOLLO TEEN                 |
| MAE         | ARMY FLINTSTONES            |
| MAE         | CHICAGO NORTH               |
| MAE         | DANCES NONE                 |
| MAE         | DIARY PANIC                 |
| MAE         | DOOM DANCING                |
| MAE         | DUMBO LUST                  |
| MAE         | EAGLES PANKY                |
| MAE         | EARRING INSTINCT            |
| MAE         | FACTORY DRAGON              |
| MAE         | GOLDMINE TYCOON             |
| MAE         | HOMICIDE PEACH              |
| MAE         | HOOK CHARIOTS               |
| MAE         | JACKET FRISCO               |
| MAE         | MUPPET MILE                 |
| MAE         | NORTHWEST POLISH            |
| MAE         | ODDS BOOGIE                 |
| MAE         | OUTBREAK DIVINE             |
| MAE         | RESURRECTION SILVERADO      |
| MAE         | RUN PACIFIC                 |
| MAE         | RUSH GOODFELLAS             |
| MAE         | SCHOOL JACKET               |
| MAE         | SECRET GROUNDHOG            |
| MAE         | SHIP WONDERLAND             |
| MAE         | STAMPEDE DISTURBING         |
| MAE         | STRANGER STRANGERS          |
| MAE         | TURN STAR                   |
| RALPH       | BEVERLY OUTLAW              |
| RALPH       | CANYON STOCK                |
| RALPH       | CASPER DRAGONFLY            |
| RALPH       | CONFUSED CANDLES            |
| RALPH       | DANGEROUS UPTOWN            |
| RALPH       | DARN FORRESTER              |
| RALPH       | DUDE BLINDNESS              |
| RALPH       | DUMBO LUST                  |
| RALPH       | EMPIRE MALKOVICH            |
| RALPH       | FROST HEAD                  |
| RALPH       | FUGITIVE MAGUIRE            |
| RALPH       | FULL FLATLINERS             |
| RALPH       | GLORY TRACY                 |
| RALPH       | HOURS RAGE                  |
| RALPH       | JAPANESE RUN                |
| RALPH       | MAKER GABLES                |
| RALPH       | NEIGHBORS CHARADE           |
| RALPH       | NEWSIES STORY               |
| RALPH       | PINOCCHIO SIMON             |
| RALPH       | POCUS PULP                  |
| RALPH       | POLISH BROOKLYN             |
| RALPH       | RACER EGG                   |
| RALPH       | SHIP WONDERLAND             |
| RALPH       | SLEUTH ORIENT               |
| RALPH       | SUBMARINE BED               |
| RALPH       | THIN SAGEBRUSH              |
| RALPH       | VIDEOTAPE ARSENIC           |
| RALPH       | WITCHES PANIC               |
| SCARLETT    | AFFAIR PREJUDICE            |
| SCARLETT    | ALAMO VIDEOTAPE             |
| SCARLETT    | BEAR GRACELAND              |
| SCARLETT    | BORROWERS BEDAZZLED         |
| SCARLETT    | CONNECTION MICROCOSMOS      |
| SCARLETT    | CRAFT OUTFIELD              |
| SCARLETT    | CROW GREASE                 |
| SCARLETT    | DAWN POND                   |
| SCARLETT    | DEEP CRUSADE                |
| SCARLETT    | DIRTY ACE                   |
| SCARLETT    | DUDE BLINDNESS              |
| SCARLETT    | EAGLES PANKY                |
| SCARLETT    | EARLY HOME                  |
| SCARLETT    | FARGO GANDHI                |
| SCARLETT    | FRANKENSTEIN STRANGER       |
| SCARLETT    | GUNFIGHTER MUSSOLINI        |
| SCARLETT    | HANOVER GALAXY              |
| SCARLETT    | IMAGE PRINCESS              |
| SCARLETT    | INDIAN LOVE                 |
| SCARLETT    | INTERVIEW LIAISONS          |
| SCARLETT    | LABYRINTH LEAGUE            |
| SCARLETT    | LAMBS CINCINATTI            |
| SCARLETT    | LOLA AGENT                  |
| SCARLETT    | MADNESS ATTACKS             |
| SCARLETT    | MASSAGE IMAGE               |
| SCARLETT    | MILLION ACE                 |
| SCARLETT    | MINDS TRUMAN                |
| SCARLETT    | MYSTIC TRUMAN               |
| SCARLETT    | NEIGHBORS CHARADE           |
| SCARLETT    | ORIENT CLOSER               |
| SCARLETT    | POTLUCK MIXED               |
| SCARLETT    | RAGE GAMES                  |
| SCARLETT    | RIDER CADDYSHACK            |
| SCARLETT    | SANTA PARIS                 |
| SCARLETT    | SPICE SORORITY              |
| SCARLETT    | TREATMENT JEKYLL            |
| WOODY       | ALONE TRIP                  |
| WOODY       | APOLLO TEEN                 |
| WOODY       | BUGSY SONG                  |
| WOODY       | CHILL LUCK                  |
| WOODY       | CRAZY HOME                  |
| WOODY       | DOOM DANCING                |
| WOODY       | DOWNHILL ENOUGH             |
| WOODY       | EVERYONE CRAFT              |
| WOODY       | FEATHERS METAL              |
| WOODY       | FIRE WOLVES                 |
| WOODY       | FURY MURDER                 |
| WOODY       | IMAGE PRINCESS              |
| WOODY       | INVASION CYCLONE            |
| WOODY       | JEEPERS WEDDING             |
| WOODY       | KILL BROTHERHOOD            |
| WOODY       | KRAMER CHOCOLATE            |
| WOODY       | LOLA AGENT                  |
| WOODY       | MAIDEN HOME                 |
| WOODY       | MASK PEACH                  |
| WOODY       | RUN PACIFIC                 |
| WOODY       | SHINING ROSES               |
| WOODY       | SKY MIRACLE                 |
| WOODY       | STAGECOACH ARMAGEDDON       |
| WOODY       | STALLION SUNDANCE           |
| WOODY       | SWARM GOLD                  |
| WOODY       | TAXI KICK                   |
| WOODY       | TITANS JERK                 |
| WOODY       | TRIP NEWTON                 |
| WOODY       | WAKE JAWS                   |
| WOODY       | WISDOM WORKER               |
| WOODY       | WONDERLAND CHRISTMAS        |
| BEN         | BADMAN DAWN                 |
| BEN         | BALLROOM MOCKINGBIRD        |
| BEN         | BEACH HEARTBREAKERS         |
| BEN         | CABIN FLASH                 |
| BEN         | CARIBBEAN LIBERTY           |
| BEN         | CAROL TEXAS                 |
| BEN         | CHANCE RESURRECTION         |
| BEN         | COLDBLOODED DARLING         |
| BEN         | DAZED PUNK                  |
| BEN         | DOWNHILL ENOUGH             |
| BEN         | DRACULA CRYSTAL             |
| BEN         | DURHAM PANKY                |
| BEN         | EARLY HOME                  |
| BEN         | ELIZABETH SHANE             |
| BEN         | ENCINO ELF                  |
| BEN         | FROGMEN BREAKING            |
| BEN         | FRONTIER CABIN              |
| BEN         | GOODFELLAS SALUTE           |
| BEN         | HEAVYWEIGHTS BEAST          |
| BEN         | LIBERTY MAGNIFICENT         |
| BEN         | LONELY ELEPHANT             |
| BEN         | NASH CHOCOLAT               |
| BEN         | NOVOCAINE FLIGHT            |
| BEN         | PANTHER REDS                |
| BEN         | PERFECT GROOVE              |
| BEN         | PLUTO OLEANDER              |
| BEN         | RECORDS ZORRO               |
| BEN         | SATURDAY LAMBS              |
| BEN         | SECRETARY ROUGE             |
| BEN         | SHANGHAI TYCOON             |
| BEN         | SPLENDOR PATTON             |
| BEN         | SWEETHEARTS SUSPECTS        |
| BEN         | VALLEY PACKER               |
| JAMES       | AMADEUS HOLY                |
| JAMES       | ARMAGEDDON LOST             |
| JAMES       | AUTUMN CROW                 |
| JAMES       | CONFUSED CANDLES            |
| JAMES       | DOCTOR GRAIL                |
| JAMES       | ENCINO ELF                  |
| JAMES       | EVERYONE CRAFT              |
| JAMES       | FIDDLER LOST                |
| JAMES       | FIREBALL PHILADELPHIA       |
| JAMES       | HEDWIG ALTER                |
| JAMES       | HELLFIGHTERS SIERRA         |
| JAMES       | INNOCENT USUAL              |
| JAMES       | JEDI BENEATH                |
| JAMES       | JUMPING WRATH               |
| JAMES       | LONELY ELEPHANT             |
| JAMES       | LUCKY FLYING                |
| JAMES       | MAUDE MOD                   |
| JAMES       | MIDNIGHT WESTWARD           |
| JAMES       | MODERN DORADO               |
| JAMES       | NATIONAL STORY              |
| JAMES       | OUTBREAK DIVINE             |
| JAMES       | PUNK DIVORCE                |
| JAMES       | RIDER CADDYSHACK            |
| JAMES       | SATURDAY LAMBS              |
| JAMES       | SHAKESPEARE SADDLE          |
| JAMES       | SLIPPER FIDELITY            |
| JAMES       | SPIRIT FLINTSTONES          |
| JAMES       | STEEL SANTA                 |
| JAMES       | THIEF PELICAN               |
| JAMES       | WILLOW TRACY                |
| JAMES       | YOUNG LANGUAGE              |
| MINNIE      | ACE GOLDFINGER              |
| MINNIE      | ALICE FANTASIA              |
| MINNIE      | BILL OTHERS                 |
| MINNIE      | BONNIE HOLOCAUST            |
| MINNIE      | BOWFINGER GABLES            |
| MINNIE      | CHOCOLATE DUCK              |
| MINNIE      | DAY UNFAITHFUL              |
| MINNIE      | EVERYONE CRAFT              |
| MINNIE      | EXPRESS LONELY              |
| MINNIE      | EXTRAORDINARY CONQUERER     |
| MINNIE      | FRIDA SLIPPER               |
| MINNIE      | GROOVE FICTION              |
| MINNIE      | HOLIDAY GAMES               |
| MINNIE      | HYSTERICAL GRAIL            |
| MINNIE      | INSECTS STONE               |
| MINNIE      | JAPANESE RUN                |
| MINNIE      | JAWS HARRY                  |
| MINNIE      | LIFE TWISTED                |
| MINNIE      | MADIGAN DORADO              |
| MINNIE      | MANNEQUIN WORST             |
| MINNIE      | MONSOON CAUSE               |
| MINNIE      | NOTTING SPEAKEASY           |
| MINNIE      | PICKUP DRIVING              |
| MINNIE      | RAGING AIRPLANE             |
| MINNIE      | SANTA PARIS                 |
| MINNIE      | SMOKING BARBARELLA          |
| MINNIE      | SUSPECTS QUILLS             |
| MINNIE      | TALENTED HOMICIDE           |
| MINNIE      | TOMORROW HUSTLER            |
| MINNIE      | WAR NOTTING                 |
| MINNIE      | WARS PLUTO                  |
| GREG        | CHARADE DUFFEL              |
| GREG        | CLYDE THEORY                |
| GREG        | CRUELTY UNFORGIVEN          |
| GREG        | DAY UNFAITHFUL              |
| GREG        | DRACULA CRYSTAL             |
| GREG        | FANTASY TROOPERS            |
| GREG        | FORWARD TEMPLE              |
| GREG        | GODFATHER DIARY             |
| GREG        | HALF OUTFIELD               |
| GREG        | HOPE TOOTSIE                |
| GREG        | JEOPARDY ENCINO             |
| GREG        | JET NEIGHBORS               |
| GREG        | LIBERTY MAGNIFICENT         |
| GREG        | LICENSE WEEKEND             |
| GREG        | MAGNIFICENT CHITTY          |
| GREG        | NEWTON LABYRINTH            |
| GREG        | NOVOCAINE FLIGHT            |
| GREG        | OLEANDER CLUE               |
| GREG        | RUNNER MADIGAN              |
| GREG        | SAMURAI LION                |
| GREG        | SLING LUKE                  |
| GREG        | STRICTLY SCARFACE           |
| GREG        | TEEN APOLLO                 |
| GREG        | TITANS JERK                 |
| GREG        | TRAINSPOTTING STRANGERS     |
| GREG        | UNFAITHFUL KILL             |
| GREG        | USUAL UNTOUCHABLES          |
| SPENCER     | BACKLASH UNDEFEATED         |
| SPENCER     | CLOCKWORK PARADISE          |
| SPENCER     | CLUE GRAIL                  |
| SPENCER     | CUPBOARD SINNERS            |
| SPENCER     | DANGEROUS UPTOWN            |
| SPENCER     | DRAGON SQUAD                |
| SPENCER     | DRIFTER COMMANDMENTS        |
| SPENCER     | FIDDLER LOST                |
| SPENCER     | HOLIDAY GAMES               |
| SPENCER     | MERMAID INSECTS             |
| SPENCER     | MOTHER OLEANDER             |
| SPENCER     | MUMMY CREATURES             |
| SPENCER     | PANKY SUBMARINE             |
| SPENCER     | PILOT HOOSIERS              |
| SPENCER     | QUEEN LUKE                  |
| SPENCER     | REBEL AIRPORT               |
| SPENCER     | REDS POCUS                  |
| SPENCER     | SPIRIT FLINTSTONES          |
| SPENCER     | SWARM GOLD                  |
| SPENCER     | WAGON JAWS                  |
| SPENCER     | WASH HEAVENLY               |
| KENNETH     | AFFAIR PREJUDICE            |
| KENNETH     | BIRDCAGE CASPER             |
| KENNETH     | BOONDOCK BALLROOM           |
| KENNETH     | CATCH AMISTAD               |
| KENNETH     | COMMAND DARLING             |
| KENNETH     | CROSSROADS CASUALTIES       |
| KENNETH     | DISTURBING SCARFACE         |
| KENNETH     | FARGO GANDHI                |
| KENNETH     | MOURNING PURPLE             |
| KENNETH     | NEMO CAMPUS                 |
| KENNETH     | PEAK FOREVER                |
| KENNETH     | REAR TRADING                |
| KENNETH     | SHAWSHANK BUBBLE            |
| KENNETH     | SONG HEDWIG                 |
| KENNETH     | STALLION SUNDANCE           |
| KENNETH     | TEMPLE ATTRACTION           |
| KENNETH     | TRAP GUYS                   |
| KENNETH     | USUAL UNTOUCHABLES          |
| KENNETH     | VICTORY ACADEMY             |
| KENNETH     | WEREWOLF LOLA               |
| CHARLIZE    | BABY HALL                   |
| CHARLIZE    | BUCKET BROTHERHOOD          |
| CHARLIZE    | CANDLES GRAPES              |
| CHARLIZE    | CLUELESS BUCKET             |
| CHARLIZE    | CONTROL ANTHEM              |
| CHARLIZE    | CRANES RESERVOIR            |
| CHARLIZE    | DARN FORRESTER              |
| CHARLIZE    | DRIVER ANNIE                |
| CHARLIZE    | DYNAMITE TARZAN             |
| CHARLIZE    | FEATHERS METAL              |
| CHARLIZE    | FUGITIVE MAGUIRE            |
| CHARLIZE    | HAUNTING PIANIST            |
| CHARLIZE    | HEAVEN FREEDOM              |
| CHARLIZE    | HYSTERICAL GRAIL            |
| CHARLIZE    | JACKET FRISCO               |
| CHARLIZE    | JOON NORTHWEST              |
| CHARLIZE    | LONELY ELEPHANT             |
| CHARLIZE    | LUST LOCK                   |
| CHARLIZE    | MASSAGE IMAGE               |
| CHARLIZE    | PRIMARY GLASS               |
| CHARLIZE    | SPLENDOR PATTON             |
| CHARLIZE    | SUNDANCE INVASION           |
| CHARLIZE    | WESTWARD SEABISCUIT         |
| CHARLIZE    | WIND PHANTOM                |
| SEAN        | ACE GOLDFINGER              |
| SEAN        | ALAMO VIDEOTAPE             |
| SEAN        | BROOKLYN DESERT             |
| SEAN        | CRUSADE HONEY               |
| SEAN        | DARN FORRESTER              |
| SEAN        | DUMBO LUST                  |
| SEAN        | FANTASY TROOPERS            |
| SEAN        | FORRESTER COMANCHEROS       |
| SEAN        | GO PURPLE                   |
| SEAN        | GRAFFITI LOVE               |
| SEAN        | GROSSE WONDERFUL            |
| SEAN        | GROUNDHOG UNCUT             |
| SEAN        | HALF OUTFIELD               |
| SEAN        | HAUNTING PIANIST            |
| SEAN        | HORN WORKING                |
| SEAN        | HUNTING MUSKETEERS          |
| SEAN        | IGBY MAKER                  |
| SEAN        | LICENSE WEEKEND             |
| SEAN        | LONELY ELEPHANT             |
| SEAN        | LUST LOCK                   |
| SEAN        | MOCKINGBIRD HOLLYWOOD       |
| SEAN        | OCTOBER SUBMARINE           |
| SEAN        | PATIENT SISTER              |
| SEAN        | PHILADELPHIA WIFE           |
| SEAN        | SCORPION APOLLO             |
| SEAN        | SOLDIERS EVOLUTION          |
| SEAN        | STAGECOACH ARMAGEDDON       |
| SEAN        | STREAK RIDGEMONT            |
| SEAN        | SUBMARINE BED               |
| SEAN        | SUPERFLY TRIP               |
| SEAN        | TELEMARK HEARTBREAKERS      |
| SEAN        | TRACY CIDER                 |
| SEAN        | UNITED PILOT                |
| CHRISTOPHER | ALI FOREVER                 |
| CHRISTOPHER | ANGELS LIFE                 |
| CHRISTOPHER | BACKLASH UNDEFEATED         |
| CHRISTOPHER | CONGENIALITY QUEST          |
| CHRISTOPHER | CONTACT ANONYMOUS           |
| CHRISTOPHER | CREEPERS KANE               |
| CHRISTOPHER | FREEDOM CLEOPATRA           |
| CHRISTOPHER | HIGHBALL POTTER             |
| CHRISTOPHER | ICE CROSSING                |
| CHRISTOPHER | JEEPERS WEDDING             |
| CHRISTOPHER | KANE EXORCIST               |
| CHRISTOPHER | LANGUAGE COWBOY             |
| CHRISTOPHER | LAWRENCE LOVE               |
| CHRISTOPHER | MURDER ANTITRUST            |
| CHRISTOPHER | SLEUTH ORIENT               |
| CHRISTOPHER | SPINAL ROCKY                |
| CHRISTOPHER | STORM HAPPINESS             |
| CHRISTOPHER | SUGAR WONKA                 |
| CHRISTOPHER | VIDEOTAPE ARSENIC           |
| CHRISTOPHER | WOMEN DORADO                |
| KIRSTEN     | BOULEVARD MOB               |
| KIRSTEN     | BRAVEHEART HUMAN            |
| KIRSTEN     | BUCKET BROTHERHOOD          |
| KIRSTEN     | BUGSY SONG                  |
| KIRSTEN     | CASABLANCA SUPER            |
| KIRSTEN     | CHARADE DUFFEL              |
| KIRSTEN     | DANGEROUS UPTOWN            |
| KIRSTEN     | DEVIL DESIRE                |
| KIRSTEN     | FRISCO FORREST              |
| KIRSTEN     | GRINCH MASSAGE              |
| KIRSTEN     | HOURS RAGE                  |
| KIRSTEN     | HURRICANE AFFAIR            |
| KIRSTEN     | IMAGE PRINCESS              |
| KIRSTEN     | ISHTAR ROCKETEER            |
| KIRSTEN     | LABYRINTH LEAGUE            |
| KIRSTEN     | LEAGUE HELLFIGHTERS         |
| KIRSTEN     | MADIGAN DORADO              |
| KIRSTEN     | MADNESS ATTACKS             |
| KIRSTEN     | MAGIC MALLRATS              |
| KIRSTEN     | MAKER GABLES                |
| KIRSTEN     | MASSAGE IMAGE               |
| KIRSTEN     | MEMENTO ZOOLANDER           |
| KIRSTEN     | NECKLACE OUTBREAK           |
| KIRSTEN     | PATHS CONTROL               |
| KIRSTEN     | PLUTO OLEANDER              |
| KIRSTEN     | PRIVATE DROP                |
| KIRSTEN     | RAIDERS ANTITRUST           |
| KIRSTEN     | REUNION WITCHES             |
| KIRSTEN     | SKY MIRACLE                 |
| KIRSTEN     | SPEAKEASY DATE              |
| KIRSTEN     | STAGECOACH ARMAGEDDON       |
| KIRSTEN     | TIES HUNGER                 |
| KIRSTEN     | USUAL UNTOUCHABLES          |
| KIRSTEN     | WORST BANGER                |
| ELLEN       | BILKO ANONYMOUS             |
| ELLEN       | CARIBBEAN LIBERTY           |
| ELLEN       | CASPER DRAGONFLY            |
| ELLEN       | EMPIRE MALKOVICH            |
| ELLEN       | FLOATS GARDEN               |
| ELLEN       | FROGMEN BREAKING            |
| ELLEN       | HOMEWARD CIDER              |
| ELLEN       | HYDE DOCTOR                 |
| ELLEN       | IMAGE PRINCESS              |
| ELLEN       | JACKET FRISCO               |
| ELLEN       | MICROCOSMOS PARADISE        |
| ELLEN       | NETWORK PEAK                |
| ELLEN       | OSCAR GOLD                  |
| ELLEN       | PICKUP DRIVING              |
| ELLEN       | PINOCCHIO SIMON             |
| ELLEN       | PRIVATE DROP                |
| ELLEN       | ROOTS REMEMBER              |
| ELLEN       | SCARFACE BANG               |
| ELLEN       | SECRETARY ROUGE             |
| ELLEN       | SPY MILE                    |
| ELLEN       | STREETCAR INTENTIONS        |
| ELLEN       | TADPOLE PARK                |
| ELLEN       | TREASURE COMMAND            |
| ELLEN       | TURN STAR                   |
| ELLEN       | WOMEN DORADO                |
| KENNETH     | ALI FOREVER                 |
| KENNETH     | BEAST HUNCHBACK             |
| KENNETH     | BIRDCAGE CASPER             |
| KENNETH     | CARRIE BUNCH                |
| KENNETH     | CITIZEN SHREK               |
| KENNETH     | CROSSROADS CASUALTIES       |
| KENNETH     | DANCING FEVER               |
| KENNETH     | DETECTIVE VISION            |
| KENNETH     | EARTH VISION                |
| KENNETH     | EGYPT TENENBAUMS            |
| KENNETH     | FLAMINGOS CONNECTICUT       |
| KENNETH     | FLATLINERS KILLER           |
| KENNETH     | FRIDA SLIPPER               |
| KENNETH     | GHOST GROUNDHOG             |
| KENNETH     | HARPER DYING                |
| KENNETH     | HOMICIDE PEACH              |
| KENNETH     | INDEPENDENCE HOTEL          |
| KENNETH     | JACKET FRISCO               |
| KENNETH     | JAPANESE RUN                |
| KENNETH     | LEAGUE HELLFIGHTERS         |
| KENNETH     | LESSON CLEOPATRA            |
| KENNETH     | LIES TREATMENT              |
| KENNETH     | LOST BIRD                   |
| KENNETH     | LUCKY FLYING                |
| KENNETH     | MAGNIFICENT CHITTY          |
| KENNETH     | MAIDEN HOME                 |
| KENNETH     | RAIDERS ANTITRUST           |
| KENNETH     | RAINBOW SHOCK               |
| KENNETH     | REMEMBER DIARY              |
| KENNETH     | SEATTLE EXPECATIONS         |
| KENNETH     | SHIP WONDERLAND             |
| KENNETH     | VOLUME HOUSE                |
| KENNETH     | WORKING MICROCOSMOS         |
| DARYL       | AMISTAD MIDSUMMER           |
| DARYL       | ARACHNOPHOBIA ROLLERCOASTER |
| DARYL       | BABY HALL                   |
| DARYL       | BALLROOM MOCKINGBIRD        |
| DARYL       | BEHAVIOR RUNAWAY            |
| DARYL       | BIRCH ANTITRUST             |
| DARYL       | CASUALTIES ENCINO           |
| DARYL       | DANGEROUS UPTOWN            |
| DARYL       | DOUBLE WRATH                |
| DARYL       | EXPECATIONS NATURAL         |
| DARYL       | FAMILY SWEET                |
| DARYL       | FIDDLER LOST                |
| DARYL       | FORREST SONS                |
| DARYL       | GENTLEMEN STAGE             |
| DARYL       | GRAIL FRANKENSTEIN          |
| DARYL       | HOLES BRANNIGAN             |
| DARYL       | HOLOCAUST HIGHBALL          |
| DARYL       | HOOSIERS BIRDCAGE           |
| DARYL       | KILLER INNOCENT             |
| DARYL       | LIFE TWISTED                |
| DARYL       | MADRE GABLES                |
| DARYL       | MAIDEN HOME                 |
| DARYL       | NEIGHBORS CHARADE           |
| DARYL       | NORTH TEQUILA               |
| DARYL       | POND SEATTLE                |
| DARYL       | RUGRATS SHAKESPEARE         |
| DARYL       | SMOOCHY CONTROL             |
| DARYL       | SPIKING ELEMENT             |
| DARYL       | STREAK RIDGEMONT            |
| DARYL       | TRAFFIC HOBBIT              |
| DARYL       | UNFAITHFUL KILL             |
| GENE        | AIRPORT POLLOCK             |
| GENE        | ARGONAUTS TOWN              |
| GENE        | ARMY FLINTSTONES            |
| GENE        | BANGER PINOCCHIO            |
| GENE        | BEACH HEARTBREAKERS         |
| GENE        | BENEATH RUSH                |
| GENE        | CHAMPION FLATLINERS         |
| GENE        | DARKNESS WAR                |
| GENE        | DORADO NOTTING              |
| GENE        | FLAMINGOS CONNECTICUT       |
| GENE        | HOOK CHARIOTS               |
| GENE        | ILLUSION AMELIE             |
| GENE        | JET NEIGHBORS               |
| GENE        | METROPOLIS COMA             |
| GENE        | MONEY HAROLD                |
| GENE        | PAST SUICIDES               |
| GENE        | SECRETS PARADISE            |
| GENE        | SPLASH GUMP                 |
| GENE        | STING PERSONAL              |
| GENE        | TADPOLE PARK                |
| GENE        | VIRGINIAN PLUTO             |
| GENE        | WEREWOLF LOLA               |
| GENE        | WORDS HUNTER                |
| MEG         | CHILL LUCK                  |
| MEG         | CONNECTICUT TRAMP           |
| MEG         | CRAZY HOME                  |
| MEG         | CRUSADE HONEY               |
| MEG         | DROP WATERFRONT             |
| MEG         | FIDDLER LOST                |
| MEG         | FUGITIVE MAGUIRE            |
| MEG         | GANDHI KWAI                 |
| MEG         | GILMORE BOILED              |
| MEG         | GORGEOUS BINGO              |
| MEG         | HOUSE DYNAMITE              |
| MEG         | HYSTERICAL GRAIL            |
| MEG         | INTOLERABLE INTENTIONS      |
| MEG         | LIAISONS SWEET              |
| MEG         | MAKER GABLES                |
| MEG         | MASK PEACH                  |
| MEG         | ORANGE GRAPES               |
| MEG         | PAPI NECKLACE               |
| MEG         | REUNION WITCHES             |
| MEG         | SABRINA MIDNIGHT            |
| MEG         | SAGEBRUSH CLUELESS          |
| MEG         | SPEED SUIT                  |
| MEG         | SUMMER SCARFACE             |
| MEG         | VACATION BOONDOCK           |
| MEG         | VAMPIRE WHALE               |
| MEG         | VISION TORQUE               |
| MEG         | VOYAGE LEGALLY              |
| CHRIS       | BENEATH RUSH                |
| CHRIS       | BILL OTHERS                 |
| CHRIS       | BLINDNESS GUN               |
| CHRIS       | BOONDOCK BALLROOM           |
| CHRIS       | BUNCH MINDS                 |
| CHRIS       | CARIBBEAN LIBERTY           |
| CHRIS       | CONVERSATION DOWNHILL       |
| CHRIS       | CROW GREASE                 |
| CHRIS       | DARN FORRESTER              |
| CHRIS       | EXTRAORDINARY CONQUERER     |
| CHRIS       | MUPPET MILE                 |
| CHRIS       | ODDS BOOGIE                 |
| CHRIS       | PLUTO OLEANDER              |
| CHRIS       | PURPLE MOVIE                |
| CHRIS       | RAGE GAMES                  |
| CHRIS       | REDS POCUS                  |
| CHRIS       | REQUIEM TYCOON              |
| CHRIS       | ROAD ROXANNE                |
| CHRIS       | ROCKETEER MOTHER            |
| CHRIS       | SATURN NAME                 |
| CHRIS       | SHAKESPEARE SADDLE          |
| CHRIS       | SPARTACUS CHEAPER           |
| CHRIS       | SPINAL ROCKY                |
| CHRIS       | TROJAN TOMORROW             |
| CHRIS       | WALLS ARTIST                |
| CHRIS       | WONDERLAND CHRISTMAS        |
| CHRIS       | WORLD LEATHERNECKS          |
| JIM         | AIRPLANE SIERRA             |
| JIM         | ANONYMOUS HUMAN             |
| JIM         | BOILED DARES                |
| JIM         | DRAGON SQUAD                |
| JIM         | FLATLINERS KILLER           |
| JIM         | FLOATS GARDEN               |
| JIM         | GRINCH MASSAGE              |
| JIM         | HELLFIGHTERS SIERRA         |
| JIM         | JAPANESE RUN                |
| JIM         | JUMANJI BLADE               |
| JIM         | LEAGUE HELLFIGHTERS         |
| JIM         | LUCKY FLYING                |
| JIM         | METROPOLIS COMA             |
| JIM         | MOTIONS DETAILS             |
| JIM         | NECKLACE OUTBREAK           |
| JIM         | NEMO CAMPUS                 |
| JIM         | NEWSIES STORY               |
| JIM         | OLEANDER CLUE               |
| JIM         | PERFECT GROOVE              |
| JIM         | RESERVOIR ADAPTATION        |
| JIM         | ROMAN PUNK                  |
| JIM         | SIERRA DIVIDE               |
| JIM         | SPY MILE                    |
| JIM         | WEEKEND PERSONAL            |
| JIM         | WISDOM WORKER               |
| JIM         | WOMEN DORADO                |
| SPENCER     | ALONE TRIP                  |
| SPENCER     | CANYON STOCK                |
| SPENCER     | DRAGON SQUAD                |
| SPENCER     | HEAVENLY GUN                |
| SPENCER     | HELLFIGHTERS SIERRA         |
| SPENCER     | LEATHERNECKS DWARFS         |
| SPENCER     | MASSACRE USUAL              |
| SPENCER     | ORDER BETRAYED              |
| SPENCER     | RANDOM GO                   |
| SPENCER     | REBEL AIRPORT               |
| SPENCER     | SALUTE APOLLO               |
| SPENCER     | SENSE GREEK                 |
| SPENCER     | SNATCHERS MONTEZUMA         |
| SPENCER     | STING PERSONAL              |
| SPENCER     | STORY SIDE                  |
| SPENCER     | SWEET BROTHERHOOD           |
| SPENCER     | TAXI KICK                   |
| SPENCER     | TREASURE COMMAND            |
| SPENCER     | TYCOON GATHERING            |
| SPENCER     | VIRGIN DAISY                |
| SPENCER     | WEEKEND PERSONAL            |
| SPENCER     | WITCHES PANIC               |
| SPENCER     | WORST BANGER                |
| SPENCER     | WRATH MILE                  |
| SUSAN       | BEAST HUNCHBACK             |
| SUSAN       | BENEATH RUSH                |
| SUSAN       | BONNIE HOLOCAUST            |
| SUSAN       | CHITTY LOCK                 |
| SUSAN       | CREATURES SHAKESPEARE       |
| SUSAN       | DRAGON SQUAD                |
| SUSAN       | DRIVING POLISH              |
| SUSAN       | DURHAM PANKY                |
| SUSAN       | EGYPT TENENBAUMS            |
| SUSAN       | EVE RESURRECTION            |
| SUSAN       | JUMPING WRATH               |
| SUSAN       | KARATE MOON                 |
| SUSAN       | LAWRENCE LOVE               |
| SUSAN       | MEMENTO ZOOLANDER           |
| SUSAN       | MURDER ANTITRUST            |
| SUSAN       | NATURAL STOCK               |
| SUSAN       | PANTHER REDS                |
| SUSAN       | PATHS CONTROL               |
| SUSAN       | PRIX UNDEFEATED             |
| SUSAN       | PULP BEVERLY                |
| SUSAN       | SAINTS BRIDE                |
| SUSAN       | SEARCHERS WAIT              |
| SUSAN       | SHINING ROSES               |
| SUSAN       | SPIKING ELEMENT             |
| SUSAN       | STAR OPERATION              |
| SUSAN       | UPTOWN YOUNG                |
| SUSAN       | VALLEY PACKER               |
| SUSAN       | VANISHING ROCKY             |
| SUSAN       | VIDEOTAPE ARSENIC           |
| SUSAN       | WISDOM WORKER               |
| SUSAN       | WIZARD COLDBLOODED          |
| SUSAN       | WONDERFUL DROP              |
| SUSAN       | WORKER TARZAN               |
| WALTER      | AMELIE HELLFIGHTERS         |
| WALTER      | ARABIA DOGMA                |
| WALTER      | BANG KWAI                   |
| WALTER      | CASABLANCA SUPER            |
| WALTER      | CASPER DRAGONFLY            |
| WALTER      | CROW GREASE                 |
| WALTER      | CURTAIN VIDEOTAPE           |
| WALTER      | DANCES NONE                 |
| WALTER      | EARLY HOME                  |
| WALTER      | FLYING HOOK                 |
| WALTER      | FORREST SONS                |
| WALTER      | FREDDY STORM                |
| WALTER      | GASLIGHT CRUSADE            |
| WALTER      | HOBBIT ALIEN                |
| WALTER      | HOOSIERS BIRDCAGE           |
| WALTER      | HYSTERICAL GRAIL            |
| WALTER      | JERSEY SASSY                |
| WALTER      | LAMBS CINCINATTI            |
| WALTER      | LESSON CLEOPATRA            |
| WALTER      | LIES TREATMENT              |
| WALTER      | LOCK REAR                   |
| WALTER      | LONELY ELEPHANT             |
| WALTER      | MADISON TRAP                |
| WALTER      | MOTIONS DETAILS             |
| WALTER      | MULHOLLAND BEAST            |
| WALTER      | MUMMY CREATURES             |
| WALTER      | NIGHTMARE CHILL             |
| WALTER      | NOVOCAINE FLIGHT            |
| WALTER      | RAIDERS ANTITRUST           |
| WALTER      | REUNION WITCHES             |
| WALTER      | ROOTS REMEMBER              |
| WALTER      | SIERRA DIVIDE               |
| WALTER      | SKY MIRACLE                 |
| WALTER      | SLUMS DUCK                  |
| WALTER      | SPIKING ELEMENT             |
| WALTER      | STAGE WORLD                 |
| WALTER      | STEPMOM DREAM               |
| WALTER      | STRANGELOVE DESIRE          |
| WALTER      | WARDROBE PHANTOM            |
| WALTER      | WITCHES PANIC               |
| WALTER      | WIZARD COLDBLOODED          |
| MATTHEW     | AFRICAN EGG                 |
| MATTHEW     | CANYON STOCK                |
| MATTHEW     | CELEBRITY HORN              |
| MATTHEW     | CRUSADE HONEY               |
| MATTHEW     | CUPBOARD SINNERS            |
| MATTHEW     | DANCING FEVER               |
| MATTHEW     | DAWN POND                   |
| MATTHEW     | DELIVERANCE MULHOLLAND      |
| MATTHEW     | EASY GLADIATOR              |
| MATTHEW     | ENGLISH BULWORTH            |
| MATTHEW     | FINDING ANACONDA            |
| MATTHEW     | FIREHOUSE VIETNAM           |
| MATTHEW     | FREAKY POCUS                |
| MATTHEW     | GAMES BOWFINGER             |
| MATTHEW     | GIANT TROOPERS              |
| MATTHEW     | GLASS DYING                 |
| MATTHEW     | GREATEST NORTH              |
| MATTHEW     | HOUSE DYNAMITE              |
| MATTHEW     | MOB DUFFEL                  |
| MATTHEW     | MUSCLE BRIGHT               |
| MATTHEW     | OPPOSITE NECKLACE           |
| MATTHEW     | ORIENT CLOSER               |
| MATTHEW     | POTLUCK MIXED               |
| MATTHEW     | ROBBERS JOON                |
| MATTHEW     | SOUP WISDOM                 |
| MATTHEW     | TOMORROW HUSTLER            |
| MATTHEW     | TRAFFIC HOBBIT              |
| MATTHEW     | TROJAN TOMORROW             |
| MATTHEW     | VIETNAM SMOOCHY             |
| MATTHEW     | WANDA CHAMBER               |
| PENELOPE    | AMADEUS HOLY                |
| PENELOPE    | ARMAGEDDON LOST             |
| PENELOPE    | ARMY FLINTSTONES            |
| PENELOPE    | BEAR GRACELAND              |
| PENELOPE    | BIKINI BORROWERS            |
| PENELOPE    | CHAPLIN LICENSE             |
| PENELOPE    | CLERKS ANGELS               |
| PENELOPE    | CORE SUIT                   |
| PENELOPE    | CRYSTAL BREAKING            |
| PENELOPE    | DISCIPLE MOTHER             |
| PENELOPE    | DUCK RACER                  |
| PENELOPE    | ENTRAPMENT SATISFACTION     |
| PENELOPE    | FEUD FROGMEN                |
| PENELOPE    | FIDELITY DEVIL              |
| PENELOPE    | HAMLET WISDOM               |
| PENELOPE    | HAROLD FRENCH               |
| PENELOPE    | INSTINCT AIRPORT            |
| PENELOPE    | LADY STAGE                  |
| PENELOPE    | LEGEND JEDI                 |
| PENELOPE    | MISSION ZOOLANDER           |
| PENELOPE    | MOTIONS DETAILS             |
| PENELOPE    | MUPPET MILE                 |
| PENELOPE    | PARADISE SABRINA            |
| PENELOPE    | PIANIST OUTFIELD            |
| PENELOPE    | ROCKY WAR                   |
| PENELOPE    | TITANIC BOONDOCK            |
| PENELOPE    | TRAIN BUNCH                 |
| PENELOPE    | UNTOUCHABLES SUNRISE        |
| PENELOPE    | VIRGINIAN PLUTO             |
| PENELOPE    | WONDERFUL DROP              |
| PENELOPE    | ZOOLANDER FICTION           |
| SIDNEY      | ALASKA PHANTOM              |
| SIDNEY      | ALIEN CENTER                |
| SIDNEY      | AMERICAN CIRCUS             |
| SIDNEY      | ANTITRUST TOMATOES          |
| SIDNEY      | ARTIST COLDBLOODED          |
| SIDNEY      | CANDIDATE PERDITION         |
| SIDNEY      | CLONES PINOCCHIO            |
| SIDNEY      | DOGMA FAMILY                |
| SIDNEY      | EMPIRE MALKOVICH            |
| SIDNEY      | ENDING CROWDS               |
| SIDNEY      | FINDING ANACONDA            |
| SIDNEY      | FREAKY POCUS                |
| SIDNEY      | GRACELAND DYNAMITE          |
| SIDNEY      | GREASE YOUTH                |
| SIDNEY      | LORD ARIZONA                |
| SIDNEY      | MANNEQUIN WORST             |
| SIDNEY      | MASK PEACH                  |
| SIDNEY      | MUMMY CREATURES             |
| SIDNEY      | OZ LIAISONS                 |
| SIDNEY      | PLUTO OLEANDER              |
| SIDNEY      | RUN PACIFIC                 |
| SIDNEY      | SIEGE MADRE                 |
| SIDNEY      | SPIRITED CASUALTIES         |
| SIDNEY      | SPY MILE                    |
| SIDNEY      | SUBMARINE BED               |
| SIDNEY      | SUNDANCE INVASION           |
| SIDNEY      | TITANS JERK                 |
| SIDNEY      | TRAMP OTHERS                |
| SIDNEY      | TREATMENT JEKYLL            |
| SIDNEY      | TRUMAN CRAZY                |
| SIDNEY      | WAKE JAWS                   |
| SIDNEY      | WORLD LEATHERNECKS          |
| SIDNEY      | WRONG BEHAVIOR              |
| SIDNEY      | WYOMING STORM               |
| GROUCHO     | ATTACKS HATE                |
| GROUCHO     | BLUES INSTINCT              |
| GROUCHO     | BUTCH PANTHER               |
| GROUCHO     | CASUALTIES ENCINO           |
| GROUCHO     | CHAPLIN LICENSE             |
| GROUCHO     | COLOR PHILADELPHIA          |
| GROUCHO     | CREATURES SHAKESPEARE       |
| GROUCHO     | CROW GREASE                 |
| GROUCHO     | DALMATIONS SWEDEN           |
| GROUCHO     | DEVIL DESIRE                |
| GROUCHO     | DONNIE ALLEY                |
| GROUCHO     | GABLES METROPOLIS           |
| GROUCHO     | GOLD RIVER                  |
| GROUCHO     | HAPPINESS UNITED            |
| GROUCHO     | HUNCHBACK IMPOSSIBLE        |
| GROUCHO     | INDEPENDENCE HOTEL          |
| GROUCHO     | IRON MOON                   |
| GROUCHO     | KISS GLORY                  |
| GROUCHO     | LABYRINTH LEAGUE            |
| GROUCHO     | MARRIED GO                  |
| GROUCHO     | MAUDE MOD                   |
| GROUCHO     | MOB DUFFEL                  |
| GROUCHO     | OPPOSITE NECKLACE           |
| GROUCHO     | PANKY SUBMARINE             |
| GROUCHO     | PARK CITIZEN                |
| GROUCHO     | PHANTOM GLORY               |
| GROUCHO     | POCUS PULP                  |
| GROUCHO     | RUNNER MADIGAN              |
| GROUCHO     | SATISFACTION CONFIDENTIAL   |
| GROUCHO     | SENSIBILITY REAR            |
| GROUCHO     | SUBMARINE BED               |
| GROUCHO     | SUNSET RACER                |
| GROUCHO     | TEMPLE ATTRACTION           |
| GROUCHO     | TOMATOES HELLFIGHTERS       |
| GROUCHO     | VANILLA DAY                 |
| GINA        | BED HIGHBALL                |
| GINA        | CALENDAR GUNFIGHT           |
| GINA        | CHAMBER ITALIAN             |
| GINA        | CHAPLIN LICENSE             |
| GINA        | CHARIOTS CONSPIRACY         |
| GINA        | CLUELESS BUCKET             |
| GINA        | COLDBLOODED DARLING         |
| GINA        | CONEHEADS SMOOCHY           |
| GINA        | DARKNESS WAR                |
| GINA        | DEER VIRGINIAN              |
| GINA        | DOGMA FAMILY                |
| GINA        | ELEPHANT TROJAN             |
| GINA        | EXCITEMENT EVE              |
| GINA        | FRISCO FORREST              |
| GINA        | GANDHI KWAI                 |
| GINA        | GOODFELLAS SALUTE           |
| GINA        | GUNFIGHT MOON               |
| GINA        | HALL CASSIDY                |
| GINA        | HEARTBREAKERS BRIGHT        |
| GINA        | HOOK CHARIOTS               |
| GINA        | HYDE DOCTOR                 |
| GINA        | IMPACT ALADDIN              |
| GINA        | INDIAN LOVE                 |
| GINA        | INTRIGUE WORST              |
| GINA        | LICENSE WEEKEND             |
| GINA        | LOUISIANA HARRY             |
| GINA        | MAGNIFICENT CHITTY          |
| GINA        | METAL ARMAGEDDON            |
| GINA        | MIDNIGHT WESTWARD           |
| GINA        | MOVIE SHAKESPEARE           |
| GINA        | MUMMY CREATURES             |
| GINA        | OPEN AFRICAN                |
| GINA        | SEARCHERS WAIT              |
| GINA        | SEVEN SWARM                 |
| GINA        | SIERRA DIVIDE               |
| GINA        | SPIRITED CASUALTIES         |
| GINA        | STORM HAPPINESS             |
| GINA        | SUGAR WONKA                 |
| GINA        | TELEGRAPH VOYAGE            |
| GINA        | TRAINSPOTTING STRANGERS     |
| GINA        | WIFE TURN                   |
| GINA        | WINDOW SIDE                 |
| WARREN      | ACADEMY DINOSAUR            |
| WARREN      | AGENT TRUMAN                |
| WARREN      | ALABAMA DEVIL               |
| WARREN      | CHARADE DUFFEL              |
| WARREN      | DARES PLUTO                 |
| WARREN      | DEEP CRUSADE                |
| WARREN      | DOOM DANCING                |
| WARREN      | ELF MURDER                  |
| WARREN      | FANTASIA PARK               |
| WARREN      | GARDEN ISLAND               |
| WARREN      | GREATEST NORTH              |
| WARREN      | GREEDY ROOTS                |
| WARREN      | KENTUCKIAN GIANT            |
| WARREN      | LADYBUGS ARMAGEDDON         |
| WARREN      | LESSON CLEOPATRA            |
| WARREN      | MASK PEACH                  |
| WARREN      | MEET CHOCOLATE              |
| WARREN      | OUTLAW HANKY                |
| WARREN      | PAJAMA JAWBREAKER           |
| WARREN      | PANTHER REDS                |
| WARREN      | PERSONAL LADYBUGS           |
| WARREN      | POTTER CONNECTICUT          |
| WARREN      | PRIDE ALAMO                 |
| WARREN      | PULP BEVERLY                |
| WARREN      | REDS POCUS                  |
| WARREN      | RIVER OUTLAW                |
| WARREN      | ROMAN PUNK                  |
| WARREN      | ROOTS REMEMBER              |
| WARREN      | THIEF PELICAN               |
| WARREN      | TITANIC BOONDOCK            |
| WARREN      | TOMATOES HELLFIGHTERS       |
| WARREN      | UNBREAKABLE KARATE          |
| WARREN      | WARDROBE PHANTOM            |
| WARREN      | WEDDING APOLLO              |
| SYLVESTER   | ALASKA PHANTOM              |
| SYLVESTER   | BACKLASH UNDEFEATED         |
| SYLVESTER   | BIRDS PERDITION             |
| SYLVESTER   | CLOCKWORK PARADISE          |
| SYLVESTER   | CONFIDENTIAL INTERVIEW      |
| SYLVESTER   | CREEPERS KANE               |
| SYLVESTER   | DOORS PRESIDENT             |
| SYLVESTER   | ENCINO ELF                  |
| SYLVESTER   | HALLOWEEN NUTS              |
| SYLVESTER   | INSTINCT AIRPORT            |
| SYLVESTER   | NEWSIES STORY               |
| SYLVESTER   | PARADISE SABRINA            |
| SYLVESTER   | PREJUDICE OLEANDER          |
| SYLVESTER   | PRIX UNDEFEATED             |
| SYLVESTER   | RINGS HEARTBREAKERS         |
| SYLVESTER   | RUSH GOODFELLAS             |
| SYLVESTER   | SHAWSHANK BUBBLE            |
| SYLVESTER   | SHEPHERD MIDSUMMER          |
| SYLVESTER   | SUN CONFESSIONS             |
| SYLVESTER   | TEXAS WATCH                 |
| SYLVESTER   | WALLS ARTIST                |
| SYLVESTER   | WEEKEND PERSONAL            |
| SUSAN       | AIRPORT POLLOCK             |
| SUSAN       | ANONYMOUS HUMAN             |
| SUSAN       | BED HIGHBALL                |
| SUSAN       | CARIBBEAN LIBERTY           |
| SUSAN       | CASUALTIES ENCINO           |
| SUSAN       | CLERKS ANGELS               |
| SUSAN       | EXCITEMENT EVE              |
| SUSAN       | FULL FLATLINERS             |
| SUSAN       | GLASS DYING                 |
| SUSAN       | GOODFELLAS SALUTE           |
| SUSAN       | HOTEL HAPPINESS             |
| SUSAN       | LEATHERNECKS DWARFS         |
| SUSAN       | LOATHING LEGALLY            |
| SUSAN       | LUCK OPUS                   |
| SUSAN       | MADNESS ATTACKS             |
| SUSAN       | NONE SPIKING                |
| SUSAN       | PACIFIC AMISTAD             |
| SUSAN       | SISTER FREDDY               |
| SUSAN       | TROJAN TOMORROW             |
| SUSAN       | WASH HEAVENLY               |
| SUSAN       | WORDS HUNTER                |
| CAMERON     | BEAUTY GREASE               |
| CAMERON     | BLACKOUT PRIVATE            |
| CAMERON     | BRIGHT ENCOUNTERS           |
| CAMERON     | CLUELESS BUCKET             |
| CAMERON     | CONQUERER NUTS              |
| CAMERON     | CROW GREASE                 |
| CAMERON     | FLOATS GARDEN               |
| CAMERON     | GLADIATOR WESTWARD          |
| CAMERON     | GRIT CLOCKWORK              |
| CAMERON     | HARRY IDAHO                 |
| CAMERON     | HAWK CHILL                  |
| CAMERON     | HELLFIGHTERS SIERRA         |
| CAMERON     | JADE BUNCH                  |
| CAMERON     | JUGGLER HARDLY              |
| CAMERON     | LAMBS CINCINATTI            |
| CAMERON     | MALLRATS UNITED             |
| CAMERON     | MOVIE SHAKESPEARE           |
| CAMERON     | MURDER ANTITRUST            |
| CAMERON     | ORIENT CLOSER               |
| CAMERON     | PEARL DESTINY               |
| CAMERON     | PILOT HOOSIERS              |
| CAMERON     | PINOCCHIO SIMON             |
| CAMERON     | PRIVATE DROP                |
| CAMERON     | RIGHT CRANES                |
| CAMERON     | RINGS HEARTBREAKERS         |
| CAMERON     | ROCK INSTINCT               |
| CAMERON     | ROOTS REMEMBER              |
| CAMERON     | SECRETARY ROUGE             |
| CAMERON     | STOCK GLASS                 |
| CAMERON     | TOMATOES HELLFIGHTERS       |
| CAMERON     | TYCOON GATHERING            |
| CAMERON     | WASTELAND DIVINE            |
| CAMERON     | WIFE TURN                   |
| RUSSELL     | ARABIA DOGMA                |
| RUSSELL     | ARIZONA BANG                |
| RUSSELL     | CINCINATTI WHISPERER        |
| RUSSELL     | CONFESSIONS MAGUIRE         |
| RUSSELL     | CRAZY HOME                  |
| RUSSELL     | DINOSAUR SECRETARY          |
| RUSSELL     | FIDDLER LOST                |
| RUSSELL     | FLATLINERS KILLER           |
| RUSSELL     | HURRICANE AFFAIR            |
| RUSSELL     | IDOLS SNATCHERS             |
| RUSSELL     | MATRIX SNOWMAN              |
| RUSSELL     | MOVIE SHAKESPEARE           |
| RUSSELL     | MUMMY CREATURES             |
| RUSSELL     | PANKY SUBMARINE             |
| RUSSELL     | PAYCHECK WAIT               |
| RUSSELL     | PRIX UNDEFEATED             |
| RUSSELL     | REUNION WITCHES             |
| RUSSELL     | SEA VIRGIN                  |
| RUSSELL     | SIERRA DIVIDE               |
| RUSSELL     | SOLDIERS EVOLUTION          |
| RUSSELL     | SPINAL ROCKY                |
| RUSSELL     | STREETCAR INTENTIONS        |
| RUSSELL     | SUNRISE LEAGUE              |
| RUSSELL     | SUSPECTS QUILLS             |
| RUSSELL     | WORKER TARZAN               |
| MORGAN      | ARACHNOPHOBIA ROLLERCOASTER |
| MORGAN      | BOILED DARES                |
| MORGAN      | CANDIDATE PERDITION         |
| MORGAN      | CONTACT ANONYMOUS           |
| MORGAN      | DECEIVER BETRAYED           |
| MORGAN      | DRACULA CRYSTAL             |
| MORGAN      | DRUMS DYNAMITE              |
| MORGAN      | EXCITEMENT EVE              |
| MORGAN      | FLATLINERS KILLER           |
| MORGAN      | GENTLEMEN STAGE             |
| MORGAN      | HARRY IDAHO                 |
| MORGAN      | LOATHING LEGALLY            |
| MORGAN      | ORDER BETRAYED              |
| MORGAN      | PAPI NECKLACE               |
| MORGAN      | PET HAUNTING                |
| MORGAN      | PINOCCHIO SIMON             |
| MORGAN      | PRIX UNDEFEATED             |
| MORGAN      | RECORDS ZORRO               |
| MORGAN      | REIGN GENTLEMEN             |
| MORGAN      | RESERVOIR ADAPTATION        |
| MORGAN      | RINGS HEARTBREAKERS         |
| MORGAN      | RUGRATS SHAKESPEARE         |
| MORGAN      | STAGECOACH ARMAGEDDON       |
| MORGAN      | TIGHTS DAWN                 |
| MORGAN      | UNCUT SUICIDES              |
| MORGAN      | WEST LION                   |
| MORGAN      | WOLVES DESIRE               |
| MORGAN      | ALI FOREVER                 |
| MORGAN      | BETRAYED REAR               |
| MORGAN      | BOULEVARD MOB               |
| MORGAN      | CLUELESS BUCKET             |
| MORGAN      | CRAZY HOME                  |
| MORGAN      | CROW GREASE                 |
| MORGAN      | DARKO DORADO                |
| MORGAN      | DIVORCE SHINING             |
| MORGAN      | DRIVER ANNIE                |
| MORGAN      | FATAL HAUNTED               |
| MORGAN      | FROGMEN BREAKING            |
| MORGAN      | HOLES BRANNIGAN             |
| MORGAN      | HOLY TADPOLE                |
| MORGAN      | ILLUSION AMELIE             |
| MORGAN      | LOVERBOY ATTACKS            |
| MORGAN      | NEIGHBORS CHARADE           |
| MORGAN      | SAGEBRUSH CLUELESS          |
| MORGAN      | SLEUTH ORIENT               |
| MORGAN      | SPICE SORORITY              |
| MORGAN      | STAR OPERATION              |
| MORGAN      | SUIT WALLS                  |
| MORGAN      | SUNSET RACER                |
| MORGAN      | TROOPERS METAL              |
| MORGAN      | WASH HEAVENLY               |
| MORGAN      | WRONG BEHAVIOR              |
| HARRISON    | BADMAN DAWN                 |
| HARRISON    | BALLROOM MOCKINGBIRD        |
| HARRISON    | DOUBLE WRATH                |
| HARRISON    | DOUBTFIRE LABYRINTH         |
| HARRISON    | ELEPHANT TROJAN             |
| HARRISON    | FANTASIA PARK               |
| HARRISON    | GREEDY ROOTS                |
| HARRISON    | GROOVE FICTION              |
| HARRISON    | HALF OUTFIELD               |
| HARRISON    | HOMICIDE PEACH              |
| HARRISON    | LADY STAGE                  |
| HARRISON    | LOSE INCH                   |
| HARRISON    | MUPPET MILE                 |
| HARRISON    | NASH CHOCOLAT               |
| HARRISON    | PAST SUICIDES               |
| HARRISON    | PERDITION FARGO             |
| HARRISON    | PLUTO OLEANDER              |
| HARRISON    | PUNK DIVORCE                |
| HARRISON    | RANDOM GO                   |
| HARRISON    | ROLLERCOASTER BRINGING      |
| HARRISON    | RUSHMORE MERMAID            |
| HARRISON    | STING PERSONAL              |
| HARRISON    | THIEF PELICAN               |
| HARRISON    | WAGON JAWS                  |
| HARRISON    | WALLS ARTIST                |
| HARRISON    | WEDDING APOLLO              |
| HARRISON    | WONDERLAND CHRISTMAS        |
| HARRISON    | WYOMING STORM               |
| DAN         | ARGONAUTS TOWN              |
| DAN         | BACKLASH UNDEFEATED         |
| DAN         | BORN SPINAL                 |
| DAN         | BOULEVARD MOB               |
| DAN         | BULL SHAWSHANK              |
| DAN         | CATCH AMISTAD               |
| DAN         | FRENCH HOLIDAY              |
| DAN         | FRISCO FORREST              |
| DAN         | GROSSE WONDERFUL            |
| DAN         | HEAVYWEIGHTS BEAST          |
| DAN         | HOLES BRANNIGAN             |
| DAN         | IGBY MAKER                  |
| DAN         | JEKYLL FROGMEN              |
| DAN         | JUNGLE CLOSER               |
| DAN         | MIXED DOORS                 |
| DAN         | MUMMY CREATURES             |
| DAN         | NEWSIES STORY               |
| DAN         | OUTFIELD MASSACRE           |
| DAN         | PANIC CLUB                  |
| DAN         | ROOF CHAMPION               |
| DAN         | SHANGHAI TYCOON             |
| DAN         | STEERS ARMAGEDDON           |
| DAN         | VERTIGO NORTHWEST           |
| DAN         | WANDA CHAMBER               |
| RENEE       | ALADDIN CALENDAR            |
| RENEE       | ALIEN CENTER                |
| RENEE       | ARTIST COLDBLOODED          |
| RENEE       | COMA HEAD                   |
| RENEE       | CONNECTION MICROCOSMOS      |
| RENEE       | CREEPERS KANE               |
| RENEE       | CRUSADE HONEY               |
| RENEE       | DESPERATE TRAINSPOTTING     |
| RENEE       | DOUBTFIRE LABYRINTH         |
| RENEE       | EFFECT GLADIATOR            |
| RENEE       | EYES DRIVING                |
| RENEE       | FIRE WOLVES                 |
| RENEE       | FRIDA SLIPPER               |
| RENEE       | HANDICAP BOONDOCK           |
| RENEE       | HOLLYWOOD ANONYMOUS         |
| RENEE       | HOPE TOOTSIE                |
| RENEE       | INFORMER DOUBLE             |
| RENEE       | INVASION CYCLONE            |
| RENEE       | MAGUIRE APACHE              |
| RENEE       | MILLION ACE                 |
| RENEE       | QUEST MUSSOLINI             |
| RENEE       | RAGE GAMES                  |
| RENEE       | ROCKETEER MOTHER            |
| RENEE       | ROCKY WAR                   |
| RENEE       | SECRETS PARADISE            |
| RENEE       | SHANE DARKNESS              |
| RENEE       | SHAWSHANK BUBBLE            |
| RENEE       | SILENCE KANE                |
| RENEE       | SMOKING BARBARELLA          |
| RENEE       | SPIRITED CASUALTIES         |
| RENEE       | SUNDANCE INVASION           |
| RENEE       | THIEF PELICAN               |
| RENEE       | UNTOUCHABLES SUNRISE        |
| CUBA        | ARACHNOPHOBIA ROLLERCOASTER |
| CUBA        | ARMAGEDDON LOST             |
| CUBA        | ARSENIC INDEPENDENCE        |
| CUBA        | BADMAN DAWN                 |
| CUBA        | BARBARELLA STREETCAR        |
| CUBA        | CHAPLIN LICENSE             |
| CUBA        | CHICAGO NORTH               |
| CUBA        | CINCINATTI WHISPERER        |
| CUBA        | FICTION CHRISTMAS           |
| CUBA        | GROSSE WONDERFUL            |
| CUBA        | HAPPINESS UNITED            |
| CUBA        | KING EVOLUTION              |
| CUBA        | LESSON CLEOPATRA            |
| CUBA        | MAKER GABLES                |
| CUBA        | MANNEQUIN WORST             |
| CUBA        | METROPOLIS COMA             |
| CUBA        | ORANGE GRAPES               |
| CUBA        | PAPI NECKLACE               |
| CUBA        | PRESIDENT BANG              |
| CUBA        | ROBBERS JOON                |
| CUBA        | SHIP WONDERLAND             |
| CUBA        | STRANGELOVE DESIRE          |
| CUBA        | VELVET TERMINATOR           |
| CUBA        | WAR NOTTING                 |
| CUBA        | WEST LION                   |
| WARREN      | AMERICAN CIRCUS             |
| WARREN      | BADMAN DAWN                 |
| WARREN      | BEETHOVEN EXORCIST          |
| WARREN      | BOONDOCK BALLROOM           |
| WARREN      | CHILL LUCK                  |
| WARREN      | COMMANDMENTS EXPRESS        |
| WARREN      | CONEHEADS SMOOCHY           |
| WARREN      | CONFESSIONS MAGUIRE         |
| WARREN      | GRINCH MASSAGE              |
| WARREN      | HAMLET WISDOM               |
| WARREN      | HEAVYWEIGHTS BEAST          |
| WARREN      | HOBBIT ALIEN                |
| WARREN      | IMPACT ALADDIN              |
| WARREN      | LANGUAGE COWBOY             |
| WARREN      | LIES TREATMENT              |
| WARREN      | MEET CHOCOLATE              |
| WARREN      | MERMAID INSECTS             |
| WARREN      | MONSTER SPARTACUS           |
| WARREN      | NAME DETECTIVE              |
| WARREN      | OLEANDER CLUE               |
| WARREN      | OZ LIAISONS                 |
| WARREN      | POTTER CONNECTICUT          |
| WARREN      | ROCKETEER MOTHER            |
| WARREN      | RUNAWAY TENENBAUMS          |
| WARREN      | SHAKESPEARE SADDLE          |
| WARREN      | SHEPHERD MIDSUMMER          |
| WARREN      | SHIP WONDERLAND             |
| WARREN      | SKY MIRACLE                 |
| WARREN      | SUBMARINE BED               |
| WARREN      | SUPERFLY TRIP               |
| WARREN      | TOWN ARK                    |
| WARREN      | VERTIGO NORTHWEST           |
| PENELOPE    | BASIC EASY                  |
| PENELOPE    | BEDAZZLED MARRIED           |
| PENELOPE    | CHINATOWN GLADIATOR         |
| PENELOPE    | CHRISTMAS MOONSHINE         |
| PENELOPE    | DARES PLUTO                 |
| PENELOPE    | DINOSAUR SECRETARY          |
| PENELOPE    | DOCTOR GRAIL                |
| PENELOPE    | DRIVING POLISH              |
| PENELOPE    | HELLFIGHTERS SIERRA         |
| PENELOPE    | HOLOCAUST HIGHBALL          |
| PENELOPE    | JUGGLER HARDLY              |
| PENELOPE    | LEATHERNECKS DWARFS         |
| PENELOPE    | MONEY HAROLD                |
| PENELOPE    | ORANGE GRAPES               |
| PENELOPE    | ORDER BETRAYED              |
| PENELOPE    | PARK CITIZEN                |
| PENELOPE    | PITTSBURGH HUNCHBACK        |
| PENELOPE    | POSEIDON FOREVER            |
| PENELOPE    | RANGE MOONWALKER            |
| PENELOPE    | REAR TRADING                |
| PENELOPE    | REEF SALUTE                 |
| PENELOPE    | ROUGE SQUAD                 |
| PENELOPE    | SPIRIT FLINTSTONES          |
| PENELOPE    | TOMATOES HELLFIGHTERS       |
| PENELOPE    | TOURIST PELICAN             |
| PENELOPE    | TRIP NEWTON                 |
| PENELOPE    | WYOMING STORM               |
| LIZA        | CHICAGO NORTH               |
| LIZA        | CLASH FREDDY                |
| LIZA        | CLUE GRAIL                  |
| LIZA        | COMMAND DARLING             |
| LIZA        | CRAFT OUTFIELD              |
| LIZA        | CRYSTAL BREAKING            |
| LIZA        | DEER VIRGINIAN              |
| LIZA        | DESERT POSEIDON             |
| LIZA        | ENEMY ODDS                  |
| LIZA        | EXTRAORDINARY CONQUERER     |
| LIZA        | FRISCO FORREST              |
| LIZA        | GENTLEMEN STAGE             |
| LIZA        | IDENTITY LOVER              |
| LIZA        | JEDI BENEATH                |
| LIZA        | LESSON CLEOPATRA            |
| LIZA        | OCTOBER SUBMARINE           |
| LIZA        | PANKY SUBMARINE             |
| LIZA        | PARIS WEEKEND               |
| LIZA        | PAYCHECK WAIT               |
| LIZA        | SCORPION APOLLO             |
| LIZA        | SENSIBILITY REAR            |
| LIZA        | STOCK GLASS                 |
| LIZA        | TERMINATOR CLUB             |
| LIZA        | TEXAS WATCH                 |
| LIZA        | WEDDING APOLLO              |
| SALMA       | AMISTAD MIDSUMMER           |
| SALMA       | ANTITRUST TOMATOES          |
| SALMA       | BIRDCAGE CASPER             |
| SALMA       | BLUES INSTINCT              |
| SALMA       | CLOCKWORK PARADISE          |
| SALMA       | CLONES PINOCCHIO            |
| SALMA       | COLOR PHILADELPHIA          |
| SALMA       | DETAILS PACKER              |
| SALMA       | DOCTOR GRAIL                |
| SALMA       | FALCON VOLUME               |
| SALMA       | FELLOWSHIP AUTUMN           |
| SALMA       | GO PURPLE                   |
| SALMA       | ISHTAR ROCKETEER            |
| SALMA       | JUGGLER HARDLY              |
| SALMA       | JUMPING WRATH               |
| SALMA       | LUST LOCK                   |
| SALMA       | NEMO CAMPUS                 |
| SALMA       | OZ LIAISONS                 |
| SALMA       | PANKY SUBMARINE             |
| SALMA       | PERSONAL LADYBUGS           |
| SALMA       | REBEL AIRPORT               |
| SALMA       | SIEGE MADRE                 |
| SALMA       | WAR NOTTING                 |
| SALMA       | WASH HEAVENLY               |
| SALMA       | ZHIVAGO CORE                |
| JULIANNE    | ADAPTATION HOLES            |
| JULIANNE    | ATLANTIS CAUSE              |
| JULIANNE    | BERETS AGENT                |
| JULIANNE    | BULL SHAWSHANK              |
| JULIANNE    | CHOCOLATE DUCK              |
| JULIANNE    | CINCINATTI WHISPERER        |
| JULIANNE    | COWBOY DOOM                 |
| JULIANNE    | DESIRE ALIEN                |
| JULIANNE    | DISTURBING SCARFACE         |
| JULIANNE    | DOUBLE WRATH                |
| JULIANNE    | DOUBTFIRE LABYRINTH         |
| JULIANNE    | DYNAMITE TARZAN             |
| JULIANNE    | ENOUGH RAGING               |
| JULIANNE    | HONEY TIES                  |
| JULIANNE    | HUNTING MUSKETEERS          |
| JULIANNE    | HYSTERICAL GRAIL            |
| JULIANNE    | JEDI BENEATH                |
| JULIANNE    | JEEPERS WEDDING             |
| JULIANNE    | KARATE MOON                 |
| JULIANNE    | KRAMER CHOCOLATE            |
| JULIANNE    | LORD ARIZONA                |
| JULIANNE    | MIGHTY LUCK                 |
| JULIANNE    | MILE MULAN                  |
| JULIANNE    | MODERN DORADO               |
| JULIANNE    | MONTEREY LABYRINTH          |
| JULIANNE    | REQUIEM TYCOON              |
| JULIANNE    | RIDGEMONT SUBMARINE         |
| JULIANNE    | SHEPHERD MIDSUMMER          |
| JULIANNE    | SUICIDES SILENCE            |
| JULIANNE    | TITANIC BOONDOCK            |
| JULIANNE    | UNTOUCHABLES SUNRISE        |
| JULIANNE    | WORKER TARZAN               |
| SCARLETT    | AMISTAD MIDSUMMER           |
| SCARLETT    | BEETHOVEN EXORCIST          |
| SCARLETT    | BULWORTH COMMANDMENTS       |
| SCARLETT    | CALIFORNIA BIRDS            |
| SCARLETT    | CREEPERS KANE               |
| SCARLETT    | DOUBTFIRE LABYRINTH         |
| SCARLETT    | DUDE BLINDNESS              |
| SCARLETT    | DURHAM PANKY                |
| SCARLETT    | EVE RESURRECTION            |
| SCARLETT    | FEATHERS METAL              |
| SCARLETT    | FIDDLER LOST                |
| SCARLETT    | FLATLINERS KILLER           |
| SCARLETT    | FULL FLATLINERS             |
| SCARLETT    | IDENTITY LOVER              |
| SCARLETT    | INVASION CYCLONE            |
| SCARLETT    | LUCK OPUS                   |
| SCARLETT    | MOULIN WAKE                 |
| SCARLETT    | RESERVOIR ADAPTATION        |
| SCARLETT    | ROOF CHAMPION               |
| SCARLETT    | SEATTLE EXPECATIONS         |
| SCARLETT    | SHAWSHANK BUBBLE            |
| SCARLETT    | SNATCH SLIPPER              |
| SCARLETT    | SUBMARINE BED               |
| SCARLETT    | TENENBAUMS COMMAND          |
| SCARLETT    | WORDS HUNTER                |
| SCARLETT    | YOUTH KICK                  |
| ALBERT      | BED HIGHBALL                |
| ALBERT      | BRIGHT ENCOUNTERS           |
| ALBERT      | BROOKLYN DESERT             |
| ALBERT      | CAMELOT VACATION            |
| ALBERT      | CONFUSED CANDLES            |
| ALBERT      | CRAZY HOME                  |
| ALBERT      | DALMATIONS SWEDEN           |
| ALBERT      | DOCTOR GRAIL                |
| ALBERT      | DRAGON SQUAD                |
| ALBERT      | FLINTSTONES HAPPINESS       |
| ALBERT      | FRISCO FORREST              |
| ALBERT      | GLEAMING JAWBREAKER         |
| ALBERT      | GOLDMINE TYCOON             |
| ALBERT      | HANDICAP BOONDOCK           |
| ALBERT      | HELLFIGHTERS SIERRA         |
| ALBERT      | HOMICIDE PEACH              |
| ALBERT      | HONEY TIES                  |
| ALBERT      | IDOLS SNATCHERS             |
| ALBERT      | KILL BROTHERHOOD            |
| ALBERT      | MANCHURIAN CURTAIN          |
| ALBERT      | MEMENTO ZOOLANDER           |
| ALBERT      | MIXED DOORS                 |
| ALBERT      | MOURNING PURPLE             |
| ALBERT      | NEWTON LABYRINTH            |
| ALBERT      | PATRIOT ROMAN               |
| ALBERT      | PITY BOUND                  |
| ALBERT      | RAGE GAMES                  |
| ALBERT      | TAXI KICK                   |
| ALBERT      | TRAP GUYS                   |
| ALBERT      | VOLCANO TEXAS               |
| ALBERT      | WATERSHIP FRONTIER          |
| FRANCES     | AMERICAN CIRCUS             |
| FRANCES     | ARABIA DOGMA                |
| FRANCES     | ATLANTIS CAUSE              |
| FRANCES     | BEACH HEARTBREAKERS         |
| FRANCES     | BONNIE HOLOCAUST            |
| FRANCES     | BREAKING HOME               |
| FRANCES     | CROSSROADS CASUALTIES       |
| FRANCES     | CROW GREASE                 |
| FRANCES     | CUPBOARD SINNERS            |
| FRANCES     | DROP WATERFRONT             |
| FRANCES     | DURHAM PANKY                |
| FRANCES     | ESCAPE METROPOLIS           |
| FRANCES     | FIREBALL PHILADELPHIA       |
| FRANCES     | GAMES BOWFINGER             |
| FRANCES     | GOODFELLAS SALUTE           |
| FRANCES     | GORGEOUS BINGO              |
| FRANCES     | HOCUS FRIDA                 |
| FRANCES     | INVASION CYCLONE            |
| FRANCES     | IRON MOON                   |
| FRANCES     | MADNESS ATTACKS             |
| FRANCES     | PLATOON INSTINCT            |
| FRANCES     | SQUAD FISH                  |
| FRANCES     | SUICIDES SILENCE            |
| KEVIN       | ARGONAUTS TOWN              |
| KEVIN       | BABY HALL                   |
| KEVIN       | BACKLASH UNDEFEATED         |
| KEVIN       | BLADE POLISH                |
| KEVIN       | CAPER MOTIONS               |
| KEVIN       | CHICAGO NORTH               |
| KEVIN       | CLOCKWORK PARADISE          |
| KEVIN       | DADDY PITTSBURGH            |
| KEVIN       | ENOUGH RAGING               |
| KEVIN       | FREAKY POCUS                |
| KEVIN       | GHOST GROUNDHOG             |
| KEVIN       | GOLDFINGER SENSIBILITY      |
| KEVIN       | GRIT CLOCKWORK              |
| KEVIN       | GUNFIGHT MOON               |
| KEVIN       | HEAVENLY GUN                |
| KEVIN       | INFORMER DOUBLE             |
| KEVIN       | MAKER GABLES                |
| KEVIN       | MICROCOSMOS PARADISE        |
| KEVIN       | MYSTIC TRUMAN               |
| KEVIN       | NATURAL STOCK               |
| KEVIN       | ORANGE GRAPES               |
| KEVIN       | RAGE GAMES                  |
| KEVIN       | RESURRECTION SILVERADO      |
| KEVIN       | RULES HUMAN                 |
| KEVIN       | SATISFACTION CONFIDENTIAL   |
| KEVIN       | SCORPION APOLLO             |
| KEVIN       | SHOW LORD                   |
| KEVIN       | SONG HEDWIG                 |
| KEVIN       | STALLION SUNDANCE           |
| KEVIN       | STING PERSONAL              |
| KEVIN       | TRIP NEWTON                 |
| KEVIN       | WAIT CIDER                  |
| KEVIN       | WESTWARD SEABISCUIT         |
| CATE        | ANNIE IDENTITY              |
| CATE        | BLOOD ARGONAUTS             |
| CATE        | CAPER MOTIONS               |
| CATE        | COMANCHEROS ENEMY           |
| CATE        | DARN FORRESTER              |
| CATE        | DOCTOR GRAIL                |
| CATE        | FACTORY DRAGON              |
| CATE        | FIDDLER LOST                |
| CATE        | FLYING HOOK                 |
| CATE        | FRENCH HOLIDAY              |
| CATE        | GABLES METROPOLIS           |
| CATE        | HAWK CHILL                  |
| CATE        | INSIDER ARIZONA             |
| CATE        | JERSEY SASSY                |
| CATE        | LEGEND JEDI                 |
| CATE        | MASSAGE IMAGE               |
| CATE        | NAME DETECTIVE              |
| CATE        | PACIFIC AMISTAD             |
| CATE        | PATTON INTERVIEW            |
| CATE        | PERDITION FARGO             |
| CATE        | POTTER CONNECTICUT          |
| CATE        | PRIDE ALAMO                 |
| CATE        | SALUTE APOLLO               |
| CATE        | SEARCHERS WAIT              |
| CATE        | SNATCH SLIPPER              |
| CATE        | TOWERS HURRICANE            |
| CATE        | TROJAN TOMORROW             |
| CATE        | VIRGIN DAISY                |
| CATE        | VOLCANO TEXAS               |
| CATE        | WATERSHIP FRONTIER          |
| DARYL       | BAREFOOT MANCHURIAN         |
| DARYL       | BORROWERS BEDAZZLED         |
| DARYL       | BROTHERHOOD BLANKET         |
| DARYL       | COLOR PHILADELPHIA          |
| DARYL       | DADDY PITTSBURGH            |
| DARYL       | DIARY PANIC                 |
| DARYL       | DOWNHILL ENOUGH             |
| DARYL       | DRACULA CRYSTAL             |
| DARYL       | GANDHI KWAI                 |
| DARYL       | GOLDMINE TYCOON             |
| DARYL       | HALF OUTFIELD               |
| DARYL       | HOBBIT ALIEN                |
| DARYL       | HOOSIERS BIRDCAGE           |
| DARYL       | ILLUSION AMELIE             |
| DARYL       | ISLAND EXORCIST             |
| DARYL       | LICENSE WEEKEND             |
| DARYL       | MOONWALKER FOOL             |
| DARYL       | MOURNING PURPLE             |
| DARYL       | OPUS ICE                    |
| DARYL       | PEARL DESTINY               |
| DARYL       | PIZZA JUMANJI               |
| DARYL       | PURPLE MOVIE                |
| DARYL       | SLEEPLESS MONSOON           |
| DARYL       | SPEED SUIT                  |
| DARYL       | SPOILERS HELLFIGHTERS       |
| DARYL       | STRICTLY SCARFACE           |
| DARYL       | TREATMENT JEKYLL            |
| DARYL       | UNBREAKABLE KARATE          |
| DARYL       | VELVET TERMINATOR           |
| DARYL       | WASTELAND DIVINE            |
| GRETA       | ALABAMA DEVIL               |
| GRETA       | ANNIE IDENTITY              |
| GRETA       | ARIZONA BANG                |
| GRETA       | ATLANTIS CAUSE              |
| GRETA       | BADMAN DAWN                 |
| GRETA       | BASIC EASY                  |
| GRETA       | BUNCH MINDS                 |
| GRETA       | CALENDAR GUNFIGHT           |
| GRETA       | DARES PLUTO                 |
| GRETA       | FLYING HOOK                 |
| GRETA       | GRAIL FRANKENSTEIN          |
| GRETA       | HIGHBALL POTTER             |
| GRETA       | HOOSIERS BIRDCAGE           |
| GRETA       | ILLUSION AMELIE             |
| GRETA       | IMAGE PRINCESS              |
| GRETA       | JAWS HARRY                  |
| GRETA       | LADYBUGS ARMAGEDDON         |
| GRETA       | LOATHING LEGALLY            |
| GRETA       | MAGNOLIA FORRESTER          |
| GRETA       | MONSTER SPARTACUS           |
| GRETA       | PULP BEVERLY                |
| GRETA       | REQUIEM TYCOON              |
| GRETA       | SATURDAY LAMBS              |
| GRETA       | SLIPPER FIDELITY            |
| GRETA       | SUSPECTS QUILLS             |
| GRETA       | VACATION BOONDOCK           |
| GRETA       | WOLVES DESIRE               |
| JANE        | BACKLASH UNDEFEATED         |
| JANE        | BENEATH RUSH                |
| JANE        | BRAVEHEART HUMAN            |
| JANE        | CARIBBEAN LIBERTY           |
| JANE        | CHOCOLAT HARRY              |
| JANE        | DANCING FEVER               |
| JANE        | FLAMINGOS CONNECTICUT       |
| JANE        | GROOVE FICTION              |
| JANE        | HOPE TOOTSIE                |
| JANE        | HOURS RAGE                  |
| JANE        | IDOLS SNATCHERS             |
| JANE        | JEDI BENEATH                |
| JANE        | KARATE MOON                 |
| JANE        | LEGALLY SECRETARY           |
| JANE        | LUCK OPUS                   |
| JANE        | MONEY HAROLD                |
| JANE        | OUTFIELD MASSACRE           |
| JANE        | POTTER CONNECTICUT          |
| JANE        | RAINBOW SHOCK               |
| JANE        | SCISSORHANDS SLUMS          |
| JANE        | SILVERADO GOLDFINGER        |
| JANE        | SLIPPER FIDELITY            |
| JANE        | TALENTED HOMICIDE           |
| JANE        | TEMPLE ATTRACTION           |
| JANE        | UNCUT SUICIDES              |
| ADAM        | BLINDNESS GUN               |
| ADAM        | BLOOD ARGONAUTS             |
| ADAM        | CHAMBER ITALIAN             |
| ADAM        | CLERKS ANGELS               |
| ADAM        | CLUELESS BUCKET             |
| ADAM        | FICTION CHRISTMAS           |
| ADAM        | GABLES METROPOLIS           |
| ADAM        | GREASE YOUTH                |
| ADAM        | HEAVEN FREEDOM              |
| ADAM        | LOVERBOY ATTACKS            |
| ADAM        | MASKED BUBBLE               |
| ADAM        | MOCKINGBIRD HOLLYWOOD       |
| ADAM        | NOON PAPI                   |
| ADAM        | OPEN AFRICAN                |
| ADAM        | PRINCESS GIANT              |
| ADAM        | SADDLE ANTITRUST            |
| ADAM        | SLEEPY JAPANESE             |
| ADAM        | TORQUE BOUND                |
| ADAM        | TOWERS HURRICANE            |
| ADAM        | TRAIN BUNCH                 |
| ADAM        | VACATION BOONDOCK           |
| ADAM        | WORDS HUNTER                |
| RICHARD     | AIRPLANE SIERRA             |
| RICHARD     | BALLOON HOMEWARD            |
| RICHARD     | CHAMBER ITALIAN             |
| RICHARD     | CONEHEADS SMOOCHY           |
| RICHARD     | DARKO DORADO                |
| RICHARD     | EARTH VISION                |
| RICHARD     | EMPIRE MALKOVICH            |
| RICHARD     | ENOUGH RAGING               |
| RICHARD     | FRISCO FORREST              |
| RICHARD     | FUGITIVE MAGUIRE            |
| RICHARD     | GASLIGHT CRUSADE            |
| RICHARD     | GONE TROUBLE                |
| RICHARD     | GROUNDHOG UNCUT             |
| RICHARD     | GUYS FALCON                 |
| RICHARD     | HANKY OCTOBER               |
| RICHARD     | HEAVEN FREEDOM              |
| RICHARD     | ILLUSION AMELIE             |
| RICHARD     | INSTINCT AIRPORT            |
| RICHARD     | LEBOWSKI SOLDIERS           |
| RICHARD     | MODEL FISH                  |
| RICHARD     | MONTEZUMA COMMAND           |
| RICHARD     | OKLAHOMA JUMANJI            |
| RICHARD     | PAJAMA JAWBREAKER           |
| RICHARD     | RESURRECTION SILVERADO      |
| RICHARD     | SLEEPY JAPANESE             |
| RICHARD     | SUPERFLY TRIP               |
| RICHARD     | TENENBAUMS COMMAND          |
| RICHARD     | TOMATOES HELLFIGHTERS       |
| RICHARD     | VAMPIRE WHALE               |
| RICHARD     | WAGON JAWS                  |
| GENE        | CHAINSAW UPTOWN             |
| GENE        | CHISUM BEHAVIOR             |
| GENE        | CLUE GRAIL                  |
| GENE        | DEEP CRUSADE                |
| GENE        | DOORS PRESIDENT             |
| GENE        | DRAGON SQUAD                |
| GENE        | ELF MURDER                  |
| GENE        | FROST HEAD                  |
| GENE        | GUMP DATE                   |
| GENE        | HEDWIG ALTER                |
| GENE        | MANNEQUIN WORST             |
| GENE        | MODEL FISH                  |
| GENE        | NIGHTMARE CHILL             |
| GENE        | PANTHER REDS                |
| GENE        | PITY BOUND                  |
| GENE        | POND SEATTLE                |
| GENE        | SUIT WALLS                  |
| GENE        | TOOTSIE PILOT               |
| GENE        | TORQUE BOUND                |
| GENE        | TRUMAN CRAZY                |
| GENE        | UPRISING UPTOWN             |
| GENE        | VANISHING ROCKY             |
| RITA        | ARACHNOPHOBIA ROLLERCOASTER |
| RITA        | ARSENIC INDEPENDENCE        |
| RITA        | BEHAVIOR RUNAWAY            |
| RITA        | BORN SPINAL                 |
| RITA        | COMMAND DARLING             |
| RITA        | EARRING INSTINCT            |
| RITA        | FLAMINGOS CONNECTICUT       |
| RITA        | GENTLEMEN STAGE             |
| RITA        | GILBERT PELICAN             |
| RITA        | GODFATHER DIARY             |
| RITA        | IMPOSSIBLE PREJUDICE        |
| RITA        | INDIAN LOVE                 |
| RITA        | JERK PAYCHECK               |
| RITA        | LUKE MUMMY                  |
| RITA        | MAKER GABLES                |
| RITA        | NATIONAL STORY              |
| RITA        | NORTHWEST POLISH            |
| RITA        | RECORDS ZORRO               |
| RITA        | SNATCH SLIPPER              |
| RITA        | TRAINSPOTTING STRANGERS     |
| ED          | AMELIE HELLFIGHTERS         |
| ED          | ANGELS LIFE                 |
| ED          | APOLLO TEEN                 |
| ED          | BAREFOOT MANCHURIAN         |
| ED          | BEAUTY GREASE               |
| ED          | CROSSROADS CASUALTIES       |
| ED          | DAUGHTER MADIGAN            |
| ED          | DEVIL DESIRE                |
| ED          | DOORS PRESIDENT             |
| ED          | DROP WATERFRONT             |
| ED          | DUMBO LUST                  |
| ED          | EASY GLADIATOR              |
| ED          | ESCAPE METROPOLIS           |
| ED          | FALCON VOLUME               |
| ED          | GODFATHER DIARY             |
| ED          | HAROLD FRENCH               |
| ED          | HELLFIGHTERS SIERRA         |
| ED          | HOLES BRANNIGAN             |
| ED          | JADE BUNCH                  |
| ED          | JERSEY SASSY                |
| ED          | LUST LOCK                   |
| ED          | MAJESTIC FLOATS             |
| ED          | NEMO CAMPUS                 |
| ED          | OZ LIAISONS                 |
| ED          | PLUTO OLEANDER              |
| ED          | SEVEN SWARM                 |
| ED          | SLEEPY JAPANESE             |
| ED          | SLING LUKE                  |
| ED          | SOMETHING DUCK              |
| ED          | STATE WASTELAND             |
| ED          | VAMPIRE WHALE               |
| ED          | WRONG BEHAVIOR              |
| MORGAN      | AGENT TRUMAN                |
| MORGAN      | ALICE FANTASIA              |
| MORGAN      | BAREFOOT MANCHURIAN         |
| MORGAN      | BREAKING HOME               |
| MORGAN      | CLUB GRAFFITI               |
| MORGAN      | DESPERATE TRAINSPOTTING     |
| MORGAN      | DRACULA CRYSTAL             |
| MORGAN      | DRIVER ANNIE                |
| MORGAN      | DURHAM PANKY                |
| MORGAN      | EARLY HOME                  |
| MORGAN      | FARGO GANDHI                |
| MORGAN      | GUYS FALCON                 |
| MORGAN      | HEAVEN FREEDOM              |
| MORGAN      | HORN WORKING                |
| MORGAN      | HYSTERICAL GRAIL            |
| MORGAN      | JUGGLER HARDLY              |
| MORGAN      | LORD ARIZONA                |
| MORGAN      | MASSAGE IMAGE               |
| MORGAN      | MOVIE SHAKESPEARE           |
| MORGAN      | MUSIC BOONDOCK              |
| MORGAN      | POLISH BROOKLYN             |
| MORGAN      | PUNK DIVORCE                |
| MORGAN      | ROSES TREASURE              |
| MORGAN      | SAINTS BRIDE                |
| MORGAN      | SPLASH GUMP                 |
| MORGAN      | STAR OPERATION              |
| MORGAN      | TUXEDO MILE                 |
| LUCILLE     | AIRPORT POLLOCK             |
| LUCILLE     | BALLROOM MOCKINGBIRD        |
| LUCILLE     | BEAUTY GREASE               |
| LUCILLE     | CASSIDY WYOMING             |
| LUCILLE     | CLOCKWORK PARADISE          |
| LUCILLE     | DAUGHTER MADIGAN            |
| LUCILLE     | DRUMS DYNAMITE              |
| LUCILLE     | GRAPES FURY                 |
| LUCILLE     | HARRY IDAHO                 |
| LUCILLE     | HYSTERICAL GRAIL            |
| LUCILLE     | IMAGE PRINCESS              |
| LUCILLE     | LAMBS CINCINATTI            |
| LUCILLE     | MAKER GABLES                |
| LUCILLE     | MASK PEACH                  |
| LUCILLE     | MISSION ZOOLANDER           |
| LUCILLE     | NORTH TEQUILA               |
| LUCILLE     | OPPOSITE NECKLACE           |
| LUCILLE     | PRESIDENT BANG              |
| LUCILLE     | ROXANNE REBEL               |
| LUCILLE     | TELEGRAPH VOYAGE            |
| LUCILLE     | TEXAS WATCH                 |
| LUCILLE     | UNFAITHFUL KILL             |
| LUCILLE     | WESTWARD SEABISCUIT         |
| LUCILLE     | WORKING MICROCOSMOS         |
| EWAN        | AMELIE HELLFIGHTERS         |
| EWAN        | ARACHNOPHOBIA ROLLERCOASTER |
| EWAN        | BASIC EASY                  |
| EWAN        | BIRCH ANTITRUST             |
| EWAN        | BOULEVARD MOB               |
| EWAN        | BUNCH MINDS                 |
| EWAN        | CLEOPATRA DEVIL             |
| EWAN        | COMMAND DARLING             |
| EWAN        | CONTACT ANONYMOUS           |
| EWAN        | CURTAIN VIDEOTAPE           |
| EWAN        | DEVIL DESIRE                |
| EWAN        | DISCIPLE MOTHER             |
| EWAN        | DUFFEL APOCALYPSE           |
| EWAN        | DUMBO LUST                  |
| EWAN        | DYNAMITE TARZAN             |
| EWAN        | ENCOUNTERS CURTAIN          |
| EWAN        | ENEMY ODDS                  |
| EWAN        | GRADUATE LORD               |
| EWAN        | ICE CROSSING                |
| EWAN        | JUGGLER HARDLY              |
| EWAN        | LONELY ELEPHANT             |
| EWAN        | LUCKY FLYING                |
| EWAN        | MERMAID INSECTS             |
| EWAN        | MOURNING PURPLE             |
| EWAN        | MULHOLLAND BEAST            |
| EWAN        | OLEANDER CLUE               |
| EWAN        | POSEIDON FOREVER            |
| EWAN        | QUEEN LUKE                  |
| EWAN        | RECORDS ZORRO               |
| EWAN        | ROOTS REMEMBER              |
| EWAN        | ROUGE SQUAD                 |
| EWAN        | SUMMER SCARFACE             |
| EWAN        | TITANIC BOONDOCK            |
| WHOOPI      | ANONYMOUS HUMAN             |
| WHOOPI      | BIRDS PERDITION             |
| WHOOPI      | CALENDAR GUNFIGHT           |
| WHOOPI      | CHANCE RESURRECTION         |
| WHOOPI      | COWBOY DOOM                 |
| WHOOPI      | DRUMS DYNAMITE              |
| WHOOPI      | GORGEOUS BINGO              |
| WHOOPI      | GRADUATE LORD               |
| WHOOPI      | KILLER INNOCENT             |
| WHOOPI      | LANGUAGE COWBOY             |
| WHOOPI      | MIGHTY LUCK                 |
| WHOOPI      | MOD SECRETARY               |
| WHOOPI      | MOTHER OLEANDER             |
| WHOOPI      | MURDER ANTITRUST            |
| WHOOPI      | OUTFIELD MASSACRE           |
| WHOOPI      | PATTON INTERVIEW            |
| WHOOPI      | PELICAN COMFORTS            |
| WHOOPI      | POTTER CONNECTICUT          |
| WHOOPI      | PULP BEVERLY                |
| WHOOPI      | RIDER CADDYSHACK            |
| WHOOPI      | RIDGEMONT SUBMARINE         |
| WHOOPI      | RIGHT CRANES                |
| WHOOPI      | ROBBERY BRIGHT              |
| WHOOPI      | ROOF CHAMPION               |
| WHOOPI      | SECRETS PARADISE            |
| WHOOPI      | SONS INTERVIEW              |
| WHOOPI      | SPIRIT FLINTSTONES          |
| WHOOPI      | SPY MILE                    |
| WHOOPI      | STRICTLY SCARFACE           |
| WHOOPI      | UNFAITHFUL KILL             |
| WHOOPI      | VANILLA DAY                 |
| WHOOPI      | ZOOLANDER FICTION           |
| CATE        | ATLANTIS CAUSE              |
| CATE        | BERETS AGENT                |
| CATE        | CRAZY HOME                  |
| CATE        | CROOKED FROGMEN             |
| CATE        | DANGEROUS UPTOWN            |
| CATE        | DESIRE ALIEN                |
| CATE        | FROST HEAD                  |
| CATE        | GILMORE BOILED              |
| CATE        | GREEK EVERYONE              |
| CATE        | HANDICAP BOONDOCK           |
| CATE        | INTRIGUE WORST              |
| CATE        | JUMPING WRATH               |
| CATE        | MODERN DORADO               |
| CATE        | MUPPET MILE                 |
| CATE        | PERSONAL LADYBUGS           |
| CATE        | ROLLERCOASTER BRINGING      |
| CATE        | RUNNER MADIGAN              |
| CATE        | SCARFACE BANG               |
| CATE        | SEA VIRGIN                  |
| CATE        | SHINING ROSES               |
| CATE        | SORORITY QUEEN              |
| CATE        | SPINAL ROCKY                |
| CATE        | STAMPEDE DISTURBING         |
| CATE        | STORM HAPPINESS             |
| CATE        | SUMMER SCARFACE             |
| CATE        | SUN CONFESSIONS             |
| CATE        | TREASURE COMMAND            |
| CATE        | WRATH MILE                  |
| JADA        | ALADDIN CALENDAR            |
| JADA        | ALTER VICTORY               |
| JADA        | BUNCH MINDS                 |
| JADA        | CHASING FIGHT               |
| JADA        | CRAFT OUTFIELD              |
| JADA        | CUPBOARD SINNERS            |
| JADA        | DOZEN LION                  |
| JADA        | FOREVER CANDIDATE           |
| JADA        | GARDEN ISLAND               |
| JADA        | GOSFORD DONNIE              |
| JADA        | ISHTAR ROCKETEER            |
| JADA        | JEKYLL FROGMEN              |
| JADA        | KARATE MOON                 |
| JADA        | KISSING DOLLS               |
| JADA        | KWAI HOMEWARD               |
| JADA        | LUCKY FLYING                |
| JADA        | MALKOVICH PET               |
| JADA        | MIDSUMMER GROUNDHOG         |
| JADA        | MURDER ANTITRUST            |
| JADA        | RAGE GAMES                  |
| JADA        | RAIDERS ANTITRUST           |
| JADA        | ROBBERS JOON                |
| JADA        | SALUTE APOLLO               |
| JADA        | SIDE ARK                    |
| JADA        | STATE WASTELAND             |
| JADA        | SUGAR WONKA                 |
| JADA        | SUN CONFESSIONS             |
| JADA        | TALENTED HOMICIDE           |
| JADA        | TRAMP OTHERS                |
| JADA        | TROUBLE DATE                |
| JADA        | ZOOLANDER FICTION           |
| RIVER       | BABY HALL                   |
| RIVER       | BLADE POLISH                |
| RIVER       | CHICAGO NORTH               |
| RIVER       | CONFUSED CANDLES            |
| RIVER       | DIRTY ACE                   |
| RIVER       | DOGMA FAMILY                |
| RIVER       | FIRE WOLVES                 |
| RIVER       | FROGMEN BREAKING            |
| RIVER       | GLEAMING JAWBREAKER         |
| RIVER       | GUMP DATE                   |
| RIVER       | HATE HANDICAP               |
| RIVER       | INDEPENDENCE HOTEL          |
| RIVER       | JERSEY SASSY                |
| RIVER       | KILL BROTHERHOOD            |
| RIVER       | MARS ROMAN                  |
| RIVER       | MIGHTY LUCK                 |
| RIVER       | MOVIE SHAKESPEARE           |
| RIVER       | MYSTIC TRUMAN               |
| RIVER       | PARK CITIZEN                |
| RIVER       | PARTY KNOCK                 |
| RIVER       | PINOCCHIO SIMON             |
| RIVER       | POCUS PULP                  |
| RIVER       | POND SEATTLE                |
| RIVER       | QUEEN LUKE                  |
| RIVER       | SHREK LICENSE               |
| RIVER       | SORORITY QUEEN              |
| RIVER       | SPIRIT FLINTSTONES          |
| RIVER       | SWEET BROTHERHOOD           |
| RIVER       | TEEN APOLLO                 |
| RIVER       | TRAMP OTHERS                |
| RIVER       | WARDROBE PHANTOM            |
| ANGELA      | ALTER VICTORY               |
| ANGELA      | BERETS AGENT                |
| ANGELA      | BLADE POLISH                |
| ANGELA      | BOULEVARD MOB               |
| ANGELA      | BRINGING HYSTERICAL         |
| ANGELA      | BULL SHAWSHANK              |
| ANGELA      | CASABLANCA SUPER            |
| ANGELA      | CASSIDY WYOMING             |
| ANGELA      | CAT CONEHEADS               |
| ANGELA      | CELEBRITY HORN              |
| ANGELA      | CHANCE RESURRECTION         |
| ANGELA      | COAST RAINBOW               |
| ANGELA      | CORE SUIT                   |
| ANGELA      | DAY UNFAITHFUL              |
| ANGELA      | DETECTIVE VISION            |
| ANGELA      | DUDE BLINDNESS              |
| ANGELA      | EDGE KISSING                |
| ANGELA      | EVOLUTION ALTER             |
| ANGELA      | EXORCIST STING              |
| ANGELA      | FIDDLER LOST                |
| ANGELA      | HALLOWEEN NUTS              |
| ANGELA      | HANGING DEEP                |
| ANGELA      | JACKET FRISCO               |
| ANGELA      | KWAI HOMEWARD               |
| ANGELA      | LUCKY FLYING                |
| ANGELA      | MOTHER OLEANDER             |
| ANGELA      | PEAK FOREVER                |
| ANGELA      | PULP BEVERLY                |
| ANGELA      | RUSH GOODFELLAS             |
| ANGELA      | SASSY PACKER                |
| ANGELA      | SECRET GROUNDHOG            |
| ANGELA      | SHAWSHANK BUBBLE            |
| ANGELA      | STEPMOM DREAM               |
| ANGELA      | TOMATOES HELLFIGHTERS       |
| ANGELA      | WAIT CIDER                  |
| KIM         | ARMAGEDDON LOST             |
| KIM         | BUTTERFLY CHOCOLAT          |
| KIM         | CARIBBEAN LIBERTY           |
| KIM         | CLASH FREDDY                |
| KIM         | CLEOPATRA DEVIL             |
| KIM         | DOORS PRESIDENT             |
| KIM         | EXORCIST STING              |
| KIM         | HARPER DYING                |
| KIM         | HEARTBREAKERS BRIGHT        |
| KIM         | INDEPENDENCE HOTEL          |
| KIM         | JAPANESE RUN                |
| KIM         | JINGLE SAGEBRUSH            |
| KIM         | KARATE MOON                 |
| KIM         | LOLA AGENT                  |
| KIM         | MONSTER SPARTACUS           |
| KIM         | NONE SPIKING                |
| KIM         | NOTORIOUS REUNION           |
| KIM         | ORANGE GRAPES               |
| KIM         | PAST SUICIDES               |
| KIM         | PATRIOT ROMAN               |
| KIM         | POTLUCK MIXED               |
| KIM         | RAINBOW SHOCK               |
| KIM         | RESERVOIR ADAPTATION        |
| KIM         | RUGRATS SHAKESPEARE         |
| KIM         | SOUP WISDOM                 |
| KIM         | TITANS JERK                 |
| KIM         | UNFAITHFUL KILL             |
| KIM         | WAIT CIDER                  |
| ALBERT      | ALASKA PHANTOM              |
| ALBERT      | ALLEY EVOLUTION             |
| ALBERT      | APOLLO TEEN                 |
| ALBERT      | CANDLES GRAPES              |
| ALBERT      | CONNECTICUT TRAMP           |
| ALBERT      | CROOKED FROGMEN             |
| ALBERT      | CRUSADE HONEY               |
| ALBERT      | DANGEROUS UPTOWN            |
| ALBERT      | DECEIVER BETRAYED           |
| ALBERT      | ELF MURDER                  |
| ALBERT      | EXPRESS LONELY              |
| ALBERT      | FIGHT JAWBREAKER            |
| ALBERT      | FLAMINGOS CONNECTICUT       |
| ALBERT      | GRACELAND DYNAMITE          |
| ALBERT      | GROSSE WONDERFUL            |
| ALBERT      | HARPER DYING                |
| ALBERT      | HEAVEN FREEDOM              |
| ALBERT      | HOMEWARD CIDER              |
| ALBERT      | HONEY TIES                  |
| ALBERT      | LEAGUE HELLFIGHTERS         |
| ALBERT      | LEBOWSKI SOLDIERS           |
| ALBERT      | METAL ARMAGEDDON            |
| ALBERT      | MONSOON CAUSE               |
| ALBERT      | REDEMPTION COMFORTS         |
| ALBERT      | RIGHT CRANES                |
| ALBERT      | ROAD ROXANNE                |
| ALBERT      | SWEDEN SHINING              |
| ALBERT      | TREASURE COMMAND            |
| ALBERT      | UNDEFEATED DALMATIONS       |
| ALBERT      | VIRGINIAN PLUTO             |
| ALBERT      | WALLS ARTIST                |
| ALBERT      | WEDDING APOLLO              |
| ALBERT      | WEST LION                   |
| FAY         | AFFAIR PREJUDICE            |
| FAY         | BONNIE HOLOCAUST            |
| FAY         | CENTER DINOSAUR             |
| FAY         | CHASING FIGHT               |
| FAY         | CHISUM BEHAVIOR             |
| FAY         | CONNECTION MICROCOSMOS      |
| FAY         | DRAGONFLY STRANGERS         |
| FAY         | DRIVER ANNIE                |
| FAY         | EXPENDABLE STALLION         |
| FAY         | EYES DRIVING                |
| FAY         | FATAL HAUNTED               |
| FAY         | FEVER EMPIRE                |
| FAY         | FIREHOUSE VIETNAM           |
| FAY         | FREAKY POCUS                |
| FAY         | FROST HEAD                  |
| FAY         | GASLIGHT CRUSADE            |
| FAY         | HAMLET WISDOM               |
| FAY         | HARPER DYING                |
| FAY         | HAUNTED ANTITRUST           |
| FAY         | HEAVEN FREEDOM              |
| FAY         | HOOSIERS BIRDCAGE           |
| FAY         | HURRICANE AFFAIR            |
| FAY         | LAMBS CINCINATTI            |
| FAY         | MALKOVICH PET               |
| FAY         | MASSACRE USUAL              |
| FAY         | OZ LIAISONS                 |
| FAY         | POLISH BROOKLYN             |
| FAY         | QUILLS BULL                 |
| FAY         | SUNDANCE INVASION           |
| FAY         | WAR NOTTING                 |
| FAY         | WORDS HUNTER                |
| EMILY       | ANONYMOUS HUMAN             |
| EMILY       | BASIC EASY                  |
| EMILY       | CHAMBER ITALIAN             |
| EMILY       | CHRISTMAS MOONSHINE         |
| EMILY       | DESTINY SATURDAY            |
| EMILY       | FUGITIVE MAGUIRE            |
| EMILY       | GONE TROUBLE                |
| EMILY       | HOLLOW JEOPARDY             |
| EMILY       | INVASION CYCLONE            |
| EMILY       | OCTOBER SUBMARINE           |
| EMILY       | REBEL AIRPORT               |
| EMILY       | SCARFACE BANG               |
| EMILY       | SEA VIRGIN                  |
| EMILY       | SHREK LICENSE               |
| RUSSELL     | BANG KWAI                   |
| RUSSELL     | BILL OTHERS                 |
| RUSSELL     | BREAKFAST GOLDFINGER        |
| RUSSELL     | CANYON STOCK                |
| RUSSELL     | CHASING FIGHT               |
| RUSSELL     | CHITTY LOCK                 |
| RUSSELL     | CITIZEN SHREK               |
| RUSSELL     | CLOSER BANG                 |
| RUSSELL     | COMFORTS RUSH               |
| RUSSELL     | CONNECTION MICROCOSMOS      |
| RUSSELL     | CRAZY HOME                  |
| RUSSELL     | CROSSROADS CASUALTIES       |
| RUSSELL     | FROGMEN BREAKING            |
| RUSSELL     | GHOST GROUNDHOG             |
| RUSSELL     | GLORY TRACY                 |
| RUSSELL     | GOLD RIVER                  |
| RUSSELL     | INDIAN LOVE                 |
| RUSSELL     | NOVOCAINE FLIGHT            |
| RUSSELL     | PELICAN COMFORTS            |
| RUSSELL     | PLATOON INSTINCT            |
| RUSSELL     | SANTA PARIS                 |
| RUSSELL     | SHAKESPEARE SADDLE          |
| RUSSELL     | SLUMS DUCK                  |
| RUSSELL     | SMILE EARRING               |
| RUSSELL     | TOWERS HURRICANE            |
| RUSSELL     | TRAINSPOTTING STRANGERS     |
| RUSSELL     | TROOPERS METAL              |
| RUSSELL     | UNCUT SUICIDES              |
| RUSSELL     | VISION TORQUE               |
| RUSSELL     | VOLCANO TEXAS               |
| RUSSELL     | WRATH MILE                  |
| JAYNE       | ANACONDA CONFESSIONS        |
| JAYNE       | BEDAZZLED MARRIED           |
| JAYNE       | BIRD INDEPENDENCE           |
| JAYNE       | BRAVEHEART HUMAN            |
| JAYNE       | BULL SHAWSHANK              |
| JAYNE       | COMANCHEROS ENEMY           |
| JAYNE       | CREEPERS KANE               |
| JAYNE       | DANCING FEVER               |
| JAYNE       | DISCIPLE MOTHER             |
| JAYNE       | EARTH VISION                |
| JAYNE       | ENGLISH BULWORTH            |
| JAYNE       | FEATHERS METAL              |
| JAYNE       | GUMP DATE                   |
| JAYNE       | HORN WORKING                |
| JAYNE       | HYSTERICAL GRAIL            |
| JAYNE       | ICE CROSSING                |
| JAYNE       | INVASION CYCLONE            |
| JAYNE       | LAMBS CINCINATTI            |
| JAYNE       | LUST LOCK                   |
| JAYNE       | MAIDEN HOME                 |
| JAYNE       | NOTORIOUS REUNION           |
| JAYNE       | OUTFIELD MASSACRE           |
| JAYNE       | PERFECT GROOVE              |
| JAYNE       | PRIMARY GLASS               |
| JAYNE       | REUNION WITCHES             |
| JAYNE       | SECRETARY ROUGE             |
| JAYNE       | STRANGERS GRAFFITI          |
| JAYNE       | SWEETHEARTS SUSPECTS        |
| JAYNE       | TELEMARK HEARTBREAKERS      |
| JAYNE       | THIEF PELICAN               |
| JAYNE       | TIES HUNGER                 |
| JAYNE       | TITANIC BOONDOCK            |
| JAYNE       | WAIT CIDER                  |
| JAYNE       | WASTELAND DIVINE            |
| GEOFFREY    | CENTER DINOSAUR             |
| GEOFFREY    | CHINATOWN GLADIATOR         |
| GEOFFREY    | COMA HEAD                   |
| GEOFFREY    | COMMAND DARLING             |
| GEOFFREY    | DAZED PUNK                  |
| GEOFFREY    | DIRTY ACE                   |
| GEOFFREY    | FUGITIVE MAGUIRE            |
| GEOFFREY    | GOLDMINE TYCOON             |
| GEOFFREY    | GORGEOUS BINGO              |
| GEOFFREY    | GRIT CLOCKWORK              |
| GEOFFREY    | IGBY MAKER                  |
| GEOFFREY    | INSTINCT AIRPORT            |
| GEOFFREY    | JEOPARDY ENCINO             |
| GEOFFREY    | KISSING DOLLS               |
| GEOFFREY    | LOLA AGENT                  |
| GEOFFREY    | LUCK OPUS                   |
| GEOFFREY    | MERMAID INSECTS             |
| GEOFFREY    | MIDNIGHT WESTWARD           |
| GEOFFREY    | ODDS BOOGIE                 |
| GEOFFREY    | PARIS WEEKEND               |
| GEOFFREY    | PATTON INTERVIEW            |
| GEOFFREY    | PUNK DIVORCE                |
| GEOFFREY    | TELEMARK HEARTBREAKERS      |
| GEOFFREY    | TITANIC BOONDOCK            |
| GEOFFREY    | TOMORROW HUSTLER            |
| GEOFFREY    | WORKING MICROCOSMOS         |
| BEN         | BEAR GRACELAND              |
| BEN         | CITIZEN SHREK               |
| BEN         | DAZED PUNK                  |
| BEN         | DOZEN LION                  |
| BEN         | FIREHOUSE VIETNAM           |
| BEN         | FRANKENSTEIN STRANGER       |
| BEN         | JAPANESE RUN                |
| BEN         | JASON TRAP                  |
| BEN         | MILLION ACE                 |
| BEN         | MUPPET MILE                 |
| BEN         | MUSKETEERS WAIT             |
| BEN         | NASH CHOCOLAT               |
| BEN         | PET HAUNTING                |
| BEN         | PINOCCHIO SIMON             |
| BEN         | RIDER CADDYSHACK            |
| BEN         | SCARFACE BANG               |
| BEN         | SORORITY QUEEN              |
| BEN         | STING PERSONAL              |
| BEN         | TIMBERLAND SKY              |
| BEN         | TOURIST PELICAN             |
| BEN         | UPRISING UPTOWN             |
| BEN         | WATERFRONT DELIVERANCE      |
| BEN         | WEREWOLF LOLA               |
| MINNIE      | BABY HALL                   |
| MINNIE      | BEETHOVEN EXORCIST          |
| MINNIE      | CHAPLIN LICENSE             |
| MINNIE      | CONSPIRACY SPIRIT           |
| MINNIE      | DAISY MENAGERIE             |
| MINNIE      | DINOSAUR SECRETARY          |
| MINNIE      | HUSTLER PARTY               |
| MINNIE      | JASON TRAP                  |
| MINNIE      | JEEPERS WEDDING             |
| MINNIE      | JET NEIGHBORS               |
| MINNIE      | LOVELY JINGLE               |
| MINNIE      | NORTH TEQUILA               |
| MINNIE      | RINGS HEARTBREAKERS         |
| MINNIE      | SADDLE ANTITRUST            |
| MINNIE      | SAVANNAH TOWN               |
| MINNIE      | SOLDIERS EVOLUTION          |
| MINNIE      | STOCK GLASS                 |
| MINNIE      | TYCOON GATHERING            |
| MINNIE      | VELVET TERMINATOR           |
| MINNIE      | WORKER TARZAN               |
| MERYL       | ANONYMOUS HUMAN             |
| MERYL       | CADDYSHACK JEDI             |
| MERYL       | CHICAGO NORTH               |
| MERYL       | CLONES PINOCCHIO            |
| MERYL       | COMFORTS RUSH               |
| MERYL       | COMMAND DARLING             |
| MERYL       | CROSSROADS CASUALTIES       |
| MERYL       | DARES PLUTO                 |
| MERYL       | EGG IGBY                    |
| MERYL       | ELEMENT FREDDY              |
| MERYL       | ENCOUNTERS CURTAIN          |
| MERYL       | FACTORY DRAGON              |
| MERYL       | FIGHT JAWBREAKER            |
| MERYL       | HANGING DEEP                |
| MERYL       | HAPPINESS UNITED            |
| MERYL       | HOLIDAY GAMES               |
| MERYL       | HUNGER ROOF                 |
| MERYL       | INTRIGUE WORST              |
| MERYL       | JADE BUNCH                  |
| MERYL       | JUGGLER HARDLY              |
| MERYL       | MODEL FISH                  |
| MERYL       | MOURNING PURPLE             |
| MERYL       | PINOCCHIO SIMON             |
| MERYL       | PRINCESS GIANT              |
| MERYL       | SKY MIRACLE                 |
| MERYL       | STATE WASTELAND             |
| MERYL       | WAKE JAWS                   |
| MERYL       | WORKER TARZAN               |
| IAN         | AMELIE HELLFIGHTERS         |
| IAN         | BERETS AGENT                |
| IAN         | CATCH AMISTAD               |
| IAN         | CITIZEN SHREK               |
| IAN         | DEER VIRGINIAN              |
| IAN         | DRACULA CRYSTAL             |
| IAN         | FANTASY TROOPERS            |
| IAN         | FIDDLER LOST                |
| IAN         | GLADIATOR WESTWARD          |
| IAN         | GLEAMING JAWBREAKER         |
| IAN         | GROOVE FICTION              |
| IAN         | GUN BONNIE                  |
| IAN         | HAWK CHILL                  |
| IAN         | HOMEWARD CIDER              |
| IAN         | INFORMER DOUBLE             |
| IAN         | LEATHERNECKS DWARFS         |
| IAN         | MIXED DOORS                 |
| IAN         | MONEY HAROLD                |
| IAN         | NOTTING SPEAKEASY           |
| IAN         | POLISH BROOKLYN             |
| IAN         | SAGEBRUSH CLUELESS          |
| IAN         | SCARFACE BANG               |
| IAN         | SHAWSHANK BUBBLE            |
| IAN         | STORM HAPPINESS             |
| IAN         | TEXAS WATCH                 |
| IAN         | TIGHTS DAWN                 |
| IAN         | VIDEOTAPE ARSENIC           |
| IAN         | WEDDING APOLLO              |
| IAN         | WORDS HUNTER                |
| IAN         | YOUTH KICK                  |
| IAN         | ZORRO ARK                   |
| FAY         | BANG KWAI                   |
| FAY         | CLEOPATRA DEVIL             |
| FAY         | CRYSTAL BREAKING            |
| FAY         | DORADO NOTTING              |
| FAY         | DUMBO LUST                  |
| FAY         | DURHAM PANKY                |
| FAY         | ENGLISH BULWORTH            |
| FAY         | EXTRAORDINARY CONQUERER     |
| FAY         | FAMILY SWEET                |
| FAY         | GANGS PRIDE                 |
| FAY         | GREEDY ROOTS                |
| FAY         | IDAHO LOVE                  |
| FAY         | INSIDER ARIZONA             |
| FAY         | INTRIGUE WORST              |
| FAY         | KWAI HOMEWARD               |
| FAY         | LIAISONS SWEET              |
| FAY         | MONTEREY LABYRINTH          |
| FAY         | OUTBREAK DIVINE             |
| FAY         | PURPLE MOVIE                |
| FAY         | RUSHMORE MERMAID            |
| FAY         | SEATTLE EXPECATIONS         |
| FAY         | STEERS ARMAGEDDON           |
| GRETA       | ALADDIN CALENDAR            |
| GRETA       | ANALYZE HOOSIERS            |
| GRETA       | ARABIA DOGMA                |
| GRETA       | CARRIE BUNCH                |
| GRETA       | CLOSER BANG                 |
| GRETA       | CONVERSATION DOWNHILL       |
| GRETA       | DARKO DORADO                |
| GRETA       | DAZED PUNK                  |
| GRETA       | EVOLUTION ALTER             |
| GRETA       | FANTASY TROOPERS            |
| GRETA       | FLASH WARS                  |
| GRETA       | FLYING HOOK                 |
| GRETA       | GENTLEMEN STAGE             |
| GRETA       | HARDLY ROBBERS              |
| GRETA       | HAUNTING PIANIST            |
| GRETA       | HOOSIERS BIRDCAGE           |
| GRETA       | KICK SAVANNAH               |
| GRETA       | LOVE SUICIDES               |
| GRETA       | MICROCOSMOS PARADISE        |
| GRETA       | MIDNIGHT WESTWARD           |
| GRETA       | MULAN MOON                  |
| GRETA       | NATIONAL STORY              |
| GRETA       | ORDER BETRAYED              |
| GRETA       | PAST SUICIDES               |
| GRETA       | PRIDE ALAMO                 |
| GRETA       | RAINBOW SHOCK               |
| GRETA       | SKY MIRACLE                 |
| GRETA       | SPY MILE                    |
| GRETA       | TADPOLE PARK                |
| GRETA       | TROOPERS METAL              |
| GRETA       | WEEKEND PERSONAL            |
| GRETA       | WIFE TURN                   |
| VIVIEN      | APOCALYPSE FLAMINGOS        |
| VIVIEN      | BABY HALL                   |
| VIVIEN      | BEETHOVEN EXORCIST          |
| VIVIEN      | BENEATH RUSH                |
| VIVIEN      | BUBBLE GROSSE               |
| VIVIEN      | CAROL TEXAS                 |
| VIVIEN      | CONNECTICUT TRAMP           |
| VIVIEN      | CONNECTION MICROCOSMOS      |
| VIVIEN      | CRAZY HOME                  |
| VIVIEN      | DAWN POND                   |
| VIVIEN      | DONNIE ALLEY                |
| VIVIEN      | EXORCIST STING              |
| VIVIEN      | HOUSE DYNAMITE              |
| VIVIEN      | JACKET FRISCO               |
| VIVIEN      | JERICHO MULAN               |
| VIVIEN      | LOSER HUSTLER               |
| VIVIEN      | MALLRATS UNITED             |
| VIVIEN      | MINORITY KISS               |
| VIVIEN      | MOULIN WAKE                 |
| VIVIEN      | NATIONAL STORY              |
| VIVIEN      | NOON PAPI                   |
| VIVIEN      | OPEN AFRICAN                |
| VIVIEN      | SIMON NORTH                 |
| VIVIEN      | SMOKING BARBARELLA          |
| VIVIEN      | SPARTACUS CHEAPER           |
| VIVIEN      | SPIRIT FLINTSTONES          |
| VIVIEN      | STAMPEDE DISTURBING         |
| VIVIEN      | SUSPECTS QUILLS             |
| VIVIEN      | TELEGRAPH VOYAGE            |
| VIVIEN      | TELEMARK HEARTBREAKERS      |
| VIVIEN      | TOMATOES HELLFIGHTERS       |
| VIVIEN      | TOOTSIE PILOT               |
| VIVIEN      | WEEKEND PERSONAL            |
| VIVIEN      | WEREWOLF LOLA               |
| VIVIEN      | WORLD LEATHERNECKS          |
| LAURA       | AMELIE HELLFIGHTERS         |
| LAURA       | BLOOD ARGONAUTS             |
| LAURA       | CAT CONEHEADS               |
| LAURA       | CRANES RESERVOIR            |
| LAURA       | DANCING FEVER               |
| LAURA       | DARES PLUTO                 |
| LAURA       | DESIRE ALIEN                |
| LAURA       | DOZEN LION                  |
| LAURA       | FUGITIVE MAGUIRE            |
| LAURA       | FULL FLATLINERS             |
| LAURA       | FURY MURDER                 |
| LAURA       | GODFATHER DIARY             |
| LAURA       | HOBBIT ALIEN                |
| LAURA       | MAGNOLIA FORRESTER          |
| LAURA       | MASK PEACH                  |
| LAURA       | MOTIONS DETAILS             |
| LAURA       | PET HAUNTING                |
| LAURA       | PINOCCHIO SIMON             |
| LAURA       | SHANGHAI TYCOON             |
| LAURA       | SHOCK CABIN                 |
| LAURA       | SINNERS ATLANTIS            |
| LAURA       | SKY MIRACLE                 |
| LAURA       | SOMETHING DUCK              |
| LAURA       | TARZAN VIDEOTAPE            |
| LAURA       | TRANSLATION SUMMER          |
| LAURA       | WISDOM WORKER               |
| CHRIS       | ACE GOLDFINGER              |
| CHRIS       | ALONE TRIP                  |
| CHRIS       | ATLANTIS CAUSE              |
| CHRIS       | DOOM DANCING                |
| CHRIS       | EAGLES PANKY                |
| CHRIS       | EGYPT TENENBAUMS            |
| CHRIS       | GONE TROUBLE                |
| CHRIS       | IMPOSSIBLE PREJUDICE        |
| CHRIS       | IRON MOON                   |
| CHRIS       | JERK PAYCHECK               |
| CHRIS       | MINDS TRUMAN                |
| CHRIS       | PARTY KNOCK                 |
| CHRIS       | SABRINA MIDNIGHT            |
| CHRIS       | SCALAWAG DUCK               |
| CHRIS       | SCHOOL JACKET               |
| CHRIS       | SIDE ARK                    |
| CHRIS       | SPEED SUIT                  |
| CHRIS       | TEQUILA PAST                |
| CHRIS       | VOLUME HOUSE                |
| CHRIS       | WAKE JAWS                   |
| HARVEY      | ATLANTIS CAUSE              |
| HARVEY      | BEACH HEARTBREAKERS         |
| HARVEY      | BORROWERS BEDAZZLED         |
| HARVEY      | BOULEVARD MOB               |
| HARVEY      | CARIBBEAN LIBERTY           |
| HARVEY      | CRAZY HOME                  |
| HARVEY      | DOWNHILL ENOUGH             |
| HARVEY      | EARRING INSTINCT            |
| HARVEY      | ENCINO ELF                  |
| HARVEY      | FRONTIER CABIN              |
| HARVEY      | GENTLEMEN STAGE             |
| HARVEY      | HAROLD FRENCH               |
| HARVEY      | HELLFIGHTERS SIERRA         |
| HARVEY      | HOLY TADPOLE                |
| HARVEY      | IRON MOON                   |
| HARVEY      | LOCK REAR                   |
| HARVEY      | MODEL FISH                  |
| HARVEY      | OSCAR GOLD                  |
| HARVEY      | PANIC CLUB                  |
| HARVEY      | PANTHER REDS                |
| HARVEY      | PEARL DESTINY               |
| HARVEY      | PIZZA JUMANJI               |
| HARVEY      | RANDOM GO                   |
| HARVEY      | RULES HUMAN                 |
| HARVEY      | SLEUTH ORIENT               |
| HARVEY      | SPEAKEASY DATE              |
| HARVEY      | STORY SIDE                  |
| HARVEY      | TELEMARK HEARTBREAKERS      |
| HARVEY      | UNBREAKABLE KARATE          |
| HARVEY      | UNCUT SUICIDES              |
| HARVEY      | UNFORGIVEN ZOOLANDER        |
| HARVEY      | UPRISING UPTOWN             |
| OPRAH       | ACADEMY DINOSAUR            |
| OPRAH       | AFFAIR PREJUDICE            |
| OPRAH       | AIRPLANE SIERRA             |
| OPRAH       | ALTER VICTORY               |
| OPRAH       | ANTHEM LUKE                 |
| OPRAH       | APOCALYPSE FLAMINGOS        |
| OPRAH       | APOLLO TEEN                 |
| OPRAH       | ARSENIC INDEPENDENCE        |
| OPRAH       | BONNIE HOLOCAUST            |
| OPRAH       | CAROL TEXAS                 |
| OPRAH       | COAST RAINBOW               |
| OPRAH       | EGG IGBY                    |
| OPRAH       | ELIZABETH SHANE             |
| OPRAH       | HEARTBREAKERS BRIGHT        |
| OPRAH       | HEAVEN FREEDOM              |
| OPRAH       | HIGH ENCINO                 |
| OPRAH       | KISS GLORY                  |
| OPRAH       | MIDNIGHT WESTWARD           |
| OPRAH       | MUSSOLINI SPOILERS          |
| OPRAH       | OLEANDER CLUE               |
| OPRAH       | PARK CITIZEN                |
| OPRAH       | SHEPHERD MIDSUMMER          |
| OPRAH       | STEERS ARMAGEDDON           |
| OPRAH       | TREASURE COMMAND            |
| OPRAH       | WEREWOLF LOLA               |
| CHRISTOPHER | ANYTHING SAVANNAH           |
| CHRISTOPHER | ATTRACTION NEWTON           |
| CHRISTOPHER | COLOR PHILADELPHIA          |
| CHRISTOPHER | CONSPIRACY SPIRIT           |
| CHRISTOPHER | DOGMA FAMILY                |
| CHRISTOPHER | ENDING CROWDS               |
| CHRISTOPHER | FANTASY TROOPERS            |
| CHRISTOPHER | FARGO GANDHI                |
| CHRISTOPHER | FELLOWSHIP AUTUMN           |
| CHRISTOPHER | HAMLET WISDOM               |
| CHRISTOPHER | HEARTBREAKERS BRIGHT        |
| CHRISTOPHER | HORROR REIGN                |
| CHRISTOPHER | HUSTLER PARTY               |
| CHRISTOPHER | LIFE TWISTED                |
| CHRISTOPHER | RECORDS ZORRO               |
| CHRISTOPHER | SHAWSHANK BUBBLE            |
| CHRISTOPHER | SPLENDOR PATTON             |
| CHRISTOPHER | TEMPLE ATTRACTION           |
| CHRISTOPHER | TIMBERLAND SKY              |
| CHRISTOPHER | VISION TORQUE               |
| CHRISTOPHER | YOUNG LANGUAGE              |
| HUMPHREY    | ALIEN CENTER                |
| HUMPHREY    | ANACONDA CONFESSIONS        |
| HUMPHREY    | CHOCOLATE DUCK              |
| HUMPHREY    | COMFORTS RUSH               |
| HUMPHREY    | DREAM PICKUP                |
| HUMPHREY    | FLINTSTONES HAPPINESS       |
| HUMPHREY    | GAMES BOWFINGER             |
| HUMPHREY    | GOLDMINE TYCOON             |
| HUMPHREY    | HOOSIERS BIRDCAGE           |
| HUMPHREY    | IDAHO LOVE                  |
| HUMPHREY    | IRON MOON                   |
| HUMPHREY    | MADNESS ATTACKS             |
| HUMPHREY    | MUSIC BOONDOCK              |
| HUMPHREY    | MYSTIC TRUMAN               |
| HUMPHREY    | PERSONAL LADYBUGS           |
| HUMPHREY    | PIRATES ROXANNE             |
| HUMPHREY    | PRINCESS GIANT              |
| HUMPHREY    | SISTER FREDDY               |
| HUMPHREY    | SONS INTERVIEW              |
| HUMPHREY    | SPLASH GUMP                 |
| HUMPHREY    | SPOILERS HELLFIGHTERS       |
| HUMPHREY    | STRAIGHT HOURS              |
| HUMPHREY    | TERMINATOR CLUB             |
| HUMPHREY    | TRAP GUYS                   |
| HUMPHREY    | WAR NOTTING                 |
| HUMPHREY    | WONDERFUL DROP              |
| AL          | BILL OTHERS                 |
| AL          | BREAKFAST GOLDFINGER        |
| AL          | CHITTY LOCK                 |
| AL          | DALMATIONS SWEDEN           |
| AL          | DRIFTER COMMANDMENTS        |
| AL          | ENOUGH RAGING               |
| AL          | GLASS DYING                 |
| AL          | GRAIL FRANKENSTEIN          |
| AL          | HANDICAP BOONDOCK           |
| AL          | HOLIDAY GAMES               |
| AL          | HOUSE DYNAMITE              |
| AL          | JACKET FRISCO               |
| AL          | MUPPET MILE                 |
| AL          | OSCAR GOLD                  |
| AL          | PARK CITIZEN                |
| AL          | POTTER CONNECTICUT          |
| AL          | ROCK INSTINCT               |
| AL          | SENSE GREEK                 |
| AL          | SILVERADO GOLDFINGER        |
| AL          | SLEUTH ORIENT               |
| AL          | SLIPPER FIDELITY            |
| AL          | SPLASH GUMP                 |
| AL          | SPLENDOR PATTON             |
| AL          | VISION TORQUE               |
| AL          | VOICE PEACH                 |
| AL          | WASTELAND DIVINE            |
| NICK        | ANGELS LIFE                 |
| NICK        | ARK RIDGEMONT               |
| NICK        | BARBARELLA STREETCAR        |
| NICK        | BEAUTY GREASE               |
| NICK        | BETRAYED REAR               |
| NICK        | BOOGIE AMELIE               |
| NICK        | CHITTY LOCK                 |
| NICK        | DRIVING POLISH              |
| NICK        | EXTRAORDINARY CONQUERER     |
| NICK        | FEATHERS METAL              |
| NICK        | FLYING HOOK                 |
| NICK        | GLEAMING JAWBREAKER         |
| NICK        | GOLDFINGER SENSIBILITY      |
| NICK        | HOME PITY                   |
| NICK        | MINE TITANS                 |
| NICK        | NEWSIES STORY               |
| NICK        | PET HAUNTING                |
| NICK        | RANDOM GO                   |
| NICK        | SHIP WONDERLAND             |
| NICK        | SUPER WYOMING               |
| NICK        | VIRGIN DAISY                |
| NICK        | ZORRO ARK                   |
| LAURENCE    | ALONE TRIP                  |
| LAURENCE    | ANGELS LIFE                 |
| LAURENCE    | BEDAZZLED MARRIED           |
| LAURENCE    | BILL OTHERS                 |
| LAURENCE    | BUNCH MINDS                 |
| LAURENCE    | CARIBBEAN LIBERTY           |
| LAURENCE    | CROOKED FROGMEN             |
| LAURENCE    | EXPECATIONS NATURAL         |
| LAURENCE    | FISH OPUS                   |
| LAURENCE    | FROGMEN BREAKING            |
| LAURENCE    | FROST HEAD                  |
| LAURENCE    | KICK SAVANNAH               |
| LAURENCE    | MALKOVICH PET               |
| LAURENCE    | NOON PAPI                   |
| LAURENCE    | NORTHWEST POLISH            |
| LAURENCE    | PERFECT GROOVE              |
| LAURENCE    | POTLUCK MIXED               |
| LAURENCE    | REAR TRADING                |
| LAURENCE    | ROAD ROXANNE                |
| LAURENCE    | SIDE ARK                    |
| LAURENCE    | SINNERS ATLANTIS            |
| LAURENCE    | SKY MIRACLE                 |
| LAURENCE    | STREETCAR INTENTIONS        |
| LAURENCE    | SUNDANCE INVASION           |
| LAURENCE    | TENENBAUMS COMMAND          |
| LAURENCE    | UNFAITHFUL KILL             |
| WILL        | APOCALYPSE FLAMINGOS        |
| WILL        | BAREFOOT MANCHURIAN         |
| WILL        | BOWFINGER GABLES            |
| WILL        | CAMPUS REMEMBER             |
| WILL        | CRAZY HOME                  |
| WILL        | CRUELTY UNFORGIVEN          |
| WILL        | DARES PLUTO                 |
| WILL        | DIVORCE SHINING             |
| WILL        | DONNIE ALLEY                |
| WILL        | DRIVING POLISH              |
| WILL        | FATAL HAUNTED               |
| WILL        | FRENCH HOLIDAY              |
| WILL        | GUN BONNIE                  |
| WILL        | HORN WORKING                |
| WILL        | HUMAN GRAFFITI              |
| WILL        | LIBERTY MAGNIFICENT         |
| WILL        | MOURNING PURPLE             |
| WILL        | NEIGHBORS CHARADE           |
| WILL        | NOON PAPI                   |
| WILL        | PAJAMA JAWBREAKER           |
| WILL        | PICKUP DRIVING              |
| WILL        | PLATOON INSTINCT            |
| WILL        | SLEEPING SUSPECTS           |
| WILL        | SLEUTH ORIENT               |
| WILL        | SPEED SUIT                  |
| WILL        | STAR OPERATION              |
| WILL        | THEORY MERMAID              |
| WILL        | TIES HUNGER                 |
| WILL        | TITANIC BOONDOCK            |
| WILL        | UPRISING UPTOWN             |
| WILL        | WARLOCK WEREWOLF            |
| KENNETH     | AGENT TRUMAN                |
| KENNETH     | BLACKOUT PRIVATE            |
| KENNETH     | BRANNIGAN SUNRISE           |
| KENNETH     | DOUBTFIRE LABYRINTH         |
| KENNETH     | DOZEN LION                  |
| KENNETH     | EVE RESURRECTION            |
| KENNETH     | FAMILY SWEET                |
| KENNETH     | FLYING HOOK                 |
| KENNETH     | GANGS PRIDE                 |
| KENNETH     | GRACELAND DYNAMITE          |
| KENNETH     | HANOVER GALAXY              |
| KENNETH     | HORROR REIGN                |
| KENNETH     | LABYRINTH LEAGUE            |
| KENNETH     | MASSAGE IMAGE               |
| KENNETH     | METAL ARMAGEDDON            |
| KENNETH     | ODDS BOOGIE                 |
| KENNETH     | ORDER BETRAYED              |
| KENNETH     | PERSONAL LADYBUGS           |
| KENNETH     | PREJUDICE OLEANDER          |
| KENNETH     | RESURRECTION SILVERADO      |
| KENNETH     | SECRETS PARADISE            |
| KENNETH     | SNATCHERS MONTEZUMA         |
| KENNETH     | STOCK GLASS                 |
| KENNETH     | STORM HAPPINESS             |
| KENNETH     | TOMATOES HELLFIGHTERS       |
| KENNETH     | TORQUE BOUND                |
| KENNETH     | WAKE JAWS                   |
| KENNETH     | WRATH MILE                  |
| KENNETH     | ZHIVAGO CORE                |
| MENA        | AIRPLANE SIERRA             |
| MENA        | ALIEN CENTER                |
| MENA        | ANONYMOUS HUMAN             |
| MENA        | APOLLO TEEN                 |
| MENA        | BUBBLE GROSSE               |
| MENA        | CHASING FIGHT               |
| MENA        | CONSPIRACY SPIRIT           |
| MENA        | CORE SUIT                   |
| MENA        | DARN FORRESTER              |
| MENA        | FACTORY DRAGON              |
| MENA        | FLATLINERS KILLER           |
| MENA        | GILMORE BOILED              |
| MENA        | HIGHBALL POTTER             |
| MENA        | LAMBS CINCINATTI            |
| MENA        | LOVER TRUMAN                |
| MENA        | PURPLE MOVIE                |
| MENA        | SAINTS BRIDE                |
| MENA        | SATURDAY LAMBS              |
| MENA        | SUPERFLY TRIP               |
| MENA        | TAXI KICK                   |
| MENA        | THEORY MERMAID              |
| MENA        | UNITED PILOT                |
| MENA        | WRONG BEHAVIOR              |
| MENA        | YOUNG LANGUAGE              |
| OLYMPIA     | BADMAN DAWN                 |
| OLYMPIA     | CHITTY LOCK                 |
| OLYMPIA     | COLOR PHILADELPHIA          |
| OLYMPIA     | CONTACT ANONYMOUS           |
| OLYMPIA     | DEEP CRUSADE                |
| OLYMPIA     | EFFECT GLADIATOR            |
| OLYMPIA     | EXPRESS LONELY              |
| OLYMPIA     | FIREHOUSE VIETNAM           |
| OLYMPIA     | FUGITIVE MAGUIRE            |
| OLYMPIA     | HANKY OCTOBER               |
| OLYMPIA     | ICE CROSSING                |
| OLYMPIA     | IDOLS SNATCHERS             |
| OLYMPIA     | INTOLERABLE INTENTIONS      |
| OLYMPIA     | MAGNOLIA FORRESTER          |
| OLYMPIA     | MARS ROMAN                  |
| OLYMPIA     | MAUDE MOD                   |
| OLYMPIA     | MURDER ANTITRUST            |
| OLYMPIA     | NONE SPIKING                |
| OLYMPIA     | OTHERS SOUP                 |
| OLYMPIA     | PSYCHO SHRUNK               |
| OLYMPIA     | SANTA PARIS                 |
| OLYMPIA     | SENSE GREEK                 |
| OLYMPIA     | STORM HAPPINESS             |
| OLYMPIA     | SWEET BROTHERHOOD           |
| OLYMPIA     | TITANIC BOONDOCK            |
| OLYMPIA     | TOURIST PELICAN             |
| OLYMPIA     | TRAFFIC HOBBIT              |
| OLYMPIA     | WAIT CIDER                  |
| GROUCHO     | BASIC EASY                  |
| GROUCHO     | BROOKLYN DESERT             |
| GROUCHO     | CHOCOLATE DUCK              |
| GROUCHO     | DAWN POND                   |
| GROUCHO     | FANTASIA PARK               |
| GROUCHO     | GABLES METROPOLIS           |
| GROUCHO     | GONE TROUBLE                |
| GROUCHO     | GROUNDHOG UNCUT             |
| GROUCHO     | HOLLYWOOD ANONYMOUS         |
| GROUCHO     | JINGLE SAGEBRUSH            |
| GROUCHO     | KANE EXORCIST               |
| GROUCHO     | LONELY ELEPHANT             |
| GROUCHO     | LOVERBOY ATTACKS            |
| GROUCHO     | MEET CHOCOLATE              |
| GROUCHO     | MUSCLE BRIGHT               |
| GROUCHO     | OPPOSITE NECKLACE           |
| GROUCHO     | OZ LIAISONS                 |
| GROUCHO     | PAST SUICIDES               |
| GROUCHO     | PEACH INNOCENT              |
| GROUCHO     | RAGE GAMES                  |
| GROUCHO     | ROOTS REMEMBER              |
| GROUCHO     | SAINTS BRIDE                |
| GROUCHO     | SCORPION APOLLO             |
| GROUCHO     | SPLENDOR PATTON             |
| GROUCHO     | WARLOCK WEREWOLF            |
| ALAN        | BADMAN DAWN                 |
| ALAN        | BARBARELLA STREETCAR        |
| ALAN        | BIRCH ANTITRUST             |
| ALAN        | BLANKET BEVERLY             |
| ALAN        | BULWORTH COMMANDMENTS       |
| ALAN        | CLASH FREDDY                |
| ALAN        | CLUELESS BUCKET             |
| ALAN        | CRAZY HOME                  |
| ALAN        | DIVIDE MONSTER              |
| ALAN        | FIDELITY DEVIL              |
| ALAN        | GREEDY ROOTS                |
| ALAN        | HAUNTED ANTITRUST           |
| ALAN        | JUMPING WRATH               |
| ALAN        | KICK SAVANNAH               |
| ALAN        | LONELY ELEPHANT             |
| ALAN        | MAGUIRE APACHE              |
| ALAN        | MASSAGE IMAGE               |
| ALAN        | METAL ARMAGEDDON            |
| ALAN        | MONSTER SPARTACUS           |
| ALAN        | POLISH BROOKLYN             |
| ALAN        | RUSH GOODFELLAS             |
| ALAN        | SAGEBRUSH CLUELESS          |
| ALAN        | STRANGELOVE DESIRE          |
| ALAN        | STRICTLY SCARFACE           |
| ALAN        | UNCUT SUICIDES              |
| ALAN        | UPTOWN YOUNG                |
| ALAN        | VAMPIRE WHALE               |
| MICHAEL     | ALAMO VIDEOTAPE             |
| MICHAEL     | BEAUTY GREASE               |
| MICHAEL     | COMANCHEROS ENEMY           |
| MICHAEL     | EYES DRIVING                |
| MICHAEL     | GATHERING CALENDAR          |
| MICHAEL     | HUNTING MUSKETEERS          |
| MICHAEL     | IGBY MAKER                  |
| MICHAEL     | KICK SAVANNAH               |
| MICHAEL     | MUSIC BOONDOCK              |
| MICHAEL     | NECKLACE OUTBREAK           |
| MICHAEL     | NEWSIES STORY               |
| MICHAEL     | PARK CITIZEN                |
| MICHAEL     | PIANIST OUTFIELD            |
| MICHAEL     | PURPLE MOVIE                |
| MICHAEL     | REEF SALUTE                 |
| MICHAEL     | SENSIBILITY REAR            |
| MICHAEL     | SILENCE KANE                |
| MICHAEL     | SLIPPER FIDELITY            |
| MICHAEL     | SPICE SORORITY              |
| MICHAEL     | SPIRIT FLINTSTONES          |
| MICHAEL     | STRANGELOVE DESIRE          |
| MICHAEL     | STRANGER STRANGERS          |
| MICHAEL     | TELEGRAPH VOYAGE            |
| MICHAEL     | WOMEN DORADO                |
| WILLIAM     | ALABAMA DEVIL               |
| WILLIAM     | ANTITRUST TOMATOES          |
| WILLIAM     | BERETS AGENT                |
| WILLIAM     | CAUSE DATE                  |
| WILLIAM     | CLEOPATRA DEVIL             |
| WILLIAM     | CREEPERS KANE               |
| WILLIAM     | CROOKED FROGMEN             |
| WILLIAM     | GLORY TRACY                 |
| WILLIAM     | HAUNTED ANTITRUST           |
| WILLIAM     | HOLOCAUST HIGHBALL          |
| WILLIAM     | HUNCHBACK IMPOSSIBLE        |
| WILLIAM     | HUNTING MUSKETEERS          |
| WILLIAM     | JERICHO MULAN               |
| WILLIAM     | MONSOON CAUSE               |
| WILLIAM     | MOONSHINE CABIN             |
| WILLIAM     | NATIONAL STORY              |
| WILLIAM     | RECORDS ZORRO               |
| WILLIAM     | RIDER CADDYSHACK            |
| WILLIAM     | SEA VIRGIN                  |
| WILLIAM     | SECRETS PARADISE            |
| WILLIAM     | SPIKING ELEMENT             |
| WILLIAM     | STATE WASTELAND             |
| WILLIAM     | TIGHTS DAWN                 |
| WILLIAM     | TRAP GUYS                   |
| WILLIAM     | WINDOW SIDE                 |
| WILLIAM     | WISDOM WORKER               |
| WILLIAM     | ZHIVAGO CORE                |
| JON         | ALI FOREVER                 |
| JON         | BINGO TALENTED              |
| JON         | BORROWERS BEDAZZLED         |
| JON         | CIDER DESIRE                |
| JON         | CLUELESS BUCKET             |
| JON         | DOCTOR GRAIL                |
| JON         | DREAM PICKUP                |
| JON         | FANTASY TROOPERS            |
| JON         | FLAMINGOS CONNECTICUT       |
| JON         | HAROLD FRENCH               |
| JON         | HILLS NEIGHBORS             |
| JON         | HUNTER ALTER                |
| JON         | INDIAN LOVE                 |
| JON         | INSECTS STONE               |
| JON         | LESSON CLEOPATRA            |
| JON         | LIES TREATMENT              |
| JON         | MADIGAN DORADO              |
| JON         | MICROCOSMOS PARADISE        |
| JON         | PRIVATE DROP                |
| JON         | RESERVOIR ADAPTATION        |
| JON         | ROLLERCOASTER BRINGING      |
| JON         | ROUGE SQUAD                 |
| JON         | SAINTS BRIDE                |
| JON         | SKY MIRACLE                 |
| JON         | SPICE SORORITY              |
| JON         | STALLION SUNDANCE           |
| JON         | SUGAR WONKA                 |
| JON         | SWEET BROTHERHOOD           |
| JON         | VIRTUAL SPOILERS            |
| GENE        | ALASKA PHANTOM              |
| GENE        | ARMAGEDDON LOST             |
| GENE        | BALLROOM MOCKINGBIRD        |
| GENE        | BARBARELLA STREETCAR        |
| GENE        | BOOGIE AMELIE               |
| GENE        | CONFUSED CANDLES            |
| GENE        | CRAZY HOME                  |
| GENE        | DIVIDE MONSTER              |
| GENE        | DIVORCE SHINING             |
| GENE        | EVE RESURRECTION            |
| GENE        | GO PURPLE                   |
| GENE        | HAROLD FRENCH               |
| GENE        | HORN WORKING                |
| GENE        | INDIAN LOVE                 |
| GENE        | LIFE TWISTED                |
| GENE        | MADIGAN DORADO              |
| GENE        | MASSACRE USUAL              |
| GENE        | OZ LIAISONS                 |
| GENE        | PITY BOUND                  |
| GENE        | PIZZA JUMANJI               |
| GENE        | RESERVOIR ADAPTATION        |
| GENE        | RUNAWAY TENENBAUMS          |
| GENE        | SATISFACTION CONFIDENTIAL   |
| GENE        | SATURDAY LAMBS              |
| GENE        | SPICE SORORITY              |
| GENE        | TREATMENT JEKYLL            |
| GENE        | WANDA CHAMBER               |
| LISA        | ANYTHING SAVANNAH           |
| LISA        | ARABIA DOGMA                |
| LISA        | BUTTERFLY CHOCOLAT          |
| LISA        | CHITTY LOCK                 |
| LISA        | CLUB GRAFFITI               |
| LISA        | COAST RAINBOW               |
| LISA        | CROW GREASE                 |
| LISA        | CRUSADE HONEY               |
| LISA        | EFFECT GLADIATOR            |
| LISA        | FICTION CHRISTMAS           |
| LISA        | HANKY OCTOBER               |
| LISA        | JERICHO MULAN               |
| LISA        | LESSON CLEOPATRA            |
| LISA        | LOVER TRUMAN                |
| LISA        | MOD SECRETARY               |
| LISA        | QUILLS BULL                 |
| LISA        | RIVER OUTLAW                |
| LISA        | ROOTS REMEMBER              |
| LISA        | SASSY PACKER                |
| LISA        | VACATION BOONDOCK           |
| LISA        | WILD APOLLO                 |
| LISA        | WON DARES                   |
| LISA        | ZORRO ARK                   |
| ED          | ANALYZE HOOSIERS            |
| ED          | ANONYMOUS HUMAN             |
| ED          | BEHAVIOR RUNAWAY            |
| ED          | BONNIE HOLOCAUST            |
| ED          | BUTTERFLY CHOCOLAT          |
| ED          | CENTER DINOSAUR             |
| ED          | CLOSER BANG                 |
| ED          | CROSSROADS CASUALTIES       |
| ED          | DRAGON SQUAD                |
| ED          | EVOLUTION ALTER             |
| ED          | GENTLEMEN STAGE             |
| ED          | HIGH ENCINO                 |
| ED          | INSTINCT AIRPORT            |
| ED          | INVASION CYCLONE            |
| ED          | JUGGLER HARDLY              |
| ED          | MAUDE MOD                   |
| ED          | MODEL FISH                  |
| ED          | PACIFIC AMISTAD             |
| ED          | PRINCESS GIANT              |
| ED          | RINGS HEARTBREAKERS         |
| ED          | ROCK INSTINCT               |
| ED          | SCHOOL JACKET               |
| ED          | SMILE EARRING               |
| ED          | SOLDIERS EVOLUTION          |
| ED          | STRANGELOVE DESIRE          |
| ED          | UNFORGIVEN ZOOLANDER        |
| ED          | VALENTINE VANISHING         |
| ED          | WARS PLUTO                  |
| ED          | WIND PHANTOM                |
| JEFF        | ALASKA PHANTOM              |
| JEFF        | APOLLO TEEN                 |
| JEFF        | CHINATOWN GLADIATOR         |
| JEFF        | CROWDS TELEMARK             |
| JEFF        | DRUMS DYNAMITE              |
| JEFF        | HUNTER ALTER                |
| JEFF        | LADY STAGE                  |
| JEFF        | MASK PEACH                  |
| JEFF        | MUSCLE BRIGHT               |
| JEFF        | NEWSIES STORY               |
| JEFF        | NORTHWEST POLISH            |
| JEFF        | PARADISE SABRINA            |
| JEFF        | REMEMBER DIARY              |
| JEFF        | RIDER CADDYSHACK            |
| JEFF        | RINGS HEARTBREAKERS         |
| JEFF        | SECRETARY ROUGE             |
| JEFF        | SLIPPER FIDELITY            |
| JEFF        | SMILE EARRING               |
| JEFF        | SONS INTERVIEW              |
| JEFF        | SPARTACUS CHEAPER           |
| JEFF        | STOCK GLASS                 |
| JEFF        | SUSPECTS QUILLS             |
| JEFF        | TADPOLE PARK                |
| JEFF        | WALLS ARTIST                |
| JEFF        | WATCH TRACY                 |
| MATTHEW     | AFRICAN EGG                 |
| MATTHEW     | ARMY FLINTSTONES            |
| MATTHEW     | BIRCH ANTITRUST             |
| MATTHEW     | BLACKOUT PRIVATE            |
| MATTHEW     | BLUES INSTINCT              |
| MATTHEW     | CIRCUS YOUTH                |
| MATTHEW     | CROWDS TELEMARK             |
| MATTHEW     | DISCIPLE MOTHER             |
| MATTHEW     | ENOUGH RAGING               |
| MATTHEW     | FAMILY SWEET                |
| MATTHEW     | FICTION CHRISTMAS           |
| MATTHEW     | GRINCH MASSAGE              |
| MATTHEW     | GUN BONNIE                  |
| MATTHEW     | HARRY IDAHO                 |
| MATTHEW     | HEARTBREAKERS BRIGHT        |
| MATTHEW     | HOLES BRANNIGAN             |
| MATTHEW     | HOUSE DYNAMITE              |
| MATTHEW     | INCH JET                    |
| MATTHEW     | LADYBUGS ARMAGEDDON         |
| MATTHEW     | LIFE TWISTED                |
| MATTHEW     | LUCK OPUS                   |
| MATTHEW     | LUST LOCK                   |
| MATTHEW     | MADRE GABLES                |
| MATTHEW     | MINDS TRUMAN                |
| MATTHEW     | MOONSHINE CABIN             |
| MATTHEW     | MULAN MOON                  |
| MATTHEW     | MUSCLE BRIGHT               |
| MATTHEW     | NONE SPIKING                |
| MATTHEW     | ROOTS REMEMBER              |
| MATTHEW     | SNOWMAN ROLLERCOASTER       |
| MATTHEW     | SQUAD FISH                  |
| MATTHEW     | SUPERFLY TRIP               |
| MATTHEW     | SWARM GOLD                  |
| MATTHEW     | TADPOLE PARK                |
| MATTHEW     | TITANIC BOONDOCK            |
| MATTHEW     | TRANSLATION SUMMER          |
| MATTHEW     | TRIP NEWTON                 |
| MATTHEW     | UNCUT SUICIDES              |
| MATTHEW     | WORST BANGER                |
| DEBBIE      | APOLLO TEEN                 |
| DEBBIE      | CLUB GRAFFITI               |
| DEBBIE      | FAMILY SWEET                |
| DEBBIE      | FLINTSTONES HAPPINESS       |
| DEBBIE      | GALAXY SWEETHEARTS          |
| DEBBIE      | GLORY TRACY                 |
| DEBBIE      | HALF OUTFIELD               |
| DEBBIE      | HEDWIG ALTER                |
| DEBBIE      | HOLIDAY GAMES               |
| DEBBIE      | HOUSE DYNAMITE              |
| DEBBIE      | MONEY HAROLD                |
| DEBBIE      | OPPOSITE NECKLACE           |
| DEBBIE      | PEAK FOREVER                |
| DEBBIE      | PIANIST OUTFIELD            |
| DEBBIE      | PILOT HOOSIERS              |
| DEBBIE      | PRESIDENT BANG              |
| DEBBIE      | RANDOM GO                   |
| DEBBIE      | REDEMPTION COMFORTS         |
| DEBBIE      | SONG HEDWIG                 |
| DEBBIE      | SPIKING ELEMENT             |
| DEBBIE      | STEPMOM DREAM               |
| DEBBIE      | SUNDANCE INVASION           |
| DEBBIE      | VICTORY ACADEMY             |
| DEBBIE      | WORLD LEATHERNECKS          |
| RUSSELL     | APOCALYPSE FLAMINGOS        |
| RUSSELL     | ARMY FLINTSTONES            |
| RUSSELL     | BILKO ANONYMOUS             |
| RUSSELL     | CALIFORNIA BIRDS            |
| RUSSELL     | FIDELITY DEVIL              |
| RUSSELL     | GUNFIGHT MOON               |
| RUSSELL     | GUNFIGHTER MUSSOLINI        |
| RUSSELL     | GUYS FALCON                 |
| RUSSELL     | KENTUCKIAN GIANT            |
| RUSSELL     | LICENSE WEEKEND             |
| RUSSELL     | MIGHTY LUCK                 |
| RUSSELL     | OLEANDER CLUE               |
| RUSSELL     | RANGE MOONWALKER            |
| RUSSELL     | STORY SIDE                  |
| RUSSELL     | SUMMER SCARFACE             |
| RUSSELL     | TROUBLE DATE                |
| RUSSELL     | VIDEOTAPE ARSENIC           |
| RUSSELL     | VOLCANO TEXAS               |
| RUSSELL     | WON DARES                   |
| HUMPHREY    | ARACHNOPHOBIA ROLLERCOASTER |
| HUMPHREY    | BOONDOCK BALLROOM           |
| HUMPHREY    | CHITTY LOCK                 |
| HUMPHREY    | COMFORTS RUSH               |
| HUMPHREY    | DELIVERANCE MULHOLLAND      |
| HUMPHREY    | FRENCH HOLIDAY              |
| HUMPHREY    | GOSFORD DONNIE              |
| HUMPHREY    | ILLUSION AMELIE             |
| HUMPHREY    | JET NEIGHBORS               |
| HUMPHREY    | JUNGLE CLOSER               |
| HUMPHREY    | KISS GLORY                  |
| HUMPHREY    | MIDNIGHT WESTWARD           |
| HUMPHREY    | MINE TITANS                 |
| HUMPHREY    | MOONWALKER FOOL             |
| HUMPHREY    | NASH CHOCOLAT               |
| HUMPHREY    | OPUS ICE                    |
| HUMPHREY    | ORDER BETRAYED              |
| HUMPHREY    | PACIFIC AMISTAD             |
| HUMPHREY    | PAST SUICIDES               |
| HUMPHREY    | PIZZA JUMANJI               |
| HUMPHREY    | ROSES TREASURE              |
| HUMPHREY    | SEA VIRGIN                  |
| HUMPHREY    | SHINING ROSES               |
| HUMPHREY    | SUPER WYOMING               |
| HUMPHREY    | WARLOCK WEREWOLF            |
| HUMPHREY    | WEDDING APOLLO              |
| HUMPHREY    | WEEKEND PERSONAL            |
| HUMPHREY    | WEST LION                   |
| HUMPHREY    | WONDERLAND CHRISTMAS        |
| MICHAEL     | AIRPLANE SIERRA             |
| MICHAEL     | BREAKFAST GOLDFINGER        |
| MICHAEL     | CHARIOTS CONSPIRACY         |
| MICHAEL     | DYING MAKER                 |
| MICHAEL     | ENOUGH RAGING               |
| MICHAEL     | GLASS DYING                 |
| MICHAEL     | HEAVENLY GUN                |
| MICHAEL     | HOMEWARD CIDER              |
| MICHAEL     | HOUSE DYNAMITE              |
| MICHAEL     | IDAHO LOVE                  |
| MICHAEL     | KARATE MOON                 |
| MICHAEL     | LAWLESS VISION              |
| MICHAEL     | LIAISONS SWEET              |
| MICHAEL     | MALKOVICH PET               |
| MICHAEL     | MARS ROMAN                  |
| MICHAEL     | METAL ARMAGEDDON            |
| MICHAEL     | MIXED DOORS                 |
| MICHAEL     | NOVOCAINE FLIGHT            |
| MICHAEL     | PATTON INTERVIEW            |
| MICHAEL     | PREJUDICE OLEANDER          |
| MICHAEL     | RIDGEMONT SUBMARINE         |
| MICHAEL     | SANTA PARIS                 |
| MICHAEL     | SOMETHING DUCK              |
| MICHAEL     | STEPMOM DREAM               |
| MICHAEL     | TELEMARK HEARTBREAKERS      |
| MICHAEL     | TENENBAUMS COMMAND          |
| MICHAEL     | TYCOON GATHERING            |
| MICHAEL     | UNBREAKABLE KARATE          |
| MICHAEL     | WATERSHIP FRONTIER          |
| MICHAEL     | WIFE TURN                   |
| JULIA       | BREAKFAST GOLDFINGER        |
| JULIA       | CRANES RESERVOIR            |
| JULIA       | DARES PLUTO                 |
| JULIA       | DETECTIVE VISION            |
| JULIA       | DIVORCE SHINING             |
| JULIA       | HOLLOW JEOPARDY             |
| JULIA       | JEOPARDY ENCINO             |
| JULIA       | LAMBS CINCINATTI            |
| JULIA       | MAJESTIC FLOATS             |
| JULIA       | MINDS TRUMAN                |
| JULIA       | OPEN AFRICAN                |
| JULIA       | OUTLAW HANKY                |
| JULIA       | PANKY SUBMARINE             |
| JULIA       | RIDER CADDYSHACK            |
| JULIA       | WON DARES                   |
| JULIA       | WYOMING STORM               |
| RENEE       | ALONE TRIP                  |
| RENEE       | ANGELS LIFE                 |
| RENEE       | ANTITRUST TOMATOES          |
| RENEE       | BALLOON HOMEWARD            |
| RENEE       | BINGO TALENTED              |
| RENEE       | BIRDCAGE CASPER             |
| RENEE       | BRIGHT ENCOUNTERS           |
| RENEE       | CABIN FLASH                 |
| RENEE       | CAT CONEHEADS               |
| RENEE       | COMANCHEROS ENEMY           |
| RENEE       | DESERT POSEIDON             |
| RENEE       | DESPERATE TRAINSPOTTING     |
| RENEE       | EXTRAORDINARY CONQUERER     |
| RENEE       | GHOST GROUNDHOG             |
| RENEE       | GREEDY ROOTS                |
| RENEE       | HILLS NEIGHBORS             |
| RENEE       | HOTEL HAPPINESS             |
| RENEE       | HUNTER ALTER                |
| RENEE       | JADE BUNCH                  |
| RENEE       | KING EVOLUTION              |
| RENEE       | LOVERBOY ATTACKS            |
| RENEE       | MAGNIFICENT CHITTY          |
| RENEE       | MASK PEACH                  |
| RENEE       | NATURAL STOCK               |
| RENEE       | NONE SPIKING                |
| RENEE       | PATRIOT ROMAN               |
| RENEE       | PERDITION FARGO             |
| RENEE       | SCARFACE BANG               |
| RENEE       | SENSE GREEK                 |
| RENEE       | TRAMP OTHERS                |
| RENEE       | TROUBLE DATE                |
| RENEE       | UNFAITHFUL KILL             |
| RENEE       | WIND PHANTOM                |
| ROCK        | ACADEMY DINOSAUR            |
| ROCK        | ALADDIN CALENDAR            |
| ROCK        | ALICE FANTASIA              |
| ROCK        | BALLOON HOMEWARD            |
| ROCK        | BUBBLE GROSSE               |
| ROCK        | CADDYSHACK JEDI             |
| ROCK        | CHITTY LOCK                 |
| ROCK        | DANCING FEVER               |
| ROCK        | DESIRE ALIEN                |
| ROCK        | EVE RESURRECTION            |
| ROCK        | FICTION CHRISTMAS           |
| ROCK        | FLATLINERS KILLER           |
| ROCK        | FRISCO FORREST              |
| ROCK        | HANGING DEEP                |
| ROCK        | HEAVYWEIGHTS BEAST          |
| ROCK        | LADY STAGE                  |
| ROCK        | LESSON CLEOPATRA            |
| ROCK        | LONELY ELEPHANT             |
| ROCK        | MAUDE MOD                   |
| ROCK        | MONTEREY LABYRINTH          |
| ROCK        | MUMMY CREATURES             |
| ROCK        | PATHS CONTROL               |
| ROCK        | SCISSORHANDS SLUMS          |
| ROCK        | SEABISCUIT PUNK             |
| ROCK        | SEARCHERS WAIT              |
| ROCK        | SNATCHERS MONTEZUMA         |
| ROCK        | STORM HAPPINESS             |
| ROCK        | UNITED PILOT                |
| ROCK        | WORKER TARZAN               |
| ROCK        | WORKING MICROCOSMOS         |
| CUBA        | ATLANTIS CAUSE              |
| CUBA        | BLOOD ARGONAUTS             |
| CUBA        | COMMANDMENTS EXPRESS        |
| CUBA        | DYNAMITE TARZAN             |
| CUBA        | EDGE KISSING                |
| CUBA        | FINDING ANACONDA            |
| CUBA        | GREATEST NORTH              |
| CUBA        | JUNGLE CLOSER               |
| CUBA        | LANGUAGE COWBOY             |
| CUBA        | LEAGUE HELLFIGHTERS         |
| CUBA        | LIBERTY MAGNIFICENT         |
| CUBA        | LOST BIRD                   |
| CUBA        | MAGNIFICENT CHITTY          |
| CUBA        | MARS ROMAN                  |
| CUBA        | NORTHWEST POLISH            |
| CUBA        | ROAD ROXANNE                |
| CUBA        | RUGRATS SHAKESPEARE         |
| CUBA        | SHIP WONDERLAND             |
| CUBA        | SONS INTERVIEW              |
| CUBA        | STRANGER STRANGERS          |
| CUBA        | TENENBAUMS COMMAND          |
| CUBA        | TOOTSIE PILOT               |
| CUBA        | TOWERS HURRICANE            |
| CUBA        | VICTORY ACADEMY             |
| AUDREY      | ARK RIDGEMONT               |
| AUDREY      | BANGER PINOCCHIO            |
| AUDREY      | BED HIGHBALL                |
| AUDREY      | BOONDOCK BALLROOM           |
| AUDREY      | CONFESSIONS MAGUIRE         |
| AUDREY      | DISTURBING SCARFACE         |
| AUDREY      | DRIFTER COMMANDMENTS        |
| AUDREY      | ELF MURDER                  |
| AUDREY      | FEVER EMPIRE                |
| AUDREY      | GRAFFITI LOVE               |
| AUDREY      | HEAVENLY GUN                |
| AUDREY      | HOME PITY                   |
| AUDREY      | ITALIAN AFRICAN             |
| AUDREY      | MAGNOLIA FORRESTER          |
| AUDREY      | MASKED BUBBLE               |
| AUDREY      | MUMMY CREATURES             |
| AUDREY      | NEWTON LABYRINTH            |
| AUDREY      | PILOT HOOSIERS              |
| AUDREY      | PITTSBURGH HUNCHBACK        |
| AUDREY      | POTTER CONNECTICUT          |
| AUDREY      | PRESIDENT BANG              |
| AUDREY      | PURPLE MOVIE                |
| AUDREY      | QUILLS BULL                 |
| AUDREY      | SKY MIRACLE                 |
| AUDREY      | SLEEPY JAPANESE             |
| AUDREY      | TADPOLE PARK                |
| AUDREY      | WARLOCK WEREWOLF            |
| GREGORY     | ALLEY EVOLUTION             |
| GREGORY     | ARMAGEDDON LOST             |
| GREGORY     | BOILED DARES                |
| GREGORY     | COWBOY DOOM                 |
| GREGORY     | DEEP CRUSADE                |
| GREGORY     | EXORCIST STING              |
| GREGORY     | EXPRESS LONELY              |
| GREGORY     | GREATEST NORTH              |
| GREGORY     | HEAVEN FREEDOM              |
| GREGORY     | HOLES BRANNIGAN             |
| GREGORY     | INSECTS STONE               |
| GREGORY     | MADISON TRAP                |
| GREGORY     | MAIDEN HOME                 |
| GREGORY     | MOONSHINE CABIN             |
| GREGORY     | OPERATION OPERATION         |
| GREGORY     | PEAK FOREVER                |
| GREGORY     | POTLUCK MIXED               |
| GREGORY     | SEATTLE EXPECATIONS         |
| GREGORY     | SISTER FREDDY               |
| GREGORY     | SONG HEDWIG                 |
| GREGORY     | SPICE SORORITY              |
| GREGORY     | SPIRIT FLINTSTONES          |
| GREGORY     | SPOILERS HELLFIGHTERS       |
| GREGORY     | STORM HAPPINESS             |
| GREGORY     | SUBMARINE BED               |
| GREGORY     | TROUBLE DATE                |
| GREGORY     | WARDROBE PHANTOM            |
| GREGORY     | WEST LION                   |
| GREGORY     | WHALE BIKINI                |
| GREGORY     | WRONG BEHAVIOR              |
| JOHN        | ALLEY EVOLUTION             |
| JOHN        | BEVERLY OUTLAW              |
| JOHN        | CANDLES GRAPES              |
| JOHN        | CLEOPATRA DEVIL             |
| JOHN        | COLOR PHILADELPHIA          |
| JOHN        | CONQUERER NUTS              |
| JOHN        | DAUGHTER MADIGAN            |
| JOHN        | GLEAMING JAWBREAKER         |
| JOHN        | GOLDMINE TYCOON             |
| JOHN        | HOME PITY                   |
| JOHN        | INTERVIEW LIAISONS          |
| JOHN        | ISHTAR ROCKETEER            |
| JOHN        | JAPANESE RUN                |
| JOHN        | JERSEY SASSY                |
| JOHN        | LUKE MUMMY                  |
| JOHN        | MILLION ACE                 |
| JOHN        | MONSTER SPARTACUS           |
| JOHN        | NAME DETECTIVE              |
| JOHN        | NECKLACE OUTBREAK           |
| JOHN        | NEWSIES STORY               |
| JOHN        | PET HAUNTING                |
| JOHN        | PIANIST OUTFIELD            |
| JOHN        | PINOCCHIO SIMON             |
| JOHN        | PITTSBURGH HUNCHBACK        |
| JOHN        | QUILLS BULL                 |
| JOHN        | RAGING AIRPLANE             |
| JOHN        | ROXANNE REBEL               |
| JOHN        | SATISFACTION CONFIDENTIAL   |
| JOHN        | SONG HEDWIG                 |
| BURT        | ATTACKS HATE                |
| BURT        | BLANKET BEVERLY             |
| BURT        | BUCKET BROTHERHOOD          |
| BURT        | BUTTERFLY CHOCOLAT          |
| BURT        | CAPER MOTIONS               |
| BURT        | CHICAGO NORTH               |
| BURT        | COAST RAINBOW               |
| BURT        | EVOLUTION ALTER             |
| BURT        | GATHERING CALENDAR          |
| BURT        | GILMORE BOILED              |
| BURT        | GRAPES FURY                 |
| BURT        | HEAVYWEIGHTS BEAST          |
| BURT        | INSIDER ARIZONA             |
| BURT        | POLLOCK DELIVERANCE         |
| BURT        | RACER EGG                   |
| BURT        | ROSES TREASURE              |
| BURT        | SLEUTH ORIENT               |
| BURT        | SPIKING ELEMENT             |
| BURT        | SPOILERS HELLFIGHTERS       |
| BURT        | STRAIGHT HOURS              |
| BURT        | VARSITY TRIP                |
| BURT        | WAIT CIDER                  |
| BURT        | WARS PLUTO                  |
| MERYL       | ALABAMA DEVIL               |
| MERYL       | ARTIST COLDBLOODED          |
| MERYL       | BERETS AGENT                |
| MERYL       | BOOGIE AMELIE               |
| MERYL       | BORN SPINAL                 |
| MERYL       | BRIGHT ENCOUNTERS           |
| MERYL       | CHANCE RESURRECTION         |
| MERYL       | CLUE GRAIL                  |
| MERYL       | CLYDE THEORY                |
| MERYL       | DAWN POND                   |
| MERYL       | DIRTY ACE                   |
| MERYL       | GATHERING CALENDAR          |
| MERYL       | HIGH ENCINO                 |
| MERYL       | JET NEIGHBORS               |
| MERYL       | KILLER INNOCENT             |
| MERYL       | LOSE INCH                   |
| MERYL       | RECORDS ZORRO               |
| MERYL       | ROCKETEER MOTHER            |
| MERYL       | SHEPHERD MIDSUMMER          |
| MERYL       | SWEET BROTHERHOOD           |
| MERYL       | VELVET TERMINATOR           |
| MERYL       | VICTORY ACADEMY             |
| JAYNE       | CAUSE DATE                  |
| JAYNE       | CELEBRITY HORN              |
| JAYNE       | CHICAGO NORTH               |
| JAYNE       | CHINATOWN GLADIATOR         |
| JAYNE       | EYES DRIVING                |
| JAYNE       | GLADIATOR WESTWARD          |
| JAYNE       | GLEAMING JAWBREAKER         |
| JAYNE       | HALL CASSIDY                |
| JAYNE       | HARRY IDAHO                 |
| JAYNE       | KARATE MOON                 |
| JAYNE       | LICENSE WEEKEND             |
| JAYNE       | LOUISIANA HARRY             |
| JAYNE       | MARS ROMAN                  |
| JAYNE       | MONSTER SPARTACUS           |
| JAYNE       | OZ LIAISONS                 |
| JAYNE       | PARIS WEEKEND               |
| JAYNE       | PERSONAL LADYBUGS           |
| JAYNE       | PIANIST OUTFIELD            |
| JAYNE       | QUEEN LUKE                  |
| JAYNE       | ROCKETEER MOTHER            |
| JAYNE       | SCHOOL JACKET               |
| JAYNE       | SEVEN SWARM                 |
| JAYNE       | SIDE ARK                    |
| JAYNE       | SMOOCHY CONTROL             |
| JAYNE       | SUSPECTS QUILLS             |
| JAYNE       | TEXAS WATCH                 |
| JAYNE       | WASTELAND DIVINE            |
| BELA        | BEETHOVEN EXORCIST          |
| BELA        | CARRIE BUNCH                |
| BELA        | CLERKS ANGELS               |
| BELA        | COMFORTS RUSH               |
| BELA        | ELEMENT FREDDY              |
| BELA        | ENEMY ODDS                  |
| BELA        | FANTASY TROOPERS            |
| BELA        | FLINTSTONES HAPPINESS       |
| BELA        | HOLLYWOOD ANONYMOUS         |
| BELA        | JACKET FRISCO               |
| BELA        | JERK PAYCHECK               |
| BELA        | LEGALLY SECRETARY           |
| BELA        | LION UNCUT                  |
| BELA        | LUKE MUMMY                  |
| BELA        | MARS ROMAN                  |
| BELA        | MIDSUMMER GROUNDHOG         |
| BELA        | MIGHTY LUCK                 |
| BELA        | MOD SECRETARY               |
| BELA        | NASH CHOCOLAT               |
| BELA        | OKLAHOMA JUMANJI            |
| BELA        | PIZZA JUMANJI               |
| BELA        | SIEGE MADRE                 |
| BELA        | SNATCHERS MONTEZUMA         |
| BELA        | SPLENDOR PATTON             |
| BELA        | STAGE WORLD                 |
| BELA        | TRAMP OTHERS                |
| BELA        | TRAP GUYS                   |
| BELA        | TYCOON GATHERING            |
| BELA        | VERTIGO NORTHWEST           |
| BELA        | WHISPERER GIANT             |
| REESE       | AGENT TRUMAN                |
| REESE       | ANTITRUST TOMATOES          |
| REESE       | BEDAZZLED MARRIED           |
| REESE       | CASABLANCA SUPER            |
| REESE       | CAUSE DATE                  |
| REESE       | CHOCOLAT HARRY              |
| REESE       | COAST RAINBOW               |
| REESE       | CREATURES SHAKESPEARE       |
| REESE       | DOORS PRESIDENT             |
| REESE       | DRACULA CRYSTAL             |
| REESE       | DRUMS DYNAMITE              |
| REESE       | GODFATHER DIARY             |
| REESE       | GOODFELLAS SALUTE           |
| REESE       | GORGEOUS BINGO              |
| REESE       | HOBBIT ALIEN                |
| REESE       | LIFE TWISTED                |
| REESE       | LOSE INCH                   |
| REESE       | MALKOVICH PET               |
| REESE       | MOSQUITO ARMAGEDDON         |
| REESE       | NORTHWEST POLISH            |
| REESE       | POSEIDON FOREVER            |
| REESE       | REMEMBER DIARY              |
| REESE       | ROUGE SQUAD                 |
| REESE       | RUNNER MADIGAN              |
| REESE       | SAINTS BRIDE                |
| REESE       | SCHOOL JACKET               |
| REESE       | SNATCHERS MONTEZUMA         |
| REESE       | TURN STAR                   |
| REESE       | VOLUME HOUSE                |
| REESE       | WEEKEND PERSONAL            |
| REESE       | WILD APOLLO                 |
| REESE       | WITCHES PANIC               |
| REESE       | YENTL IDAHO                 |
| MARY        | ACADEMY DINOSAUR            |
| MARY        | BUTTERFLY CHOCOLAT          |
| MARY        | CASSIDY WYOMING             |
| MARY        | CRAFT OUTFIELD              |
| MARY        | DUMBO LUST                  |
| MARY        | DWARFS ALTER                |
| MARY        | FANTASY TROOPERS            |
| MARY        | FEUD FROGMEN                |
| MARY        | FICTION CHRISTMAS           |
| MARY        | FORREST SONS                |
| MARY        | GAMES BOWFINGER             |
| MARY        | GREEDY ROOTS                |
| MARY        | HANDICAP BOONDOCK           |
| MARY        | HAUNTING PIANIST            |
| MARY        | IDOLS SNATCHERS             |
| MARY        | INTENTIONS EMPIRE           |
| MARY        | JEOPARDY ENCINO             |
| MARY        | KING EVOLUTION              |
| MARY        | LOVELY JINGLE               |
| MARY        | LUKE MUMMY                  |
| MARY        | MADNESS ATTACKS             |
| MARY        | MALLRATS UNITED             |
| MARY        | MEMENTO ZOOLANDER           |
| MARY        | MERMAID INSECTS             |
| MARY        | MODEL FISH                  |
| MARY        | MOONWALKER FOOL             |
| MARY        | NORTHWEST POLISH            |
| MARY        | ROSES TREASURE              |
| MARY        | SAINTS BRIDE                |
| MARY        | SIERRA DIVIDE               |
| MARY        | SLEEPY JAPANESE             |
| MARY        | SOLDIERS EVOLUTION          |
| MARY        | STEEL SANTA                 |
| MARY        | SUBMARINE BED               |
| MARY        | SWEDEN SHINING              |
| MARY        | THEORY MERMAID              |
| MARY        | TITANIC BOONDOCK            |
| MARY        | UNFORGIVEN ZOOLANDER        |
| MARY        | WAGON JAWS                  |
| MARY        | YOUTH KICK                  |
| JULIA       | BERETS AGENT                |
| JULIA       | BOILED DARES                |
| JULIA       | CHISUM BEHAVIOR             |
| JULIA       | CLOSER BANG                 |
| JULIA       | DAY UNFAITHFUL              |
| JULIA       | HOPE TOOTSIE                |
| JULIA       | LUKE MUMMY                  |
| JULIA       | MULAN MOON                  |
| JULIA       | OPUS ICE                    |
| JULIA       | POLLOCK DELIVERANCE         |
| JULIA       | RIDGEMONT SUBMARINE         |
| JULIA       | SHANGHAI TYCOON             |
| JULIA       | SHAWSHANK BUBBLE            |
| JULIA       | THEORY MERMAID              |
| JULIA       | WAIT CIDER                  |
| THORA       | AFRICAN EGG                 |
| THORA       | BADMAN DAWN                 |
| THORA       | BLANKET BEVERLY             |
| THORA       | CANDIDATE PERDITION         |
| THORA       | CAROL TEXAS                 |
| THORA       | CHRISTMAS MOONSHINE         |
| THORA       | GALAXY SWEETHEARTS          |
| THORA       | HOCUS FRIDA                 |
| THORA       | INSIDER ARIZONA             |
| THORA       | INTERVIEW LIAISONS          |
| THORA       | JADE BUNCH                  |
| THORA       | LOVER TRUMAN                |
| THORA       | LOVERBOY ATTACKS            |
| THORA       | MADISON TRAP                |
| THORA       | RANDOM GO                   |
| THORA       | TELEGRAPH VOYAGE            |
| THORA       | TROJAN TOMORROW             |
| THORA       | VIRGINIAN PLUTO             |
| THORA       | WARDROBE PHANTOM            |
| THORA       | WRONG BEHAVIOR              |
+-------------+-----------------------------+
```

#### Mostrar el nombre de la película y el de sus categorías.

```sql
select c.name,f.title from category as c join film_category as fc on c.category_id=fc.category_id join film as f on f.film_id=fc.film_id Limit 20;
+--------+---------------------+
| name   | title               |
+--------+---------------------+
| Action | AMADEUS HOLY        |
| Action | AMERICAN CIRCUS     |
| Action | ANTITRUST TOMATOES  |
| Action | ARK RIDGEMONT       |
| Action | BAREFOOT MANCHURIAN |
| Action | BERETS AGENT        |
| Action | BRIDE INTRIGUE      |
| Action | BULL SHAWSHANK      |
| Action | CADDYSHACK JEDI     |
| Action | CAMPUS REMEMBER     |
| Action | CASUALTIES ENCINO   |
| Action | CELEBRITY HORN      |
| Action | CLUELESS BUCKET     |
| Action | CROW GREASE         |
| Action | DANCES NONE         |
| Action | DARKO DORADO        |
| Action | DARN FORRESTER      |
| Action | DEVIL DESIRE        |
| Action | DRAGON SQUAD        |
| Action | DREAM PICKUP        |
+--------+---------------------+

```

#### Mostrar el country, la ciudad y dirección de cada miembro del staff.

```sql
select c.country, ci.city, a.address, s.staff_id, s.first_name, s.last_name from country as c join city as ci on ci.country_id=c.country_id join address as a on a.city_id=ci.city_id join staff as s on a.address_id=s.address_id;
+-----------+------------+----------------------+----------+------------+-----------+
| country   | city       | address              | staff_id | first_name | last_name |
+-----------+------------+----------------------+----------+------------+-----------+
| Canada    | Lethbridge | 23 Workhaven Lane    |        1 | Mike       | Hillyer   |
| Australia | Woodridge  | 1411 Lillydale Drive |        2 | Jon        | Stephens  |
+-----------+------------+----------------------+----------+------------+-----------+
```

#### Mostrar el country, la ciudad y dirección de cada customer.

```sql
select c.country, ci.city, a.address, cu.first_name, cu.last_name, cu.customer_id from country as c join city as ci on ci.country_id=c.country_id join address as a on a.city_id=ci.city_id join customer as cu on a.address_id=cu.address_id order by cu.customer_id;
+---------------------------------------+----------------------------+----------------------------------------+-------------+--------------+-------------+
| country                               | city                       | address                                | first_name  | last_name    | customer_id |
+---------------------------------------+----------------------------+----------------------------------------+-------------+--------------+-------------+
| Japan                                 | Sasebo                     | 1913 Hanoi Way                         | MARY        | SMITH        |           1 |
| United States                         | San Bernardino             | 1121 Loja Avenue                       | PATRICIA    | JOHNSON      |           2 |
| Greece                                | Athenai                    | 692 Joliet Street                      | LINDA       | WILLIAMS     |           3 |
| Myanmar                               | Myingyan                   | 1566 Inegöl Manor                      | BARBARA     | JONES        |           4 |
| Taiwan                                | Nantou                     | 53 Idfu Parkway                        | ELIZABETH   | BROWN        |           5 |
| United States                         | Laredo                     | 1795 Santiago de Compostela Way        | JENNIFER    | DAVIS        |           6 |
| Yugoslavia                            | Kragujevac                 | 900 Santiago de Compostela Parkway     | MARIA       | MILLER       |           7 |
| New Zealand                           | Hamilton                   | 478 Joliet Way                         | SUSAN       | WILSON       |           8 |
| Oman                                  | Masqat                     | 613 Korolev Drive                      | MARGARET    | MOORE        |           9 |
| Iran                                  | Esfahan                    | 1531 Salé Drive                        | DOROTHY     | TAYLOR       |          10 |
| Japan                                 | Sagamihara                 | 1542 Tarlac Parkway                    | LISA        | ANDERSON     |          11 |
| India                                 | Yamuna Nagar               | 808 Bhopal Manor                       | NANCY       | THOMAS       |          12 |
| Turkey                                | Osmaniye                   | 270 Amroha Parkway                     | KAREN       | JACKSON      |          13 |
| United States                         | Citrus Heights             | 770 Bydgoszcz Avenue                   | BETTY       | WHITE        |          14 |
| India                                 | Bhopal                     | 419 Iligan Lane                        | HELEN       | HARRIS       |          15 |
| United Kingdom                        | Southend-on-Sea            | 360 Toulouse Parkway                   | SANDRA      | MARTIN       |          16 |
| Russian Federation                    | Elista                     | 270 Toulon Boulevard                   | DONNA       | THOMPSON     |          17 |
| Nigeria                               | Kaduna                     | 320 Brest Avenue                       | CAROL       | GARCIA       |          18 |
| South Africa                          | Kimberley                  | 1417 Lancaster Avenue                  | RUTH        | MARTINEZ     |          19 |
| Pakistan                              | Mardan                     | 1688 Okara Way                         | SHARON      | ROBINSON     |          20 |
| Bangladesh                            | Tangail                    | 262 A Coruña (La Coruña) Parkway       | MICHELLE    | CLARK        |          21 |
| Morocco                               | Salé                       | 28 Charlotte Amalie Street             | LAURA       | RODRIGUEZ    |          22 |
| Latvia                                | Liepaja                    | 1780 Hino Boulevard                    | SARAH       | LEWIS        |          23 |
| Argentina                             | Córdoba                    | 96 Tafuna Way                          | KIMBERLY    | LEE          |          24 |
| Pakistan                              | Shikarpur                  | 934 San Felipe de Puerto Plata Street  | DEBORAH     | WALKER       |          25 |
| Holy See (Vatican City State)         | Città del Vaticano         | 18 Duisburg Boulevard                  | JESSICA     | HALL         |          26 |
| Philippines                           | Davao                      | 217 Botshabelo Place                   | SHIRLEY     | ALLEN        |          27 |
| India                                 | Munger (Monghyr)           | 1425 Shikarpur Manor                   | CYNTHIA     | YOUNG        |          28 |
| Japan                                 | Shimonoseki                | 786 Aurora Avenue                      | ANGELA      | HERNANDEZ    |          29 |
| Taiwan                                | Lungtan                    | 1668 Anápolis Street                   | MELISSA     | KING         |          30 |
| India                                 | Kamarhati                  | 33 Gorontalo Way                       | BRENDA      | WRIGHT       |          31 |
| India                                 | Jhansi                     | 176 Mandaluyong Place                  | AMY         | LOPEZ        |          32 |
| Italy                                 | Alessandria                | 127 Purnea (Purnia) Manor              | ANNA        | HILL         |          33 |
| Japan                                 | Kurashiki                  | 61 Tama Street                         | REBECCA     | SCOTT        |          34 |
| France                                | Toulouse                   | 391 Callao Drive                       | VIRGINIA    | GREEN        |          35 |
| Iran                                  | Arak                       | 334 Munger (Monghyr) Lane              | KATHLEEN    | ADAMS        |          36 |
| China                                 | Nanyang                    | 1440 Fukuyama Loop                     | PAMELA      | BAKER        |          37 |
| Moldova                               | Chisinau                   | 269 Cam Ranh Parkway                   | MARTHA      | GONZALEZ     |          38 |
| Brazil                                | Vila Velha                 | 306 Antofagasta Place                  | DEBRA       | NELSON       |          39 |
| Morocco                               | Nador                      | 671 Graz Street                        | AMANDA      | CARTER       |          40 |
| Armenia                               | Yerevan                    | 42 Brindisi Place                      | STEPHANIE   | MITCHELL     |          41 |
| Thailand                              | Pak Kret                   | 1632 Bislig Avenue                     | CAROLYN     | PEREZ        |          42 |
| French Polynesia                      | Faaa                       | 1447 Imus Way                          | CHRISTINE   | ROBERTS      |          43 |
| Russian Federation                    | Lipetsk                    | 1998 Halifax Drive                     | MARIE       | TURNER       |          44 |
| Chile                                 | Antofagasta                | 1718 Valencia Street                   | JANET       | PHILLIPS     |          45 |
| Russian Federation                    | Moscow                     | 46 Pjatigorsk Lane                     | CATHERINE   | CAMPBELL     |          46 |
| Brazil                                | Juazeiro do Norte          | 686 Garland Manor                      | FRANCES     | PARKER       |          47 |
| Russian Federation                    | Niznekamsk                 | 909 Garland Manor                      | ANN         | EVANS        |          48 |
| Saudi Arabia                          | Jedda                      | 725 Isesaki Place                      | JOYCE       | EDWARDS      |          49 |
| Sudan                                 | Omdurman                   | 115 Hidalgo Parkway                    | DIANE       | COLLINS      |          50 |
| United States                         | Fontana                    | 1135 Izumisano Parkway                 | ALICE       | STEWART      |          51 |
| Spain                                 | A Coruña (La Coruña)       | 939 Probolinggo Loop                   | JULIE       | SANCHEZ      |          52 |
| Japan                                 | Nagareyama                 | 17 Kabul Boulevard                     | HEATHER     | MORRIS       |          53 |
| Japan                                 | Iwakuni                    | 1964 Allappuzha (Alleppey) Street      | TERESA      | ROGERS       |          54 |
| Russian Federation                    | Balašiha                   | 1697 Kowloon and New Kowloon Loop      | DORIS       | REED         |          55 |
| French Polynesia                      | Papeete                    | 1668 Saint Louis Place                 | GLORIA      | COOK         |          56 |
| Liechtenstein                         | Vaduz                      | 943 Tokat Street                       | EVELYN      | MORGAN       |          57 |
| Malaysia                              | Kuching                    | 1114 Liepaja Street                    | JEAN        | BELL         |          58 |
| India                                 | Mysore                     | 1213 Ranchi Parkway                    | CHERYL      | MURPHY       |          59 |
| India                                 | Jaipur                     | 81 Hodeida Way                         | MILDRED     | BAILEY       |          60 |
| Switzerland                           | Basel                      | 915 Ponce Place                        | KATHERINE   | RIVERA       |          61 |
| United States                         | Saint Louis                | 1717 Guadalajara Lane                  | JOAN        | COOPER       |          62 |
| United States                         | Lincoln                    | 1214 Hanoi Way                         | ASHLEY      | RICHARDSON   |          63 |
| China                                 | Daxian                     | 1966 Amroha Avenue                     | JUDITH      | COX          |          64 |
| French Guiana                         | Cayenne                    | 698 Otsu Street                        | ROSE        | HOWARD       |          65 |
| Sweden                                | Malmö                      | 1150 Kimchon Manor                     | JANICE      | WARD         |          66 |
| China                                 | Xi´angtan                  | 1586 Guarujá Place                     | KELLY       | TORRES       |          67 |
| India                                 | Shivapuri                  | 57 Arlington Manor                     | NICOLE      | PETERSON     |          68 |
| Algeria                               | Béchar                     | 1031 Daugavpils Parkway                | JUDY        | GRAY         |          69 |
| Saudi Arabia                          | al-Hawiya                  | 1124 Buenaventura Drive                | CHRISTINA   | RAMIREZ      |          70 |
| Philippines                           | Baybay                     | 492 Cam Ranh Street                    | KATHY       | JAMES        |          71 |
| Philippines                           | Taguig                     | 89 Allappuzha (Alleppey) Manor         | THERESA     | WATSON       |          72 |
| Taiwan                                | Chiayi                     | 1947 Poços de Caldas Boulevard         | BEVERLY     | BROOKS       |          73 |
| Brazil                                | Rio Claro                  | 1206 Dos Quebradas Place               | DENISE      | KELLY        |          74 |
| Taiwan                                | Changhwa                   | 1551 Rampur Lane                       | TAMMY       | SANDERS      |          75 |
| Kazakstan                             | Pavlodar                   | 602 Paarl Street                       | IRENE       | PRICE        |          76 |
| Brazil                                | Araçatuba                  | 1692 Ede Loop                          | JANE        | BENNETT      |          77 |
| India                                 | Rae Bareli                 | 936 Salzburg Lane                      | LORI        | WOOD         |          78 |
| Japan                                 | Kamakura                   | 586 Tete Way                           | RACHEL      | BARNES       |          79 |
| Nigeria                               | Ife                        | 1888 Kabul Drive                       | MARILYN     | ROSS         |          80 |
| Madagascar                            | Mahajanga                  | 320 Baiyin Parkway                     | ANDREA      | HENDERSON    |          81 |
| Ukraine                               | Simferopol                 | 927 Bahía Blanca Parkway               | KATHRYN     | COLEMAN      |          82 |
| South Africa                          | Springs                    | 929 Tallahassee Loop                   | LOUISE      | JENKINS      |          83 |
| Mexico                                | Atlixco                    | 125 Città del Vaticano Boulevard       | SARA        | PERRY        |          84 |
| United Kingdom                        | Bradford                   | 1557 Kütahya Boulevard                 | ANNE        | POWELL       |          85 |
| Thailand                              | Songkhla                   | 870 Ashqelon Loop                      | JACQUELINE  | LONG         |          86 |
| Colombia                              | Sincelejo                  | 1740 Portoviejo Avenue                 | WANDA       | PATTERSON    |          87 |
| South Korea                           | Cheju                      | 1942 Ciparay Parkway                   | BONNIE      | HUGHES       |          88 |
| Argentina                             | La Plata                   | 1926 El Alto Avenue                    | JULIA       | FLORES       |          89 |
| China                                 | Meixian                    | 1952 Chatsworth Drive                  | RUBY        | WASHINGTON   |          90 |
| Brunei                                | Bandar Seri Begawan        | 1370 Le Mans Avenue                    | LOIS        | BUTLER       |          91 |
| Brazil                                | Goiânia                    | 984 Effon-Alaiye Avenue                | TINA        | SIMMONS      |          92 |
| China                                 | Zalantun                   | 832 Nakhon Sawan Manor                 | PHYLLIS     | FOSTER       |          93 |
| Philippines                           | Bislig                     | 152 Kitwe Parkway                      | NORMA       | GONZALES     |          94 |
| India                                 | Pathankot                  | 1697 Tanauan Lane                      | PAULA       | BRYANT       |          95 |
| United States                         | Augusta-Richmond County    | 1308 Arecibo Way                       | DIANA       | ALEXANDER    |          96 |
| Mozambique                            | Tete                       | 1599 Plock Drive                       | ANNIE       | RUSSELL      |          97 |
| United Arab Emirates                  | al-Ayn                     | 669 Firozabad Loop                     | LILLIAN     | GRIFFIN      |          98 |
| South Korea                           | Kimchon                    | 588 Vila Velha Manor                   | EMILY       | DIAZ         |          99 |
| Russian Federation                    | Jelets                     | 1913 Kamakura Place                    | ROBIN       | HAYES        |         100 |
| Saudi Arabia                          | Abha                       | 733 Mandaluyong Place                  | PEGGY       | MYERS        |         101 |
| Israel                                | Ashdod                     | 659 Vaduz Drive                        | CRYSTAL     | FORD         |         102 |
| Nigeria                               | Ilorin                     | 1177 Jelets Way                        | GLADYS      | HAMILTON     |         103 |
| France                                | Toulon                     | 1386 Yangor Avenue                     | RITA        | GRAHAM       |         104 |
| Tuvalu                                | Funafuti                   | 454 Nakhon Sawan Boulevard             | DAWN        | SULLIVAN     |         105 |
| Russian Federation                    | Ivanovo                    | 1867 San Juan Bautista Tuxtepec Avenue | CONNIE      | WALLACE      |         106 |
| Argentina                             | Merlo                      | 1532 Dzerzinsk Way                     | FLORENCE    | WOODS        |         107 |
| Mexico                                | Huixquilucan               | 1002 Ahmadnagar Manor                  | TRACY       | COLE         |         108 |
| South Africa                          | Klerksdorp                 | 682 Junan Way                          | EDNA        | WEST         |         109 |
| China                                 | Enshi                      | 804 Elista Drive                       | TIFFANY     | JORDAN       |         110 |
| Venezuela                             | Caracas                    | 1378 Alvorada Avenue                   | CARMEN      | OWENS        |         111 |
| United States                         | Lancaster                  | 793 Cam Ranh Avenue                    | ROSA        | REYNOLDS     |         112 |
| Venezuela                             | Cumaná                     | 1079 Tel Aviv-Jaffa Boulevard          | CINDY       | FISHER       |         113 |
| Germany                               | Duisburg                   | 442 Rae Bareli Place                   | GRACE       | ELLIS        |         114 |
| Mexico                                | Nezahualcóyotl             | 1107 Nakhon Sawan Avenue               | WENDY       | HARRISON     |         115 |
| Indonesia                             | Pemalang                   | 544 Malmö Parkway                      | VICTORIA    | GIBSON       |         116 |
| India                                 | Gandhinagar                | 1967 Sincelejo Place                   | EDITH       | MCDONALD     |         117 |
| United States                         | Grand Prairie              | 333 Goiânia Way                        | KIM         | CRUZ         |         118 |
| Egypt                                 | Shubra al-Khayma           | 1987 Coacalco de Berriozábal Loop      | SHERRY      | MARSHALL     |         119 |
| Colombia                              | Dos Quebradas              | 241 Mosul Lane                         | SYLVIA      | ORTIZ        |         120 |
| India                                 | Etawah                     | 211 Chiayi Drive                       | JOSEPHINE   | GOMEZ        |         121 |
| Peru                                  | Lima                       | 1175 Tanauan Way                       | THELMA      | MURRAY       |         122 |
| India                                 | Varanasi (Benares)         | 117 Boa Vista Way                      | SHANNON     | FREEMAN      |         123 |
| Turkey                                | Kütahya                    | 848 Tafuna Manor                       | SHEILA      | WELLS        |         124 |
| South Africa                          | Boksburg                   | 569 Baicheng Lane                      | ETHEL       | WEBB         |         125 |
| Brazil                                | Poá                        | 1666 Qomsheh Drive                     | ELLEN       | SIMPSON      |         126 |
| Russian Federation                    | Smolensk                   | 801 Hagonoy Drive                      | ELAINE      | STEVENS      |         127 |
| Poland                                | Jastrzebie-Zdrój           | 1050 Garden Grove Avenue               | MARJORIE    | TUCKER       |         128 |
| China                                 | Liaocheng                  | 1854 Tieli Street                      | CARRIE      | PORTER       |         129 |
| Brazil                                | Águas Lindas de Goiás      | 758 Junan Lane                         | CHARLOTTE   | HUNTER       |         130 |
| Ukraine                               | Mukatševe                  | 1752 São Leopoldo Parkway              | MONICA      | HICKS        |         131 |
| South Africa                          | Botshabelo                 | 898 Belém Manor                        | ESTHER      | CRAWFORD     |         132 |
| Mexico                                | Torreón                    | 261 Saint Louis Way                    | PAULINE     | HENRY        |         133 |
| Egypt                                 | Qalyub                     | 765 Southampton Drive                  | EMMA        | BOYD         |         134 |
| India                                 | Pune                       | 943 Johannesburg Avenue                | JUANITA     | MASON        |         135 |
| India                                 | Hubli-Dharwad              | 788 Atšinsk Street                     | ANITA       | MORALES      |         136 |
| Netherlands                           | Apeldoorn                  | 1749 Daxian Place                      | RHONDA      | KENNEDY      |         137 |
| China                                 | Hohhot                     | 1587 Sullana Lane                      | HAZEL       | WARREN       |         138 |
| Taiwan                                | Touliu                     | 1029 Dzerzinsk Manor                   | AMBER       | DIXON        |         139 |
| United States                         | Clarksville                | 1666 Beni-Mellal Place                 | EVA         | RAMOS        |         140 |
| Japan                                 | Fukuyama                   | 928 Jaffna Loop                        | DEBBIE      | REYES        |         141 |
| United Kingdom                        | Dundee                     | 483 Ljubertsy Parkway                  | APRIL       | BURNS        |         142 |
| Turkey                                | Kilis                      | 374 Bat Yam Boulevard                  | LESLIE      | GORDON       |         143 |
| Belarus                               | Molodetšno                 | 1027 Songkhla Manor                    | CLARA       | SHAW         |         144 |
| South Africa                          | Soshanguve                 | 999 Sanaa Loop                         | LUCILLE     | HOLMES       |         145 |
| United States                         | Sterling Heights           | 879 Newcastle Way                      | JAMIE       | RICE         |         146 |
| Japan                                 | Urawa                      | 1337 Lincoln Parkway                   | JOANNE      | ROBERTSON    |         147 |
| Réunion                               | Saint-Denis                | 1952 Pune Lane                         | ELEANOR     | HUNT         |         148 |
| United States                         | Brockton                   | 782 Mosul Street                       | VALERIE     | BLACK        |         149 |
| Mexico                                | Hidalgo                    | 781 Shimonoseki Drive                  | DANIELLE    | DANIELS      |         150 |
| China                                 | Laiwu                      | 1560 Jelets Boulevard                  | MEGAN       | PALMER       |         151 |
| India                                 | Nagaon                     | 1963 Moscow Place                      | ALICIA      | MILLS        |         152 |
| Indonesia                             | Jakarta                    | 456 Escobar Way                        | SUZANNE     | NICHOLS      |         153 |
| China                                 | Yuncheng                   | 798 Cianjur Avenue                     | MICHELE     | GRANT        |         154 |
| Switzerland                           | Bern                       | 185 Novi Sad Place                     | GAIL        | KNIGHT       |         155 |
| Nigeria                               | Ondo                       | 1367 Yantai Manor                      | BERTHA      | FERGUSON     |         156 |
| North Korea                           | Pyongyang                  | 1386 Nakhon Sawan Boulevard            | DARLENE     | ROSE         |         157 |
| United States                         | Greensboro                 | 369 Papeete Way                        | VERONICA    | STONE        |         158 |
| Austria                               | Linz                       | 1440 Compton Place                     | JILL        | HAWKINS      |         159 |
| Russian Federation                    | Ljubertsy                  | 1623 Bahía Blanca Manor                | ERIN        | DUNN         |         160 |
| Israel                                | Tel Aviv-Jaffa             | 97 Shimoga Avenue                      | GERALDINE   | PERKINS      |         161 |
| France                                | Le Mans                    | 1740 Le Mans Loop                      | LAUREN      | HUDSON       |         162 |
| Japan                                 | Kakamigahara               | 1287 Xi´angfan Boulevard               | CATHY       | SPENCER      |         163 |
| Turkey                                | Tarsus                     | 842 Salzburg Lane                      | JOANN       | GARDNER      |         164 |
| China                                 | Hami                       | 154 Tallahassee Loop                   | LORRAINE    | STEPHENS     |         165 |
| Malawi                                | Lilongwe                   | 710 San Felipe del Progreso Avenue     | LYNN        | PAYNE        |         166 |
| India                                 | Chandrapur                 | 1540 Wroclaw Drive                     | SALLY       | PIERCE       |         167 |
| China                                 | Jinchang                   | 475 Atšinsk Way                        | REGINA      | BERRY        |         168 |
| China                                 | Pingxiang                  | 1294 Firozabad Drive                   | ERICA       | MATTHEWS     |         169 |
| India                                 | Udaipur                    | 1877 Ezhou Lane                        | BEATRICE    | ARNOLD       |         170 |
| Malaysia                              | Ipoh                       | 316 Uruapan Street                     | DOLORES     | WAGNER       |         171 |
| Turkey                                | Batman                     | 29 Pyongyang Loop                      | BERNICE     | WILLIS       |         172 |
| Austria                               | Graz                       | 1010 Klerksdorp Way                    | AUDREY      | RAY          |         173 |
| Venezuela                             | Ocumare del Tuy            | 1848 Salala Boulevard                  | YVONNE      | WATKINS      |         174 |
| India                                 | Allappuzha (Alleppey)      | 431 Xi´angtan Avenue                   | ANNETTE     | OLSON        |         175 |
| Algeria                               | Skikda                     | 757 Rustenburg Avenue                  | JUNE        | CARROLL      |         176 |
| Mexico                                | Matamoros                  | 146 Johannesburg Way                   | SAMANTHA    | DUNCAN       |         177 |
| Brazil                                | Santa Bárbara d´Oeste      | 1891 Rizhao Boulevard                  | MARION      | SNYDER       |         178 |
| Russian Federation                    | Kirovo-Tšepetsk            | 1089 Iwatsuki Avenue                   | DANA        | HART         |         179 |
| Colombia                              | Pereira                    | 1410 Benin City Parkway                | STACY       | CUNNINGHAM   |         180 |
| United States                         | Memphis                    | 682 Garden Grove Place                 | ANA         | BRADLEY      |         181 |
| United States                         | Compton                    | 533 al-Ayn Boulevard                   | RENEE       | LANE         |         182 |
| Brazil                                | Luziânia                   | 1839 Székesfehérvár Parkway            | IDA         | ANDREWS      |         183 |
| Netherlands                           | ´s-Hertogenbosch           | 741 Ambattur Manor                     | VIVIAN      | RUIZ         |         184 |
| Iran                                  | Shahr-e Kord               | 927 Barcelona Street                   | ROBERTA     | HARPER       |         185 |
| India                                 | Haldia                     | 435 0 Way                              | HOLLY       | FOX          |         186 |
| Ukraine                               | Sumy                       | 140 Chiayi Parkway                     | BRITTANY    | RILEY        |         187 |
| Philippines                           | Bayugan                    | 1166 Changhwa Street                   | MELANIE     | ARMSTRONG    |         188 |
| Canada                                | Oshawa                     | 891 Novi Sad Manor                     | LORETTA     | CARPENTER    |         189 |
| Tanzania                              | Tabora                     | 605 Rio Claro Parkway                  | YOLANDA     | WEAVER       |         190 |
| Russian Federation                    | Novotšerkassk              | 1077 San Felipe de Puerto Plata Place  | JEANETTE    | GREENE       |         191 |
| India                                 | Firozabad                  | 9 San Miguel de Tucumán Manor          | LAURIE      | LAWRENCE     |         192 |
| Kenya                                 | Kisumu                     | 447 Surakarta Loop                     | KATIE       | ELLIOTT      |         193 |
| Japan                                 | Hino                       | 345 Oshawa Boulevard                   | KRISTEN     | CHAVEZ       |         194 |
| Germany                               | Siegen                     | 1792 Valle de la Pascua Place          | VANESSA     | SIMS         |         195 |
| Germany                               | Mannheim                   | 1074 Binzhou Manor                     | ALMA        | AUSTIN       |         196 |
| China                                 | Changzhou                  | 817 Bradford Loop                      | SUE         | PETERS       |         197 |
| Nigeria                               | Ikerre                     | 955 Bamenda Way                        | ELSIE       | KELLEY       |         198 |
| Vietnam                               | Haiphong                   | 1149 A Coruña (La Coruña) Boulevard    | BETH        | FRANKLIN     |         199 |
| Turkmenistan                          | Ashgabat                   | 387 Mwene-Ditu Drive                   | JEANNE      | LAWSON       |         200 |
| Germany                               | Witten                     | 68 Molodetšno Manor                    | VICKI       | FIELDS       |         201 |
| India                                 | Bhusawal                   | 642 Nador Drive                        | CARLA       | GUTIERREZ    |         202 |
| Indonesia                             | Gorontalo                  | 1688 Nador Lane                        | TARA        | RYAN         |         203 |
| Turkey                                | Usak                       | 1215 Pyongyang Parkway                 | ROSEMARY    | SCHMIDT      |         204 |
| Paraguay                              | Ciudad del Este            | 1679 Antofagasta Street                | EILEEN      | CARR         |         205 |
| Brazil                                | Blumenau                   | 1304 ´s-Hertogenbosch Way              | TERRI       | VASQUEZ      |         206 |
| Greenland                             | Nuuk                       | 850 Salala Loop                        | GERTRUDE    | CASTILLO     |         207 |
| India                                 | Balurghat                  | 624 Oshawa Boulevard                   | LUCY        | WHEELER      |         208 |
| India                                 | Bhilwara                   | 43 Dadu Avenue                         | TONYA       | CHAPMAN      |         209 |
| Yemen                                 | Aden                       | 751 Lima Loop                          | ELLA        | OLIVER       |         210 |
| China                                 | Fuyu                       | 1333 Haldia Street                     | STACEY      | MONTGOMERY   |         211 |
| United States                         | Bellevue                   | 660 Jedda Boulevard                    | WILMA       | RICHARDS     |         212 |
| Yemen                                 | Taizz                      | 1001 Miyakonojo Lane                   | GINA        | WILLIAMSON   |         213 |
| United States                         | Sunnyvale                  | 226 Brest Manor                        | KRISTIN     | JOHNSTON     |         214 |
| Bulgaria                              | Stara Zagora               | 1229 Valencia Parkway                  | JESSIE      | BANKS        |         215 |
| Brazil                                | Aparecida de Goiânia       | 1201 Qomsheh Manor                     | NATALIE     | MEYER        |         216 |
| India                                 | Sambhal                    | 866 Shivapuri Manor                    | AGNES       | BISHOP       |         217 |
| Afghanistan                           | Kabul                      | 1168 Najafabad Parkway                 | VERA        | MCCOY        |         218 |
| Argentina                             | Vicente López              | 1244 Allappuzha (Alleppey) Place       | WILLIE      | HOWELL       |         219 |
| Tanzania                              | Zanzibar                   | 1842 Luziânia Boulevard                | CHARLENE    | ALVAREZ      |         220 |
| Italy                                 | Syrakusa                   | 1926 Gingoog Street                    | BESSIE      | MORRISON     |         221 |
| Russian Federation                    | Jaroslavl                  | 810 Palghat (Palakkad) Boulevard       | DELORES     | HANSEN       |         222 |
| Pakistan                              | Mandi Bahauddin            | 1820 Maringá Parkway                   | MELINDA     | FERNANDEZ    |         223 |
| India                                 | Jodhpur                    | 60 Poços de Caldas Street              | PEARL       | GARZA        |         224 |
| India                                 | Ambattur                   | 1014 Loja Manor                        | ARLENE      | HARVEY       |         225 |
| Paraguay                              | Asunción                   | 201 Effon-Alaiye Way                   | MAUREEN     | LITTLE       |         226 |
| Germany                               | Saarbrücken                | 430 Alessandria Loop                   | COLLEEN     | BURTON       |         227 |
| Cambodia                              | Phnom Penh                 | 754 Valencia Place                     | ALLISON     | STANLEY      |         228 |
| Brazil                                | Anápolis                   | 356 Olomouc Manor                      | TAMARA      | NGUYEN       |         229 |
| Romania                               | Botosani                   | 1256 Bislig Boulevard                  | JOY         | GEORGE       |         230 |
| India                                 | Uttarpara-Kotrung          | 954 Kimchon Place                      | GEORGIA     | JACOBS       |         231 |
| Nigeria                               | Zaria                      | 885 Yingkou Manor                      | CONSTANCE   | REID         |         232 |
| Egypt                                 | Idfu                       | 1736 Cavite Place                      | LILLIE      | KIM          |         233 |
| Kuwait                                | Jalib al-Shuyukh           | 346 Skikda Parkway                     | CLAUDIA     | FULLER       |         234 |
| Colombia                              | Buenaventura               | 98 Stara Zagora Boulevard              | JACKIE      | LYNCH        |         235 |
| Philippines                           | Tanza                      | 1479 Rustenburg Boulevard              | MARCIA      | DEAN         |         236 |
| South Korea                           | Naju                       | 647 A Coruña (La Coruña) Street        | TANYA       | GILBERT      |         237 |
| India                                 | Shimoga                    | 1964 Gijón Manor                       | NELLIE      | GARRETT      |         238 |
| Indonesia                             | Ciomas                     | 47 Syktyvkar Lane                      | MINNIE      | ROMERO       |         239 |
| Japan                                 | Iwaki                      | 1148 Saarbrücken Parkway               | MARLENE     | WELCH        |         240 |
| China                                 | Xi´angfan                  | 1103 Bilbays Parkway                   | HEIDI       | LARSON       |         241 |
| China                                 | Qinhuangdao                | 1246 Boksburg Parkway                  | GLENDA      | FRAZIER      |         242 |
| Argentina                             | San Miguel de Tucumán      | 1483 Pathankot Street                  | LYDIA       | BURKE        |         243 |
| Philippines                           | Lapu-Lapu                  | 582 Papeete Loop                       | VIOLA       | HANSON       |         244 |
| South Korea                           | Uijongbu                   | 300 Junan Street                       | COURTNEY    | DAY          |         245 |
| Brazil                                | Maringá                    | 829 Grand Prairie Way                  | MARIAN      | MENDOZA      |         246 |
| Mexico                                | Coacalco de Berriozábal    | 1473 Changhwa Parkway                  | STELLA      | MORENO       |         247 |
| United States                         | Tallahassee                | 1309 Weifang Street                    | CAROLINE    | BOWMAN       |         248 |
| China                                 | Tianjin                    | 1760 Oshawa Manor                      | DORA        | MEDINA       |         249 |
| Nigeria                               | Oyo                        | 786 Stara Zagora Way                   | JO          | FOWLER       |         250 |
| Germany                               | Halle/Saale                | 1966 Tonghae Street                    | VICKIE      | BREWER       |         251 |
| United Kingdom                        | London                     | 1497 Yuzhou Drive                      | MATTIE      | HOFFMAN      |         252 |
| Japan                                 | Miyakonojo                 | 752 Ondo Loop                          | TERRY       | CARLSON      |         253 |
| Brazil                                | Poços de Caldas            | 1338 Zalantun Lane                     | MAXINE      | SILVA        |         254 |
| Philippines                           | Hagonoy                    | 127 Iwakuni Boulevard                  | IRMA        | PEARSON      |         255 |
| Myanmar                               | Monywa                     | 51 Laredo Avenue                       | MABEL       | HOLLAND      |         256 |
| Mozambique                            | Beira                      | 771 Yaoundé Manor                      | MARSHA      | DOUGLAS      |         257 |
| Dominican Republic                    | Santiago de los Caballeros | 532 Toulon Street                      | MYRTLE      | FLEMING      |         258 |
| India                                 | Halisahar                  | 1027 Banjul Place                      | LENA        | JENSEN       |         259 |
| China                                 | Datong                     | 1158 Mandi Bahauddin Parkway           | CHRISTY     | VARGAS       |         260 |
| Philippines                           | Tuguegarao                 | 862 Xintai Lane                        | DEANNA      | BYRD         |         261 |
| Ecuador                               | Portoviejo                 | 816 Cayenne Parkway                    | PATSY       | DAVIDSON     |         262 |
| Philippines                           | Mandaluyong                | 1831 Nam Dinh Loop                     | HILDA       | HOPKINS      |         263 |
| Japan                                 | Higashiosaka               | 446 Kirovo-Tšepetsk Lane               | GWENDOLYN   | MAY          |         264 |
| Czech Republic                        | Olomouc                    | 682 Halisahar Place                    | JENNIE      | TERRY        |         265 |
| Austria                               | Salzburg                   | 1587 Loja Manor                        | NORA        | HERRERA      |         266 |
| China                                 | Lengshuijiang              | 1762 Paarl Parkway                     | MARGIE      | WADE         |         267 |
| India                                 | Palghat (Palakkad)         | 1519 Ilorin Place                      | NINA        | SOTO         |         268 |
| United States                         | Salinas                    | 920 Kumbakonam Loop                    | CASSANDRA   | WALTERS      |         269 |
| Poland                                | Kalisz                     | 906 Goiânia Way                        | LEAH        | CURTIS       |         270 |
| India                                 | Kumbakonam                 | 1675 Xi´angfan Manor                   | PENNY       | NEAL         |         271 |
| China                                 | Yantai                     | 85 San Felipe de Puerto Plata Drive    | KAY         | CALDWELL     |         272 |
| Mexico                                | Salamanca                  | 144 South Hill Loop                    | PRISCILLA   | LOWE         |         273 |
| India                                 | Karnal                     | 1884 Shikarpur Avenue                  | NAOMI       | JENNINGS     |         274 |
| United States                         | Peoria                     | 1980 Kamjanets-Podilskyi Street        | CAROLE      | BARNETT      |         275 |
| United States                         | Warren                     | 1944 Bamenda Way                       | BRANDY      | GRAVES       |         276 |
| Nigeria                               | Ogbomosho                  | 556 Baybay Manor                       | OLGA        | JIMENEZ      |         277 |
| Turkey                                | Inegöl                     | 457 Tongliao Loop                      | BILLIE      | HORTON       |         278 |
| Iran                                  | Tabriz                     | 600 Bradford Street                    | DIANNE      | SHELTON      |         279 |
| Nigeria                               | Owo                        | 1006 Santa Bárbara d´Oeste Manor       | TRACEY      | BARRETT      |         280 |
| China                                 | Fuzhou                     | 1308 Sumy Loop                         | LEONA       | OBRIEN       |         281 |
| Puerto Rico                           | Ponce                      | 1405 Chisinau Place                    | JENNY       | CASTRO       |         282 |
| China                                 | Korla                      | 226 Halifax Street                     | FELICIA     | SUTTON       |         283 |
| Nigeria                               | Benin City                 | 1279 Udine Parkway                     | SONIA       | GREGORY      |         284 |
+---------------------------------------+----------------------------+----------------------------------------+-------------+--------------+-------------+
```

#### Numero de películas de cada rating

```sql
select rating, count(film_id) as cantidad from film group by rating;
+--------+----------+
| rating | cantidad |
+--------+----------+
| PG     |      194 |
| G      |      178 |
| NC-17  |      210 |
| PG-13  |      223 |
| R      |      195 |
+--------+----------+
```

#### Cuantas películas ha realizado el actor ED CHASE.

```sql
select count(f.film_id) as total_películas from film as f join film_actor as fa on f.film_id=fa.film_id join actor as a on fa.actor_id=a.actor_id where a.first_name = 'ED' and last_name = 'CHASE';
+------------------+
| total_películas  |
+------------------+
|               22 |
+------------------+
```

#### Media de duración de las películas cada categoría.

```sql
select c.name, avg(f.length) as cantidad from film as f join film_category as fc on f.film_id=fc.film_id join category as c on c.category_id=fc.category_id group by c.category_id;
+-------------+----------+
| name        | cantidad |
+-------------+----------+
| Action      | 111.6094 |
| Animation   | 111.0152 |
| Children    | 109.8000 |
| Classics    | 111.6667 |
| Comedy      | 115.8276 |
| Documentary | 108.7500 |
| Drama       | 120.8387 |
| Family      | 114.7826 |
| Foreign     | 121.6986 |
| Games       | 127.8361 |
| Horror      | 112.4821 |
| Music       | 113.6471 |
| New         | 111.1270 |
| Sci-Fi      | 108.1967 |
| Sports      | 128.2027 |
| Travel      | 113.3158 |
+-------------+----------+
```

#### Nota: Se debe de mostrar la salida de cada una de las consultas.

```sql

```A continuación se muestran algunas de las vistas que se han utilizado en la base de datos Sakila:

--
-- View structure for view `customer_list`
--

CREATE VIEW customer_list AS
SELECT 
  cu.customer_id AS ID, 
    CONCAT(cu.first_name, _utf8mb4' ', cu.last_name) AS name, 
    a.address AS address, 
    a.postal_code AS `zip code`,
  a.phone AS phone, 
    city.city AS city, 
    country.country AS country, 
    IF(cu.active, _utf8mb4'active',_utf8mb4'') AS notes, 
    cu.store_id AS SID
FROM 
  customer AS cu JOIN address AS a 
    ON cu.address_id = a.address_id 
    JOIN city 
    ON a.city_id = city.city_id
  JOIN country 
    ON city.country_id = country.country_id;
--
-- View structure for view `film_list`
--

CREATE VIEW film_list AS
SELECT 
  film.film_id AS FID, 
    film.title AS title, 
    film.description AS description, 
    category.name AS category, 
    film.rental_rate AS price,
  film.length AS length, 
    film.rating AS rating, 
    GROUP_CONCAT(CONCAT(actor.first_name, _utf8mb4' ', actor.last_name) SEPARATOR ', ') AS actors
FROM 
  category LEFT JOIN film_category 
    ON category.category_id = film_category.category_id 
    LEFT JOIN film 
    ON film_category.film_id = film.film_id
  JOIN film_actor 
    ON film.film_id = film_actor.film_id
  JOIN actor 
    ON film_actor.actor_id = actor.actor_id
GROUP BY film.film_id, category.name;
Conociendo es estos momentos ya la BBDD, se pide:

Muestra el resultado de la consulta de las vistas que se proporcionan.
Crea 5 vistas sobre la BBDD, y realizar la consulta, para mostrar los resultados. Las vistas deben de tener 3 o más tablas de la BBDD.


select c.country, ci.city, a.address, s.staff_id, s.first_name, s.last_name from country as c join city as ci on ci.country_id=c.country_id join address as a on a.city_id=ci.city_id join staff as s on a.address_id=s.address_id;