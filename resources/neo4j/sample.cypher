:begin
CREATE CONSTRAINT ON (node:`UNIQUE IMPORT LABEL`) ASSERT (node.`UNIQUE IMPORT ID`) IS UNIQUE;
:commit
CALL db.awaitIndexes(300);
:begin
UNWIND [{_id:0, properties:{tagline:"Welcome to the Real World", title:"The Matrix", released:1999}}, {_id:9, properties:{tagline:"Free your mind", title:"The Matrix Reloaded", released:2003}}, {_id:10, properties:{tagline:"Everything that has a beginning has an end", title:"The Matrix Revolutions", released:2003}}, {_id:11, properties:{tagline:"Evil has its winning ways", title:"The Devil's Advocate", released:1997}}, {_id:15, properties:{tagline:"In the heart of the nation's capital, in a courthouse of the U.S. government, one man will stop at nothing to keep his honor, and one will stop at nothing to find the truth.", title:"A Few Good Men", released:1992}}, {_id:29, properties:{tagline:"I feel the need, the need for speed.", title:"Top Gun", released:1986}}, {_id:37, properties:{tagline:"The rest of his life begins now.", title:"Jerry Maguire", released:2000}}, {_id:46, properties:{tagline:"For some, it's the last real taste of innocence, and the first real taste of life. But for everyone, it's the time that memories are made of.", title:"Stand By Me", released:1986}}, {_id:52, properties:{tagline:"A comedy from the heart that goes for the throat.", title:"As Good as It Gets", released:1997}}, {_id:56, properties:{tagline:"After life there is more. The end is just the beginning.", title:"What Dreams May Come", released:1998}}, {_id:62, properties:{tagline:"First loves last. Forever.", title:"Snow Falling on Cedars", released:1999}}, {_id:67, properties:{tagline:"At odds in life... in love on-line.", title:"You've Got Mail", released:1998}}, {_id:73, properties:{tagline:"What if someone you never met, someone you never saw, someone you never knew was the only someone for you?", title:"Sleepless in Seattle", released:1993}}, {_id:78, properties:{tagline:"A story of love, lava and burning desire.", title:"Joe Versus the Volcano", released:1990}}, {_id:81, properties:{tagline:"Can two friends sleep together and still love each other in the morning?", title:"When Harry Met Sally", released:1998}}, {_id:85, properties:{tagline:"In every life there comes a time when that thing you dream becomes that thing you do", title:"That Thing You Do", released:1996}}, {_id:87, properties:{tagline:"Pain heals, Chicks dig scars... Glory lasts forever", title:"The Replacements", released:2000}}, {_id:92, properties:{tagline:"Based on the extraordinary true story of one man's fight for freedom", title:"RescueDawn", released:2006}}, {_id:95, properties:{tagline:"Come as you are", title:"The Birdcage", released:1996}}, {_id:97, properties:{tagline:"It's a hell of a thing, killing a man", title:"Unforgiven", released:1992}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Movie;
UNWIND [{_id:100, properties:{tagline:"The hottest data on earth. In the coolest head in town", title:"Johnny Mnemonic", released:1995}}, {_id:105, properties:{tagline:"Everything is connected", title:"Cloud Atlas", released:2012}}, {_id:111, properties:{tagline:"Break The Codes", title:"The Da Vinci Code", released:2006}}, {_id:116, properties:{tagline:"Freedom! Forever!", title:"V for Vendetta", released:2006}}, {_id:121, properties:{tagline:"Speed has no limits", title:"Speed Racer", released:2008}}, {_id:128, properties:{tagline:"Prepare to enter a secret world of assassins", title:"Ninja Assassin", released:2009}}, {_id:130, properties:{tagline:"Walk a mile you'll never forget.", title:"The Green Mile", released:1999}}, {_id:137, properties:{tagline:"400 million people were waiting for the truth.", title:"Frost/Nixon", released:2008}}, {_id:141, properties:{tagline:"He didn't want law. He wanted justice.", title:"Hoffa", released:1992}}, {_id:144, properties:{tagline:"Houston, we have a problem.", title:"Apollo 13", released:1995}}, {_id:147, properties:{tagline:"Don't Breathe. Don't Look Back.", title:"Twister", released:1996}}, {_id:150, properties:{tagline:"At the edge of the world, his journey begins.", title:"Cast Away", released:2000}}, {_id:152, properties:{tagline:"If he's crazy, what does that make you?", title:"One Flew Over the Cuckoo's Nest", released:1975}}, {_id:154, properties:{title:"Something's Gotta Give", released:2003}}, {_id:157, properties:{tagline:"One robot's 200 year journey to become an ordinary man.", title:"Bicentennial Man", released:1999}}, {_id:159, properties:{tagline:"A stiff drink. A little mascara. A lot of nerve. Who said they couldn't bring down the Soviet empire.", title:"Charlie Wilson's War", released:2007}}, {_id:161, properties:{tagline:"This Holiday Season... Believe", title:"The Polar Express", released:2004}}, {_id:162, properties:{tagline:"Once in a lifetime you get a chance to do something different.", title:"A League of Their Own", released:1992}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Movie;
UNWIND [{_id:1, properties:{born:1964, name:"Keanu Reeves"}}, {_id:2, properties:{born:1967, name:"Carrie-Anne Moss"}}, {_id:3, properties:{born:1961, name:"Laurence Fishburne"}}, {_id:4, properties:{born:1960, name:"Hugo Weaving"}}, {_id:5, properties:{born:1967, name:"Lilly Wachowski"}}, {_id:6, properties:{born:1965, name:"Lana Wachowski"}}, {_id:7, properties:{born:1952, name:"Joel Silver"}}, {_id:8, properties:{born:1978, name:"Emil Eifrem"}}, {_id:12, properties:{born:1975, name:"Charlize Theron"}}, {_id:13, properties:{born:1940, name:"Al Pacino"}}, {_id:14, properties:{born:1944, name:"Taylor Hackford"}}, {_id:16, properties:{born:1962, name:"Tom Cruise"}}, {_id:17, properties:{born:1937, name:"Jack Nicholson"}}, {_id:18, properties:{born:1962, name:"Demi Moore"}}, {_id:19, properties:{born:1958, name:"Kevin Bacon"}}, {_id:20, properties:{born:1966, name:"Kiefer Sutherland"}}, {_id:21, properties:{born:1971, name:"Noah Wyle"}}, {_id:22, properties:{born:1968, name:"Cuba Gooding Jr."}}, {_id:23, properties:{born:1957, name:"Kevin Pollak"}}, {_id:24, properties:{born:1943, name:"J.T. Walsh"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Person;
UNWIND [{_id:25, properties:{born:1967, name:"James Marshall"}}, {_id:26, properties:{born:1948, name:"Christopher Guest"}}, {_id:27, properties:{born:1947, name:"Rob Reiner"}}, {_id:28, properties:{born:1961, name:"Aaron Sorkin"}}, {_id:30, properties:{born:1957, name:"Kelly McGillis"}}, {_id:31, properties:{born:1959, name:"Val Kilmer"}}, {_id:32, properties:{born:1962, name:"Anthony Edwards"}}, {_id:33, properties:{born:1933, name:"Tom Skerritt"}}, {_id:34, properties:{born:1961, name:"Meg Ryan"}}, {_id:35, properties:{born:1944, name:"Tony Scott"}}, {_id:36, properties:{born:1941, name:"Jim Cash"}}, {_id:38, properties:{born:1969, name:"Renee Zellweger"}}, {_id:39, properties:{born:1962, name:"Kelly Preston"}}, {_id:40, properties:{born:1974, name:"Jerry O'Connell"}}, {_id:41, properties:{born:1970, name:"Jay Mohr"}}, {_id:42, properties:{born:1961, name:"Bonnie Hunt"}}, {_id:43, properties:{born:1971, name:"Regina King"}}, {_id:44, properties:{born:1996, name:"Jonathan Lipnicki"}}, {_id:45, properties:{born:1957, name:"Cameron Crowe"}}, {_id:47, properties:{born:1970, name:"River Phoenix"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Person;
UNWIND [{_id:48, properties:{born:1971, name:"Corey Feldman"}}, {_id:49, properties:{born:1972, name:"Wil Wheaton"}}, {_id:50, properties:{born:1966, name:"John Cusack"}}, {_id:51, properties:{born:1942, name:"Marshall Bell"}}, {_id:53, properties:{born:1963, name:"Helen Hunt"}}, {_id:54, properties:{born:1963, name:"Greg Kinnear"}}, {_id:55, properties:{born:1940, name:"James L. Brooks"}}, {_id:57, properties:{born:1960, name:"Annabella Sciorra"}}, {_id:58, properties:{born:1929, name:"Max von Sydow"}}, {_id:59, properties:{born:1942, name:"Werner Herzog"}}, {_id:60, properties:{born:1951, name:"Robin Williams"}}, {_id:61, properties:{born:1956, name:"Vincent Ward"}}, {_id:63, properties:{born:1970, name:"Ethan Hawke"}}, {_id:64, properties:{born:1971, name:"Rick Yune"}}, {_id:65, properties:{born:1940, name:"James Cromwell"}}, {_id:66, properties:{born:1953, name:"Scott Hicks"}}, {_id:68, properties:{born:1968, name:"Parker Posey"}}, {_id:69, properties:{born:1973, name:"Dave Chappelle"}}, {_id:70, properties:{born:1967, name:"Steve Zahn"}}, {_id:71, properties:{born:1956, name:"Tom Hanks"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Person;
UNWIND [{_id:72, properties:{born:1941, name:"Nora Ephron"}}, {_id:74, properties:{born:1956, name:"Rita Wilson"}}, {_id:75, properties:{born:1953, name:"Bill Pullman"}}, {_id:76, properties:{born:1949, name:"Victor Garber"}}, {_id:77, properties:{born:1962, name:"Rosie O'Donnell"}}, {_id:79, properties:{born:1950, name:"John Patrick Stanley"}}, {_id:80, properties:{born:1956, name:"Nathan Lane"}}, {_id:82, properties:{born:1948, name:"Billy Crystal"}}, {_id:83, properties:{born:1956, name:"Carrie Fisher"}}, {_id:84, properties:{born:1949, name:"Bruno Kirby"}}, {_id:86, properties:{born:1977, name:"Liv Tyler"}}, {_id:88, properties:{born:1970, name:"Brooke Langton"}}, {_id:89, properties:{born:1930, name:"Gene Hackman"}}, {_id:90, properties:{born:1968, name:"Orlando Jones"}}, {_id:91, properties:{born:1950, name:"Howard Deutch"}}, {_id:93, properties:{born:1974, name:"Christian Bale"}}, {_id:94, properties:{born:1954, name:"Zach Grenier"}}, {_id:96, properties:{born:1931, name:"Mike Nichols"}}, {_id:98, properties:{born:1930, name:"Richard Harris"}}, {_id:99, properties:{born:1930, name:"Clint Eastwood"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Person;
UNWIND [{_id:101, properties:{born:1947, name:"Takeshi Kitano"}}, {_id:102, properties:{born:1968, name:"Dina Meyer"}}, {_id:103, properties:{born:1958, name:"Ice-T"}}, {_id:104, properties:{born:1953, name:"Robert Longo"}}, {_id:106, properties:{born:1966, name:"Halle Berry"}}, {_id:107, properties:{born:1949, name:"Jim Broadbent"}}, {_id:108, properties:{born:1965, name:"Tom Tykwer"}}, {_id:109, properties:{born:1969, name:"David Mitchell"}}, {_id:110, properties:{born:1961, name:"Stefan Arndt"}}, {_id:112, properties:{born:1939, name:"Ian McKellen"}}, {_id:113, properties:{born:1976, name:"Audrey Tautou"}}, {_id:114, properties:{born:1971, name:"Paul Bettany"}}, {_id:115, properties:{born:1954, name:"Ron Howard"}}, {_id:117, properties:{born:1981, name:"Natalie Portman"}}, {_id:118, properties:{born:1946, name:"Stephen Rea"}}, {_id:119, properties:{born:1940, name:"John Hurt"}}, {_id:120, properties:{born:1967, name:"Ben Miles"}}, {_id:122, properties:{born:1985, name:"Emile Hirsch"}}, {_id:123, properties:{born:1960, name:"John Goodman"}}, {_id:124, properties:{born:1946, name:"Susan Sarandon"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Person;
UNWIND [{_id:125, properties:{born:1966, name:"Matthew Fox"}}, {_id:126, properties:{born:1980, name:"Christina Ricci"}}, {_id:127, properties:{born:1982, name:"Rain"}}, {_id:129, properties:{name:"Naomie Harris"}}, {_id:131, properties:{born:1957, name:"Michael Clarke Duncan"}}, {_id:132, properties:{born:1953, name:"David Morse"}}, {_id:133, properties:{born:1968, name:"Sam Rockwell"}}, {_id:134, properties:{born:1955, name:"Gary Sinise"}}, {_id:135, properties:{born:1959, name:"Patricia Clarkson"}}, {_id:136, properties:{born:1959, name:"Frank Darabont"}}, {_id:138, properties:{born:1938, name:"Frank Langella"}}, {_id:139, properties:{born:1969, name:"Michael Sheen"}}, {_id:140, properties:{born:1960, name:"Oliver Platt"}}, {_id:142, properties:{born:1944, name:"Danny DeVito"}}, {_id:143, properties:{born:1965, name:"John C. Reilly"}}, {_id:145, properties:{born:1950, name:"Ed Harris"}}, {_id:146, properties:{born:1955, name:"Bill Paxton"}}, {_id:148, properties:{born:1967, name:"Philip Seymour Hoffman"}}, {_id:149, properties:{born:1943, name:"Jan de Bont"}}, {_id:151, properties:{born:1951, name:"Robert Zemeckis"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Person;
UNWIND [{_id:153, properties:{born:1932, name:"Milos Forman"}}, {_id:155, properties:{born:1946, name:"Diane Keaton"}}, {_id:156, properties:{born:1949, name:"Nancy Meyers"}}, {_id:158, properties:{born:1958, name:"Chris Columbus"}}, {_id:160, properties:{born:1967, name:"Julia Roberts"}}, {_id:163, properties:{born:1954, name:"Madonna"}}, {_id:164, properties:{born:1956, name:"Geena Davis"}}, {_id:165, properties:{born:1963, name:"Lori Petty"}}, {_id:166, properties:{born:1943, name:"Penny Marshall"}}, {_id:167, properties:{name:"Paul Blythe"}}, {_id:168, properties:{name:"Angela Scope"}}, {_id:169, properties:{name:"Jessica Thompson"}}, {_id:170, properties:{name:"James Thompson"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Person;
:commit
:begin
UNWIND [{start: {_id:170}, end: {_id:169}, properties:{}}, {start: {_id:168}, end: {_id:169}, properties:{}}, {start: {_id:167}, end: {_id:168}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:FOLLOWS]->(end) SET r += row.properties;
UNWIND [{start: {_id:1}, end: {_id:0}, properties:{roles:["Neo"]}}, {start: {_id:2}, end: {_id:0}, properties:{roles:["Trinity"]}}, {start: {_id:3}, end: {_id:0}, properties:{roles:["Morpheus"]}}, {start: {_id:4}, end: {_id:0}, properties:{roles:["Agent Smith"]}}, {start: {_id:8}, end: {_id:0}, properties:{roles:["Emil"]}}, {start: {_id:1}, end: {_id:9}, properties:{roles:["Neo"]}}, {start: {_id:2}, end: {_id:9}, properties:{roles:["Trinity"]}}, {start: {_id:3}, end: {_id:9}, properties:{roles:["Morpheus"]}}, {start: {_id:4}, end: {_id:9}, properties:{roles:["Agent Smith"]}}, {start: {_id:1}, end: {_id:10}, properties:{roles:["Neo"]}}, {start: {_id:2}, end: {_id:10}, properties:{roles:["Trinity"]}}, {start: {_id:3}, end: {_id:10}, properties:{roles:["Morpheus"]}}, {start: {_id:4}, end: {_id:10}, properties:{roles:["Agent Smith"]}}, {start: {_id:1}, end: {_id:11}, properties:{roles:["Kevin Lomax"]}}, {start: {_id:12}, end: {_id:11}, properties:{roles:["Mary Ann Lomax"]}}, {start: {_id:13}, end: {_id:11}, properties:{roles:["John Milton"]}}, {start: {_id:16}, end: {_id:15}, properties:{roles:["Lt. Daniel Kaffee"]}}, {start: {_id:17}, end: {_id:15}, properties:{roles:["Col. Nathan R. Jessup"]}}, {start: {_id:18}, end: {_id:15}, properties:{roles:["Lt. Cdr. JoAnne Galloway"]}}, {start: {_id:19}, end: {_id:15}, properties:{roles:["Capt. Jack Ross"]}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {_id:20}, end: {_id:15}, properties:{roles:["Lt. Jonathan Kendrick"]}}, {start: {_id:21}, end: {_id:15}, properties:{roles:["Cpl. Jeffrey Barnes"]}}, {start: {_id:22}, end: {_id:15}, properties:{roles:["Cpl. Carl Hammaker"]}}, {start: {_id:23}, end: {_id:15}, properties:{roles:["Lt. Sam Weinberg"]}}, {start: {_id:24}, end: {_id:15}, properties:{roles:["Lt. Col. Matthew Andrew Markinson"]}}, {start: {_id:25}, end: {_id:15}, properties:{roles:["Pfc. Louden Downey"]}}, {start: {_id:26}, end: {_id:15}, properties:{roles:["Dr. Stone"]}}, {start: {_id:28}, end: {_id:15}, properties:{roles:["Man in Bar"]}}, {start: {_id:16}, end: {_id:29}, properties:{roles:["Maverick"]}}, {start: {_id:30}, end: {_id:29}, properties:{roles:["Charlie"]}}, {start: {_id:31}, end: {_id:29}, properties:{roles:["Iceman"]}}, {start: {_id:32}, end: {_id:29}, properties:{roles:["Goose"]}}, {start: {_id:33}, end: {_id:29}, properties:{roles:["Viper"]}}, {start: {_id:34}, end: {_id:29}, properties:{roles:["Carole"]}}, {start: {_id:16}, end: {_id:37}, properties:{roles:["Jerry Maguire"]}}, {start: {_id:22}, end: {_id:37}, properties:{roles:["Rod Tidwell"]}}, {start: {_id:38}, end: {_id:37}, properties:{roles:["Dorothy Boyd"]}}, {start: {_id:39}, end: {_id:37}, properties:{roles:["Avery Bishop"]}}, {start: {_id:40}, end: {_id:37}, properties:{roles:["Frank Cushman"]}}, {start: {_id:41}, end: {_id:37}, properties:{roles:["Bob Sugar"]}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {_id:42}, end: {_id:37}, properties:{roles:["Laurel Boyd"]}}, {start: {_id:43}, end: {_id:37}, properties:{roles:["Marcee Tidwell"]}}, {start: {_id:44}, end: {_id:37}, properties:{roles:["Ray Boyd"]}}, {start: {_id:49}, end: {_id:46}, properties:{roles:["Gordie Lachance"]}}, {start: {_id:47}, end: {_id:46}, properties:{roles:["Chris Chambers"]}}, {start: {_id:40}, end: {_id:46}, properties:{roles:["Vern Tessio"]}}, {start: {_id:48}, end: {_id:46}, properties:{roles:["Teddy Duchamp"]}}, {start: {_id:50}, end: {_id:46}, properties:{roles:["Denny Lachance"]}}, {start: {_id:20}, end: {_id:46}, properties:{roles:["Ace Merrill"]}}, {start: {_id:51}, end: {_id:46}, properties:{roles:["Mr. Lachance"]}}, {start: {_id:17}, end: {_id:52}, properties:{roles:["Melvin Udall"]}}, {start: {_id:53}, end: {_id:52}, properties:{roles:["Carol Connelly"]}}, {start: {_id:54}, end: {_id:52}, properties:{roles:["Simon Bishop"]}}, {start: {_id:22}, end: {_id:52}, properties:{roles:["Frank Sachs"]}}, {start: {_id:60}, end: {_id:56}, properties:{roles:["Chris Nielsen"]}}, {start: {_id:22}, end: {_id:56}, properties:{roles:["Albert Lewis"]}}, {start: {_id:57}, end: {_id:56}, properties:{roles:["Annie Collins-Nielsen"]}}, {start: {_id:58}, end: {_id:56}, properties:{roles:["The Tracker"]}}, {start: {_id:59}, end: {_id:56}, properties:{roles:["The Face"]}}, {start: {_id:63}, end: {_id:62}, properties:{roles:["Ishmael Chambers"]}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {_id:64}, end: {_id:62}, properties:{roles:["Kazuo Miyamoto"]}}, {start: {_id:58}, end: {_id:62}, properties:{roles:["Nels Gudmundsson"]}}, {start: {_id:65}, end: {_id:62}, properties:{roles:["Judge Fielding"]}}, {start: {_id:71}, end: {_id:67}, properties:{roles:["Joe Fox"]}}, {start: {_id:34}, end: {_id:67}, properties:{roles:["Kathleen Kelly"]}}, {start: {_id:54}, end: {_id:67}, properties:{roles:["Frank Navasky"]}}, {start: {_id:68}, end: {_id:67}, properties:{roles:["Patricia Eden"]}}, {start: {_id:69}, end: {_id:67}, properties:{roles:["Kevin Jackson"]}}, {start: {_id:70}, end: {_id:67}, properties:{roles:["George Pappas"]}}, {start: {_id:71}, end: {_id:73}, properties:{roles:["Sam Baldwin"]}}, {start: {_id:34}, end: {_id:73}, properties:{roles:["Annie Reed"]}}, {start: {_id:74}, end: {_id:73}, properties:{roles:["Suzy"]}}, {start: {_id:75}, end: {_id:73}, properties:{roles:["Walter"]}}, {start: {_id:76}, end: {_id:73}, properties:{roles:["Greg"]}}, {start: {_id:77}, end: {_id:73}, properties:{roles:["Becky"]}}, {start: {_id:71}, end: {_id:78}, properties:{roles:["Joe Banks"]}}, {start: {_id:34}, end: {_id:78}, properties:{roles:["DeDe", "Angelica Graynamore", "Patricia Graynamore"]}}, {start: {_id:80}, end: {_id:78}, properties:{roles:["Baw"]}}, {start: {_id:82}, end: {_id:81}, properties:{roles:["Harry Burns"]}}, {start: {_id:34}, end: {_id:81}, properties:{roles:["Sally Albright"]}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {_id:83}, end: {_id:81}, properties:{roles:["Marie"]}}, {start: {_id:84}, end: {_id:81}, properties:{roles:["Jess"]}}, {start: {_id:71}, end: {_id:85}, properties:{roles:["Mr. White"]}}, {start: {_id:86}, end: {_id:85}, properties:{roles:["Faye Dolan"]}}, {start: {_id:12}, end: {_id:85}, properties:{roles:["Tina"]}}, {start: {_id:1}, end: {_id:87}, properties:{roles:["Shane Falco"]}}, {start: {_id:88}, end: {_id:87}, properties:{roles:["Annabelle Farrell"]}}, {start: {_id:89}, end: {_id:87}, properties:{roles:["Jimmy McGinty"]}}, {start: {_id:90}, end: {_id:87}, properties:{roles:["Clifford Franklin"]}}, {start: {_id:51}, end: {_id:92}, properties:{roles:["Admiral"]}}, {start: {_id:93}, end: {_id:92}, properties:{roles:["Dieter Dengler"]}}, {start: {_id:94}, end: {_id:92}, properties:{roles:["Squad Leader"]}}, {start: {_id:70}, end: {_id:92}, properties:{roles:["Duane"]}}, {start: {_id:60}, end: {_id:95}, properties:{roles:["Armand Goldman"]}}, {start: {_id:80}, end: {_id:95}, properties:{roles:["Albert Goldman"]}}, {start: {_id:89}, end: {_id:95}, properties:{roles:["Sen. Kevin Keeley"]}}, {start: {_id:98}, end: {_id:97}, properties:{roles:["English Bob"]}}, {start: {_id:99}, end: {_id:97}, properties:{roles:["Bill Munny"]}}, {start: {_id:89}, end: {_id:97}, properties:{roles:["Little Bill Daggett"]}}, {start: {_id:1}, end: {_id:100}, properties:{roles:["Johnny Mnemonic"]}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {_id:101}, end: {_id:100}, properties:{roles:["Takahashi"]}}, {start: {_id:102}, end: {_id:100}, properties:{roles:["Jane"]}}, {start: {_id:103}, end: {_id:100}, properties:{roles:["J-Bone"]}}, {start: {_id:71}, end: {_id:105}, properties:{roles:["Zachry", "Dr. Henry Goose", "Isaac Sachs", "Dermot Hoggins"]}}, {start: {_id:4}, end: {_id:105}, properties:{roles:["Bill Smoke", "Haskell Moore", "Tadeusz Kesselring", "Nurse Noakes", "Boardman Mephi", "Old Georgie"]}}, {start: {_id:106}, end: {_id:105}, properties:{roles:["Luisa Rey", "Jocasta Ayrs", "Ovid", "Meronym"]}}, {start: {_id:107}, end: {_id:105}, properties:{roles:["Vyvyan Ayrs", "Captain Molyneux", "Timothy Cavendish"]}}, {start: {_id:71}, end: {_id:111}, properties:{roles:["Dr. Robert Langdon"]}}, {start: {_id:112}, end: {_id:111}, properties:{roles:["Sir Leight Teabing"]}}, {start: {_id:113}, end: {_id:111}, properties:{roles:["Sophie Neveu"]}}, {start: {_id:114}, end: {_id:111}, properties:{roles:["Silas"]}}, {start: {_id:4}, end: {_id:116}, properties:{roles:["V"]}}, {start: {_id:117}, end: {_id:116}, properties:{roles:["Evey Hammond"]}}, {start: {_id:118}, end: {_id:116}, properties:{roles:["Eric Finch"]}}, {start: {_id:119}, end: {_id:116}, properties:{roles:["High Chancellor Adam Sutler"]}}, {start: {_id:120}, end: {_id:116}, properties:{roles:["Dascomb"]}}, {start: {_id:122}, end: {_id:121}, properties:{roles:["Speed Racer"]}}, {start: {_id:123}, end: {_id:121}, properties:{roles:["Pops"]}}, {start: {_id:124}, end: {_id:121}, properties:{roles:["Mom"]}}, {start: {_id:125}, end: {_id:121}, properties:{roles:["Racer X"]}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {_id:126}, end: {_id:121}, properties:{roles:["Trixie"]}}, {start: {_id:127}, end: {_id:121}, properties:{roles:["Taejo Togokahn"]}}, {start: {_id:120}, end: {_id:121}, properties:{roles:["Cass Jones"]}}, {start: {_id:127}, end: {_id:128}, properties:{roles:["Raizo"]}}, {start: {_id:129}, end: {_id:128}, properties:{roles:["Mika Coretti"]}}, {start: {_id:64}, end: {_id:128}, properties:{roles:["Takeshi"]}}, {start: {_id:120}, end: {_id:128}, properties:{roles:["Ryan Maslow"]}}, {start: {_id:71}, end: {_id:130}, properties:{roles:["Paul Edgecomb"]}}, {start: {_id:131}, end: {_id:130}, properties:{roles:["John Coffey"]}}, {start: {_id:132}, end: {_id:130}, properties:{roles:["Brutus \"Brutal\" Howell"]}}, {start: {_id:42}, end: {_id:130}, properties:{roles:["Jan Edgecomb"]}}, {start: {_id:65}, end: {_id:130}, properties:{roles:["Warden Hal Moores"]}}, {start: {_id:133}, end: {_id:130}, properties:{roles:["\"Wild Bill\" Wharton"]}}, {start: {_id:134}, end: {_id:130}, properties:{roles:["Burt Hammersmith"]}}, {start: {_id:135}, end: {_id:130}, properties:{roles:["Melinda Moores"]}}, {start: {_id:138}, end: {_id:137}, properties:{roles:["Richard Nixon"]}}, {start: {_id:139}, end: {_id:137}, properties:{roles:["David Frost"]}}, {start: {_id:19}, end: {_id:137}, properties:{roles:["Jack Brennan"]}}, {start: {_id:140}, end: {_id:137}, properties:{roles:["Bob Zelnick"]}}, {start: {_id:133}, end: {_id:137}, properties:{roles:["James Reston, Jr."]}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {_id:17}, end: {_id:141}, properties:{roles:["Hoffa"]}}, {start: {_id:142}, end: {_id:141}, properties:{roles:["Robert \"Bobby\" Ciaro"]}}, {start: {_id:24}, end: {_id:141}, properties:{roles:["Frank Fitzsimmons"]}}, {start: {_id:143}, end: {_id:141}, properties:{roles:["Peter \"Pete\" Connelly"]}}, {start: {_id:71}, end: {_id:144}, properties:{roles:["Jim Lovell"]}}, {start: {_id:19}, end: {_id:144}, properties:{roles:["Jack Swigert"]}}, {start: {_id:145}, end: {_id:144}, properties:{roles:["Gene Kranz"]}}, {start: {_id:146}, end: {_id:144}, properties:{roles:["Fred Haise"]}}, {start: {_id:134}, end: {_id:144}, properties:{roles:["Ken Mattingly"]}}, {start: {_id:146}, end: {_id:147}, properties:{roles:["Bill Harding"]}}, {start: {_id:53}, end: {_id:147}, properties:{roles:["Dr. Jo Harding"]}}, {start: {_id:94}, end: {_id:147}, properties:{roles:["Eddie"]}}, {start: {_id:148}, end: {_id:147}, properties:{roles:["Dustin \"Dusty\" Davis"]}}, {start: {_id:71}, end: {_id:150}, properties:{roles:["Chuck Noland"]}}, {start: {_id:53}, end: {_id:150}, properties:{roles:["Kelly Frears"]}}, {start: {_id:17}, end: {_id:152}, properties:{roles:["Randle McMurphy"]}}, {start: {_id:142}, end: {_id:152}, properties:{roles:["Martini"]}}, {start: {_id:17}, end: {_id:154}, properties:{roles:["Harry Sanborn"]}}, {start: {_id:155}, end: {_id:154}, properties:{roles:["Erica Barry"]}}, {start: {_id:1}, end: {_id:154}, properties:{roles:["Julian Mercer"]}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {_id:60}, end: {_id:157}, properties:{roles:["Andrew Marin"]}}, {start: {_id:140}, end: {_id:157}, properties:{roles:["Rupert Burns"]}}, {start: {_id:71}, end: {_id:159}, properties:{roles:["Rep. Charlie Wilson"]}}, {start: {_id:160}, end: {_id:159}, properties:{roles:["Joanne Herring"]}}, {start: {_id:148}, end: {_id:159}, properties:{roles:["Gust Avrakotos"]}}, {start: {_id:71}, end: {_id:161}, properties:{roles:["Hero Boy", "Father", "Conductor", "Hobo", "Scrooge", "Santa Claus"]}}, {start: {_id:71}, end: {_id:162}, properties:{roles:["Jimmy Dugan"]}}, {start: {_id:164}, end: {_id:162}, properties:{roles:["Dottie Hinson"]}}, {start: {_id:165}, end: {_id:162}, properties:{roles:["Kit Keller"]}}, {start: {_id:77}, end: {_id:162}, properties:{roles:["Doris Murphy"]}}, {start: {_id:163}, end: {_id:162}, properties:{roles:["\"All the Way\" Mae Mordabito"]}}, {start: {_id:146}, end: {_id:162}, properties:{roles:["Bob Hinson"]}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTED_IN]->(end) SET r += row.properties;
UNWIND [{start: {_id:169}, end: {_id:105}, properties:{summary:"An amazing journey", rating:95}}, {start: {_id:169}, end: {_id:87}, properties:{summary:"Silly, but fun", rating:65}}, {start: {_id:170}, end: {_id:87}, properties:{summary:"The coolest football movie ever", rating:100}}, {start: {_id:168}, end: {_id:87}, properties:{summary:"Pretty funny at times", rating:62}}, {start: {_id:169}, end: {_id:97}, properties:{summary:"Dark, but compelling", rating:85}}, {start: {_id:169}, end: {_id:95}, properties:{summary:"Slapstick redeemed only by the Robin Williams and Gene Hackman's stellar performances", rating:45}}, {start: {_id:169}, end: {_id:111}, properties:{summary:"A solid romp", rating:68}}, {start: {_id:170}, end: {_id:111}, properties:{summary:"Fun, but a little far fetched", rating:65}}, {start: {_id:169}, end: {_id:37}, properties:{summary:"You had me at Jerry", rating:92}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:REVIEWED]->(end) SET r += row.properties;
UNWIND [{start: {_id:7}, end: {_id:0}, properties:{}}, {start: {_id:7}, end: {_id:9}, properties:{}}, {start: {_id:7}, end: {_id:10}, properties:{}}, {start: {_id:45}, end: {_id:37}, properties:{}}, {start: {_id:27}, end: {_id:81}, properties:{}}, {start: {_id:72}, end: {_id:81}, properties:{}}, {start: {_id:110}, end: {_id:105}, properties:{}}, {start: {_id:5}, end: {_id:116}, properties:{}}, {start: {_id:6}, end: {_id:116}, properties:{}}, {start: {_id:7}, end: {_id:116}, properties:{}}, {start: {_id:7}, end: {_id:121}, properties:{}}, {start: {_id:5}, end: {_id:128}, properties:{}}, {start: {_id:6}, end: {_id:128}, properties:{}}, {start: {_id:7}, end: {_id:128}, properties:{}}, {start: {_id:156}, end: {_id:154}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:PRODUCED]->(end) SET r += row.properties;
UNWIND [{start: {_id:28}, end: {_id:15}, properties:{}}, {start: {_id:36}, end: {_id:29}, properties:{}}, {start: {_id:45}, end: {_id:37}, properties:{}}, {start: {_id:72}, end: {_id:81}, properties:{}}, {start: {_id:109}, end: {_id:105}, properties:{}}, {start: {_id:5}, end: {_id:116}, properties:{}}, {start: {_id:6}, end: {_id:116}, properties:{}}, {start: {_id:5}, end: {_id:121}, properties:{}}, {start: {_id:6}, end: {_id:121}, properties:{}}, {start: {_id:156}, end: {_id:154}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:WROTE]->(end) SET r += row.properties;
UNWIND [{start: {_id:5}, end: {_id:0}, properties:{}}, {start: {_id:6}, end: {_id:0}, properties:{}}, {start: {_id:5}, end: {_id:9}, properties:{}}, {start: {_id:6}, end: {_id:9}, properties:{}}, {start: {_id:5}, end: {_id:10}, properties:{}}, {start: {_id:6}, end: {_id:10}, properties:{}}, {start: {_id:14}, end: {_id:11}, properties:{}}, {start: {_id:27}, end: {_id:15}, properties:{}}, {start: {_id:35}, end: {_id:29}, properties:{}}, {start: {_id:45}, end: {_id:37}, properties:{}}, {start: {_id:27}, end: {_id:46}, properties:{}}, {start: {_id:55}, end: {_id:52}, properties:{}}, {start: {_id:61}, end: {_id:56}, properties:{}}, {start: {_id:66}, end: {_id:62}, properties:{}}, {start: {_id:72}, end: {_id:67}, properties:{}}, {start: {_id:72}, end: {_id:73}, properties:{}}, {start: {_id:79}, end: {_id:78}, properties:{}}, {start: {_id:27}, end: {_id:81}, properties:{}}, {start: {_id:71}, end: {_id:85}, properties:{}}, {start: {_id:91}, end: {_id:87}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:DIRECTED]->(end) SET r += row.properties;
UNWIND [{start: {_id:59}, end: {_id:92}, properties:{}}, {start: {_id:96}, end: {_id:95}, properties:{}}, {start: {_id:99}, end: {_id:97}, properties:{}}, {start: {_id:104}, end: {_id:100}, properties:{}}, {start: {_id:108}, end: {_id:105}, properties:{}}, {start: {_id:5}, end: {_id:105}, properties:{}}, {start: {_id:6}, end: {_id:105}, properties:{}}, {start: {_id:115}, end: {_id:111}, properties:{}}, {start: {_id:25}, end: {_id:116}, properties:{}}, {start: {_id:5}, end: {_id:121}, properties:{}}, {start: {_id:6}, end: {_id:121}, properties:{}}, {start: {_id:25}, end: {_id:128}, properties:{}}, {start: {_id:136}, end: {_id:130}, properties:{}}, {start: {_id:115}, end: {_id:137}, properties:{}}, {start: {_id:142}, end: {_id:141}, properties:{}}, {start: {_id:115}, end: {_id:144}, properties:{}}, {start: {_id:149}, end: {_id:147}, properties:{}}, {start: {_id:151}, end: {_id:150}, properties:{}}, {start: {_id:153}, end: {_id:152}, properties:{}}, {start: {_id:156}, end: {_id:154}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:DIRECTED]->(end) SET r += row.properties;
UNWIND [{start: {_id:158}, end: {_id:157}, properties:{}}, {start: {_id:96}, end: {_id:159}, properties:{}}, {start: {_id:151}, end: {_id:161}, properties:{}}, {start: {_id:166}, end: {_id:162}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:DIRECTED]->(end) SET r += row.properties;
:commit
:begin
MATCH (n:`UNIQUE IMPORT LABEL`)  WITH n LIMIT 20000 REMOVE n:`UNIQUE IMPORT LABEL` REMOVE n.`UNIQUE IMPORT ID`;
:commit
:begin
DROP CONSTRAINT ON (node:`UNIQUE IMPORT LABEL`) ASSERT (node.`UNIQUE IMPORT ID`) IS UNIQUE;
:commit
