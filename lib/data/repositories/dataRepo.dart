class DataRepo {
  //...............................................repositories for country...............................................
  Map<String, List<String>> countries = {
    "United States": [
      "A large country in North America with 50 states, known for its diverse landscapes and climates ranging from deserts to tundras.",
      "Known for the Statue of Liberty in New York, a symbol of freedom and democracy gifted by France.",
      "The Hollywood film industry in California produces the majority of the world’s films and TV shows.",
      "Major economic power with a diverse culture influenced by immigrants from around the globe.",
      "Home to the Grand Canyon in Arizona, one of the world’s natural wonders and a popular tourist destination."
    ],
    "Canada": [
      "A vast country in North America known for its natural beauty, including national parks, forests, and coastline.",
      "Famous for the Rocky Mountains and Niagara Falls, attracting millions of tourists each year.",
      "Known for politeness and love for hockey, with hockey being the national winter sport.",
      "Second largest country by land area, with diverse ecosystems and a relatively small population.",
      "Bilingual nation with English and French as official languages, reflecting its colonial history."
    ],
    "Mexico": [
      "A country in North America with rich cultural heritage, influenced by indigenous civilizations and Spanish colonization.",
      "Known for ancient Mayan and Aztec ruins, such as Chichen Itza and Teotihuacan, which are UNESCO World Heritage sites.",
      "Famous for Day of the Dead, a unique cultural celebration, and its world-renowned cuisine, including tacos and mole.",
      "Home to beautiful beaches like Cancun, Playa del Carmen, and Tulum, popular among tourists.",
      "Capital city is Mexico City, one of the largest and oldest cities in the Americas, known for its vibrant culture and history."
    ],
    "Brazil": [
      "The largest country in South America, known for its Amazon rainforest, which is the world’s largest tropical rainforest.",
      "Home to the Amazon River, the second-longest river in the world, supporting diverse ecosystems.",
      "Famous for the Christ the Redeemer statue in Rio de Janeiro, one of the New Seven Wonders of the World.",
      "Known for the annual Carnival festival, a colorful celebration with parades, samba music, and dance.",
      "Capital city is Brasília, known for its modernist architecture designed by Oscar Niemeyer."
    ],
    "United Kingdom": [
      "Made up of England, Scotland, Wales, and Northern Ireland, with rich histories and distinct cultures.",
      "Known for landmarks like Big Ben, Buckingham Palace, and the Tower of London in the capital city, London.",
      "Famous for the royal family and historic sites like Stonehenge, an ancient stone circle.",
      "Home to the University of Oxford and University of Cambridge, two of the oldest and most prestigious universities in the world.",
      "Capital city is London, a global financial center and cultural hub with numerous museums, theatres, and historic sites."
    ],
    "France": [
      "Known for art, fashion, and cuisine, with a long history of cultural contributions to the world.",
      "Home to the Eiffel Tower, an iconic symbol of France, and the Louvre Museum, housing the Mona Lisa.",
      "Famous for the picturesque countryside of Provence, with lavender fields, vineyards, and charming villages.",
      "Renowned for wine and cheese, with regions like Bordeaux, Burgundy, and Champagne known worldwide.",
      "Capital city is Paris, often called the 'City of Light' and a global center for art, fashion, and gastronomy."
    ],
    "Germany": [
      "Known for beer and Oktoberfest, the world’s largest beer festival held annually in Munich.",
      "Famous for the Berlin Wall, which divided East and West Berlin during the Cold War and its subsequent fall in 1989.",
      "Leader in engineering and technology, with renowned car brands like BMW, Mercedes-Benz, and Volkswagen.",
      "Home to the Black Forest and Rhine River, offering beautiful landscapes and historic castles.",
      "Capital city is Berlin, known for its vibrant cultural scene, historical significance, and modern architecture."
    ],
    "Italy": [
      "Known for its rich history and delicious food, with ancient ruins, Renaissance art, and iconic landmarks.",
      "Home to the Colosseum in Rome, an ancient amphitheater, and the canals of Venice, famous for gondola rides.",
      "Famous for the leaning tower of Pisa, a freestanding bell tower known for its unintended tilt.",
      "Birthplace of the Renaissance, with art and architecture from Michelangelo, Leonardo da Vinci, and others.",
      "Capital city is Rome, known as the 'Eternal City' with its extensive history, including the Roman Empire and Vatican City."
    ],
    "Spain": [
      "Known for flamenco dancing and bullfighting, both integral parts of Spanish culture.",
      "Famous for beautiful beaches along the Mediterranean coast and the Balearic and Canary Islands.",
      "Cultural hubs include Barcelona, with Gaudí’s architecture, and Madrid, with world-class museums like the Prado.",
      "Home to the Sagrada Familia, an unfinished basilica designed by Antoni Gaudí, and the Alhambra, a palace and fortress.",
      "Capital city is Madrid, known for its vibrant nightlife, historic sites, and art museums."
    ],
    "Australia": [
      "Known for unique wildlife like kangaroos, koalas, and the Great Barrier Reef, the world’s largest coral reef system.",
      "Home to the Sydney Opera House, an architectural marvel and a symbol of Australia.",
      "Famous for the Great Barrier Reef, a UNESCO World Heritage site with diverse marine life and coral formations.",
      "Landscapes range from deserts in the Outback to tropical rainforests and alpine regions.",
      "Capital city is Canberra, known for its national monuments and museums, including the Australian War Memorial."
    ],
    "Japan": [
      "Known for advanced technology, traditional tea ceremonies, and a blend of modernity and tradition.",
      "Famous for cherry blossoms in spring, attracting tourists to parks and gardens for hanami (flower viewing).",
      "Home to Mount Fuji, a sacred mountain and popular destination for hiking and photography.",
      "Rich cultural heritage including samurai, geisha, and ancient temples like Kyoto’s Kinkaku-ji (Golden Pavilion).",
      "Capital city is Tokyo, a bustling metropolis known for its skyscrapers, shopping, and cutting-edge technology."
    ],
    "China": [
      "Known for its long history and the Great Wall, an ancient fortification stretching over 13,000 miles.",
      "Home to the Terracotta Army, thousands of life-sized sculptures buried with China’s first emperor.",
      "A major global economic power with rapid modernization and urbanization.",
      "Capital city is Beijing, featuring historical sites like the Forbidden City and Tiananmen Square.",
      "Famous for its diverse cuisine, including dishes like Peking duck, dim sum, and hot pot."
    ],
    "India": [
      "Known for its diverse cultures and the Taj Mahal, a UNESCO World Heritage site and symbol of love.",
      "Home to the Bollywood film industry, producing the largest number of films globally.",
      "Famous for spicy and flavorful cuisine, with regional specialties like curry, biryani, and samosas.",
      "Capital city is New Delhi, known for its historic landmarks, including India Gate and Red Fort.",
      "Rich in historical landmarks and festivals, such as Diwali, Holi, and Durga Puja."
    ],
    "Russia": [
      "The largest country in the world, spanning Europe and Asia, with diverse landscapes and climates.",
      "Known for the Red Square in Moscow, a historic and political center with landmarks like the Kremlin and Saint Basil's Cathedral.",
      "A major player in global politics and a permanent member of the United Nations Security Council.",
      "Home to the Trans-Siberian Railway, the longest railway line in the world.",
      "Capital city is Moscow, known for its cultural heritage, including ballet, opera, and art museums."
    ],
    "South Africa": [
      "Known for its diverse cultures and Nelson Mandela's legacy in the fight against apartheid.",
      "Famous for beautiful landscapes including safaris, national parks, and coastline along two oceans.",
      "Home to Table Mountain, a flat-topped mountain overlooking Cape Town.",
      "Capital city is Pretoria, with other major cities including Cape Town and Johannesburg.",
      "Renowned for its wine regions, producing some of the world's finest wines."
    ],
    "Egypt": [
      "Known for its ancient civilization and pyramids of Giza, one of the Seven Wonders of the Ancient World.",
      "Home to the Sphinx, a limestone statue with a lion's body and a human head.",
      "The Nile River is one of the longest in the world, providing life to the surrounding regions for millennia.",
      "Capital city is Cairo, known for its bustling markets, historic mosques, and the Egyptian Museum.",
      "Famous for the Valley of the Kings, a burial site for pharaohs, including Tutankhamun."
    ],
    "Argentina": [
      "Known for its tango dance, originating in Buenos Aires and characterized by dramatic movements.",
      "Home to the Andes mountains, offering spectacular landscapes and opportunities for outdoor activities.",
      "Vibrant cities include Buenos Aires, known for its European-style architecture and lively culture.",
      "Famous for Patagonia, a region of vast, rugged wilderness shared with Chile.",
      "Capital city is Buenos Aires, also known for its steak houses and passionate football culture."
    ],
    "Chile": [
      "Known for its diverse landscapes, from the driest desert in the world, the Atacama, to the glaciers of Patagonia.",
      "Home to the Atacama Desert, renowned for its unique geology and as one of the best places for stargazing.",
      "Famous for Patagonia, a region of dramatic mountains, fjords, and glaciers.",
      "Capital city is Santiago, a vibrant city nestled between the Andes mountains and the Pacific Ocean.",
      "Known for its wine regions, producing some of the world's best wines, particularly Carmenere and Cabernet Sauvignon."
    ],
    "New Zealand": [
      "Known for its Maori culture, with traditional art, performances, and the famous Haka dance.",
      "Famous for landscapes featured in the 'Lord of the Rings' films, including rolling hills, mountains, and lakes.",
      "Popular for adventure sports like bungee jumping, skydiving, and hiking in stunning national parks.",
      "Capital city is Wellington, known for its vibrant arts scene and as the country's cultural capital.",
      "Home to stunning natural beauty including fjords, geothermal areas, and pristine beaches."
    ],
    "Switzerland": [
      "Known for its neutrality, having remained neutral during major global conflicts, and for its high quality of life.",
      "Famous for Swiss watches, renowned for their precision and craftsmanship.",
      "Home to the beautiful Alps, offering world-class skiing, hiking, and breathtaking scenery.",
      "Capital city is Bern, known for its medieval architecture and UNESCO World Heritage status.",
      "Renowned for its banking and financial services, as well as its delicious chocolate and cheese."
    ],
    "Netherlands": [
      "Known for its flat landscape and windmills, with extensive canal systems and fields of tulips in spring.",
      "Famous for tulips, which are a major export and attract tourists to the Keukenhof Gardens.",
      "Progressive society with cities like Amsterdam, known for its artistic heritage, canals, and museums.",
      "Capital city is Amsterdam, also known for its vibrant nightlife and historical sites like the Anne Frank House.",
      "Renowned for its cycling culture, with extensive bike paths and a high number of bicycles per capita."
    ],
    "Greece": [
      "Known for its ancient history and ruins like the Parthenon, an ancient temple dedicated to the goddess Athena.",
      "Famous for beautiful islands like Santorini, Mykonos, and Crete, known for their whitewashed buildings and blue waters.",
      "Contributions to philosophy and democracy, with ancient philosophers like Socrates, Plato, and Aristotle.",
      "Capital city is Athens, a city rich in history with landmarks like the Acropolis and the Temple of Olympian Zeus.",
      "Renowned for its Mediterranean cuisine, including dishes like moussaka, souvlaki, and baklava."
    ],
    "Turkey": [
      "Straddles Europe and Asia, with a rich history influenced by both continents.",
      "Known for its rich history and the Hagia Sophia, a former church and mosque, now a museum.",
      "Famous for delicious cuisine like kebabs, baklava, and Turkish delight.",
      "Capital city is Ankara, with Istanbul being the largest city, known for its historic sites and vibrant bazaars.",
      "Home to the ancient city of Troy, made famous by Homer's epic poem, the Iliad."
    ],
    "Thailand": [
      "Known for its tropical beaches, crystal-clear waters, and vibrant nightlife, particularly in cities like Phuket and Pattaya.",
      "Famous for ancient ruins like Ayutthaya and the vibrant street life in Bangkok.",
      "Home to opulent royal palaces, including the Grand Palace in Bangkok.",
      "Capital city is Bangkok, a bustling metropolis known for its street food, temples, and markets.",
      "Renowned for its spicy cuisine, with dishes like Pad Thai, Tom Yum Goong, and Green Curry."
    ],
    "Vietnam": [
      "Known for its beautiful beaches, rivers, and Buddhist pagodas, offering serene and picturesque landscapes.",
      "Bustling cities like Hanoi and Ho Chi Minh City, known for their French colonial architecture and rich history.",
      "Famous for pho noodle soup, a flavorful broth with rice noodles, herbs, and meat, often considered the national dish.",
      "Capital city is Hanoi, known for its centuries-old architecture and a rich culture with Southeast Asian, Chinese, and French influences.",
      "Rich in cultural heritage and history, with sites like the Cu Chi Tunnels and Ha Long Bay."
    ],
    "South Korea": [
      "Known for technological advancements, with major companies like Samsung and LG leading in electronics and technology.",
      "Famous for traditional kimchi cuisine, a fermented vegetable dish that is a staple in Korean meals.",
      "Landmarks include Gyeongbokgung Palace, a grand royal palace built during the Joseon Dynasty.",
      "Capital city is Seoul, a bustling city known for its skyscrapers, shopping districts, and vibrant nightlife.",
      "Renowned for its skincare and beauty products, with a global influence on beauty standards and trends."
    ],
    "Saudi Arabia": [
      "Known for vast deserts like the Rub' al Khali, also known as the Empty Quarter, the largest continuous sand desert in the world.",
      "Birthplace of Islam, home to the two holiest cities in Islam, Mecca and Medina.",
      "Home to the holy city of Mecca, where millions of Muslims travel annually for the Hajj pilgrimage.",
      "Capital city is Riyadh, a modern metropolis with historical sites like the Masmak Fortress.",
      "Famous for its annual Hajj pilgrimage, a religious duty for Muslims that must be carried out at least once in their lifetime."
    ],
    "United Arab Emirates": [
      "Known for modern architecture and luxury shopping, with landmarks like the Burj Khalifa and Mall of the Emirates.",
      "Famous for vibrant nightlife and a rapidly growing tourism industry.",
      "Cities include Dubai, known for its skyscrapers and ultramodern architecture, and Abu Dhabi, the capital with its cultural heritage.",
      "Capital city is Abu Dhabi, home to the Sheikh Zayed Grand Mosque, one of the largest mosques in the world.",
      "Home to the Burj Khalifa, the world's tallest building, offering panoramic views of the city."
    ],
    "Singapore": [
      "Known for its cleanliness, efficient public transport system, and modern skyline.",
      "Home to Marina Bay Sands hotel, an iconic landmark with a rooftop infinity pool.",
      "Famous for a diverse food scene, influenced by Chinese, Malay, Indian, and Western cuisines.",
      "Capital city is Singapore, a city-state known for its strict laws and high standard of living.",
      "Renowned for its efficiency, being one of the world's leading financial centers."
    ],
    "Malaysia": [
      "Known for its beaches, rainforests, and mix of Malay, Chinese, Indian, and European cultural influences.",
      "Landmarks include the Petronas Twin Towers in Kuala Lumpur, once the tallest buildings in the world.",
      "Capital city is Kuala Lumpur, known for its modern skyline and vibrant street markets.",
      "Rich in cultural festivals and events, such as Hari Raya, Chinese New Year, and Deepavali.",
      "Diverse cuisine reflecting its multicultural society, with popular dishes like Nasi Lemak and Char Kway Teow."
    ],
    "Indonesia": [
      "An archipelago of thousands of islands, known for its beaches, volcanoes, and diverse ecosystems.",
      "Popular destinations include Bali, known for its surf-friendly beaches, lush rice terraces, and vibrant arts scene.",
      "Capital city is Jakarta, a bustling metropolis with a mix of modern and traditional influences.",
      "Rich in diverse cultures and traditions, with over 300 ethnic groups and 700 languages spoken.",
      "Famous for its biodiversity, being one of the world’s most ecologically diverse countries."
    ],
    "Philippines": [
      "Known for its beautiful beaches and coral reefs, with famous spots like Boracay, Palawan, and Cebu.",
      "Famous for vibrant festivals such as Sinulog, Ati-Atihan, and Pahiyas, celebrating cultural heritage and religious traditions.",
      "Friendly people known for their hospitality and resilience.",
      "Capital city is Manila, a densely populated bayside city known for its waterfront promenade and centuries-old Chinatown.",
      "Home to over 7,000 islands, offering diverse landscapes from mountains to tropical rainforests."
    ],
    "Pakistan": [
      "Known for diverse landscapes, from the towering peaks of the Himalayas to the arid deserts of Balochistan.",
      "Rich history including the ancient Indus Valley civilization, one of the world's oldest.",
      "Home to stunning natural beauty, including Hunza Valley, Swat Valley, and Fairy Meadows.",
      "Capital city is Islamabad, known for its modern infrastructure and scenic views.",
      "Famous for its vibrant bazaars and markets, offering a variety of traditional crafts, spices, and textiles."
    ],
    "Bangladesh": [
      "Known for its lush greenery and many rivers, with the Ganges Delta being the largest river delta in the world.",
      "Home to the Sundarbans mangrove forest, a UNESCO World Heritage site and habitat for the Bengal tiger.",
      "Rich in culture and history, with historic sites like the ancient city of Bagerhat and the Somapura Mahavihara.",
      "Capital city is Dhaka, known for its vibrant culture, historical architecture, and bustling markets.",
      "Famous for its textile industry, being one of the largest garment exporters in the world."
    ],
    "Nigeria": [
      "Known for its large population and diverse cultures, being the most populous country in Africa.",
      "Famous for the Nollywood film industry, the second-largest film producer in the world.",
      "Rich in natural resources, particularly oil and gas.",
      "Capital city is Abuja, designed and built in the 1980s to replace Lagos as the capital.",
      "Home to vibrant music and dance scenes, with genres like Afrobeat and highlife originating from Nigeria."
    ],
    "Kenya": [
      "Known for its savannahs and safaris, offering some of the best wildlife viewing opportunities in the world.",
      "Home to the Maasai people, known for their distinct culture and traditional way of life.",
      "Stunning landscapes including Mount Kenya, the second-highest peak in Africa.",
      "Capital city is Nairobi, a major financial and political hub in Africa.",
      "Famous for the Great Rift Valley, a geological and geographical feature stretching from Lebanon to Mozambique."
    ],
    "Ghana": [
      "Known for its rich history and gold resources, once part of the ancient Ghana Empire.",
      "Famous for cocoa production, being one of the world’s largest cocoa producers.",
      "Vibrant festivals and friendly people, with celebrations like the Homowo and Aboakyir festivals.",
      "Capital city is Accra, a city known for its lively arts scene, historical sites, and bustling markets.",
      "Rich in cultural heritage and traditions, with notable sites like the Cape Coast Castle and Kakum National Park."
    ],
    "Ethiopia": [
      "One of the oldest nations in the world, known for its ancient history and archaeological sites.",
      "Known for its coffee culture, with Ethiopia being the birthplace of coffee.",
      "Landmarks include the rock-hewn churches of Lalibela, a UNESCO World Heritage site.",
      "Capital city is Addis Ababa, home to the African Union headquarters and numerous historical sites.",
      "Home to diverse ethnic groups and languages, with a rich cultural tapestry and traditions."
    ],
    "Morocco": [
      "Known for its vibrant markets, cuisine, and historic cities, blending Arab, Berber, and European influences.",
      "Famous for desert landscapes, including the Sahara Desert, offering stunning dunes and oases.",
      "Historical cities like Marrakesh, Fez, and Rabat, each with its own unique charm and attractions.",
      "Capital city is Rabat, known for its historical sites and coastal location.",
      "Renowned for its traditional crafts and textiles, with artisans producing intricate carpets, pottery, and leather goods."
    ],
    "Tanzania": [
      "Known for Mount Kilimanjaro, the highest peak in Africa and a popular trekking destination.",
      "Home to the Serengeti National Park, famous for its annual migration of over 1.5 million wildebeest and hundreds of thousands of zebras.",
      "Rich in wildlife and natural beauty, with numerous national parks and reserves.",
      "Capital city is Dodoma, while Dar es Salaam is the largest city and main port.",
      "Famous for the Ngorongoro Crater, a UNESCO World Heritage site and one of the most significant wildlife habitats on Earth."
    ],
    "Uganda": [
      "Known for its wildlife, including mountain gorillas in Bwindi Impenetrable National Park and Queen Elizabeth National Park.",
      "Source of the Nile River, the world's longest river, originating from Lake Victoria.",
      "Rich in cultural heritage, with diverse ethnic groups and traditional practices.",
      "Capital city is Kampala, known for its bustling markets, historical sites, and vibrant nightlife.",
      "Home to beautiful national parks and lakes, offering diverse ecosystems and outdoor activities."
    ],
    "Zimbabwe": [
      "Known for Victoria Falls, one of the largest and most famous waterfalls in the world, located on the Zambezi River.",
      "Ancient ruins like Great Zimbabwe, a UNESCO World Heritage site and former capital of the Kingdom of Zimbabwe.",
      "Capital city is Harare, known for its parks, gardens, and cultural institutions.",
      "Rich in wildlife and natural beauty, with national parks like Hwange and Mana Pools.",
      "Famous for its diverse landscapes, ranging from highlands and savannas to river valleys and forests."
    ],
  };
//...............................................repository for sports...............................................
  Map<String, List<String>> sports = {
    "Soccer": [
      "Known as football in most of the world, it's the most popular sport globally.",
      "The FIFA World Cup is the most watched sporting event, attracting billions of viewers.",
      "The sport is played by over 250 million players in over 200 countries.",
      "Famous clubs include Real Madrid, FC Barcelona, and Manchester United.",
      "Iconic players include Pelé, Diego Maradona, and Lionel Messi."
    ],
    "Basketball": [
      "Invented by Dr. James Naismith in 1891 as an indoor activity for his students.",
      "The NBA is the premier professional basketball league, known for its high level of competition.",
      "Michael Jordan is widely regarded as the greatest basketball player of all time.",
      "Basketball is played by two teams of five players each, aiming to score by shooting a ball through the opponent's hoop.",
      "Famous for its fast pace, slam dunks, and three-point shooting."
    ],
    "Cricket": [
      "Originated in England and is now popular in countries like India, Australia, and Pakistan.",
      "The Cricket World Cup, held every four years, is one of the most viewed sporting events.",
      "A Test match, the longest format of the game, can last up to five days.",
      "Famous players include Sachin Tendulkar, Sir Donald Bradman, and Virat Kohli.",
      "Played in various formats: Test cricket, One Day Internationals (ODIs), and Twenty20 (T20) cricket."
    ],
    "Tennis": [
      "The four Grand Slam tournaments (Australian Open, French Open, Wimbledon, and US Open) are the most prestigious events.",
      "Roger Federer, Rafael Nadal, and Serena Williams are among the most successful players in history.",
      "Played on various surfaces: grass, clay, and hard courts, each offering unique challenges.",
      "Scoring involves games, sets, and matches, with unique terms like 'love' and 'deuce'.",
      "Tennis combines athleticism, strategy, and endurance."
    ],
    "Baseball": [
      "Known as America's pastime, with a rich history dating back to the 19th century.",
      "The World Series is the championship series of Major League Baseball (MLB), attracting millions of viewers.",
      "Babe Ruth, also known as 'The Sultan of Swat', is one of the most legendary figures in baseball history.",
      "Baseball involves two teams of nine players each, with the objective to score runs by hitting a ball and running bases.",
      "The sport is known for its strategic depth and iconic ballparks."
    ],
    "Golf": [
      "The sport has a history dating back to the 15th century in Scotland, where it was played on natural courses.",
      "The Masters Tournament, held at Augusta National Golf Club, is one of the four major championships.",
      "Tiger Woods is considered one of the greatest golfers of all time, with numerous records and titles.",
      "Golf involves players using various clubs to hit balls into a series of holes on a course in as few strokes as possible.",
      "Known for its mental challenges, scenic courses, and traditions like the green jacket at the Masters."
    ],
    "American Football": [
      "The Super Bowl is the most-watched annual sporting event in the United States, known for its halftime show and commercials.",
      "The NFL (National Football League) is the professional league in the USA, consisting of 32 teams.",
      "The sport involves a combination of physical strength, strategy, and skill, with positions like quarterback, running back, and linebacker.",
      "Famous players include Tom Brady, Joe Montana, and Jerry Rice.",
      "American football is known for its high-impact collisions, complex playbooks, and passionate fan base."
    ],
    "Rugby": [
      "Rugby Union and Rugby League are the two main types of rugby, each with its own rules and competitions.",
      "The Rugby World Cup, held every four years, is the premier international competition.",
      "The sport is known for its physicality and intense gameplay, with positions like forwards and backs.",
      "Famous teams include the New Zealand All Blacks, known for their pre-match haka.",
      "Rugby is played with an oval ball and involves running, passing, and kicking to score tries and goals."
    ],
    "Boxing": [
      "One of the oldest combat sports, with origins in Ancient Greece where it was part of the Olympic Games.",
      "Famous boxers include Muhammad Ali, known for his charisma and skill, Mike Tyson, and Floyd Mayweather.",
      "Boxing matches are divided into rounds and are scored by judges based on punches landed and overall performance.",
      "Boxing requires a combination of strength, speed, and strategy, with weight classes to ensure fair competition.",
      "Known for its rich history, iconic fights, and legendary trainers."
    ],
    "Swimming": [
      "Swimming is one of the most popular Olympic sports, with events in various styles and distances.",
      "Michael Phelps is the most decorated Olympian with 23 gold medals and a total of 28 medals.",
      "Competitive swimming includes strokes like freestyle, backstroke, breaststroke, and butterfly, each with specific techniques and rules.",
      "Swimmers compete in individual events and relays, often in indoor or outdoor pools.",
      "Known for its emphasis on endurance, technique, and speed."
    ],
    "Athletics": [
      "Track and field events are the core of athletics, including running, jumping, and throwing events.",
      "Usain Bolt is the fastest man in history, holding the 100m and 200m world records.",
      "The marathon, a 26.2-mile race, is one of the most demanding endurance events, originating from ancient Greece.",
      "Athletics is a staple of the Olympic Games, showcasing events like the decathlon, high jump, and javelin throw.",
      "Known for its emphasis on speed, strength, and versatility."
    ],
    "Cycling": [
      "The Tour de France is the most famous cycling race, a grueling three-week event covering various terrains.",
      "Cycling is divided into road racing, track cycling, and mountain biking, each with its own disciplines and competitions.",
      "Lance Armstrong is a controversial figure in cycling history, known for his seven Tour de France titles and subsequent doping scandal.",
      "Cycling requires endurance, strategy, and teamwork, with races often decided by seconds.",
      "Known for its scenic routes, challenging climbs, and high-speed descents."
    ],
    "Gymnastics": [
      "Artistic gymnastics is a highlight of the Olympic Games, featuring events like floor exercise, vault, and balance beam.",
      "Simone Biles is one of the most decorated gymnasts, known for her innovative skills and dominance in the sport.",
      "Gymnastics requires a combination of strength, flexibility, and precision, with routines judged on difficulty and execution.",
      "Events are divided into men's and women's categories, each with specific apparatus and skills.",
      "Known for its grace, athleticism, and the intense training required to reach elite levels."
    ],
    "Ice Hockey": [
      "The NHL (National Hockey League) is the premier professional league in North America, known for its fast pace and physicality.",
      "Ice hockey is played on an ice rink with six players per team, including a goaltender, aiming to score by hitting a puck into the opponent's net.",
      "Wayne Gretzky, known as 'The Great One,' is the most famous hockey player, holding numerous records.",
      "The Stanley Cup is the oldest professional sports trophy in North America, awarded annually to the NHL champion.",
      "Known for its speed, skill, and the unique challenge of playing on ice."
    ],
    "Skiing": [
      "Alpine skiing, cross-country skiing, and freestyle skiing are the main types, each with its own disciplines and events.",
      "The Winter Olympics features various skiing events, attracting athletes from around the world.",
      "Lindsey Vonn is one of the most successful alpine skiers, with numerous World Cup titles and Olympic medals.",
      "Skiing requires a combination of technique, speed, and adaptability to different snow conditions.",
      "Known for its scenic mountain settings, thrilling descents, and the culture of après-ski."
    ],
    "Figure Skating": [
      "Figure skating combines athleticism with artistry, featuring jumps, spins, and intricate footwork.",
      "The sport includes singles, pairs, and ice dancing events, each with its own rules and scoring criteria.",
      "Yuzuru Hanyu is one of the most successful male figure skaters, known for his technical skill and artistic expression.",
      "Figure skating is a highlight of the Winter Olympics, captivating audiences with its beauty and precision.",
      "Known for its elegant costumes, choreographed routines, and the intense training required to perfect skills."
    ],
    "Volleyball": [
      "Volleyball is played both indoors and on the beach, with six players per indoor team and two per beach team.",
      "The FIVB World Championship is a major international competition, showcasing the best teams from around the world.",
      "Brazil, the USA, and Russia are dominant forces in volleyball, known for their powerful spikes and strategic plays.",
      "Volleyball requires teamwork, quick reflexes, and precise coordination to succeed.",
      "Known for its fast-paced action, jumping ability, and the iconic rally scoring system."
    ],
    "Table Tennis": [
      "Also known as ping pong, it is a fast-paced sport played with small paddles and a lightweight ball.",
      "China is the dominant force in international table tennis, producing many of the world's top players.",
      "The sport requires quick reflexes, precision, and strategic shot placement to outmaneuver opponents.",
      "Table tennis is played both recreationally and competitively, with events in singles and doubles.",
      "Known for its rapid exchanges, spin techniques, and the unique sound of the ball on the table."
    ],
    "Badminton": [
      "Badminton is most popular in Asia, particularly in countries like China and Indonesia.",
      "The All England Open is one of the oldest and most prestigious tournaments, attracting top players from around the world.",
      "The shuttlecock, or birdie, can travel at speeds over 200 mph during high-level play.",
      "Badminton requires agility, speed, and precise shot control, with events in singles and doubles.",
      "Known for its fast-paced rallies, strategic shot placement, and the lightweight racquets used."
    ],
    "Martial Arts": [
      "Includes various forms like judo, taekwondo, and karate, each with its own techniques and rules.",
      "Mixed martial arts (MMA) is a popular modern combat sport, combining elements of various martial arts.",
      "Bruce Lee is one of the most famous martial artists, known for his philosophy and film career.",
      "Martial arts require discipline, physical fitness, and mastery of techniques for self-defense and competition.",
      "Known for its rich history, cultural significance, and the respect and honor emphasized in training."
    ],
    "Surfing": [
      "Surfing involves riding waves on a surfboard, with origins in Polynesian culture.",
      "Hawaii is considered the birthplace of modern surfing, known for its legendary breaks like Pipeline.",
      "The World Surf League (WSL) organizes the professional surfing tour, featuring events around the globe.",
      "Surfing requires balance, timing, and a deep understanding of ocean conditions to catch and ride waves.",
      "Known for its laid-back lifestyle, connection to nature, and the iconic image of surfers riding waves."
    ],
    "Esports": [
      "Competitive gaming with a growing global audience, featuring tournaments and leagues for various games.",
      "Popular games include League of Legends, Dota 2, and Fortnite, each with its own professional scene.",
      "Esports tournaments offer significant prize money and attract millions of viewers online and in-person.",
      "Esports athletes require quick reflexes, strategic thinking, and extensive practice to compete at the highest level.",
      "Known for its rapidly evolving landscape, passionate fan base, and the integration of technology in competition."
    ],
    "Skateboarding": [
      "Skateboarding has a strong subculture and is now an Olympic sport, debuting at the Tokyo 2020 Games.",
      "Tony Hawk is one of the most influential skateboarders, known for his vert tricks and video games.",
      "The sport includes street, park, and vert disciplines, each with its own styles and techniques.",
      "Skateboarding requires balance, creativity, and a willingness to take risks to perform tricks.",
      "Known for its DIY ethos, urban environment, and the iconic image of skaters performing tricks on city streets."
    ],
    "Motorsport": [
      "Includes various forms like Formula 1, MotoGP, and NASCAR, each with its own vehicles and rules.",
      "Formula 1 is known for high-speed racing, technological innovation, and iconic circuits like Monaco.",
      "Lewis Hamilton and Michael Schumacher are legendary F1 drivers, each with multiple world championships.",
      "Motorsport requires precision driving, engineering excellence, and split-second decision-making.",
      "Known for its thrilling races, cutting-edge technology, and the global fan base that follows each series."
    ],
  };
//...............................................repository for vehicles...............................................
  Map<String, List<String>> vehicles = {
    "Cars": [
      "Cars are the most common type of vehicle, used for personal transportation.",
      "The first gasoline-powered car was developed by Karl Benz in 1886.",
      "Popular car brands include Toyota, Ford, and BMW.",
      "Cars can be categorized into different types such as sedans, SUVs, and hatchbacks.",
      "Electric cars, like those made by Tesla, are becoming increasingly popular due to their environmental benefits."
    ],
    "Motorcycles": [
      "Motorcycles are two-wheeled vehicles that are popular for both commuting and sport.",
      "Harley-Davidson is an iconic brand known for its heavyweight cruiser motorcycles.",
      "Motorcycles can be categorized into different types such as cruisers, sportbikes, and dirt bikes.",
      "They offer a unique sense of freedom and are known for their maneuverability.",
      "The Isle of Man TT is one of the most famous motorcycle races in the world."
    ],
    "Trucks": [
      "Trucks are vehicles designed to transport cargo, ranging from light-duty pickups to heavy-duty trucks.",
      "Ford F-Series has been the best-selling truck in the United States for decades.",
      "Trucks are essential for industries such as construction, agriculture, and logistics.",
      "They come in various forms including flatbeds, box trucks, and tankers.",
      "Trucks are known for their durability, power, and ability to carry heavy loads."
    ],
    "Bicycles": [
      "Bicycles are human-powered vehicles with two wheels, used for transportation, recreation, and sport.",
      "The first bicycle was invented in the early 19th century, known as the 'Dandy Horse'.",
      "Bicycles come in various types including road bikes, mountain bikes, and BMX.",
      "They are an environmentally friendly mode of transportation and promote physical fitness.",
      "Cycling events like the Tour de France are among the most prestigious in the sporting world."
    ],
    "Boats": [
      "Boats are watercraft used for travel, recreation, and fishing.",
      "Yachts are luxury boats known for their size, comfort, and amenities.",
      "Sailboats use wind to propel them, while motorboats rely on engines.",
      "Boats are categorized into various types such as speedboats, fishing boats, and pontoons.",
      "The America's Cup is one of the most famous sailing competitions in the world."
    ],
    "Airplanes": [
      "Airplanes are aircraft that use fixed wings and engines to fly, revolutionizing global travel.",
      "The Wright brothers made the first successful powered flight in 1903.",
      "Commercial airplanes like the Boeing 747 and Airbus A380 are used for long-distance travel.",
      "Airplanes are essential for military operations, cargo transport, and passenger travel.",
      "The Concorde was a supersonic passenger jet known for its speed, but it was retired in 2003."
    ],
    "Trains": [
      "Trains are vehicles that run on tracks, used for transporting passengers and cargo.",
      "The Trans-Siberian Railway is the longest railway line in the world, spanning over 9,000 kilometers.",
      "High-speed trains like the Shinkansen in Japan can reach speeds of over 300 km/h.",
      "Trains are an efficient and reliable mode of transportation for both short and long distances.",
      "They come in various types such as freight trains, passenger trains, and bullet trains."
    ],
    "Buses": [
      "Buses are large road vehicles designed to carry multiple passengers, commonly used in public transport.",
      "The iconic double-decker buses in London are known worldwide.",
      "School buses are a common sight in many countries, used to transport students.",
      "Buses can be powered by diesel, electricity, or natural gas, with electric buses gaining popularity.",
      "They are an affordable and accessible mode of transportation, especially in urban areas."
    ],
    "Helicopters": [
      "Helicopters are aircraft that use rotating blades to lift off vertically, allowing them to hover and maneuver in tight spaces.",
      "They are commonly used for rescue missions, military operations, and transport in difficult terrain.",
      "The first practical helicopter was developed by Igor Sikorsky in 1939.",
      "Helicopters are known for their versatility, being able to land in areas where airplanes cannot.",
      "Popular models include the Bell 206 and the Black Hawk."
    ],
    "Scooters": [
      "Scooters are lightweight two-wheeled vehicles, popular in urban areas for their ease of use and fuel efficiency.",
      "Vespa is one of the most iconic scooter brands, known for its classic design.",
      "Electric scooters are becoming increasingly popular due to their eco-friendliness.",
      "Scooters are commonly used for short-distance travel and are easy to park in crowded areas.",
      "They are known for their simplicity, convenience, and cost-effectiveness."
    ],
    "Electric Vehicles": [
      "Electric vehicles use electric motors and batteries instead of internal combustion engines.",
      "Tesla is a leading brand in the EV market, known for its innovation and performance.",
      "EVs produce zero tailpipe emissions, making them environmentally friendly.",
      "The range of EVs has improved significantly, with some models capable of over 300 miles on a single charge.",
      "Charging infrastructure is expanding globally, making EVs more practical for everyday use."
    ],
    "Vans": [
      "Vans are versatile vehicles used for transporting goods and passengers, often favored by businesses.",
      "They come in various sizes, from compact cargo vans to large passenger vans.",
      "Popular models include the Ford Transit and Mercedes-Benz Sprinter.",
      "Vans are commonly used by delivery companies, tradespeople, and for group transport.",
      "They are known for their spacious interiors and ability to handle a variety of tasks."
    ],
    "SUVs": [
      "Sport Utility Vehicles (SUVs) are larger vehicles designed for off-road capability and family transport.",
      "Jeep is one of the most iconic SUV brands, known for its rugged off-road vehicles.",
      "SUVs come in various sizes, from compact crossovers to full-size models.",
      "They are popular for their spacious interiors, elevated seating positions, and versatility.",
      "SUVs are known for their ability to handle a variety of terrains, including snow, mud, and sand."
    ],
    "RVs": [
      "Recreational Vehicles (RVs) are motor vehicles or trailers equipped with living space and amenities.",
      "RVs are popular for road trips, camping, and extended travel, offering the comforts of home on the go.",
      "They come in various types, including motorhomes, campervans, and travel trailers.",
      "RVs provide a sense of adventure and freedom, allowing people to explore remote areas.",
      "They are known for their convenience, flexibility, and the lifestyle they represent."
    ],
    "Submarines": [
      "Submarines are underwater vehicles used for military, research, and exploration purposes.",
      "They can operate for extended periods underwater, with some capable of diving to great depths.",
      "Submarines are essential for naval operations, often used for stealth missions.",
      "Research submarines like Alvin have been used to explore the ocean's depths and discover new species.",
      "Submarines are known for their unique capabilities and the challenges of underwater navigation."
    ],
    "ATVs": [
      "All-Terrain Vehicles (ATVs) are off-road vehicles designed for use on rugged terrain.",
      "ATVs are popular for recreational use, particularly in outdoor activities like hunting and trail riding.",
      "They come in various types, including sport ATVs, utility ATVs, and side-by-sides.",
      "ATVs are known for their ability to navigate difficult terrain, including mud, sand, and rocks.",
      "They are commonly used in agriculture, forestry, and rescue operations."
    ],
    "Hovercraft": [
      "Hovercraft are vehicles that travel over water or land on a cushion of air, generated by large fans.",
      "They are used for various purposes, including military transport, rescue missions, and recreation.",
      "Hovercraft can travel over various surfaces, including water, mud, and ice, making them highly versatile.",
      "The first practical hovercraft was invented by Sir Christopher Cockerell in 1959.",
      "Hovercraft are known for their unique design and ability to operate in areas inaccessible to other vehicles."
    ],
    "Tractors": [
      "Tractors are powerful vehicles used primarily in agriculture for tasks such as plowing, tilling, and hauling.",
      "John Deere is one of the most well-known brands in the agricultural machinery industry.",
      "Tractors come in various sizes, from small garden tractors to large farm tractors.",
      "They are essential for modern farming, allowing for the efficient use of land and resources.",
      "Tractors are known for their durability, power, and versatility in agricultural work."
    ],
    "Tanks": [
      "Tanks are heavily armored combat vehicles used by military forces for ground warfare.",
      "The first tanks were developed during World War I to break through enemy trenches.",
      "Modern tanks, like the M1 Abrams and T-90, are equipped with powerful cannons and advanced technology.",
      "Tanks are designed to provide mobility, protection, and firepower on the battlefield.",
      "They are known for their formidable presence, strength, and role in modern warfare."
    ],
    "Snowmobiles": [
      "Snowmobiles are motorized vehicles designed for travel over snow and ice.",
      "They are popular in regions with heavy snowfall, used for recreation, transportation, and work.",
      "Snowmobiles are essential for activities like snowmobiling, ice fishing, and winter rescue operations.",
      "They come in various types, including trail snowmobiles, mountain snowmobiles, and utility snowmobiles.",
      "Snowmobiles are known for their ability to navigate snowy terrain, providing access to remote areas."
    ],
    "Electric Bikes": [
      "Electric bikes (e-bikes) are bicycles equipped with an electric motor to assist with pedaling.",
      "E-bikes are becoming increasingly popular for commuting, offering an eco-friendly alternative to cars.",
      "They come in various styles, including city bikes, mountain bikes, and folding bikes.",
      "E-bikes provide the convenience of powered assistance while still allowing for exercise and outdoor activity.",
      "They are known for their versatility, efficiency, and the growing infrastructure supporting them."
    ],
  };
//...............................................repository for animals...............................................
  Map<String, List<String>> animals = {
    "Mammals": [
      "Mammals are warm-blooded animals with hair or fur and most give birth to live young.",
      "The blue whale, the largest animal on Earth, is a mammal.",
      "Mammals include a wide variety of species such as humans, dogs, elephants, and dolphins.",
      "They have a four-chambered heart and a well-developed brain.",
      "Mammals are known for their ability to regulate their body temperature internally."
    ],
    "Birds": [
      "Birds are warm-blooded animals with feathers, wings, and beaks, most of which can fly.",
      "The ostrich is the largest bird in the world, but it cannot fly.",
      "Birds lay eggs with hard shells and are found in a wide range of habitats worldwide.",
      "They have a unique respiratory system that allows for efficient oxygen exchange during flight.",
      "Birds are known for their diverse songs, plumage, and migration patterns."
    ],
    "Reptiles": [
      "Reptiles are cold-blooded animals that include snakes, lizards, turtles, and crocodiles.",
      "The Komodo dragon is the largest living species of lizard.",
      "Reptiles are known for their scaly skin, which helps prevent water loss.",
      "They lay eggs with leathery shells, and some species give live birth.",
      "Reptiles are ectothermic, meaning they rely on external heat sources to regulate their body temperature."
    ],
    "Amphibians": [
      "Amphibians are cold-blooded animals that include frogs, toads, salamanders, and newts.",
      "The axolotl is a unique amphibian that can regenerate lost body parts.",
      "Amphibians typically have a life cycle that includes both aquatic and terrestrial stages.",
      "They have permeable skin that allows them to absorb water and oxygen directly from the environment.",
      "Amphibians are known for their vocalizations, especially frogs, which use calls to attract mates."
    ],
    "Fish": [
      "Fish are cold-blooded animals that live in water and breathe through gills.",
      "The great white shark is one of the most well-known predatory fish.",
      "Fish have a streamlined body, fins for swimming, and scales that protect their skin.",
      "They can be found in freshwater, saltwater, and brackish environments.",
      "Fish are known for their diversity, with over 30,000 species, making them the largest group of vertebrates."
    ],
    "Insects": [
      "Insects are the largest group of animals on Earth, with over a million known species.",
      "The monarch butterfly is famous for its long migration across North America.",
      "Insects have a segmented body with an exoskeleton, three pairs of legs, and usually one or two pairs of wings.",
      "They undergo metamorphosis, a process that includes stages such as egg, larva, pupa, and adult.",
      "Insects play crucial roles in ecosystems, including pollination, decomposition, and as a food source for other animals."
    ],
    "Arachnids": [
      "Arachnids are a group of joint-legged invertebrates that include spiders, scorpions, and ticks.",
      "The tarantula is one of the largest spider species, known for its hairy body and legs.",
      "Arachnids have eight legs and a body divided into two segments: the cephalothorax and the abdomen.",
      "They do not have antennae or wings, unlike insects.",
      "Arachnids are known for their diverse methods of hunting and capturing prey, such as webs spun by spiders."
    ],
    "Crustaceans": [
      "Crustaceans are aquatic animals that include crabs, lobsters, shrimp, and barnacles.",
      "The Japanese spider crab is the largest crustacean, with a leg span of up to 12 feet.",
      "Crustaceans have a hard exoskeleton, which they molt as they grow, and multiple pairs of legs.",
      "They are found in a variety of aquatic environments, from deep oceans to freshwater lakes.",
      "Crustaceans are important in marine food chains and are also consumed by humans as seafood."
    ],
    "Mollusks": [
      "Mollusks are a diverse group of soft-bodied animals that include snails, clams, octopuses, and squids.",
      "The giant squid is one of the largest mollusks, known for its deep-sea habitat and large eyes.",
      "Mollusks have a soft body, often protected by a hard shell, and a muscular foot for movement.",
      "They are found in both aquatic and terrestrial environments.",
      "Mollusks are known for their unique feeding structures, such as the radula in snails and the beak in octopuses."
    ],
    "Echinoderms": [
      "Echinoderms are marine animals that include starfish, sea urchins, and sand dollars.",
      "The crown-of-thorns starfish is a large, venomous starfish known for its impact on coral reefs.",
      "Echinoderms have a unique water vascular system that aids in movement and feeding.",
      "They have a radial symmetry, usually with five arms or multiples of five.",
      "Echinoderms are known for their ability to regenerate lost body parts, such as limbs in starfish."
    ],
    "Cnidarians": [
      "Cnidarians are a group of marine animals that include jellyfish, corals, and sea anemones.",
      "The box jellyfish is one of the most venomous creatures in the ocean.",
      "Cnidarians have a simple body structure with a single opening serving as both mouth and anus.",
      "They possess specialized cells called cnidocytes, which contain stinging structures used for capturing prey.",
      "Cnidarians are known for their diverse forms, ranging from the floating medusae to the sessile polyps."
    ],
    "Annelids": [
      "Annelids are segmented worms that include earthworms, leeches, and polychaetes.",
      "The giant earthworm can grow up to 10 feet long and is found in South America.",
      "Annelids have a body divided into segments, each containing the same set of organs.",
      "They live in a variety of environments, including soil, freshwater, and marine habitats.",
      "Annelids are important for soil health, with earthworms playing a crucial role in aerating and enriching the soil."
    ],
    "Cephalopods": [
      "Cephalopods are a class of mollusks that include octopuses, squids, and cuttlefish.",
      "The octopus is known for its intelligence, ability to camouflage, and unique locomotion.",
      "Cephalopods have a well-developed nervous system, large eyes, and a beak-like mouth.",
      "They are found in marine environments, from shallow waters to the deep sea.",
      "Cephalopods are known for their ability to rapidly change color and texture, often used for communication and camouflage."
    ],
    "Amphibious Fish": [
      "Amphibious fish are fish that have adapted to survive both in water and on land.",
      "The mudskipper is a well-known amphibious fish that can walk on land using its pectoral fins.",
      "Amphibious fish have specialized adaptations, such as modified fins and the ability to breathe air.",
      "They are typically found in intertidal zones, mangroves, and swamps.",
      "Amphibious fish are known for their unique behaviors, including burrowing and climbing."
    ],
    "Marsupials": [
      "Marsupials are a group of mammals that give birth to underdeveloped young, which continue to grow in a pouch.",
      "The kangaroo is the most well-known marsupial, native to Australia.",
      "Marsupials include species such as koalas, wombats, and opossums.",
      "They are primarily found in Australia, New Guinea, and the Americas.",
      "Marsupials are known for their unique reproductive process, with the young developing outside the womb in a pouch."
    ],
    "Primates": [
      "Primates are a group of mammals that include monkeys, apes, and humans.",
      "The gorilla is the largest primate, known for its strength and social behavior.",
      "Primates have large brains, forward-facing eyes, and opposable thumbs.",
      "They are found in a variety of habitats, from tropical rainforests to savannas.",
      "Primates are known for their complex social structures, communication, and problem-solving abilities."
    ],
    "Rodents": [
      "Rodents are a group of mammals characterized by a single pair of continuously growing incisors.",
      "The capybara is the largest rodent, native to South America.",
      "Rodents include species such as mice, rats, squirrels, and beavers.",
      "They are found in nearly every habitat and play important roles in ecosystems, often as prey for larger animals.",
      "Rodents are known for their adaptability, reproductive rate, and ability to gnaw through various materials."
    ],
    "Carnivores": [
      "Carnivores are animals that primarily eat meat, and this group includes predators like lions, wolves, and tigers.",
      "The lion is known as the 'king of the jungle' and is a social carnivore, living in groups called prides.",
      "Carnivores have sharp teeth and claws designed for hunting and tearing flesh.",
      "They are found in a wide range of habitats, from savannas to forests to arctic regions.",
      "Carnivores are known for their role in maintaining the balance of ecosystems by controlling prey populations."
    ],
    "Herbivores": [
      "Herbivores are animals that primarily eat plants, including leaves, stems, fruits, and flowers.",
      "The elephant is one of the largest herbivores, known for its massive size and trunk.",
      "Herbivores include species such as deer, rabbits, giraffes, and zebras.",
      "They are found in a variety of habitats, including forests, grasslands, and deserts.",
      "Herbivores play a crucial role in ecosystems by controlling plant growth and serving as prey for carnivores."
    ],
    "Omnivores": [
      "Omnivores are animals that eat both plants and animals, giving them a versatile diet.",
      "The bear is a well-known omnivore, consuming a diet that includes berries, fish, and insects.",
      "Omnivores include species such as pigs, raccoons, and humans.",
      "They are highly adaptable and can thrive in a variety of environments.",
      "Omnivores are known for their ability to switch between different food sources depending on availability."
    ],
  };
//...............................................repository for chemistry...............................................

  Map<String, List<String>> chemistryAndChemicals = {
    "Elements": [
      "Elements are the basic building blocks of matter, consisting of atoms with the same number of protons.",
      "Oxygen (O) is the most abundant element in the Earth's crust and is essential for respiration.",
      "Carbon (C) is the basis of organic chemistry and forms the backbone of life on Earth.",
      "Gold (Au) is a precious metal known for its malleability and conductivity.",
      "Hydrogen (H) is the lightest and most abundant element in the universe."
    ],
    "Compounds": [
      "Compounds are substances formed by the chemical combination of two or more elements in fixed ratios.",
      "Water (H₂O) is a compound made of hydrogen and oxygen, essential for all known forms of life.",
      "Carbon dioxide (CO₂) is a compound produced by respiration and combustion, playing a key role in the carbon cycle.",
      "Sodium chloride (NaCl), commonly known as table salt, is a compound essential for human nutrition.",
      "Methane (CH₄) is a simple hydrocarbon and a potent greenhouse gas."
    ],
    "Acids": [
      "Acids are substances that donate protons (H⁺ ions) in a chemical reaction and typically have a sour taste.",
      "Hydrochloric acid (HCl) is a strong acid found in stomach acid, aiding in digestion.",
      "Sulfuric acid (H₂SO₄) is a highly corrosive acid used in batteries and industrial processes.",
      "Acetic acid (CH₃COOH) is a weak acid found in vinegar.",
      "Nitric acid (HNO₃) is used in the production of fertilizers and explosives."
    ],
    "Bases": [
      "Bases are substances that accept protons or donate hydroxide ions (OH⁻) in a chemical reaction.",
      "Sodium hydroxide (NaOH), also known as lye, is a strong base used in soap making.",
      "Ammonia (NH₃) is a common base used in household cleaning products.",
      "Calcium hydroxide (Ca(OH)₂), also known as lime, is used in construction and to neutralize acidic soils.",
      "Potassium hydroxide (KOH) is used in the production of biodiesel and as an electrolyte in batteries."
    ],
    "Salts": [
      "Salts are ionic compounds formed by the neutralization reaction between an acid and a base.",
      "Sodium chloride (NaCl) is the most common salt, used as a food preservative and seasoning.",
      "Calcium carbonate (CaCO₃) is found in limestone and is used in the production of cement.",
      "Magnesium sulfate (MgSO₄), also known as Epsom salt, is used in medicine and agriculture.",
      "Potassium nitrate (KNO₃) is used in fertilizers and in the production of gunpowder."
    ],
    "Organic Compounds": [
      "Organic compounds are chemicals that contain carbon atoms bonded to hydrogen, oxygen, nitrogen, and other elements.",
      "Methane (CH₄) is the simplest hydrocarbon and is a major component of natural gas.",
      "Ethanol (C₂H₅OH) is an alcohol used in beverages, as a fuel, and as a solvent.",
      "Glucose (C₆H₁₂O₆) is a simple sugar and an important energy source for living organisms.",
      "Aspirin (C₉H₈O₄) is a common pain reliever and anti-inflammatory drug."
    ],
    "Polymers": [
      "Polymers are large molecules made up of repeating units called monomers, with applications in various industries.",
      "Polyethylene (PE) is the most common plastic, used in packaging, containers, and household items.",
      "Polyvinyl chloride (PVC) is used in plumbing, electrical insulation, and construction materials.",
      "Polystyrene (PS) is used in disposable cups, insulation, and packaging materials.",
      "Nylon is a synthetic polymer used in textiles, ropes, and fishing nets."
    ],
    "Alloys": [
      "Alloys are mixtures of two or more metals, or a metal and another element, to improve strength and durability.",
      "Steel is an alloy of iron and carbon, widely used in construction and manufacturing.",
      "Bronze is an alloy of copper and tin, historically used in tools, weapons, and sculptures.",
      "Brass is an alloy of copper and zinc, used in musical instruments, plumbing, and decorative items.",
      "Stainless steel is an alloy of iron, chromium, and nickel, known for its resistance to corrosion."
    ],
    "Chemical Reactions": [
      "Chemical reactions involve the breaking and forming of bonds between atoms to create new substances.",
      "Combustion is a chemical reaction that occurs when a substance reacts with oxygen to produce heat and light.",
      "Photosynthesis is a process where plants convert carbon dioxide and water into glucose and oxygen using sunlight.",
      "Oxidation-reduction (redox) reactions involve the transfer of electrons between substances.",
      "Neutralization is a reaction between an acid and a base to form water and a salt."
    ],
    "Periodic Table": [
      "The Periodic Table is a chart that organizes elements by increasing atomic number and similar chemical properties.",
      "Dmitri Mendeleev is credited with creating the first Periodic Table in 1869.",
      "Elements in the same group (column) of the Periodic Table have similar chemical properties.",
      "Noble gases, such as helium and neon, are found in Group 18 and are known for their lack of reactivity.",
      "Transition metals, found in the middle of the Periodic Table, are known for their conductivity and malleability."
    ],
    "Noble Gases": [
      "Noble gases are a group of elements in Group 18 of the Periodic Table, known for their low reactivity.",
      "Helium (He) is the second lightest element, used in balloons and as a coolant in cryogenics.",
      "Neon (Ne) is used in neon signs and high-voltage indicators.",
      "Argon (Ar) is used as an inert gas in welding and in incandescent light bulbs.",
      "Xenon (Xe) is used in flash lamps, ion propulsion systems, and as a general anesthetic."
    ],
    "Transition Metals": [
      "Transition metals are elements found in the middle of the Periodic Table, known for their ability to form various oxidation states.",
      "Iron (Fe) is a transition metal used to make steel and is essential for the production of hemoglobin in the body.",
      "Copper (Cu) is known for its high electrical conductivity and is widely used in electrical wiring.",
      "Gold (Au) is a highly valued transition metal, known for its resistance to corrosion and use in jewelry.",
      "Platinum (Pt) is used in catalytic converters, laboratory equipment, and jewelry."
    ],
    "Radioactive Elements": [
      "Radioactive elements are unstable and undergo decay, emitting radiation in the form of alpha, beta, or gamma rays.",
      "Uranium (U) is used as a fuel in nuclear reactors and in the production of nuclear weapons.",
      "Radium (Ra) was historically used in luminous paints, but its use declined due to its radioactivity.",
      "Plutonium (Pu) is used in nuclear reactors and as a fuel for space exploration missions.",
      "Carbon-14 is a radioactive isotope used in radiocarbon dating to determine the age of ancient objects."
    ],
    "Catalysts": [
      "Catalysts are substances that increase the rate of a chemical reaction without being consumed in the process.",
      "Enzymes are biological catalysts that speed up reactions in living organisms.",
      "Platinum is used as a catalyst in catalytic converters to reduce harmful emissions from vehicles.",
      "Nickel is used as a catalyst in the hydrogenation of vegetable oils to produce margarine.",
      "Catalysts are essential in industrial processes, such as the Haber process for ammonia production."
    ],
    "Acid-Base Indicators": [
      "Acid-base indicators are substances that change color in response to the pH of a solution.",
      "Litmus paper turns red in acidic solutions and blue in basic solutions.",
      "Phenolphthalein is colorless in acidic solutions and pink in basic solutions.",
      "Bromothymol blue changes from yellow in acidic solutions to blue in basic solutions.",
      "Methyl orange turns red in acidic solutions and yellow in basic solutions."
    ],
    "Gases": [
      "Gases are a state of matter characterized by the free movement of molecules and lack of a fixed shape or volume.",
      "Oxygen (O₂) is essential for respiration in living organisms and supports combustion.",
      "Carbon dioxide (CO₂) is a greenhouse gas that contributes to global warming.",
      "Nitrogen (N₂) makes up about 78% of the Earth's atmosphere and is used in the production of fertilizers.",
      "Helium (He) is a noble gas used in balloons, airships, and as a cooling agent."
    ],
    "Solvents": [
      "Solvents are liquids that dissolve other substances to form a solution, commonly used in chemical reactions.",
      "Water is known as the 'universal solvent' due to its ability to dissolve many substances.",
      "Acetone is a solvent used in nail polish remover and as a cleaning agent.",
      "Ethanol is a common solvent used in pharmaceuticals, cosmetics, and as a fuel.",
      "Chloroform was historically used as an anesthetic and is now used as a solvent in laboratories."
    ],
    "Crystals": [
      "Crystals are solid materials with atoms arranged in an orderly repeating pattern, forming unique shapes.",
      "Quartz is a common crystal used in watches, electronics, and as a gemstone.",
      "Salt (sodium chloride) forms cubic crystals and is essential for human health.",
      "Diamonds are a form of carbon with a crystal structure that gives them exceptional hardness.",
      "Ice crystals form when water freezes, creating a hexagonal lattice structure."
    ],
    "Chemical Bonds": [
      "Chemical bonds are the forces that hold atoms together in molecules and compounds.",
      "Ionic bonds occur when electrons are transferred from one atom to another, creating charged ions.",
      "Covalent bonds form when atoms share electrons to achieve a stable electron configuration.",
      "Metallic bonds occur between metal atoms, allowing them to conduct electricity and heat.",
      "Hydrogen bonds are weak bonds that occur between polar molecules, important in the structure of water and DNA."
    ],
  };
//...............................................repository for movies...............................................
  Map<String, List<String>> movies = {
    "The Shawshank Redemption": [
      "Based on a novella by Stephen King, it’s widely regarded as one of the greatest films ever made.",
      "The film is set in the fictional Shawshank State Penitentiary and follows the story of Andy Dufresne, who is wrongfully imprisoned.",
      "Known for its powerful themes of hope, friendship, and resilience.",
      "Famous for the iconic scene where Andy escapes through a sewage pipe.",
      "Received multiple Academy Award nominations, including Best Picture."
    ],
    "The Godfather": [
      "Directed by Francis Ford Coppola and based on the novel by Mario Puzo.",
      "Widely considered one of the greatest films in world cinema and a cornerstone of the gangster genre.",
      "The story focuses on the powerful Italian-American crime family of Don Vito Corleone.",
      "Famous for Marlon Brando's iconic performance as Don Vito Corleone.",
      "Won three Academy Awards, including Best Picture and Best Actor for Brando."
    ],
    "Inception": [
      "Directed by Christopher Nolan, known for its complex and mind-bending plot.",
      "The story revolves around a thief who enters people's dreams to steal their secrets.",
      "Famous for its visually stunning special effects, including the zero-gravity fight scene.",
      "Explores deep themes such as reality, dreams, and the subconscious mind.",
      "Won four Academy Awards, including Best Cinematography and Best Visual Effects."
    ],
    "The Dark Knight": [
      "Directed by Christopher Nolan, it’s the second film in his Batman trilogy.",
      "Heath Ledger's portrayal of the Joker is widely regarded as one of the greatest performances in cinema history.",
      "Known for its dark tone, complex characters, and moral dilemmas.",
      "The film grossed over 1 billion dollar worldwide and set new standards for superhero films.",
      "Ledger posthumously won the Academy Award for Best Supporting Actor."
    ],
    "Forrest Gump": [
      "Directed by Robert Zemeckis, based on the novel by Winston Groom.",
      "The film tells the life story of Forrest Gump, a man with a low IQ but an incredibly kind heart.",
      "Known for its iconic quotes like 'Life is like a box of chocolates; you never know what you're gonna get.'",
      "The film uses groundbreaking special effects to insert Forrest into historical footage.",
      "Won six Academy Awards, including Best Picture, Best Director, and Best Actor for Tom Hanks."
    ],
    "Pulp Fiction": [
      "Directed by Quentin Tarantino, known for its non-linear narrative and eclectic dialogue.",
      "The film interweaves multiple stories involving crime, redemption, and violence.",
      "Famous for its memorable characters and scenes, such as the dance sequence between John Travolta and Uma Thurman.",
      "Credited with revitalizing John Travolta's career and launching Tarantino into stardom.",
      "Won the Palme d'Or at the Cannes Film Festival and an Academy Award for Best Original Screenplay."
    ],
    "The Lord of the Rings: The Fellowship of the Ring": [
      "Directed by Peter Jackson and based on the novel by J.R.R. Tolkien.",
      "The first film in the epic fantasy trilogy, following the journey to destroy the One Ring.",
      "Known for its stunning New Zealand landscapes, detailed set designs, and special effects.",
      "Introduced audiences to Middle-earth, a richly detailed fantasy world.",
      "Won four Academy Awards, including Best Cinematography and Best Visual Effects."
    ],
    "Titanic": [
      "Directed by James Cameron, the film became the highest-grossing film of its time.",
      "A romantic drama set against the backdrop of the infamous sinking of the RMS Titanic.",
      "Famous for the iconic 'I'm the king of the world!' scene and the love story between Jack and Rose.",
      "Won 11 Academy Awards, including Best Picture and Best Director.",
      "Known for its groundbreaking special effects and the famous Celine Dion song 'My Heart Will Go On.'"
    ],
    "The Matrix": [
      "Directed by the Wachowskis, known for its innovative visual effects, particularly 'bullet time.'",
      "The film explores themes of reality, consciousness, and artificial intelligence.",
      "Follows the story of Neo, a hacker who discovers the truth about the simulated reality known as the Matrix.",
      "Famous for its philosophical undertones and groundbreaking action sequences.",
      "Won four Academy Awards, including Best Visual Effects and Best Film Editing."
    ],
    "Schindlers List": [
      "Directed by Steven Spielberg, based on the true story of Oskar Schindler, who saved over a thousand Jews during the Holocaust.",
      "Shot in black and white, with the exception of a few symbolic color elements.",
      "Known for its powerful portrayal of the Holocaust and its emotional depth.",
      "Widely regarded as one of the greatest films ever made, addressing the horrors of the Holocaust.",
      "Won seven Academy Awards, including Best Picture and Best Director for Spielberg."
    ],
    "Fight Club": [
      "Directed by David Fincher, based on the novel by Chuck Palahniuk.",
      "A cult classic that explores themes of identity, consumerism, and the human condition.",
      "Famous for its twist ending and the rule 'The first rule of Fight Club is: You do not talk about Fight Club.'",
      "Stars Brad Pitt and Edward Norton in one of their most memorable roles.",
      "Initially received mixed reviews but has since become a highly influential film."
    ],
    "Gladiator": [
      "Directed by Ridley Scott, an epic historical drama set in ancient Rome.",
      "Follows the story of Maximus, a betrayed Roman general who seeks vengeance as a gladiator.",
      "Famous for its intense battle scenes and Russell Crowe's powerful performance.",
      "Won five Academy Awards, including Best Picture and Best Actor for Crowe.",
      "Credited with reviving the epic film genre."
    ],
    "Avatar": [
      "Directed by James Cameron, known for its groundbreaking use of 3D technology and visual effects.",
      "Set on the alien world of Pandora, the film explores themes of environmentalism and imperialism.",
      "Became the highest-grossing film of all time, a title it held for nearly a decade.",
      "Famous for its immersive world-building and innovative motion capture technology.",
      "Nominated for nine Academy Awards, winning three for its technical achievements."
    ],
    "Casablanca": [
      "Directed by Michael Curtiz, a classic film set during World War II.",
      "Known for its memorable lines like 'Here's looking at you, kid' and 'We'll always have Paris.'",
      "Follows the story of an American expatriate who must choose between love and duty.",
      "Won three Academy Awards, including Best Picture, Best Director, and Best Screenplay.",
      "Widely regarded as one of the greatest love stories in cinematic history."
    ],
    "Star Wars: Episode IV - A New Hope": [
      "Directed by George Lucas, it’s the film that started the Star Wars phenomenon.",
      "Introduced iconic characters like Luke Skywalker, Princess Leia, and Darth Vader.",
      "Revolutionized special effects and set new standards for blockbuster filmmaking.",
      "Famous for its epic space battles, the lightsaber duel, and John Williams' iconic score.",
      "Won seven Academy Awards, including Best Visual Effects and Best Original Score."
    ]
  };
//...............................................repository for movies...............................................
  Map<String, List<String>> famousPeople = {
    "Albert Einstein": [
      "Developed the theory of relativity, one of the two pillars of modern physics.",
      "Famous for the equation E=mc², which expresses the equivalence of mass and energy.",
      "Won the Nobel Prize in Physics in 1921 for his discovery of the photoelectric effect.",
      "Known for his wild hair and eccentric personality, becoming a symbol of genius.",
      "Immigrated to the United States in 1933, where he continued his work at the Institute for Advanced Study in Princeton."
    ],
    "Marie Curie": [
      "Pioneered research on radioactivity, a term she coined.",
      "The first woman to win a Nobel Prize, and the only person to win Nobel Prizes in two different scientific fields (Physics and Chemistry).",
      "Discovered the elements polonium and radium with her husband Pierre Curie.",
      "Her work led to the development of X-ray machines, which were crucial during World War I.",
      "Despite her groundbreaking work, she faced significant challenges as a woman in science during her time."
    ],
    "Mahatma Gandhi": [
      "Leader of the Indian independence movement against British rule, employing nonviolent civil disobedience.",
      "Famous for his philosophy of nonviolence, or 'ahimsa,' and for leading peaceful protests.",
      "Known for his simple lifestyle, often seen wearing traditional Indian dhoti and shawl.",
      "Played a key role in India’s independence in 1947, inspiring civil rights movements across the world.",
      "Assassinated in 1948 by a Hindu nationalist who opposed his philosophy of nonviolence and reconciliation with Muslims."
    ],
    "Martin Luther King Jr.": [
      "Leader of the American civil rights movement, advocating for racial equality through nonviolent protest.",
      "Famous for his 'I Have a Dream' speech during the 1963 March on Washington, which called for an end to racism.",
      "Awarded the Nobel Peace Prize in 1964 for his efforts to combat racial inequality through nonviolence.",
      "Assassinated in 1968, his legacy continues to influence civil rights movements worldwide.",
      "Key figure in the passage of the Civil Rights Act of 1964 and the Voting Rights Act of 1965."
    ],
    "Leonardo da Vinci": [
      "Renowned Renaissance artist, known for masterpieces like the Mona Lisa and The Last Supper.",
      "Also a scientist, engineer, and inventor, with sketches that anticipated modern inventions like helicopters and tanks.",
      "His notebooks, filled with diagrams and notes, show his deep interest in anatomy, astronomy, and botany.",
      "Often described as the quintessential 'Renaissance Man' for his diverse talents and intellectual curiosity.",
      "Spent his final years in France, where he was invited by King Francis I to work and live."
    ],
    "William Shakespeare": [
      "Widely regarded as one of the greatest writers in the English language and the world’s pre-eminent dramatist.",
      "Wrote 39 plays, including tragedies like Hamlet and Romeo and Juliet, comedies like A Midsummer Night's Dream, and histories like Henry V.",
      "His works have been translated into every major living language and are performed more often than those of any other playwright.",
      "Also known for his 154 sonnets, exploring themes of love, beauty, politics, and mortality.",
      "Born and raised in Stratford-upon-Avon, where he also spent his final years."
    ],
    "Nelson Mandela": [
      "Anti-apartheid revolutionary and political leader who served as President of South Africa from 1994 to 1999.",
      "Imprisoned for 27 years for his efforts to overthrow the apartheid regime, he became a symbol of resistance and reconciliation.",
      "Awarded the Nobel Peace Prize in 1993 alongside F.W. de Klerk for their work to peacefully end apartheid.",
      "Known for his philosophy of forgiveness and reconciliation, helping to unite South Africa after decades of racial division.",
      "Authored the autobiography 'Long Walk to Freedom,' detailing his life and struggle for equality."
    ],
    "Isaac Newton": [
      "English mathematician, physicist, astronomer, and author who is widely recognized as one of the most influential scientists of all time.",
      "Formulated the laws of motion and universal gravitation, which dominated the scientific view of the physical universe for the next three centuries.",
      "His book 'Mathematical Principles of Natural Philosophy,' commonly known as the Principia, laid the groundwork for classical mechanics.",
      "Also made significant contributions to optics and mathematics, including the development of calculus.",
      "Served as Warden and later Master of the Royal Mint, where he oversaw the recoinage of the English currency."
    ],
    "Mother Teresa": [
      "Catholic nun and missionary known for her work with the poor in Kolkata, India.",
      "Founded the Missionaries of Charity, which now operates in over 130 countries, providing care for the sick, homeless, and dying.",
      "Awarded the Nobel Peace Prize in 1979 for her humanitarian work.",
      "Canonized as Saint Teresa of Calcutta by the Catholic Church in 2016.",
      "Known for her deep faith and commitment to serving the 'poorest of the poor,' despite criticism of her methods and beliefs."
    ],
    "Winston Churchill": [
      "British Prime Minister during World War II, known for his leadership and oratory skills.",
      "Famous for his speeches that inspired the British people during the darkest days of the war, including the phrase 'We shall never surrender.'",
      "Also a Nobel Prize-winning writer, known for his historical works, including a multi-volume history of World War II.",
      "Led Britain to victory in World War II, though his post-war government was defeated in the 1945 election.",
      "Known for his wit, eccentricity, and his role in shaping the post-war world order."
    ],
    "Steve Jobs": [
      "Co-founder of Apple Inc., and a key figure in the development of personal computers, smartphones, and digital media.",
      "Known for his visionary leadership, overseeing the creation of iconic products like the iPhone, iPad, and MacBook.",
      "Famous for his emphasis on design, user experience, and innovation, often pushing boundaries in technology.",
      "Also co-founded Pixar Animation Studios, which revolutionized the animation industry with films like Toy Story.",
      "Remembered as a transformative figure in technology, with a legacy that continues to influence the tech industry."
    ],
    "Amelia Earhart": [
      "Aviation pioneer and the first female aviator to fly solo across the Atlantic Ocean.",
      "Set numerous aviation records and was a key figure in the early movement for women's rights.",
      "Disappeared in 1937 during an attempt to circumnavigate the globe, leading to one of the greatest unsolved mysteries in history.",
      "Authored several books about her flying experiences, inspiring generations of women to pursue careers in aviation.",
      "Remembered as a trailblazer in both aviation and women's rights, her legacy endures through numerous honors and memorials."
    ],
    "Galileo Galilei": [
      "Italian astronomer, physicist, and engineer, known as the 'father of modern observational astronomy.'",
      "Made significant contributions to the development of the scientific method and was a key figure in the Scientific Revolution.",
      "Improved the telescope and used it to make groundbreaking observations, including the moons of Jupiter and the phases of Venus.",
      "Championed heliocentrism, the idea that the Earth orbits the Sun, which led to conflict with the Catholic Church.",
      "Placed under house arrest for his views, but his work laid the foundation for modern physics and astronomy."
    ],
    "Queen Elizabeth I": [
      "Daughter of Henry VIII and Anne Boleyn, she became one of England's greatest monarchs.",
      "Her reign, known as the Elizabethan Era, was a period of English cultural renaissance and the flourishing of English drama, led by playwrights such as William Shakespeare.",
      "Famous for her political acumen, she maintained stability and avoided costly wars despite pressure from European powers.",
      "Never married, earning her the nickname 'The Virgin Queen,' and she skillfully used her single status to her advantage in diplomacy.",
      "Her leadership helped England become a major world power and laid the foundations for the British Empire."
    ],
    "Nelson Mandela": [
      "Anti-apartheid revolutionary and the first Black president of South Africa.",
      "Spent 27 years in prison for his activism against South Africa's racist apartheid system.",
      "Led the country’s transition from apartheid to a multi-racial democracy.",
      "Awarded the Nobel Peace Prize in 1993 for his efforts in dismantling apartheid.",
      "Known for his emphasis on reconciliation and forgiveness, even toward those who had oppressed him."
    ],
    "Helen Keller": [
      "An American author, disability rights advocate, and lecturer who was the first deaf-blind person to earn a Bachelor of Arts degree.",
      "Lost her sight and hearing at 19 months old but overcame these challenges with the help of her teacher, Anne Sullivan.",
      "Became an advocate for people with disabilities, co-founding the American Civil Liberties Union (ACLU) in 1920.",
      "Wrote 12 published books and numerous articles on social issues, including women's suffrage, pacifism, and workers' rights.",
      "Her life and accomplishments have inspired millions around the world, demonstrating the power of determination and education."
    ],
    "Muhammad Ali": [
      "One of the greatest boxers of all time, known for his charisma and sportsmanship both in and out of the ring.",
      "Won the world heavyweight title three times, becoming the first fighter to do so.",
      "Famous for his refusal to be drafted into the Vietnam War, citing religious beliefs and opposition to the war, which led to his suspension from boxing.",
      "Known for his fast footwork, powerful punches, and catchphrases like 'Float like a butterfly, sting like a bee.'",
      "Also a civil rights advocate, using his fame to speak out against racial injustice and inequality."
    ],
    "Cleopatra": [
      "The last active ruler of the Ptolemaic Kingdom of Egypt, famous for her intelligence, political acumen, and romantic relationships with Julius Caesar and Mark Antony.",
      "Known for her role in the Roman political battles between Julius Caesar and Pompey, and later between Mark Antony and Octavian.",
      "Often depicted as a seductress, but also a shrewd and capable ruler who sought to protect Egypt’s independence.",
      "Her death marked the end of the Ptolemaic dynasty and the beginning of Roman Egypt.",
      "Her life has been the subject of numerous works of art, literature, and films, solidifying her legacy as one of history's most fascinating figures."
    ],
    "Vincent van Gogh": [
      "Dutch post-impressionist painter who is among the most famous and influential figures in Western art.",
      "Known for his expressive and emotive use of color, with famous works including 'Starry Night,' 'Sunflowers,' and 'The Bedroom.'",
      "Struggled with mental illness throughout his life and famously cut off part of his ear after a confrontation with fellow artist Paul Gauguin.",
      "Sold only one painting during his lifetime, but his work gained widespread fame and influence after his death.",
      "His tragic life story and powerful paintings have made him a symbol of the tortured artist, with his works now among the most valuable in the world."
    ],
    "Mona Lisa": [
      "The subject of Leonardo da Vinci's most famous painting, known for her enigmatic smile.",
      "Also known as La Gioconda, the painting is housed in the Louvre Museum in Paris.",
      "Considered an archetypal masterpiece of the Italian Renaissance, the painting’s fame has grown over centuries.",
      "The identity of the sitter remains a topic of debate among historians, with some believing she was Lisa Gherardini, a wealthy Florentine woman.",
      "The painting’s fame has made it an enduring symbol of artistic achievement and mystery."
    ]
  };
//...............................................repository for fruits and vegetables...............................................
  Map<String, List<String>> fruitsAndVegetables = {
    "Apple": [
      "One of the most popular and widely cultivated fruits in the world.",
      "Comes in various colors, including red, green, and yellow, each with a slightly different taste.",
      "Rich in fiber and vitamin C, making it a healthy snack option.",
      "Associated with the saying 'An apple a day keeps the doctor away' due to its health benefits.",
      "Over 7,500 varieties of apples are grown worldwide, each with unique flavor and texture."
    ],
    "Banana": [
      "A tropical fruit that is a staple food in many countries around the world.",
      "Rich in potassium, making it beneficial for heart health and muscle function.",
      "Bananas grow in clusters on large herbaceous plants, not trees.",
      "Easily digestible and often recommended as a first solid food for babies.",
      "Used in various cuisines, from sweet desserts like banana bread to savory dishes like banana curry."
    ],
    "Carrot": [
      "A root vegetable typically orange in color, though it comes in other shades like purple, red, and yellow.",
      "Rich in beta-carotene, which the body converts into vitamin A, essential for eye health.",
      "Can be eaten raw, cooked, or juiced, and is often used in salads, soups, and stews.",
      "Originally domesticated in Persia, where the earliest varieties were purple and yellow.",
      "The orange carrot was popularized in the Netherlands in the 17th century as a tribute to the House of Orange."
    ],
    "Tomato": [
      "Botanically a fruit but commonly used as a vegetable in culinary contexts.",
      "Rich in lycopene, an antioxidant linked to many health benefits, including reduced risk of heart disease and cancer.",
      "Comes in various colors, including red, yellow, green, and purple, each with its own flavor profile.",
      "Native to western South America, it was first domesticated in Mexico and later spread worldwide.",
      "A key ingredient in many cuisines, especially Italian, where it is used in sauces, salads, and pizzas."
    ],
    "Spinach": [
      "A leafy green vegetable that is highly nutritious, packed with vitamins A, C, and K, as well as iron and calcium.",
      "Can be eaten raw in salads, cooked in various dishes, or blended into smoothies.",
      "Originally from Persia, spinach became a popular vegetable in the Mediterranean and later worldwide.",
      "Famous for its association with the cartoon character Popeye, who eats spinach to gain superhuman strength.",
      "Contains oxalates, which can interfere with calcium absorption, but also offers numerous health benefits."
    ],
    "Strawberry": [
      "A popular red fruit known for its sweet flavor and juicy texture.",
      "Rich in vitamin C, manganese, and antioxidants, making it a nutritious and delicious snack.",
      "Unique among fruits because its seeds are on the outside rather than inside.",
      "Cultivated varieties are descendants of wild strawberries from the Americas and Europe.",
      "Often used in desserts like strawberry shortcake, as well as in jams, jellies, and smoothies."
    ],
    "Broccoli": [
      "A cruciferous vegetable related to cabbage, kale, and cauliflower, known for its high nutritional value.",
      "Rich in vitamins C, K, and A, as well as fiber and various antioxidants.",
      "Can be eaten raw, steamed, roasted, or added to a variety of dishes, including stir-fries and casseroles.",
      "Originally cultivated in Italy, where it was bred from wild cabbage.",
      "Known for its potential cancer-fighting properties due to the presence of sulforaphane."
    ],
    "Blueberry": [
      "A small, round fruit that is blue or purple in color and known for its sweet-tart flavor.",
      "Packed with antioxidants, particularly anthocyanins, which give the fruit its color and health benefits.",
      "Native to North America, blueberries have been consumed for centuries by indigenous peoples.",
      "Often eaten fresh, in smoothies, or as part of baked goods like muffins and pies.",
      "Studies suggest that blueberries may help improve brain function and memory."
    ],
    "Pumpkin": [
      "A large, orange squash that is a type of winter squash, known for its versatility in cooking.",
      "Rich in vitamins A and C, as well as fiber and antioxidants.",
      "Often associated with autumn and Halloween, when it is carved into jack-o'-lanterns.",
      "Used in both sweet and savory dishes, including pumpkin pie, soups, and roasted pumpkin.",
      "Native to North America, pumpkins have been cultivated for thousands of years."
    ],
    "Mango": [
      "A tropical stone fruit with a sweet, juicy flesh and a large pit in the center.",
      "Rich in vitamins A and C, as well as dietary fiber, making it a healthy and delicious snack.",
      "Native to South Asia, particularly India, where it is considered the 'king of fruits.'",
      "Comes in many varieties, each with a unique flavor, texture, and color.",
      "Often eaten fresh, in smoothies, or as part of desserts like mango sticky rice."
    ],
    "Potato": [
      "A starchy root vegetable that is one of the most widely consumed foods in the world.",
      "Rich in carbohydrates, particularly in the form of starch, making it a key energy source in many diets.",
      "Native to the Andes region of South America, potatoes were brought to Europe by Spanish explorers.",
      "Used in a wide range of dishes, from mashed potatoes to French fries to potato chips.",
      "A staple food in many cultures, potatoes can be boiled, baked, fried, or roasted."
    ],
    "Pineapple": [
      "A tropical fruit known for its spiky skin and sweet-tart flavor.",
      "Rich in vitamin C, manganese, and bromelain, an enzyme that aids digestion.",
      "Native to South America, particularly in the area now known as Paraguay and southern Brazil.",
      "Often eaten fresh, grilled, or as part of desserts and tropical drinks like piña colada.",
      "Pineapple's name comes from the resemblance of the fruit to a pine cone."
    ],
    "Cucumber": [
      "A cool, refreshing vegetable often used in salads, sandwiches, and pickles.",
      "Composed mostly of water, making it hydrating and low in calories.",
      "Rich in vitamin K and contains a small amount of vitamin C and potassium.",
      "Native to South Asia, cucumbers have been cultivated for thousands of years.",
      "Can be eaten raw or pickled, and is often used in skincare for its soothing properties."
    ],
    "Grapes": [
      "Small, sweet fruits that grow in clusters on vines and come in various colors, including red, green, and purple.",
      "Used to make wine, raisins, and grape juice, as well as being eaten fresh as a snack.",
      "Rich in antioxidants, particularly resveratrol, which has been linked to heart health.",
      "Cultivated for thousands of years, grapes are one of the most widely grown fruit crops in the world.",
      "Grapes are often associated with ancient Roman and Greek mythology, where they symbolized abundance and fertility."
    ],
    "Onion": [
      "A bulbous vegetable that is a staple ingredient in many cuisines worldwide.",
      "Known for its pungent flavor and aroma, which mellows and sweetens when cooked.",
      "Rich in vitamins C and B6, as well as manganese and various antioxidants.",
      "Can be eaten raw, sautéed, roasted, or caramelized, adding flavor to a wide variety of dishes.",
      "Onions have been cultivated for thousands of years, with origins traced back to central Asia."
    ],
    "Avocado": [
      "A creamy, nutrient-rich fruit known for its high content of healthy fats, particularly monounsaturated fat.",
      "Rich in fiber, potassium, and vitamins C, E, and K, making it a popular superfood.",
      "Native to Mexico and Central America, where it has been cultivated for over 7,000 years.",
      "Often used in dishes like guacamole, salads, and smoothies, or simply spread on toast.",
      "Avocados have become a symbol of health and wellness, often associated with trendy diets and culinary innovations."
    ],
    "Peach": [
      "A juicy, sweet fruit with a fuzzy skin and a large pit in the center.",
      "Rich in vitamins A and C, as well as dietary fiber and antioxidants.",
      "Native to Northwest China, peaches have been cultivated for over 4,000 years.",
      "Often eaten fresh, canned, or baked into desserts like peach cobbler.",
      "Peaches are a symbol of longevity and immortality in Chinese culture."
    ],
    "Eggplant": [
      "A versatile vegetable, also known as aubergine, that is commonly used in Mediterranean, Middle Eastern, and Asian cuisines.",
      "Rich in fiber, vitamins B1 and B6, and antioxidants like nasunin, which is found in its purple skin.",
      "Native to India and Southeast Asia, eggplant has been cultivated for thousands of years.",
      "Can be grilled, roasted, fried, or baked, and is a key ingredient in dishes like ratatouille and baba ghanoush.",
      "Eggplant belongs to the nightshade family, which also includes tomatoes and potatoes."
    ],
    "Lemon": [
      "A citrus fruit known for its bright yellow color and tangy, acidic flavor.",
      "Rich in vitamin C, making it a popular choice for boosting the immune system.",
      "Native to Asia, lemons were later introduced to Europe and the Americas by explorers.",
      "Used in a wide variety of culinary applications, from flavoring dishes to making lemonade and desserts.",
      "Lemon juice is also commonly used as a natural cleaning agent and preservative."
    ],
    "Zucchini": [
      "A summer squash that is commonly green, though yellow varieties also exist.",
      "Low in calories and rich in vitamin C, potassium, and dietary fiber.",
      "Can be eaten raw, cooked, or baked into dishes like zucchini bread and ratatouille.",
      "Native to Central and South America, zucchini was later cultivated in Italy, where it became popular.",
      "Zucchini is often harvested while still immature for the best flavor and texture."
    ],
    "Cherry": [
      "A small, round fruit that is typically red or dark purple, known for its sweet-tart flavor.",
      "Rich in antioxidants, vitamins C and A, and dietary fiber.",
      "Cherries are believed to have originated in the region between the Black and Caspian Seas.",
      "Often eaten fresh, dried, or used in desserts like cherry pie and black forest cake.",
      "Cherry blossoms, especially in Japan, are celebrated in festivals and symbolize the beauty and fleeting nature of life."
    ]
  };
//...............................................repository for brands...............................................
  Map<String, List<String>> brands = {
    "Apple": [
      "Founded in 1976 by Steve Jobs, Steve Wozniak, and Ronald Wayne.",
      "Known for its innovative products like the iPhone, iPad, and Mac computers.",
      "The company's logo is one of the most recognizable in the world, featuring a bitten apple.",
      "Apple's App Store was the first platform to offer millions of apps to users.",
      "Famous for its minimalistic design philosophy and high-end retail stores."
    ],
    "Nike": [
      "Founded in 1964 by Bill Bowerman and Phil Knight as Blue Ribbon Sports, later renamed Nike in 1971.",
      "The iconic 'Swoosh' logo was designed by a student for just 35 dollars",
      "Known for its slogan 'Just Do It,' which became one of the most memorable brand catchphrases.",
      "Nike is a leader in sports apparel and footwear, sponsoring top athletes and sports teams globally.",
      "The brand's Air Jordan line, endorsed by Michael Jordan, revolutionized the athletic shoe market."
    ],
    "Coca-Cola": [
      "Founded in 1886 by John Stith Pemberton in Atlanta, Georgia.",
      "One of the most famous and widely consumed beverages in the world.",
      "The Coca-Cola bottle is one of the most recognized shapes globally, known for its contoured design.",
      "Coca-Cola has a strong presence in pop culture, often associated with happiness and sharing.",
      "The company has a diverse portfolio, including Diet Coke, Sprite, and Fanta."
    ],
    "McDonald's": [
      "Founded in 1940 by Richard and Maurice McDonald in San Bernardino, California.",
      "Known for its iconic Golden Arches logo and Big Mac sandwich.",
      "McDonald's is one of the world's largest fast-food chains, serving over 69 million customers daily.",
      "Introduced the concept of the 'Happy Meal,' which became popular with children worldwide.",
      "The company has over 38,000 locations in more than 100 countries."
    ],
    "Google": [
      "Founded in 1998 by Larry Page and Sergey Brin while they were Ph.D. students at Stanford University.",
      "Originally started as a search engine, it has since expanded into various areas including advertising, cloud computing, and AI.",
      "Google's parent company, Alphabet Inc., was formed in 2015 to manage its expanding operations.",
      "The brand is known for its innovative products like Google Search, Google Maps, and Android OS.",
      "Google's mission is to 'organize the world’s information and make it universally accessible and useful.'"
    ],
    "Samsung": [
      "Founded in 1938 by Lee Byung-chul as a trading company in South Korea.",
      "Today, Samsung is a global leader in electronics, particularly in smartphones, televisions, and home appliances.",
      "The Samsung Galaxy series is one of the most popular smartphone lines in the world.",
      "Samsung is also a major player in the semiconductor industry, producing chips for various devices.",
      "The company has a strong reputation for innovation, with significant investments in research and development."
    ],
    "Toyota": [
      "Founded in 1937 by Kiichiro Toyoda in Japan as a division of Toyoda Automatic Loom Works.",
      "Known for its reliable and fuel-efficient vehicles, including the best-selling Corolla model.",
      "Toyota was a pioneer in hybrid technology with the launch of the Prius in 1997.",
      "The company introduced the 'Toyota Production System,' a methodology that revolutionized manufacturing processes.",
      "Toyota is consistently ranked as one of the largest automobile manufacturers in the world."
    ],
    "Microsoft": [
      "Founded in 1975 by Bill Gates and Paul Allen in Albuquerque, New Mexico.",
      "Known for its Windows operating system, which became the dominant OS for personal computers.",
      "Microsoft Office, including Word, Excel, and PowerPoint, is one of the most widely used software suites globally.",
      "The company is also a leader in cloud computing with its Azure platform.",
      "Microsoft's Xbox is a major player in the gaming industry, competing with Sony's PlayStation."
    ],
    "Amazon": [
      "Founded in 1994 by Jeff Bezos as an online bookstore, it quickly expanded into various product categories.",
      "Amazon is the world's largest online retailer, offering everything from books to electronics to groceries.",
      "The company revolutionized e-commerce with its fast delivery services and customer-centric approach.",
      "Amazon Web Services (AWS) is a leader in cloud computing, providing services to businesses worldwide.",
      "Amazon's Prime membership program offers benefits like free shipping, streaming services, and exclusive deals."
    ],
    "BMW": [
      "Founded in 1916 as Bayerische Motoren Werke AG in Germany, originally producing aircraft engines.",
      "Known for luxury vehicles that emphasize performance, design, and advanced technology.",
      "The company's slogan 'The Ultimate Driving Machine' reflects its focus on driving pleasure.",
      "BMW produces a wide range of vehicles, including sedans, SUVs, and motorcycles.",
      "The brand is also a leader in electric vehicle technology with its BMW i series."
    ],
    "Louis Vuitton": [
      "Founded in 1854 by Louis Vuitton in Paris, France, as a maker of high-quality trunks and leather goods.",
      "Known for its iconic monogram pattern and luxury fashion products, including handbags, luggage, and clothing.",
      "Louis Vuitton is one of the world's leading luxury brands, often associated with exclusivity and status.",
      "The brand has collaborated with famous artists and designers to create unique and limited-edition collections.",
      "Part of LVMH, the world's largest luxury goods conglomerate, which includes brands like Dior and Givenchy."
    ],
    "Tesla": [
      "Founded in 2003 by Martin Eberhard and Marc Tarpenning, with Elon Musk later joining and becoming the face of the company.",
      "Known for its electric vehicles, including the Model S, Model 3, Model X, and Model Y.",
      "Tesla is a leader in the electric vehicle market, with a strong focus on innovation and sustainability.",
      "The company's Autopilot feature is a pioneering step toward fully autonomous driving.",
      "Tesla also produces solar energy products and battery storage solutions, contributing to the renewable energy sector."
    ],
    "Starbucks": [
      "Founded in 1971 by Jerry Baldwin, Zev Siegl, and Gordon Bowker in Seattle, Washington.",
      "Known for its coffeehouse culture, offering a wide range of coffee drinks, teas, and snacks.",
      "Starbucks has over 30,000 locations worldwide, making it one of the largest coffeehouse chains globally.",
      "The brand emphasizes quality coffee, customer experience, and social responsibility.",
      "Starbucks introduced the concept of the 'third place'—a comfortable place between home and work."
    ],
    "Intel": [
      "Founded in 1968 by Robert Noyce and Gordon Moore, known for pioneering the semiconductor industry.",
      "Intel is the world's largest and highest valued semiconductor chip manufacturer.",
      "The company is famous for its microprocessors, which power the majority of personal computers worldwide.",
      "Intel's 'Intel Inside' campaign helped make the brand a household name in the 1990s.",
      "The company continues to innovate in fields like artificial intelligence, autonomous vehicles, and 5G technology."
    ],
    "Disney": [
      "Founded in 1923 by Walt Disney and Roy O. Disney as the Disney Brothers Studio.",
      "Known for creating some of the most beloved animated films and characters, including Mickey Mouse and Snow White.",
      "Disney is a leader in entertainment, owning theme parks, movie studios, and television networks like ABC and ESPN.",
      "The company acquired Marvel, Lucasfilm (Star Wars), and Pixar, expanding its reach in film and media.",
      "Disney+ is the company's streaming service, offering a vast library of Disney, Marvel, Star Wars, and National Geographic content."
    ],
    "Pepsi": [
      "Founded in 1898 by Caleb Bradham as 'Brad's Drink,' later renamed Pepsi-Cola.",
      "Known for its rivalry with Coca-Cola in the global soft drink market.",
      "Pepsi is famous for its bold marketing campaigns and sponsorship of sports and entertainment events.",
      "The brand has expanded into snacks and beverages through its parent company, PepsiCo, which owns brands like Frito-Lay, Quaker, and Gatorade.",
      "Pepsi's logo has undergone several redesigns over the years, reflecting its modern and youthful brand image."
    ],
    "Adidas": [
      "Founded in 1949 by Adolf 'Adi' Dassler in Germany, after splitting from his brother Rudolf, who founded Puma.",
      "Known for its three-stripe logo, which is instantly recognizable worldwide.",
      "Adidas is a leader in sports apparel and footwear, collaborating with top athletes and fashion designers.",
      "The brand has a strong presence in soccer, providing kits and equipment for many of the world's top teams.",
      "Adidas has also embraced sustainability, with initiatives to reduce plastic waste and create environmentally friendly products."
    ],
    "Sony": [
      "Founded in 1946 by Masaru Ibuka and Akio Morita in Tokyo, Japan.",
      "Known for pioneering products like the Walkman, PlayStation, and Trinitron TV.",
      "Sony is a major player in electronics, gaming, entertainment, and financial services.",
      "The PlayStation gaming console series is one of the most successful in the world, with a huge fan base.",
      "Sony Pictures and Sony Music are major players in the global entertainment industry."
    ],
    "L'Oréal": [
      "Founded in 1909 by Eugène Schueller in France, originally as a hair dye company.",
      "The world's largest cosmetics and beauty company, offering a wide range of products in skincare, haircare, makeup, and fragrance.",
      "L'Oréal owns many well-known brands, including Maybelline, Lancôme, and Garnier.",
      "The company is known for its innovation in beauty products and strong commitment to sustainability.",
      "L'Oréal's slogan, 'Because You're Worth It,' has become iconic, promoting self-confidence and empowerment."
    ],
    "Honda": [
      "Founded in 1948 by Soichiro Honda and Takeo Fujisawa in Japan.",
      "Known for its reliable and fuel-efficient vehicles, as well as motorcycles and power equipment.",
      "Honda is the world's largest manufacturer of motorcycles and internal combustion engines by volume.",
      "The brand has a strong reputation for quality and innovation in both the automotive and motorcycle industries.",
      "Honda also invests in robotics and AI, with products like ASIMO, a humanoid robot."
    ],
    "Rolex": [
      "Founded in 1905 by Hans Wilsdorf and Alfred Davis in London, England, later moved to Geneva, Switzerland.",
      "Known for its luxury watches, Rolex is a symbol of status, precision, and craftsmanship.",
      "The brand is famous for innovations such as the first waterproof wristwatch, the Oyster, and the self-winding mechanism.",
      "Rolex watches are often associated with success and are worn by prominent figures worldwide.",
      "The brand is involved in various sponsorships, including sports events like tennis, golf, and motorsports."
    ]
  };
//...............................................repository for mythology...............................................
  Map<String, List<String>> mythology = {
    "Greek Mythology": [
      "Centered around the pantheon of Olympian gods, led by Zeus, the king of the gods.",
      "Famous myths include the stories of Hercules, the Trojan War, and the Odyssey.",
      "The gods often interacted with humans, sometimes helping them but often causing trouble.",
      "The Greeks explained natural phenomena and human behavior through these myths, such as the changing seasons with the myth of Persephone.",
      "Key figures include Athena (goddess of wisdom), Poseidon (god of the sea), and Hades (god of the underworld)."
    ],
    "Norse Mythology": [
      "Originates from the Scandinavian and Germanic peoples, with gods who reside in Asgard.",
      "Odin is the chief god, known for his wisdom, and Thor, the god of thunder, is one of the most popular figures.",
      "Ragnarok is a central myth, depicting the end of the world in a great battle where many gods perish.",
      "Myths were preserved in the Poetic Edda and Prose Edda, written down by Icelandic scholars.",
      "Key elements include Yggdrasil, the World Tree, and the nine realms connected by it."
    ],
    "Egyptian Mythology": [
      "Centered around the worship of gods like Ra (the sun god), Osiris (god of the afterlife), and Isis (goddess of magic and motherhood).",
      "Pharaohs were considered divine and were believed to become gods after death.",
      "The myth of Osiris and Isis is one of the most important, explaining the origins of the afterlife and the pharaoh's role.",
      "The gods were often depicted with animal heads, such as Anubis with a jackal head and Horus with a falcon head.",
      "The Egyptians believed in a complex afterlife, with rituals like mummification ensuring safe passage to the next world."
    ],
    "Roman Mythology": [
      "Largely borrowed from Greek mythology but with different names and slightly altered characteristics.",
      "Jupiter was the king of the gods, equivalent to Zeus, and Mars was the god of war, equivalent to Ares.",
      "Myths often centered around the founding of Rome, such as the story of Romulus and Remus, twin brothers raised by a she-wolf.",
      "The Romans also worshipped household gods known as Lares and Penates.",
      "Roman mythology played a crucial role in the state's political and religious life, with emperors often deified after death."
    ],
    "Hindu Mythology": [
      "Features a vast pantheon of gods and goddesses, including Brahma (the creator), Vishnu (the preserver), and Shiva (the destroyer).",
      "The myths are found in ancient texts like the Vedas, the Mahabharata, and the Ramayana.",
      "Central stories include the epic battles in the Mahabharata, and the life and adventures of Rama in the Ramayana.",
      "Karma and reincarnation are key concepts, with one's actions in life affecting their future rebirths.",
      "Deities often have multiple forms and avatars, such as Vishnu's incarnations as Rama and Krishna."
    ],
    "Celtic Mythology": [
      "Originates from the ancient Celtic tribes of Ireland, Scotland, and Wales.",
      "Features gods like Dagda (the good god), Brigid (goddess of healing and poetry), and Lugh (god of crafts and war).",
      "The Tuatha Dé Danann are a race of deities who play a central role in many myths.",
      "Key texts include the Mabinogion and the Book of Invasions, which detail the history and legends of the Celts.",
      "Celtic mythology is rich in stories of magic, heroism, and the Otherworld, a mystical realm parallel to our own."
    ],
    "Aztec Mythology": [
      "Centered around gods like Huitzilopochtli (god of war and the sun), Quetzalcoatl (the feathered serpent), and Tlaloc (god of rain).",
      "The Aztecs believed in a cyclical universe, where the world had been created and destroyed multiple times.",
      "Human sacrifice was a key aspect of their religious practices, believed to appease the gods and ensure the sun's continued movement.",
      "The myth of the Five Suns describes the different eras of the world, each ending in destruction.",
      "Aztec mythology was closely linked to their calendar and the cycles of nature."
    ],
    "Chinese Mythology": [
      "Features a vast array of gods, spirits, and legendary figures, with the Jade Emperor as the ruler of the heavens.",
      "The myth of Pangu is central, describing the creation of the world from the body of a giant.",
      "Dragons are revered as powerful and benevolent creatures, associated with water and weather.",
      "The Eight Immortals are popular figures, each with unique powers and symbols.",
      "The myths are recorded in texts like the Classic of Mountains and Seas and the Journey to the West."
    ],
    "Japanese Mythology": [
      "Centered around the Shinto religion, with gods known as kami who inhabit all things in nature.",
      "Amaterasu, the sun goddess, is one of the most important deities, believed to be the ancestor of the Japanese emperors.",
      "The Kojiki and Nihon Shoki are the oldest chronicles of Japanese myths, detailing the creation of Japan and its gods.",
      "The myth of Izanagi and Izanami describes the creation of the Japanese islands.",
      "Japanese mythology includes numerous spirits and creatures, such as yokai, which range from mischievous to malevolent."
    ],
    "Mayan Mythology": [
      "Features gods like Itzamna (creator god), Kukulkan (feathered serpent), and Chac (rain god).",
      "The Popol Vuh is the most important text, describing the creation of the world and the adventures of the Hero Twins.",
      "The Mayans believed in a layered universe with 13 heavens and 9 underworlds, with humans residing in the middle.",
      "Rituals, including bloodletting and human sacrifice, were performed to maintain cosmic balance.",
      "The Mayan calendar was deeply intertwined with their mythology, predicting cycles of creation and destruction."
    ],
    "Incan Mythology": [
      "Centered around gods like Viracocha (the creator god), Inti (the sun god), and Pachamama (earth goddess).",
      "The Inca believed their emperor, the Sapa Inca, was a direct descendant of the sun god Inti.",
      "Machu Picchu and other sacred sites were believed to be the abodes of gods and spirits.",
      "Myths often explain the origins of natural features, such as mountains and rivers, as the result of divine actions.",
      "The Inca practiced ancestor worship, believing that the spirits of the dead could influence the living."
    ],
    "Mesopotamian Mythology": [
      "Includes the myths of the Sumerians, Akkadians, Babylonians, and Assyrians, with gods like Anu (sky god), Enlil (god of air), and Ishtar (goddess of love and war).",
      "The Epic of Gilgamesh is one of the oldest known stories, telling the adventures of King Gilgamesh and his quest for immortality.",
      "The Mesopotamians believed in a flat earth covered by a dome, with the gods residing in the heavens.",
      "Myths often explain the origins of the world, the human race, and the city-states of Mesopotamia.",
      "The gods were believed to control every aspect of life, from natural disasters to personal fortunes."
    ],
    "Polynesian Mythology": [
      "Includes the myths of the Maori, Hawaiians, Samoans, and other Polynesian cultures.",
      "Maui is a central figure, known for his exploits like fishing up islands and slowing the sun.",
      "The Polynesians believed in a pantheon of gods and spirits that governed the natural world.",
      "The concept of mana, a spiritual force, is central to Polynesian belief systems.",
      "Oral traditions and chants preserve the myths, which explain the creation of the world, the origins of humans, and the genealogies of chiefs."
    ],
    "Native American Mythology": [
      "Encompasses a diverse range of beliefs and myths from the various tribes across North America.",
      "The Great Spirit, or Wakan Tanka, is often considered the supreme being in many Native American religions.",
      "Animals play a crucial role in many myths, often serving as ancestors, guides, or symbols of spiritual power.",
      "Creation myths vary widely, but many involve the Earth being formed from a vast, primordial ocean.",
      "Oral traditions are key to preserving these myths, which are deeply connected to the land and nature."
    ],
    "Slavic Mythology": [
      "Includes the myths and beliefs of the ancient Slavs, with gods like Perun (god of thunder), Veles (god of the underworld), and Mokosh (goddess of fertility).",
      "The Slavs believed in a dualistic universe, with the gods of light and order opposing the forces of darkness and chaos.",
      "Myths often explain natural phenomena, such as thunderstorms being the result of battles between Perun and Veles.",
      "The Slavic pantheon was deeply tied to nature, with deities associated with rivers, forests, and mountains.",
      "Much of Slavic mythology was absorbed into Christian traditions, but many elements survive in folklore and customs."
    ]
  };
//...............................................repository for science...............................................
  Map<String, List<String>> science = {
    "Physics": [
      "The branch of science concerned with the nature and properties of matter and energy.",
      "Key concepts include force, energy, mass, and charge.",
      "Famous physicists include Isaac Newton, who formulated the laws of motion and universal gravitation, and Albert Einstein, who developed the theory of relativity.",
      "Quantum mechanics, a subfield of physics, describes the behavior of particles on the atomic and subatomic scales.",
      "The Standard Model of particle physics explains how fundamental particles interact through the electromagnetic, weak, and strong nuclear forces."
    ],
    "Chemistry": [
      "The study of the composition, structure, properties, and change of matter.",
      "Famous for concepts like the periodic table, which organizes elements by their chemical properties.",
      "Key areas include organic chemistry, which focuses on carbon-containing compounds, and inorganic chemistry, which deals with non-organic substances.",
      "Chemistry is central to understanding processes like bonding, reactions, and the properties of materials.",
      "Nobel Prizes in Chemistry have been awarded for breakthroughs like the discovery of the structure of DNA and the development of new synthetic materials."
    ],
    "Biology": [
      "The study of living organisms and their interactions with one another and their environments.",
      "Key concepts include evolution by natural selection, genetics, and cellular biology.",
      "Famous biologists include Charles Darwin, who proposed the theory of evolution, and Gregor Mendel, the father of modern genetics.",
      "Biology is divided into various subfields, such as botany (the study of plants), zoology (the study of animals), and microbiology (the study of microorganisms).",
      "Modern biology also explores the molecular basis of life through fields like genomics and biotechnology."
    ],
    "Astronomy": [
      "The scientific study of celestial objects, space, and the universe as a whole.",
      "Key concepts include the Big Bang theory, the lifecycle of stars, and the formation of galaxies.",
      "Famous astronomers include Galileo Galilei, who made significant improvements to the telescope, and Edwin Hubble, who discovered the expansion of the universe.",
      "Astronomy is divided into observational and theoretical branches, with the former relying on telescopes and the latter on mathematical models.",
      "Space exploration has greatly expanded our knowledge of the universe, with missions to the Moon, Mars, and beyond."
    ],
    "Geology": [
      "The study of the Earth, including its composition, structure, and processes.",
      "Key concepts include plate tectonics, the rock cycle, and the formation of minerals.",
      "Geologists study phenomena like earthquakes, volcanoes, and the formation of mountains.",
      "The Earth's history is recorded in its rock layers, with fossils providing evidence of past life and environmental conditions.",
      "Geology is crucial for understanding natural resources, environmental change, and natural hazards."
    ],
    "Ecology": [
      "The branch of biology that studies the interactions between organisms and their environments.",
      "Key concepts include ecosystems, food chains, and biodiversity.",
      "Ecologists study how species interact with each other and their surroundings, including the impacts of human activity on the environment.",
      "Conservation biology, a subfield of ecology, focuses on protecting endangered species and habitats.",
      "Ecological research informs environmental policy and helps manage natural resources sustainably."
    ],
    "Mathematics": [
      "The abstract science of number, quantity, and space, either as abstract concepts (pure mathematics) or as applied to other disciplines such as physics and engineering (applied mathematics).",
      "Key concepts include algebra, calculus, geometry, and statistics.",
      "Famous mathematicians include Euclid, known as the father of geometry, and Carl Friedrich Gauss, who made significant contributions to number theory.",
      "Mathematics is the language of science, providing the tools to model, analyze, and solve problems in various fields.",
      "Modern mathematics also explores areas like chaos theory, cryptography, and topology."
    ],
    "Genetics": [
      "The branch of biology that studies genes, genetic variation, and heredity in organisms.",
      "Key concepts include DNA, the genetic code, and the mechanisms of inheritance.",
      "Gregor Mendel's work on pea plants laid the foundation for the field of genetics.",
      "Modern genetics has led to advancements in biotechnology, such as genetic engineering and CRISPR gene editing.",
      "Genetics is also central to understanding evolution, disease, and the development of personalized medicine."
    ],
    "Meteorology": [
      "The study of the atmosphere and weather patterns.",
      "Key concepts include the water cycle, atmospheric pressure, and the formation of clouds.",
      "Meteorologists use data from weather stations, satellites, and radar to forecast weather and study climate patterns.",
      "Understanding meteorology is essential for predicting and preparing for severe weather events like hurricanes, tornadoes, and droughts.",
      "Climate science, a related field, studies long-term trends in weather and their impact on the environment."
    ],
    "Oceanography": [
      "The study of the physical and biological aspects of the ocean.",
      "Key areas include marine biology, the study of organisms in the ocean, and physical oceanography, which focuses on ocean currents, waves, and tides.",
      "Oceanographers also study the chemistry of seawater and the geology of the ocean floor.",
      "The ocean plays a crucial role in regulating the Earth's climate and supporting biodiversity.",
      "Oceanography is essential for understanding marine ecosystems, managing fisheries, and addressing issues like ocean pollution."
    ],
    "Psychology": [
      "The scientific study of the mind and behavior.",
      "Key concepts include cognition, emotion, personality, and mental health.",
      "Famous psychologists include Sigmund Freud, who developed psychoanalysis, and B.F. Skinner, known for his work on behaviorism.",
      "Psychology is divided into various subfields, such as clinical psychology, cognitive psychology, and developmental psychology.",
      "Research in psychology informs practices in education, therapy, and understanding social behavior."
    ],
    "Anthropology": [
      "The study of humans, their societies, and their cultural development.",
      "Key areas include cultural anthropology, which studies cultural practices and beliefs, and physical anthropology, which examines human evolution.",
      "Anthropologists study diverse aspects of human life, including language, art, religion, and social structures.",
      "Famous anthropologists include Margaret Mead, known for her studies of Samoan culture, and Louis Leakey, who made significant discoveries in human evolution.",
      "Anthropology provides insights into the diversity of human experiences and the commonalities that unite us."
    ],
    "Botany": [
      "The branch of biology that studies plants, including their structure, properties, and biochemical processes.",
      "Key areas include plant physiology, the study of how plants function, and plant taxonomy, the classification of plants.",
      "Botanists also study the ecological relationships of plants with other organisms and their environment.",
      "Plants are crucial to life on Earth, providing oxygen, food, and medicine.",
      "Research in botany contributes to agriculture, horticulture, and conservation efforts."
    ],
    "Paleontology": [
      "The study of the history of life on Earth through the examination of plant and animal fossils.",
      "Key concepts include the fossil record, the study of ancient ecosystems, and the evolution of life over geological time.",
      "Paleontologists have discovered fossils of dinosaurs, early mammals, and ancient plants, providing insights into past climates and environments.",
      "The field helps scientists understand the processes of evolution and extinction.",
      "Paleontology also informs our understanding of current biodiversity and how life may respond to future environmental changes."
    ],
    "Environmental Science": [
      "The interdisciplinary study of the environment and the solutions to environmental problems.",
      "Key concepts include sustainability, conservation, and the impacts of human activity on the planet.",
      "Environmental scientists study issues like pollution, climate change, and deforestation.",
      "The field combines knowledge from biology, chemistry, physics, and social sciences to address environmental challenges.",
      "Research in environmental science informs policy decisions and promotes practices that protect the environment for future generations."
    ],
    "Medicine": [
      "The science and practice of diagnosing, treating, and preventing disease.",
      "Key concepts include pathology (the study of disease), pharmacology (the study of drugs), and surgery.",
      "Famous figures include Hippocrates, known as the father of medicine, and Edward Jenner, who developed the first vaccine.",
      "Advances in medicine have led to increased life expectancy and improved quality of life through the development of treatments, vaccines, and medical technologies.",
      "Modern medicine also explores personalized medicine, genetics, and the impact of lifestyle on health."
    ],
    "Robotics": [
      "The branch of technology that deals with the design, construction, operation, and application of robots.",
      "Key areas include artificial intelligence, machine learning, and autonomous systems.",
      "Robots are used in various industries, from manufacturing and healthcare to space exploration.",
      "The development of robotics is leading to advancements in automation, efficiency, and human-robot interaction.",
      "Ethical considerations in robotics include the impact on employment, privacy, and the potential for autonomous systems to make critical decisions."
    ],
    "Neuroscience": [
      "The scientific study of the nervous system, including the brain, spinal cord, and peripheral nerves.",
      "Key concepts include neuroplasticity, the brain's ability to change and adapt, and neurotransmission, the process of communication between neurons.",
      "Neuroscience explores how the brain influences behavior, cognition, and emotions.",
      "Advances in neuroscience have led to better understanding and treatment of neurological disorders like Alzheimer's disease, epilepsy, and depression.",
      "The field also investigates the neural basis of consciousness, learning, and memory."
    ]
  };
//...............................................repository for foods...............................................
  Map<String, List<String>> foods = {
    "Pizza": [
      "Originated in Italy, with the modern pizza evolving in Naples during the 18th century.",
      "Traditional Neapolitan pizza is made with simple ingredients: dough, tomatoes, mozzarella cheese, fresh basil, and olive oil.",
      "Pizza has become a global phenomenon, with countless regional variations like New York-style, Chicago deep-dish, and Margherita.",
      "Pizza is one of the most popular fast foods in the world, with millions of slices consumed daily.",
      "The Margherita pizza was reportedly created in honor of Queen Margherita of Savoy, featuring the colors of the Italian flag."
    ],
    "Sushi": [
      "A traditional Japanese dish that consists of vinegared rice paired with ingredients like seafood, vegetables, and occasionally tropical fruits.",
      "Sushi types include nigiri (hand-pressed rice with a topping), maki (rice and filling rolled in seaweed), and sashimi (sliced raw fish served without rice).",
      "Sushi rice is seasoned with a mixture of vinegar, sugar, and salt, giving it a distinctive flavor.",
      "The practice of eating raw fish with rice dates back to ancient times in Japan, where it was initially a method of preserving fish.",
      "Sushi has become a popular dish worldwide, often served with soy sauce, wasabi, and pickled ginger."
    ],
    "Tacos": [
      "A traditional Mexican dish consisting of a folded or rolled tortilla filled with various ingredients like meat, beans, cheese, and vegetables.",
      "Tacos can be made with soft corn or flour tortillas, or with crispy fried shells.",
      "Popular taco fillings include carne asada (grilled beef), al pastor (spiced pork), and fish, often topped with salsa, guacamole, or lime juice.",
      "The taco's origins are believed to date back to indigenous Mexican cultures who used tortillas to hold food.",
      "Tacos have become a staple in Mexican cuisine and have spread globally, with variations like the American-style taco featuring ground beef and lettuce."
    ],
    "Pasta": [
      "A staple of Italian cuisine, pasta is made from wheat flour mixed with water or eggs and formed into various shapes and sizes.",
      "Common pasta shapes include spaghetti, penne, fusilli, and lasagna, each traditionally paired with specific types of sauces.",
      "The earliest evidence of pasta dates back to ancient China, but it became a major part of Italian cuisine during the Middle Ages.",
      "Popular pasta dishes include spaghetti Bolognese, lasagna, carbonara, and Alfredo.",
      "Italy is the world's largest producer and consumer of pasta, with each region having its own traditional pasta dishes."
    ],
    "Hamburger": [
      "A sandwich consisting of one or more cooked patties of ground meat, usually beef, placed inside a sliced bun.",
      "The hamburger is often topped with ingredients like lettuce, tomato, cheese, pickles, onions, and condiments like ketchup and mustard.",
      "The modern hamburger as we know it was popularized in the United States in the early 20th century, with origins linked to various American cities.",
      "Fast food chains like McDonald's and Burger King have made the hamburger a global icon of American cuisine.",
      "Hamburgers can also be made with alternative meats like turkey, chicken, or plant-based patties for vegetarians."
    ],
    "Curry": [
      "A dish originating from the Indian subcontinent, characterized by its use of a complex combination of spices and herbs, usually including turmeric, cumin, coriander, ginger, and chili.",
      "Curry can be made with a variety of ingredients, including meats, vegetables, and legumes, cooked in a spiced sauce.",
      "In India, curries vary widely by region, with some being dry and others saucy, using ingredients like coconut milk, yogurt, or tomatoes as the base.",
      "Curry has spread globally, with variations like Thai green curry, Japanese curry, and Caribbean curry, each with distinct flavors.",
      "In the UK, curry has become a national favorite, with dishes like chicken tikka masala being among the most popular."
    ],
    "Paella": [
      "A traditional Spanish dish originating from the Valencia region, known for its vibrant saffron-infused rice.",
      "Paella is typically cooked in a large, shallow pan and can include a variety of ingredients like seafood, chicken, rabbit, and vegetables.",
      "There are several variations, including Paella Valenciana (with rabbit and snails), Paella de Marisco (seafood paella), and Paella Mixta (a mix of seafood and meat).",
      "The dish is believed to have been created by farmers in Valencia who used local ingredients to cook a communal meal over an open fire.",
      "Paella is often enjoyed during gatherings and celebrations, symbolizing community and sharing."
    ],
    "Chocolate": [
      "Made from cacao beans, chocolate is one of the most popular and beloved sweets in the world.",
      "Chocolate can be enjoyed in many forms, including bars, truffles, hot cocoa, and as an ingredient in desserts like cakes and cookies.",
      "The Aztecs and Mayans were among the first to consume cacao, which they made into a bitter, spiced drink believed to have divine properties.",
      "Today, chocolate is produced in various forms, including dark, milk, and white chocolate, each with its own unique flavor profile.",
      "Switzerland and Belgium are famous for their high-quality chocolate production, known for their creamy, smooth textures."
    ],
    "Croissant": [
      "A buttery, flaky pastry of Austrian origin, though it is most famously associated with France.",
      "The name 'croissant' means 'crescent' in French, referring to the shape of the pastry.",
      "Made from a laminated dough that is layered with butter, rolled, and folded several times before being shaped and baked.",
      "The croissant is often enjoyed as a breakfast item or snack, plain or filled with chocolate, almond paste, or ham and cheese.",
      "The origins of the croissant date back to Vienna, Austria, where similar pastries called 'kipferl' were made as early as the 13th century."
    ],
    "Dim Sum": [
      "A traditional Chinese meal consisting of small dishes served with tea, often enjoyed as a brunch.",
      "Dim sum includes a variety of steamed, fried, and baked items, such as dumplings, buns, rolls, and cakes.",
      "Popular dim sum dishes include har gow (shrimp dumplings), siu mai (pork dumplings), and char siu bao (barbecue pork buns).",
      "Dim sum is typically served in small steamer baskets or on small plates, and is often shared among a group.",
      "The tradition of dim sum is believed to have originated in the Cantonese teahouses of southern China, where travelers would stop for a bite to eat."
    ],
    "Falafel": [
      "A popular Middle Eastern dish made from ground chickpeas or fava beans, mixed with herbs and spices, then formed into balls or patties and deep-fried.",
      "Falafel is often served in a pita or flatbread, topped with salads, pickled vegetables, and drizzled with tahini or yogurt sauce.",
      "It is believed to have originated in Egypt, where it was traditionally made with fava beans, before spreading throughout the Middle East.",
      "Falafel is a popular street food and is often considered a symbol of vegetarian cuisine in the region.",
      "The dish has gained international popularity, with many variations and adaptations found around the world."
    ],
    "Pho": [
      "A traditional Vietnamese soup consisting of broth, rice noodles, herbs, and meat, usually beef or chicken.",
      "The broth is simmered for hours with spices like cinnamon, star anise, and cloves to develop its deep flavor.",
      "Pho is typically served with fresh herbs, bean sprouts, lime, and chili peppers on the side, allowing diners to customize their bowl.",
      "The dish originated in northern Vietnam in the early 20th century and has since become a national dish of Vietnam.",
      "Pho is often enjoyed as a breakfast food in Vietnam, though it can be eaten at any time of day."
    ],
    "Gelato": [
      "An Italian-style ice cream that is known for its dense and creamy texture, with less air and fat than traditional ice cream.",
      "Gelato is made with milk, sugar, and natural flavorings, often featuring flavors like pistachio, hazelnut, chocolate, and fruit.",
      "The origins of gelato can be traced back to ancient Rome and Egypt, where people enjoyed frozen desserts made from snow and ice mixed with honey and fruit.",
      "Today, gelato is a popular treat in Italy and around the world, enjoyed in small scoops served in cups or cones.",
      "Gelaterias, or gelato shops, are common throughout Italy, where artisanal gelato is made fresh daily."
    ],
    "Hummus": [
      "A creamy Middle Eastern dip made from blended chickpeas, tahini (sesame paste), lemon juice, garlic, and olive oil.",
      "Hummus is traditionally served as part of a mezze, an assortment of small dishes, and is often eaten with pita bread or fresh vegetables.",
      "The origins of hummus are widely debated, with several Middle Eastern countries claiming to be the birthplace of the dish.",
      "Hummus is rich in protein and fiber, making it a nutritious and popular choice for vegetarians and vegans.",
      "The dish has become a staple in many households around the world and is available in various flavors, including roasted red pepper and garlic."
    ],
    "Ramen": [
      "A Japanese noodle soup consisting of Chinese-style wheat noodles served in a meat or fish-based broth, often flavored with soy sauce or miso.",
      "Ramen is typically topped with ingredients like sliced pork, nori (seaweed), menma (fermented bamboo shoots), and scallions.",
      "The dish has Chinese origins but was popularized in Japan after World War II, becoming a national favorite.",
      "Ramen has gained international fame, with countless regional variations, including tonkotsu (pork bone broth), shoyu (soy sauce), and miso ramen.",
      "Instant ramen noodles, invented in 1958 by Momofuku Ando, have become a global phenomenon and a convenient meal option."
    ],
    "Tiramisu": [
      "A popular Italian dessert made with layers of coffee-soaked ladyfingers, mascarpone cheese, cocoa powder, and sometimes a liqueur like Marsala or rum.",
      "The name 'tiramisu' means 'pick me up' in Italian, referring to the energizing effect of the coffee and cocoa.",
      "Tiramisu is believed to have originated in the Veneto region of Italy in the 1960s, though its exact origins are disputed.",
      "The dessert has become a beloved treat around the world, often featured on the menus of Italian restaurants.",
      "Tiramisu can be made in various ways, with some versions incorporating chocolate, fruit, or different types of alcohol."
    ],
    "Pad Thai": [
      "A stir-fried noodle dish that is one of Thailand's most famous and beloved dishes.",
      "Pad Thai is made with rice noodles, eggs, tofu, shrimp or chicken, and flavored with tamarind paste, fish sauce, garlic, and chili.",
      "The dish is often garnished with crushed peanuts, bean sprouts, lime wedges, and cilantro, adding a balance of flavors and textures.",
      "Pad Thai was introduced as a national dish of Thailand in the 1930s as part of a campaign to promote Thai nationalism and reduce rice consumption.",
      "Today, it is a popular street food in Thailand and is enjoyed in Thai restaurants worldwide."
    ],
    "Biryani": [
      "A fragrant and flavorful rice dish that originated in the Indian subcontinent, made with basmati rice, meat (such as chicken, mutton, or fish), and a blend of spices.",
      "Biryani is often cooked in a 'dum' style, where the ingredients are layered in a pot and slow-cooked, allowing the flavors to meld together.",
      "The dish is believed to have been brought to India by Persian travelers and merchants, with various regional variations emerging over time.",
      "Popular versions include Hyderabadi biryani, Lucknowi biryani, and Kolkata biryani, each with its own unique ingredients and cooking techniques.",
      "Biryani is a celebratory dish, often served during special occasions like weddings, festivals, and family gatherings."
    ]
  };
//...............................................repository for technology...............................................
  Map<String, List<String>> technology = {
    "Internet": [
      "A global network of interconnected computers that allows for the exchange of data and information.",
      "Originated from the ARPANET, a project funded by the U.S. Department of Defense in the late 1960s.",
      "The World Wide Web, developed by Tim Berners-Lee in 1989, made the internet accessible to the general public.",
      "The internet has revolutionized communication, commerce, education, and entertainment, becoming an integral part of modern life.",
      "Today, over half of the world's population has access to the internet, with billions of devices connected."
    ],
    "Smartphone": [
      "A mobile device that combines a phone with advanced features like internet access, apps, and a touchscreen interface.",
      "The first smartphone, the IBM Simon, was released in 1994, but modern smartphones began with the introduction of the iPhone in 2007.",
      "Smartphones have transformed the way people communicate, work, and consume media, with over 3 billion users worldwide.",
      "Key features include high-resolution cameras, GPS, biometric sensors, and access to millions of apps through platforms like Apple's App Store and Google Play.",
      "Smartphones have become essential tools for social media, online shopping, gaming, and navigation."
    ],
    "Artificial Intelligence": [
      "The simulation of human intelligence processes by machines, particularly computer systems.",
      "AI includes areas like machine learning, natural language processing, robotics, and computer vision.",
      "AI is used in various applications, from virtual assistants like Siri and Alexa to autonomous vehicles and predictive analytics.",
      "The field has evolved from early rule-based systems to complex neural networks that can learn from data and improve over time.",
      "AI raises ethical concerns about privacy, job displacement, and decision-making in critical areas like healthcare and criminal justice."
    ],
    "Blockchain": [
      "A decentralized and distributed digital ledger that records transactions across multiple computers in a secure, transparent, and tamper-resistant way.",
      "Originally developed as the underlying technology for Bitcoin, the first cryptocurrency, in 2008.",
      "Blockchain technology has applications beyond cryptocurrencies, including supply chain management, voting systems, and smart contracts.",
      "A key feature of blockchain is its immutability, meaning once a transaction is recorded, it cannot be altered.",
      "Blockchain is seen as a potential disruptor in various industries, offering new ways to ensure transparency, security, and efficiency."
    ],
    "Cloud Computing": [
      "The delivery of computing services—including storage, processing, and networking—over the internet, allowing for on-demand access to resources.",
      "Major cloud service providers include Amazon Web Services (AWS), Microsoft Azure, and Google Cloud.",
      "Cloud computing enables businesses and individuals to scale resources according to their needs without investing in physical infrastructure.",
      "Popular models include Infrastructure as a Service (IaaS), Platform as a Service (PaaS), and Software as a Service (SaaS).",
      "The technology supports a wide range of applications, from data storage and backup to hosting web services and running AI models."
    ],
    "5G Technology": [
      "The fifth generation of mobile network technology, offering significantly faster data speeds, lower latency, and greater connectivity than previous generations.",
      "5G networks are expected to enable new applications, such as autonomous vehicles, smart cities, and advanced IoT (Internet of Things) devices.",
      "The technology uses a broader range of frequencies, including millimeter waves, to achieve its high speeds and low latency.",
      "5G is being rolled out globally, with major telecommunications companies investing in infrastructure to support widespread adoption.",
      "The impact of 5G is anticipated to be transformative, driving innovation across industries like healthcare, manufacturing, and entertainment."
    ],
    "Virtual Reality": [
      "A technology that creates a simulated environment, allowing users to interact with 3D worlds through a VR headset and controllers.",
      "VR is used in gaming, training simulations, medical applications, and virtual tours.",
      "The technology immerses users in a completely digital environment, often enhancing experiences with spatial audio and haptic feedback.",
      "Key players in the VR market include Oculus (owned by Meta), HTC Vive, and Sony PlayStation VR.",
      "Challenges for VR include the need for high-performance hardware, potential motion sickness, and the creation of compelling content."
    ],
    "Augmented Reality": [
      "A technology that overlays digital information onto the real world, enhancing the user's perception of reality.",
      "AR is commonly experienced through smartphones and wearable devices like smart glasses.",
      "Popular applications include gaming (e.g., Pokémon GO), navigation, education, and retail, where AR can provide interactive product experiences.",
      "AR differs from VR in that it adds to the existing environment rather than creating an entirely new one.",
      "The technology is being explored in fields like healthcare for medical training, architecture for design visualization, and manufacturing for assembly guidance."
    ],
    "Quantum Computing": [
      "An emerging field of computing that uses the principles of quantum mechanics to process information in fundamentally different ways than classical computers.",
      "Quantum computers use qubits, which can represent both 0 and 1 simultaneously, enabling them to perform complex calculations much faster than traditional computers.",
      "Potential applications include cryptography, materials science, and solving complex optimization problems.",
      "Major tech companies like IBM, Google, and Microsoft are investing heavily in quantum computing research and development.",
      "Quantum computing is still in its early stages, with significant technical challenges to overcome before it becomes commercially viable."
    ],
    "3D Printing": [
      "A technology that creates physical objects from digital designs by laying down successive layers of material.",
      "3D printing is used in various industries, including manufacturing, healthcare (for prosthetics and implants), and construction.",
      "The technology allows for rapid prototyping, customization, and the production of complex geometries that would be difficult to achieve with traditional manufacturing methods.",
      "Materials used in 3D printing include plastics, metals, ceramics, and even biological tissues in bioprinting.",
      "3D printing is driving innovation in product design, reducing costs, and enabling new possibilities in fields like aerospace, automotive, and fashion."
    ],
    "Internet of Things (IoT)": [
      "A network of interconnected devices that communicate with each other and exchange data over the internet.",
      "IoT devices range from smart home products like thermostats and security cameras to industrial sensors and healthcare monitors.",
      "The technology enables automation, real-time monitoring, and data-driven decision-making in various sectors.",
      "IoT is transforming industries like agriculture (smart farming), manufacturing (Industry 4.0), and urban development (smart cities).",
      "Security and privacy are major concerns in IoT, as the vast number of connected devices increases the potential for cyberattacks and data breaches."
    ],
    "Robotics": [
      "The branch of technology that deals with the design, construction, operation, and application of robots.",
      "Robots are used in various fields, including manufacturing (automation), healthcare (surgery assistance), and exploration (space rovers).",
      "Advances in AI and machine learning are enabling robots to perform increasingly complex tasks, from assembly line work to interacting with humans.",
      "Robots range from industrial robots that build cars to humanoid robots that can assist in caregiving and customer service.",
      "The development of robotics is raising ethical questions about the future of work, human-robot interaction, and the potential for autonomous machines."
    ],
    "Renewable Energy": [
      "Energy generated from natural resources that are replenished on a human timescale, such as solar, wind, hydro, and geothermal power.",
      "Renewable energy is crucial for reducing greenhouse gas emissions and combating climate change.",
      "Technological advances have made renewable energy sources more efficient and cost-effective, leading to increased adoption worldwide.",
      "Solar panels and wind turbines are among the most common renewable energy technologies, with significant growth in global capacity.",
      "The transition to renewable energy is supported by policies, incentives, and innovations in energy storage and grid management."
    ],
    "Biotechnology": [
      "The use of living organisms or biological systems to develop products and technologies that improve human life.",
      "Biotechnology applications include genetic engineering, pharmaceuticals, agricultural improvements, and environmental sustainability.",
      "CRISPR-Cas9, a revolutionary gene-editing technology, allows scientists to modify DNA with precision, offering potential cures for genetic diseases.",
      "Biotechnology is driving advancements in personalized medicine, biofuels, and the development of new crops that are resistant to pests and environmental stress.",
      "Ethical concerns in biotechnology include genetic modification, cloning, and the potential impact on biodiversity."
    ],
    "Wearable Technology": [
      "Devices that are worn on the body and equipped with sensors, connectivity, and computing capabilities.",
      "Popular wearables include fitness trackers, smartwatches, and smart glasses.",
      "Wearables are used for health monitoring (tracking steps, heart rate, and sleep patterns), communication, and augmented reality experiences.",
      "The Apple Watch and Fitbit are among the most well-known wearable devices, offering a range of features from notifications to health metrics.",
      "Wearable technology is expanding into fields like healthcare (remote patient monitoring) and workplace safety (monitoring hazardous conditions)."
    ],
    "Cybersecurity": [
      "The practice of protecting systems, networks, and data from digital attacks, unauthorized access, and damage.",
      "Cybersecurity is critical for safeguarding sensitive information, maintaining the integrity of systems, and ensuring the privacy of users.",
      "Key areas include encryption, firewalls, threat detection, and incident response.",
      "Cybersecurity challenges include the rise of ransomware, phishing attacks, and vulnerabilities in software and hardware.",
      "As the digital landscape evolves, cybersecurity is becoming increasingly important for individuals, businesses, and governments."
    ],
    "Social Media": [
      "Platforms that enable users to create, share, and interact with content and connect with others online.",
      "Popular social media platforms include Facebook, Twitter, Instagram, TikTok, and LinkedIn.",
      "Social media has transformed communication, marketing, news dissemination, and entertainment, with billions of users worldwide.",
      "The rise of influencers, social media marketing, and online communities has created new opportunities and challenges for businesses and individuals.",
      "Issues like privacy, misinformation, and the impact of social media on mental health are ongoing concerns."
    ]
  };
//...............................................repository for superheroes...............................................
  Map<String, List<String>> superheroes = {
    "Superman": [
      "Created by Jerry Siegel and Joe Shuster, Superman first appeared in Action Comics #1 in 1938.",
      "Known as the 'Man of Steel,' he possesses superhuman strength, flight, invulnerability, super speed, heat vision, and x-ray vision.",
      "Superman's alter ego is Clark Kent, a mild-mannered reporter for the Daily Planet in Metropolis.",
      "He is an alien from the planet Krypton, sent to Earth as a baby before his planet was destroyed.",
      "Superman is one of the most iconic and influential superheroes, often seen as a symbol of truth, justice, and the American way."
    ],
    "Batman": [
      "Created by Bob Kane and Bill Finger, Batman first appeared in Detective Comics #27 in 1939.",
      "Also known as the 'Dark Knight,' Batman has no superpowers but relies on his intellect, detective skills, martial arts abilities, and advanced technology.",
      "His alter ego is Bruce Wayne, a wealthy industrialist and philanthropist in Gotham City.",
      "Driven by the murder of his parents, Bruce Wayne swore to fight crime and protect Gotham from villains like the Joker, the Riddler, and Catwoman.",
      "Batman operates out of the Batcave and is known for his iconic bat-symbol, Batsuit, and Batmobile."
    ],
    "Wonder Woman": [
      "Created by William Moulton Marston, Wonder Woman first appeared in All Star Comics #8 in 1941.",
      "An Amazonian princess, she possesses super strength, speed, agility, and the ability to fly.",
      "Her weapons include the Lasso of Truth, indestructible bracelets, and a magical sword and shield.",
      "Wonder Woman’s alter ego is Diana Prince, and she serves as an ambassador of peace and justice.",
      "She is one of the founding members of the Justice League and is often depicted as a symbol of female empowerment."
    ],
    "Spider-Man": [
      "Created by Stan Lee and Steve Ditko, Spider-Man first appeared in Amazing Fantasy #15 in 1962.",
      "Peter Parker, a teenager from Queens, New York, gains spider-like abilities after being bitten by a radioactive spider.",
      "Spider-Man has super strength, agility, the ability to cling to surfaces, and a 'spider-sense' that warns him of danger.",
      "He designs web-shooters that allow him to swing between buildings and capture criminals.",
      "Spider-Man’s story is marked by the famous mantra, 'With great power comes great responsibility,' reflecting his struggles to balance his superhero duties with his personal life."
    ],
    "Iron Man": [
      "Created by Stan Lee, Larry Lieber, Don Heck, and Jack Kirby, Iron Man first appeared in Tales of Suspense #39 in 1963.",
      "Tony Stark is a billionaire industrialist and genius inventor who builds a powered suit of armor to escape captivity.",
      "The Iron Man suit gives Stark super strength, flight, and an array of weapons and advanced technology.",
      "Tony Stark is the public face of Iron Man, openly operating as a superhero while also leading Stark Industries.",
      "Iron Man is a founding member of the Avengers and plays a central role in the Marvel Cinematic Universe (MCU)."
    ],
    "Captain America": [
      "Created by Joe Simon and Jack Kirby, Captain America first appeared in Captain America Comics #1 in 1941.",
      "Steve Rogers, a frail young man, is transformed into the super-soldier Captain America after receiving the Super-Soldier Serum.",
      "He is known for his enhanced strength, agility, endurance, and his indestructible shield, which he uses as a weapon and for defense.",
      "Captain America is a symbol of patriotism and freedom, originally created during World War II to fight against the Axis powers.",
      "After being frozen in ice for decades, he is revived in the modern era and becomes a leader of the Avengers."
    ],
    "Thor": [
      "Created by Stan Lee, Larry Lieber, and Jack Kirby, Thor first appeared in Journey into Mystery #83 in 1962.",
      "Thor is the Norse god of thunder, wielding the enchanted hammer Mjolnir, which grants him control over lightning and the power of flight.",
      "He is a founding member of the Avengers and a defender of both Earth and his home realm of Asgard.",
      "Thor is known for his immense strength, durability, and his warrior spirit.",
      "In the Marvel Cinematic Universe (MCU), Thor is portrayed by Chris Hemsworth and is central to several key storylines."
    ],
    "Hulk": [
      "Created by Stan Lee and Jack Kirby, the Hulk first appeared in The Incredible Hulk #1 in 1962.",
      "Dr. Bruce Banner transforms into the Hulk, a massive green-skinned creature with incredible strength, whenever he becomes angry or stressed.",
      "The Hulk's strength increases proportionally with his anger, making him one of the most powerful beings in the Marvel Universe.",
      "The character is often portrayed as a tragic figure, struggling to control his emotions and the destruction caused by the Hulk.",
      "The Hulk is a founding member of the Avengers and has been depicted in numerous comic book series, TV shows, and films."
    ],
    "Black Panther": [
      "Created by Stan Lee and Jack Kirby, Black Panther first appeared in Fantastic Four #52 in 1966.",
      "T'Challa is the king of Wakanda, a technologically advanced African nation with vast resources of the powerful metal vibranium.",
      "As Black Panther, T'Challa possesses enhanced strength, agility, and senses, as well as access to advanced technology and combat training.",
      "Black Panther is the first mainstream Black superhero in American comics, symbolizing leadership, intelligence, and bravery.",
      "The character gained global prominence with the 2018 film 'Black Panther,' which was a critical and commercial success."
    ],
    "Wonder Woman": [
      "Created by William Moulton Marston, Wonder Woman first appeared in All Star Comics #8 in 1941.",
      "Diana of Themyscira is an Amazonian warrior princess with superhuman strength, agility, and the ability to fly.",
      "Her iconic weapons include the Lasso of Truth, indestructible bracelets, and a magical sword and shield.",
      "Wonder Woman is a founding member of the Justice League and a symbol of peace, justice, and women's empowerment.",
      "Her alter ego, Diana Prince, works in various roles, including as a nurse and a military intelligence officer, depending on the storyline."
    ],
    "Wolverine": [
      "Created by Roy Thomas, Len Wein, and John Romita Sr., Wolverine first appeared in The Incredible Hulk #180 in 1974.",
      "Logan, also known as Wolverine, is a mutant with enhanced senses, strength, and regenerative healing abilities.",
      "His most distinctive feature is his retractable adamantium claws, which are nearly indestructible.",
      "Wolverine is a member of the X-Men and has a complicated past involving experiments, memory loss, and a struggle with his animalistic nature.",
      "He is one of Marvel's most popular characters, known for his gruff demeanor, unbreakable spirit, and fierce loyalty."
    ],
    "Flash": [
      "Created by Gardner Fox and Harry Lampert, the Flash first appeared in Flash Comics #1 in 1940.",
      "Barry Allen, the most famous incarnation of the Flash, gained super-speed after being struck by lightning and doused in chemicals.",
      "As the 'Fastest Man Alive,' the Flash can move at incredible speeds, phase through objects, and even travel through time.",
      "Barry Allen is a forensic scientist, using his skills to solve crimes both in and out of his superhero identity.",
      "The Flash is a key member of the Justice League and has been a central figure in many major DC Comics storylines, including the 'Crisis on Infinite Earths.'"
    ],
    "Aquaman": [
      "Created by Paul Norris and Mort Weisinger, Aquaman first appeared in More Fun Comics #73 in 1941.",
      "Arthur Curry, also known as Aquaman, is the king of Atlantis and possesses superhuman strength, the ability to communicate with sea life, and the power to manipulate water.",
      "Aquaman's trident is a powerful weapon that can control the oceans and is often depicted as a symbol of his royal authority.",
      "He is a founding member of the Justice League and a protector of both the surface world and the underwater realms.",
      "Aquaman's character has been revitalized in recent years, particularly with the 2018 film 'Aquaman,' where he is portrayed by Jason Momoa."
    ],
    "Green Lantern": [
      "Created by Bill Finger and Martin Nodell, Green Lantern first appeared in All-American Comics #16 in 1940.",
      "The most well-known Green Lantern is Hal Jordan, a test pilot who is chosen by a dying alien to wield a powerful ring that grants him incredible abilities.",
      "The Green Lantern ring can create constructs of light, limited only by the wearer's imagination and willpower.",
      "Hal Jordan is part of the Green Lantern Corps, an intergalactic police force that protects the universe.",
      "Green Lantern's stories often explore themes of courage, responsibility, and the balance of power in the universe."
    ],
    "Doctor Strange": [
      "Created by Stan Lee and Steve Ditko, Doctor Strange first appeared in Strange Tales #110 in 1963.",
      "Dr. Stephen Strange is a former neurosurgeon who becomes the Sorcerer Supreme, Earth's primary protector against magical and mystical threats.",
      "He wields powerful artifacts like the Eye of Agamotto and the Cloak of Levitation, and commands vast magical knowledge.",
      "Doctor Strange's Sanctum Sanctorum in Greenwich Village, New York, serves as his base of operations and a nexus of magical energy.",
      "The character has seen a resurgence in popularity with his portrayal by Benedict Cumberbatch in the Marvel Cinematic Universe."
    ],
    "Daredevil": [
      "Created by Stan Lee and Bill Everett, with input from Jack Kirby, Daredevil first appeared in Daredevil #1 in 1964.",
      "Matt Murdock, blinded as a child by a radioactive substance, gains enhanced senses and becomes the vigilante Daredevil.",
      "He is known as the 'Man Without Fear,' patrolling the streets of Hell's Kitchen, New York, with acrobatic skill and heightened senses.",
      "By day, Matt Murdock is a lawyer, using his legal knowledge to fight for justice in the courtroom.",
      "Daredevil is a complex character, often dealing with themes of morality, justice, and the conflict between his dual identities."
    ]
  };
//...............................................repository for Information Technology...............................................
  Map<String, List<String>> ITAndDevelopment = {
    "Programming Languages": [
      "Tools used to write instructions for computers to perform specific tasks, ranging from simple calculations to complex algorithms.",
      "Popular programming languages include Python, JavaScript, Java, C++, and Ruby.",
      "Each language has its own syntax and is suited for different types of development, such as web development (JavaScript), data science (Python), or systems programming (C++).",
      "High-level languages like Python are easier to learn and use, while low-level languages like C offer greater control over hardware.",
      "Languages evolve over time, with new versions and frameworks improving performance, security, and developer productivity."
    ],
    "Web Development": [
      "The process of building and maintaining websites, including everything from creating simple static pages to complex web applications.",
      "Web development is typically divided into front-end (client-side) and back-end (server-side) development.",
      "Front-end technologies include HTML, CSS, and JavaScript, which are used to create the visual and interactive elements of a website.",
      "Back-end technologies include server-side languages like Python, Ruby, and PHP, as well as databases like MySQL and MongoDB.",
      "Web developers use frameworks like React, Angular, and Django to streamline development and manage complex projects."
    ],
    "Cloud Computing": [
      "The delivery of computing services, including storage, processing, and networking, over the internet, allowing for on-demand access to resources.",
      "Cloud computing providers include Amazon Web Services (AWS), Microsoft Azure, and Google Cloud Platform.",
      "Key cloud services models include Infrastructure as a Service (IaaS), Platform as a Service (PaaS), and Software as a Service (SaaS).",
      "Cloud computing enables businesses to scale resources according to their needs without investing in physical infrastructure.",
      "It supports a wide range of applications, from hosting websites to running complex AI models, and offers benefits like cost savings, flexibility, and disaster recovery."
    ],
    "DevOps": [
      "A set of practices that combines software development (Dev) and IT operations (Ops) to shorten the development lifecycle and deliver high-quality software continuously.",
      "DevOps emphasizes collaboration between developers, operations teams, and other stakeholders to automate processes and improve efficiency.",
      "Key tools in the DevOps pipeline include version control systems like Git, continuous integration/continuous deployment (CI/CD) tools like Jenkins, and containerization platforms like Docker.",
      "DevOps practices aim to reduce the time between writing code and deploying it to production, with a focus on reliability and scalability.",
      "Popular DevOps methodologies include Infrastructure as Code (IaC), automated testing, and monitoring."
    ],
    "Cybersecurity": [
      "The practice of protecting systems, networks, and data from digital attacks, unauthorized access, and damage.",
      "Cybersecurity is critical for safeguarding sensitive information, maintaining system integrity, and ensuring user privacy.",
      "Key concepts include encryption, firewalls, threat detection, vulnerability management, and incident response.",
      "Common cybersecurity threats include phishing attacks, malware, ransomware, and denial-of-service (DoS) attacks.",
      "As cyber threats evolve, cybersecurity practices must continuously adapt to protect against new vulnerabilities and ensure compliance with regulations."
    ],
    "Database Management": [
      "The process of storing, retrieving, and managing data in databases, which are organized collections of structured information.",
      "Database management systems (DBMS) like MySQL, PostgreSQL, and Oracle allow users to create, read, update, and delete data in a structured format.",
      "SQL (Structured Query Language) is the standard language for interacting with relational databases, allowing for complex queries and data manipulation.",
      "NoSQL databases, such as MongoDB and Cassandra, are designed to handle large volumes of unstructured data and offer flexibility in data modeling.",
      "Database administrators (DBAs) are responsible for managing and maintaining databases, ensuring data integrity, security, and performance."
    ],
    "Agile Development": [
      "A methodology for software development that emphasizes iterative progress, collaboration, and flexibility.",
      "Agile development breaks projects into small, manageable increments called sprints, with regular feedback from stakeholders.",
      "Popular Agile frameworks include Scrum, Kanban, and Extreme Programming (XP), each with its own set of practices and roles.",
      "Agile aims to deliver functional software quickly, adapting to changes in requirements and priorities as the project evolves.",
      "The Agile Manifesto, published in 2001, outlines the core values and principles that guide Agile development practices."
    ],
    "Artificial Intelligence": [
      "The simulation of human intelligence in machines, enabling them to perform tasks that typically require human cognition, such as learning, reasoning, and problem-solving.",
      "AI includes subfields like machine learning, natural language processing (NLP), computer vision, and robotics.",
      "Machine learning, a key component of AI, involves training algorithms on large datasets to recognize patterns and make predictions or decisions.",
      "AI is used in various applications, from virtual assistants like Siri and Alexa to self-driving cars and predictive analytics.",
      "Ethical considerations in AI include bias in algorithms, privacy concerns, and the potential impact on jobs and society."
    ],
    "Blockchain": [
      "A decentralized digital ledger technology that records transactions across multiple computers in a secure, transparent, and tamper-resistant way.",
      "Originally developed as the underlying technology for Bitcoin, the first cryptocurrency, blockchain has since expanded to other applications.",
      "Key features of blockchain include immutability, meaning that once data is recorded, it cannot be altered, and decentralization, which removes the need for a central authority.",
      "Blockchain is used in various industries, including finance (cryptocurrencies), supply chain management, voting systems, and smart contracts.",
      "The technology is seen as a potential disruptor for traditional systems, offering new ways to ensure transparency, security, and efficiency."
    ],
    "Internet of Things": [
      "A network of interconnected devices that communicate with each other and exchange data over the internet.",
      "IoT devices range from smart home products like thermostats and security cameras to industrial sensors and healthcare monitors.",
      "IoT enables automation, real-time monitoring, and data-driven decision-making in various sectors, including agriculture, manufacturing, and urban development.",
      "Security and privacy are major concerns in IoT, as the vast number of connected devices increases the potential for cyberattacks and data breaches.",
      "IoT is transforming industries by enabling new applications, such as smart cities, predictive maintenance, and remote patient monitoring."
    ],
    "Version Control": [
      "A system that records changes to files over time, allowing developers to track revisions, collaborate on code, and revert to previous versions if needed.",
      "Git is the most widely used version control system, enabling distributed development and collaboration through platforms like GitHub and GitLab.",
      "Version control is essential for managing codebases, particularly in teams, as it ensures that changes are tracked, conflicts are resolved, and code integrity is maintained.",
      "Common version control concepts include commits (saving changes), branches (creating parallel versions of the code), and merges (combining changes from different branches).",
      "Version control systems also support continuous integration/continuous deployment (CI/CD) pipelines, automating the process of testing and deploying code."
    ],
    "Software Testing": [
      "The process of evaluating software to ensure that it meets specified requirements and functions correctly.",
      "Software testing includes various types, such as unit testing (testing individual components), integration testing (testing combined components), and system testing (testing the entire system).",
      "Automated testing involves using tools and scripts to perform tests, often as part of a CI/CD pipeline, ensuring faster and more reliable testing.",
      "Manual testing involves human testers executing test cases and exploring the software to identify defects.",
      "Testing is crucial for identifying bugs, ensuring software quality, and verifying that the product meets user expectations before release."
    ],
    "Continuous Integration Continuous Deployment": [
      "A set of practices that automate the process of integrating, testing, and deploying code, ensuring that software can be released quickly and reliably.",
      "Continuous Integration (CI) involves automatically testing code changes as they are integrated into the main branch, catching issues early in the development process.",
      "Continuous Deployment (CD) extends CI by automatically deploying tested changes to production environments, enabling frequent and consistent releases.",
      "CI/CD pipelines use tools like Jenkins, CircleCI, and GitLab CI to automate the process, ensuring that code is continuously integrated, tested, and deployed.",
      "CI/CD practices help reduce the time between writing code and delivering it to users, improving software quality and responsiveness to changes."
    ],
    "Microservices": [
      "An architectural style that structures an application as a collection of small, loosely coupled services that can be developed, deployed, and scaled independently.",
      "Each microservice focuses on a specific business function and communicates with other services via APIs, often using lightweight protocols like HTTP or messaging queues.",
      "Microservices offer flexibility, enabling teams to develop, deploy, and scale different parts of an application independently, often using different technologies.",
      "Challenges with microservices include managing complexity, ensuring consistent communication between services, and maintaining data consistency across distributed systems.",
      "Microservices are commonly used in cloud-native applications, supported by containerization tools like Docker and orchestration platforms like Kubernetes."
    ],
    "Containers": [
      "A lightweight form of virtualization that allows developers to package an application and its dependencies into a single unit, which can run consistently across different environments.",
      "Docker is the most popular containerization platform, enabling developers to create, deploy, and manage containers.",
      "Containers are portable, making it easy to move applications between development, testing, and production environments without compatibility issues.",
      "Container orchestration platforms like Kubernetes manage the deployment, scaling, and operation of containers in production environments.",
      "Containers have become a key technology in DevOps, microservices, and cloud-native development, offering scalability, efficiency, and consistency."
    ]
  };
}
