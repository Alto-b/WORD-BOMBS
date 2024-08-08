class CountryRepo {
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
}
