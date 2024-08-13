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
//...............................................repository for chemistry
//...............................................

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
}
