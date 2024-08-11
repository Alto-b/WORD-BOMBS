// class SportsRepo {
//   Map<String, List<String>> sports = {
//     "Soccer": [
//       "Known as football in most of the world, it's the most popular sport globally.",
//       "The FIFA World Cup is the most watched sporting event, attracting billions of viewers.",
//       "The sport is played by over 250 million players in over 200 countries.",
//       "Famous clubs include Real Madrid, FC Barcelona, and Manchester United.",
//       "Iconic players include Pelé, Diego Maradona, and Lionel Messi."
//     ],
//     "Basketball": [
//       "Invented by Dr. James Naismith in 1891 as an indoor activity for his students.",
//       "The NBA is the premier professional basketball league, known for its high level of competition.",
//       "Michael Jordan is widely regarded as the greatest basketball player of all time.",
//       "Basketball is played by two teams of five players each, aiming to score by shooting a ball through the opponent's hoop.",
//       "Famous for its fast pace, slam dunks, and three-point shooting."
//     ],
//     "Cricket": [
//       "Originated in England and is now popular in countries like India, Australia, and Pakistan.",
//       "The Cricket World Cup, held every four years, is one of the most viewed sporting events.",
//       "A Test match, the longest format of the game, can last up to five days.",
//       "Famous players include Sachin Tendulkar, Sir Donald Bradman, and Virat Kohli.",
//       "Played in various formats: Test cricket, One Day Internationals (ODIs), and Twenty20 (T20) cricket."
//     ],
//     "Tennis": [
//       "The four Grand Slam tournaments (Australian Open, French Open, Wimbledon, and US Open) are the most prestigious events.",
//       "Roger Federer, Rafael Nadal, and Serena Williams are among the most successful players in history.",
//       "Played on various surfaces: grass, clay, and hard courts, each offering unique challenges.",
//       "Scoring involves games, sets, and matches, with unique terms like 'love' and 'deuce'.",
//       "Tennis combines athleticism, strategy, and endurance."
//     ],
//     "Baseball": [
//       "Known as America's pastime, with a rich history dating back to the 19th century.",
//       "The World Series is the championship series of Major League Baseball (MLB), attracting millions of viewers.",
//       "Babe Ruth, also known as 'The Sultan of Swat', is one of the most legendary figures in baseball history.",
//       "Baseball involves two teams of nine players each, with the objective to score runs by hitting a ball and running bases.",
//       "The sport is known for its strategic depth and iconic ballparks."
//     ],
//     "Golf": [
//       "The sport has a history dating back to the 15th century in Scotland, where it was played on natural courses.",
//       "The Masters Tournament, held at Augusta National Golf Club, is one of the four major championships.",
//       "Tiger Woods is considered one of the greatest golfers of all time, with numerous records and titles.",
//       "Golf involves players using various clubs to hit balls into a series of holes on a course in as few strokes as possible.",
//       "Known for its mental challenges, scenic courses, and traditions like the green jacket at the Masters."
//     ],
//     "American Football": [
//       "The Super Bowl is the most-watched annual sporting event in the United States, known for its halftime show and commercials.",
//       "The NFL (National Football League) is the professional league in the USA, consisting of 32 teams.",
//       "The sport involves a combination of physical strength, strategy, and skill, with positions like quarterback, running back, and linebacker.",
//       "Famous players include Tom Brady, Joe Montana, and Jerry Rice.",
//       "American football is known for its high-impact collisions, complex playbooks, and passionate fan base."
//     ],
//     "Rugby": [
//       "Rugby Union and Rugby League are the two main types of rugby, each with its own rules and competitions.",
//       "The Rugby World Cup, held every four years, is the premier international competition.",
//       "The sport is known for its physicality and intense gameplay, with positions like forwards and backs.",
//       "Famous teams include the New Zealand All Blacks, known for their pre-match haka.",
//       "Rugby is played with an oval ball and involves running, passing, and kicking to score tries and goals."
//     ],
//     "Boxing": [
//       "One of the oldest combat sports, with origins in Ancient Greece where it was part of the Olympic Games.",
//       "Famous boxers include Muhammad Ali, known for his charisma and skill, Mike Tyson, and Floyd Mayweather.",
//       "Boxing matches are divided into rounds and are scored by judges based on punches landed and overall performance.",
//       "Boxing requires a combination of strength, speed, and strategy, with weight classes to ensure fair competition.",
//       "Known for its rich history, iconic fights, and legendary trainers."
//     ],
//     "Swimming": [
//       "Swimming is one of the most popular Olympic sports, with events in various styles and distances.",
//       "Michael Phelps is the most decorated Olympian with 23 gold medals and a total of 28 medals.",
//       "Competitive swimming includes strokes like freestyle, backstroke, breaststroke, and butterfly, each with specific techniques and rules.",
//       "Swimmers compete in individual events and relays, often in indoor or outdoor pools.",
//       "Known for its emphasis on endurance, technique, and speed."
//     ],
//     "Athletics": [
//       "Track and field events are the core of athletics, including running, jumping, and throwing events.",
//       "Usain Bolt is the fastest man in history, holding the 100m and 200m world records.",
//       "The marathon, a 26.2-mile race, is one of the most demanding endurance events, originating from ancient Greece.",
//       "Athletics is a staple of the Olympic Games, showcasing events like the decathlon, high jump, and javelin throw.",
//       "Known for its emphasis on speed, strength, and versatility."
//     ],
//     "Cycling": [
//       "The Tour de France is the most famous cycling race, a grueling three-week event covering various terrains.",
//       "Cycling is divided into road racing, track cycling, and mountain biking, each with its own disciplines and competitions.",
//       "Lance Armstrong is a controversial figure in cycling history, known for his seven Tour de France titles and subsequent doping scandal.",
//       "Cycling requires endurance, strategy, and teamwork, with races often decided by seconds.",
//       "Known for its scenic routes, challenging climbs, and high-speed descents."
//     ],
//     "Gymnastics": [
//       "Artistic gymnastics is a highlight of the Olympic Games, featuring events like floor exercise, vault, and balance beam.",
//       "Simone Biles is one of the most decorated gymnasts, known for her innovative skills and dominance in the sport.",
//       "Gymnastics requires a combination of strength, flexibility, and precision, with routines judged on difficulty and execution.",
//       "Events are divided into men's and women's categories, each with specific apparatus and skills.",
//       "Known for its grace, athleticism, and the intense training required to reach elite levels."
//     ],
//     "Ice Hockey": [
//       "The NHL (National Hockey League) is the premier professional league in North America, known for its fast pace and physicality.",
//       "Ice hockey is played on an ice rink with six players per team, including a goaltender, aiming to score by hitting a puck into the opponent's net.",
//       "Wayne Gretzky, known as 'The Great One,' is the most famous hockey player, holding numerous records.",
//       "The Stanley Cup is the oldest professional sports trophy in North America, awarded annually to the NHL champion.",
//       "Known for its speed, skill, and the unique challenge of playing on ice."
//     ],
//     "Skiing": [
//       "Alpine skiing, cross-country skiing, and freestyle skiing are the main types, each with its own disciplines and events.",
//       "The Winter Olympics features various skiing events, attracting athletes from around the world.",
//       "Lindsey Vonn is one of the most successful alpine skiers, with numerous World Cup titles and Olympic medals.",
//       "Skiing requires a combination of technique, speed, and adaptability to different snow conditions.",
//       "Known for its scenic mountain settings, thrilling descents, and the culture of après-ski."
//     ],
//     "Figure Skating": [
//       "Figure skating combines athleticism with artistry, featuring jumps, spins, and intricate footwork.",
//       "The sport includes singles, pairs, and ice dancing events, each with its own rules and scoring criteria.",
//       "Yuzuru Hanyu is one of the most successful male figure skaters, known for his technical skill and artistic expression.",
//       "Figure skating is a highlight of the Winter Olympics, captivating audiences with its beauty and precision.",
//       "Known for its elegant costumes, choreographed routines, and the intense training required to perfect skills."
//     ],
//     "Volleyball": [
//       "Volleyball is played both indoors and on the beach, with six players per indoor team and two per beach team.",
//       "The FIVB World Championship is a major international competition, showcasing the best teams from around the world.",
//       "Brazil, the USA, and Russia are dominant forces in volleyball, known for their powerful spikes and strategic plays.",
//       "Volleyball requires teamwork, quick reflexes, and precise coordination to succeed.",
//       "Known for its fast-paced action, jumping ability, and the iconic rally scoring system."
//     ],
//     "Table Tennis": [
//       "Also known as ping pong, it is a fast-paced sport played with small paddles and a lightweight ball.",
//       "China is the dominant force in international table tennis, producing many of the world's top players.",
//       "The sport requires quick reflexes, precision, and strategic shot placement to outmaneuver opponents.",
//       "Table tennis is played both recreationally and competitively, with events in singles and doubles.",
//       "Known for its rapid exchanges, spin techniques, and the unique sound of the ball on the table."
//     ],
//     "Badminton": [
//       "Badminton is most popular in Asia, particularly in countries like China and Indonesia.",
//       "The All England Open is one of the oldest and most prestigious tournaments, attracting top players from around the world.",
//       "The shuttlecock, or birdie, can travel at speeds over 200 mph during high-level play.",
//       "Badminton requires agility, speed, and precise shot control, with events in singles and doubles.",
//       "Known for its fast-paced rallies, strategic shot placement, and the lightweight racquets used."
//     ],
//     "Martial Arts": [
//       "Includes various forms like judo, taekwondo, and karate, each with its own techniques and rules.",
//       "Mixed martial arts (MMA) is a popular modern combat sport, combining elements of various martial arts.",
//       "Bruce Lee is one of the most famous martial artists, known for his philosophy and film career.",
//       "Martial arts require discipline, physical fitness, and mastery of techniques for self-defense and competition.",
//       "Known for its rich history, cultural significance, and the respect and honor emphasized in training."
//     ],
//     "Surfing": [
//       "Surfing involves riding waves on a surfboard, with origins in Polynesian culture.",
//       "Hawaii is considered the birthplace of modern surfing, known for its legendary breaks like Pipeline.",
//       "The World Surf League (WSL) organizes the professional surfing tour, featuring events around the globe.",
//       "Surfing requires balance, timing, and a deep understanding of ocean conditions to catch and ride waves.",
//       "Known for its laid-back lifestyle, connection to nature, and the iconic image of surfers riding waves."
//     ],
//     "Esports": [
//       "Competitive gaming with a growing global audience, featuring tournaments and leagues for various games.",
//       "Popular games include League of Legends, Dota 2, and Fortnite, each with its own professional scene.",
//       "Esports tournaments offer significant prize money and attract millions of viewers online and in-person.",
//       "Esports athletes require quick reflexes, strategic thinking, and extensive practice to compete at the highest level.",
//       "Known for its rapidly evolving landscape, passionate fan base, and the integration of technology in competition."
//     ],
//     "Skateboarding": [
//       "Skateboarding has a strong subculture and is now an Olympic sport, debuting at the Tokyo 2020 Games.",
//       "Tony Hawk is one of the most influential skateboarders, known for his vert tricks and video games.",
//       "The sport includes street, park, and vert disciplines, each with its own styles and techniques.",
//       "Skateboarding requires balance, creativity, and a willingness to take risks to perform tricks.",
//       "Known for its DIY ethos, urban environment, and the iconic image of skaters performing tricks on city streets."
//     ],
//     "Motorsport": [
//       "Includes various forms like Formula 1, MotoGP, and NASCAR, each with its own vehicles and rules.",
//       "Formula 1 is known for high-speed racing, technological innovation, and iconic circuits like Monaco.",
//       "Lewis Hamilton and Michael Schumacher are legendary F1 drivers, each with multiple world championships.",
//       "Motorsport requires precision driving, engineering excellence, and split-second decision-making.",
//       "Known for its thrilling races, cutting-edge technology, and the global fan base that follows each series."
//     ],
//   };
// }
