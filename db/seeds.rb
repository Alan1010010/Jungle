puts 'Cleaning database...'
UserPlant.destroy_all
User.destroy_all
Plant.destroy_all
puts 'Creating plants...'

# Plant seeds with img urls

spider = 'https://cdn.nurserylive.com/images/stories/virtuemart/product/resized/nurserylive-chlorophytum-spider-plant-dark-green-1082_600x600.jpg'
aloe = 'https://static.turbosquid.com/Preview/2014/07/11__09_40_14/nmodel_02_53_02.jpgad975979-8feb-4877-9514-b275351e1544Original.jpg'
lily = 'https://assets.bakker.com/ProductPics/560x676/41996-01-BAKI_20190429115731.jpg'
fig = 'https://img.crocdn.co.uk/images/products2/pl/20/00/02/81/pl2000028196.jpg?width=940&height=940'
orchid = 'https://img.crocdn.co.uk/images/products2/pl/20/00/02/81/pl2000028180.jpg?width=940&height=940'
corn = 'https://img.crocdn.co.uk/images/products2/pl/20/00/03/20/pl2000032072.jpg?width=940&height=940'
parlor = 'https://cdn.shopify.com/s/files/1/0108/5782/products/Parlor_Palm-_Neanthe_bella.jpg?v=1548523448'
bamboo = 'https://www.joyusgarden.com/wp-content/uploads/2017/01/Lucky-Bamboo-care-tips-you-should-know.jpg'
alu = 'https://mypassiflora.com/wp-content/uploads/2019/02/20190207_093811.jpg'
dumb = 'https://img.crocdn.co.uk/images/products2/pl/20/00/03/35/pl2000033597.jpg?width=940&height=940'
panda = 'https://images-na.ssl-images-amazon.com/images/I/71qrJSpYXLL._SX425_.jpg'
swiss = 'https://img.crocdn.co.uk/images/products2/pl/20/00/03/27/pl2000032789.jpg?width=940&height=940'
velvet = 'https://pics.davesgarden.com/pics/2006/08/30/ceejaytown/795aae.jpg'
peruviana = 'https://www.plantthefuture.com/wp-content/uploads/2018/10/Peruvianus.png'
bunny = 'https://www.giromagi.com/prodotti/src/rebutia_pseudoperbella_3071.jpg'
barrel = 'https://www.worldseedsupply.com/wp-content/uploads/1970/01/170597_107886169289992_2059048_o.jpg'
boston = 'https://img.crocdn.co.uk/images/products2/pl/20/00/02/77/pl2000027735.jpg?width=940&height=940'
donkey = 'https://images.immediate.co.uk/production/volatile/sites/10/2018/08/c8d01d86-da6a-44e8-ac2b-8eaa0358e8bf-ed06cc9.jpg?quality=45&resize=960,640'
fly_trap = 'https://cdn.nurserylive.com/images/stories/virtuemart/product/resized/nurserylive-venus-flytrap-dionaea-muscipula-plant_600x600.jpg'
cool = 'https://www.alchimiaweb.com/blog/wp-content/uploads/2011/02/planta-acabada-de-trasplantar-a-11l.jpg'
umbrella = 'https://asepsis-kenya.com/wp-content/uploads/2018/12/scheffella-plant.jpg'

spider_plant = Plant.create!(
  name:         'Spider Plant',
  latin_name: 'Chlorophytum Comosum',
  remote_photo_url:      spider,
  water_freq:  3,
  temperature: 'Minimum temperature should be no lower than 45°F (7°C). Ideal is approximately 60° - 75°F (15° - 24°C).',
  light: 'Nicely lit room without direct sunlight.',
  watering: 'They like plenty of water, between spring and summer. In the winter they should need a lot less.',
  soil: 'Any decent potting mix.',
  re_potting: 'Re-pot in spring, if needed (outgrown its pot). Look for roots growing out of the drainage holes of the current pot.',
  level_of_care: 'Minimal care: This plant can survive with minimal care/attention and can manage low temperatures. However, they will start to look very unattractive and create mess (leaves falling and browning) without enough water and light or too much of either.'
)

aloe_vera = Plant.create!(
  name:         'Aloe Vera',
  latin_name: 'Aloe',
  remote_photo_url:      aloe,
  water_freq:  2,
  temperature: 'Temperatures averaging 70°F/21°C - 80°F/26°C are very good and not much below 50°F/10°C.',
  light: 'The A.Vera thrives on bright light conditions, but not direct sunlight. Heat is fine because they react similar to a cacti in hot conditions. Bright rather than light (direct), is the key.',
  watering: 'These are succulents which are mainly made up of water and retain a lot of water in it\'s foliage (for storage), similar to a cactus. The soil needs to be moist which is easy to check by placing a finger an inch deep into the soil to make sure it is not dry. It needs much less in the winter.',
  soil: 'A pot mixture used for cactus will suffice or a soil mix that drains well and is well aerated.',
  re_potting: 'Re-pot when the plant has outgrown it\'s pot. It\'s best to re-pot the offsets (small aloes - pups) in separate pots once they have grown enough.',
  level_of_care: 'Minimal care: For the indoor grower taking care of the A. Vera....it\'s an easy task (read the rest of the information on them). These are slow growers and need your patience.'
 )

peace_lily = Plant.create!(
  name:         'Peace Lily',
  latin_name: 'Spathiphyllum Wallisii',
  remote_photo_url:      lily,
  water_freq:  4,
  temperature: 'Average room temperature’s are fine. Avoid lower than 55°F/12°C in the winter.',
  light: 'They like light, however, direct sunshine can damage plant leaves. A mixture of light and shade is great, if you can provide it. If you see the leaves yellowing this could be caused by too much sunlight.',
  watering: 'This plant does drink a lot of water in the summer. Keeping the soil moist (not over watered) and allowing it to dry slightly near the top is a good idea. If in the winter the soil stays slightly damp for a couple of weeks or more, that\'s ok , dont water any more. Your plant will let you know when it needs more.',
  soil: 'A peat based potting mix with perlite is ideal or other peat based mixes.',
  re_potting: 'Re-potting each spring is the usual drill.',
  level_of_care: 'Medium care level: It\'s important to make sure the place has plenty of light, but not direct sunlight to prevent damaging the leaves. The best environment they prefer is light and shade throughout a day.',
  pruning: 'These plants rarely need pruning...well, not at all, to reduce size anyway. You will need to cut away dying leaves and the flowers when they have seen better days and that should be about it.'
)
weeping_fig = Plant.create!(
  name:         'Weeping Fig',
  latin_name: 'Ficus Benjamina',
  remote_photo_url:      fig,
  water_freq:  9,
  temperature: 'Room temperatures of around 65°f /16°c --- 75°f / 24°c is ideal. Try not to allow temperatures to decrease lower than 50°f / 10°c,although they can handle a bit lower, without problems.',
  light: 'Bright light is what keeps the weeping fig happy, that is partially shaded. A spot that receives some sun and shade during the day is great.',
  watering: 'Allow the compost to dry to a certain extent (at the top) between each watering with tepid filtered or distilled water. Over-watering and under-watering can cause the leaves to drop. To identify the problem check if the leaves are crispy or if they fold easily. If they fold then the problem could be over-watering, and if crispy the tree could be under watered. Add enough water that can seep from the top soil to the drainage holes, at the bottom of the container and remove the left over water to allow enough oxygen to the plant roots. Less watering in the winter is to be carried out.',
  soil: 'A fast draining soil-less mix is advised.',
  re_potting: 'These can be allowed to become pot bound to a certain extent; the weeping fig tree does not like to be disturbed. Only re-pot when necessary, which could be every couple of years when its growing in height and spread.',
  level_of_care: 'Medium care level: The F.benjamina really doesn’t like being moved around a home. Moving them kind of gives them a shock (they decide its time to drop leaves to produce new ones from the change in lighting, temperature, and humidity provided ), which can leave a tree looking pretty bare. Try to find a spot with the correct lighting (see light information), not close to any drafts in the home (from doors or windows) and then leave it to get comfortable. Only move if you realise it was not the best place, or if you really have to.',
  pruning: 'Your growing tree will enjoy having old leaves removed and being pruned to the size that suits it\'s indoor living space, especially if it is healthy and growing well where it now sits. Pruning is best done after summer and before the next spring.'
)
moth_orchid = Plant.create!(
  name:         'Moth Orchid',
  latin_name: 'Phalaenopsis',
  remote_photo_url:      orchid,
  water_freq:  3,
  temperature: 'They like their warmth during the day and cool during the night. Room temperatures of around 65 - 85°F (16 - 24°C) during the day and 60 - 65°F ( 16 - 18°C) at night, are ideal growing conditions.',
  light: 'Providing enough light can be a problem for some growers because the moth orchid prefers bright light conditions for more than 10 hours a day. An east or west facing window is best suited - away from direct sun, but bright. During the winter you may have to supplement the plant with artificial lighting.',
  watering: 'Once the orchid soil becomes dry to the touch, water thoroughly. Avoid allowing water to keep the soil soaked; you want it to drain away easily. Avoid watering the middle of the plants foliage (crown) because the water sitting here for a period of time may cause rot. Do not over-water!',
  soil: 'Using an orchid potting mix is a good idea. A mix is likely to contain peat moss, perlite and fir bark or another combination, if it drains well. This soil needs to replaced every two years.',
  re_potting: 'The potting mix needs to be changed at least once every 2 years, during spring. The potting mix will start to become a problem for the plant when it becomes old and deteriorates. Try to re-pot in a pot similar to the size of the roots and pot it\'s already growing in, then remove unsavoury roots whilst re-potting. The roots that were sitting on the top of the soil need to be placed back in that position and not buried.',
  level_of_care: 'These plants enjoy to be provided with above average humidity levels, warm temperatures and bright light for long periods, which makes them moderately easy for people to grow, but difficult for others.

  Once a stalk begins growing over 12 inches tall or so, you will find it might need to be supported (with a stake) to grow upright.'
)
corn_plant = Plant.create!(
  name:         'Corn Plant',
  latin_name: 'Dracaena Fragrans',
  remote_photo_url:      corn,
  water_freq:  6,
  temperature: 'Temperatures from 60°F (15°C) - 75°F (24°C) are ideal. Under 55°F/12°C is going to harm the plant which may become noticeable if the leaves begin curling. Try and avoid the plant being near cold drafts, which will also cause harm.',
  light: "A good mix of sun shine and shade is ideal for this dracaena, but hardly any direct sunlight. Although it grows quicker and better in bright light you'll also find it survives and grows well enough in low light conditions.",
  watering: 'We would advise a grower to keep the soil slightly damp to the touch and in the winter slightly dry.',
  soil: 'Most well draining potting soil mix types are fine to use.',
  re_potting: "Once very 2 -3 years and a pot one size bigger if it's becoming terribly pot bound. Slightly pot bound is fine.",
  level_of_care: 'This plant need little care, though be careful with your pets, this plant is toxic for cats and dogs'
)
parlor_palm = Plant.create!(
  name:         'Parlor Palm',
  latin_name: 'Chamaedorea Elegans',
  remote_photo_url:      parlor,
  water_freq:  8,
  temperature: 'Average warmth 65°F (18°C) and above is fine and no less than 50°F (10°C) at night.',
  light: "These are not demanding for the grower when it comes to providing enough light. Any shaded type room will suffice with indirect sunlight.",
  watering: "Watering the parlor palm too much will cause growing problems and could possibly kill it off. A small amount of watering once the soil starts to dry. Very little is needed in the winter. Making sure the roots have good drainage is something they like.",
  soil: 'Any decent potting mix will suffice (soil or soilless).',
  re_potting: "Re-pot only when necessary, like when it becomes pot bound, because these do not like being disturbed too often .",
  level_of_care: 'This plant need few attention.'
)
cool_plant = Plant.create!(
  name:         'Cool Plant',
  latin_name: 'Cannabis Sativa',
  remote_photo_url:      cool,
  water_freq:  4,
  temperature: 'These plants are coolest between 60°- 90°F (15°- 32°C) for most of the year.',
  light: "This plant needs a lot of light but has to be hidden in some part of the world to avoid problems",
  watering: "The Cool Plant needs a average amount of water, to be honest I don't know mush about it, I only added it for the joke",
  soil: "Potting mix that keeps the roots well aerated and drains well is required.",
  re_potting: "You need to rePot ;) after each floraison",
  level_of_care: 'This plant need a particularly special attention'
)
lucky_bamboo_plant = Plant.create!(
  name:         'Lucky Bamboo Plant',
  latin_name: 'Dracaena Sanderiana',
  remote_photo_url:      bamboo,
  water_freq:  7,
  temperature: "Warm room temperature's and above are advised 65°F (18°C) - 90°F (32°C). Avoid lower than 55°F/12°C in the winter.",
  light: "In it's natural habitat the lucky bamboo grows under the cover of shaded trees, so place your plant in a bright spot without direct sunlight which can burn the leaves that will mimic their natural living space.",
  watering: "In a vase or water type pot change the water once every 7 days with distilled or bottled water. If your dracaena braunii is grown in soil (which is it's natural way of growing), water once the soil becomes slightly dry to the touch.",
  soil: "A well draining potting soil mix is advised.",
  re_potting: "Re-pot a plant living in soil when it becomes pot bound or every 2 years. If your plant sits in water with pebbles at the bottom for stability, re-pot to a bigger container once the previous one becomes too small and when the pebbles and container need cleaning. Cleaning the water container will prevent bacteria problems.",
  level_of_care: "The water has to be replaced every 7 days, apart from this, the lucky bamboo plant don't need much attention"
)
aluminium_plant = Plant.create!(
  name:         'Aluminum Plant',
  latin_name: 'Pilea Cadierei',
  remote_photo_url:      alu,
  water_freq:  5,
  temperature: 'Pilea cadierei requires a year-round temperature between 60-75 ºF (15-23 ºC). It can tolerate short periods of time outside of this temperature range, but continued exposure will kill the plant.',
  light: "his plant requires at least four hours of indirect, but bright, sunlight a day. Do not permit this plant to be exposed to overly bright or direct sunlight. Too much sun will burn the leaves and cause the green parts to turn brown.",
  watering: "The Aluminum plant needs to be watered differently during different times of the year. During spring and summer, the top quarter inch of the soil should be kept moist. During fall and winter, allow the top quarter inch of soil to dry out before watering again. Do not permit water to stand in the saucer underneath the plant.",
  soil: "This plant prefers a sandy soil mixture to live in. Combine one part clean sand (or perlite) with two parts peat to provide the required soil content for continued health.",
  re_potting: "Check the root density of Pilea cadierei every spring. If the roots are becoming overly dense, transplant the plant to a size larger pot. If you do not, the root system will break the container in an attempt to find more room to grow.",
  level_of_care: 'Trim the leaves when they turn yellow. Be careful with bugs that tend to eat the green part of the leaves'
)
dumb_cane = Plant.create!(
  name:         'Dumb Cane',
  latin_name: 'Dieffenbachia Amoena',
  remote_photo_url:      dumb,
  water_freq:  3,
  temperature: "Dieffenbachia amoena grows best when the temperature it is exposed to is between 65-75 ºF (18-23 ºC). Outside of this temperature zone, growth will continue at a greatly reduced rate, with tolerance extremes ranging from 40-90 ºF (4-35 ºC) Beyond these extremes, the plant will stop growing and may die with prolonged exposure.",
  light: "This plant prefers bright, indirect sun light for the optimal growth. It will accept lighting conditions up to full shade and continue stunted growth. Full sun will burn the leaves.",
  watering: "For the best results, keep the dumb cane plant's top inch of soil moist at all times. It will tolerate extended periods of watering neglect, but the leaves will begin to shrivel. Watering makes the leaves stiffen. Before moving the plant, allow the soil to dry out. This will give the leaves a more rubbery texture which will better survive the handling process.",
  soil: "This plant is not picky about its soil conditions. It will grow in almost any soil mix except sand and orchid mixtures. For best results, a one to one mixture of potting soil and perlite should be used.",
  re_potting: "This plant needs to have its root density checked annually in the spring. If the roots are becoming dense, re-pot into a size bigger pot. Reduce watering for a week before transplant.",
  level_of_care: 'This plant need relative cares, especially during the bloom period, Buds that turn brown have to be immediately removed'
)
panda_plant = Plant.create!(
  name:         'Panda Plant',
  latin_name: 'Kalanchoe Tomentosa',
  remote_photo_url:      panda,
  water_freq:  8,
  temperature: "Temperatures between 60-75 ºF (15-23 ºC) are advised.",
  light: "his kalanchoe - like many other succulents loves basking in bright light and sunshine. A mixture of direct, indirect and shade is a good balance of sunlight - if that can be provided.",
  watering: "Only water once the soil has become dry and then soak the soil, but do not leave water in the bottom tray. During the winter you'll need to water less. Because this is a succulent - it stores water within its leaves, so even if you forget to water for a period of time the plant will be fine.",
  soil: "Use a cacti and succulent potting mix, or your own mix which drains easily (part sand).",
  re_potting: "The panda plant is a slow grower which will only need re-potting once every 2 years and then less once it matures.",
  level_of_care: "The panda plant doesn't need much attention"
)
swiss_cheese_plant = Plant.create!(
  name:         'Swiss Cheese Plant ',
  latin_name: 'Monstera Deliciosa',
  remote_photo_url:      swiss,
  water_freq:  7,
  temperature: 'Temperatures between 65-80ºF (18-27ºC) are ideal. Lower than 65ºF (18Cº) will slow down this plants growth and below 50ºF (10ºC) will stop growth.',
  light: "A fairly bright room or bright with plenty of shade is best. Direct sunlight will damage the leaves and not enough light can slow growth down.",
  watering: "Between watering times allow the soil to become dry to the touch within the top couple of inches or so of soil.",
  soil: 'A peat based potting soil mix with perlite or sand is ideal. Soil that drains well is needed.',
  re_potting: "Re-pot once every two years approximately, during spring.",
  level_of_care: 'Relative care is needed, lack of care is easily spottable on the plant'
)
green_velvet = Plant.create!(
  name:         'Green Velvet',
  latin_name: 'Alocasia Micholitziana',
  remote_photo_url:      velvet,
  water_freq:  4,
  temperature: 'The best temperature for this plant is approximately 65-75ºF + (18-24ºC +) or more.',
  light: "A location within a room that gets plenty of light but not indirect sunlight is suitable. Sat back from a south, east or west facing window is good.",
  watering: 'During the spring and summer water the plant thoroughly when the top soil starts to become slightly dry to the touch. Cut right back on watering during winter.',
  soil: 'Using a fast draining peat based potting mix will do the trick. If your using your own mix it will need to include perlite or sand and bark to improve drainage.',
  re_potting: "The Alocasia should not need to be repotted very often after it has matured. Once very 2 years in a slightly bigger pot if it has grown much or if not just make a complete soil change – keeping the same pot. Use a clay pot if you can, because it will help dry the soil out quicker and may improve humidity being under the plant.",
  level_of_care: 'The plant needs a special care during winter'
)
peruvian_apple = Plant.create!(
  name:         'Peruvian Apple',
  latin_name: 'Cereus Peruvianus',
  remote_photo_url:      peruviana,
  water_freq:  12,
  temperature: 'Temperatures averaging 60°F/°15.5C - 75°F/23.8°C is ideal from spring to fall and a cooler 50°F/10°C – 55°F/13°, after this period.',
  light: "The Peruvian apple cactus thrives on bright light and sun light, although direct sun when blazing hot is best avoided, when first introduced to direct sun.",
  watering: "It's advisable to water this plant more often within the summer and much less, winter time. Like other desert type cacti their natural habitat is dry and they store water within the stems. Water this plant when the soil begins drying out, throughout spring and late summer. In late summer reduce watering until the next spring and allow the soil to be fairly dry.",
  soil: 'A fast draining pot mixture used for cactus plants is ideal.',
  re_potting: "While they're young they can be re-potted each year in spring. Once they mature re-pot only when necessary, with a slightly larger pot.",
  level_of_care: 'Minimum care is needed'
)
bunny_ears = Plant.create!(
  name:         'Bunny Ears',
  latin_name: 'Opuntia Microdasys',
  remote_photo_url:      bunny,
  water_freq:  10,
  temperature: "This cactus enjoys temperatures ranging from 70-100°F (21-37°C), but demands cooler temperatures during the winter months. Starting in the late fall, this cactus should be kept between 50-65°F (10-18°C), and away from central heating vents. The cooler spell is demanded over the course of the entire winter, during which time the segments of cactus will turn a light gray color. Failure to provide these controlled winter conditions will result in plant death the following spring.",
  light: "Demands full light growing for most of the year, except during the winter cycle. For the plant's health, light should be reduced to partial sun during this time.",
  watering: "The Polka-dot Cactus is a desert species. It should be given water on a regular basis during its first season in a new pot. This will help it to create a strong root system. The soil should be kept moist, but not soggy. After the first season, more sporadic watering is required. During the winter cycle, the cactus should not be watered at all, with watering to resume in the early spring.",
  soil: 'Like most cacti, this specimen demands sandy soil-bases that drain easily. It is usually happy with the pre-packaged cactus soil found in common hardware stores. To increase drainage for a picky plant, mix in a 1:1 ratio of perlite or bark.',
  re_potting: "Re-potting should take place in the summer, after the year's bloom has finished. Remember to water the plant regularly to promote the growth of a healthy root system during its first year in the new pot.",
  level_of_care: "Beware of the insect and do not expose the plant to too much humidity"
)
golden_barrel_cactus = Plant.create!(
  name:         'Golden Barrel Cactus',
  latin_name: 'Echinocactus Grusonii',
  remote_photo_url:      barrel,
  water_freq:  7,
  temperature: 'emperatures averaging 50°F/10°C - 75°F/23.8°C are ideal but not below 40°F/5°C and avoid frost.',
  light: "lenty of sunshine will keep this cacti more than happy. In a glass room you may have to provide some shade during a hot summers day to prevent sunburn.",
  watering: 'From spring until fall; water similar to many other house plants by watering when the soil begins drying. Before and during winter barely water the plant. Overwatering, especially when the temperature becomes cold can rot this species.',
  soil: 'A pot mixture used for cactus plants that drains well will suffice. Adding gravel or small pebbles at the bottom first few inches of the pot will encourage drainage.',
  re_potting: "When they are young and growing it's best to re-pot these once a year; during spring in a slightly bigger container. Once they mature re-pot maybe every 2 - 3 years or when necessary.",
  level_of_care: 'Provide as much fresh air as you can if you keep the plant inside'
)
boston_fern = Plant.create!(
  name:         'Boston Fern',
  latin_name: 'Nephrolepis Exaltat',
  remote_photo_url:      boston,
  water_freq:  3,
  temperature: 'The ideal room temperatures for Boston ferns is between 60-75ºF (16-24ºC). No lower than 55ºF (13ºC). Avoid warm air from indoor heating and cold drafts.',
  light: "In their natural habitat these ferns will be provided small amounts of sunshine under trees, shaded. The best light conditions to provide is indirect sunlight, although a small amount of sunlight (when it's not too hot) encourages growth. Filtered sunlight through net curtains works well. You may want to rotate the plant to encourage even growth of the fronds.",
  watering: 'Moist soil at all times is advisable, without the soil becoming soggy.',
  soil: 'Peat moss potting soil mixes are best suited with perlite added combined with all-purpose soil. The soil needs to be able to retain some water but also have the ability to drain fairly well. Too much peat moss then water can become clogged and too much perlite with all-purpose will drain too quickly.',
  re_potting: " Re-potting is done during spring once every 2 years while it's growing fast to a pot size bigger. Still change the top soil each spring even if a pot change is not required.",
  level_of_care: 'Make sure the soil is always well moisturized. Ferns like humidity'
)
donkeys_tail_plant = Plant.create!(
  name:         'Donkeys Tail Plant',
  latin_name: 'Sedum Morganianum',
  remote_photo_url:      donkey,
  water_freq:  14,
  temperature: 'Temperatures averaging 65°F/18°C - 80°F/26°C are very good and not much below 50°F/10°C. During winter it is fine if the temperature drops down and it can encourage them to actually bloom in the forthcoming spring season.',
  light: "For this species to grow well you will need to at least provide a good amount of direct light. And, if you can sunshine, but not too much during the afternoon summer sun.",
  watering: "During the growing season from April - September water the plant thoroughly and then water when the soil becomes dry to the touch. During winter cut down on the watering, which the plant may only need once a month. Remember it's a succulent and stores water in it leaves and stems...when you think it's lacking water it is not. Underwatering is much safer that overwatering and it's the No 1 killer for this plant.",
  soil: "Potting mix that keeps the roots well aerated and drains well is required. To keep it simple I would pot up with a ready made cactus soil mix.",
  re_potting: "You will only need to repot this plant during spring when the existing pot has become to small for it and use a shallow pot (the roots do not grow very long).",
  level_of_care: "This plant doesn't need too much attention, be very careful not to over-water it"
)
venus_fly_trap = Plant.create!(
  name:         'Venus Fly Trap',
  latin_name: 'Dionaea Muscipula',
  remote_photo_url:      fly_trap,
  water_freq:  6,
  temperature: 'These plants are happiest between 60°- 90°F (15°- 32°C) for most of the year. During the winter months, they enter a dormancy period, and can withstand temperatures as low as 30°F (-1°C) for short periods of time.',
  light: "Dionaea Muscipula is a light demanding plant. For optimal health conditions, it requires at least 12 hours of light a day. At least 4 of those should be full sunlight.",
  watering: 'They like their growing medium to be kept moist at all times, but never to the point of soggy. They are best watered through bottom-watering systems (water tray). Water should always be distilled before providing to the plant, as the chemicals in typical tap water are poisonous to the root system.',
  soil: 'This plant demands nutrient poor soil. Peat moss and long fiber sphagnum moss should be mixed in a 1:1 ratio for the best growing conditions.',
  re_potting: "These plants can be re-potted at any time other than their dormancy period.",
  level_of_care: "Don't forget to feed it with actual flies"
)
umbrella_tree = Plant.create!(
  name:         'Umbrella Tree ',
  latin_name: 'Schefflera Arboricola',
  remote_photo_url:      umbrella,
  water_freq:  8,
  temperature: 'Grows well in average room temperatures between 60 - 75 °F (15 - 24°C) but no lower than 55F (13C) or higher than 75°F (24°C). Avoid sudden temperature drops and cold drafts.',
  light: "Basic light condition of bright without direct sunlight is best suited, although lower lighting conditions only really affects it's growth rate rather than causing any harm.",
  watering: 'The best advice is to water once the top soil becomes dry. Over-watering is more of a problem than lack of water.',
  soil: 'A peat moss based potting mix with 2 parts peat moss and 1 part perlite is suggested.',
  re_potting: "You will need to re-pot the plant once every 2 years and provide new potting mix, during spring. To be on the safe side - hold of feeding for one month because enough nutrients should be present in the new potting mix. A good solid and heavy container is needed to prevent tall and mature trees from toppling over.",
  level_of_care: 'Toxic to pets'
)

puts 'Creating users...'

# User seeds and images

jen = 'https://simpleweb.co.uk/wp-content/uploads/2019/04/deep-mind-jane-wang-ai.jpg'
henry_pic = 'https://www.techadvisor.co.uk/cmsdata/author/3636812/team_tech_advisor_03_thumb230.jpg'
sophie_pic = 'https://www.iwill.org.uk/wp-content/uploads/2019/04/sophie-400x400.jpg'
chris_pic = 'https://www.birmingham.ac.uk/Images/College-ArtsLaw-only/staff/english/mourant-chris-315-Cropped-230x230.jpg'
sarah_pic = 'https://freedomhouse-files.s3.amazonaws.com/Repucci_Headshot_Photo_230px.jpg'
paul_pic = 'https://opinionhall.com/wp-content/uploads/2018/07/weird-bug-makes-samsung-phones-text-random-photos-to-random-people.jpg'
bobby_pic = 'http://ofad.org/files/daily-photo/recent-portraits-random-people-in-random-places_11.jpg'
emily_pic = 'https://davidbruceblog.files.wordpress.com/2014/05/img_9760.jpg'
holly_pic = 'https://66.media.tumblr.com/19f2f3b46ea47fcf9b65bd625a344b63/tumblr_pfem20SnjX1xuhbodo5_250.png'

jenni = User.create!(
  firstname: 'Jenni',
  lastname: 'Green',
  email: 'jenni@gmail.com',
  remote_photo_url: jen,
  password: 'London123',
  seeds: 640,
)

henry = User.create!(
  firstname: 'Henry',
  lastname: 'James',
  email: 'henry@gmail.com',
  remote_photo_url: henry_pic,
  password: 'London123',
  seeds: 220,
)

sofie = User.create!(
  firstname: 'Sophie',
  lastname: 'Peterson',
  email: 'sof@gmail.com',
  remote_photo_url: sophie_pic,
  password: 'London123',
  seeds: 40,
)

chris = User.create!(
  firstname: 'Chris',
  lastname: 'James',
  email: 'chris@gmail.com',
  remote_photo_url: chris_pic,
  password: 'London123',
  seeds: 980,
)

sarah = User.create!(
  firstname: 'Sarah',
  lastname: 'Murphy',
  email: 'sarah@gmail.com',
  remote_photo_url: sarah_pic,
  password: 'London123',
  seeds: 1360,
)
paul = User.create!(
  firstname: 'Paul',
  lastname: 'Legendre',
  email: 'paul@gmail.com',
  remote_photo_url: paul_pic,
  password: 'London123',
  seeds: 180,
)
bobby = User.create!(
  firstname: 'Bobby',
  lastname: 'Lawrence',
  email: 'bobby@gmail.com',
  remote_photo_url: bobby_pic,
  password: 'London123',
  seeds: 320,
)
emily = User.create!(
  firstname: 'Emily',
  lastname: 'Stone',
  email: 'emily@gmail.com',
  remote_photo_url: emily_pic,
  password: 'London123',
  seeds: 560,
)
holly = User.create!(
  firstname: 'Holly',
  lastname: 'Gueye',
  email: 'holly@gmail.com',
  remote_photo_url: holly_pic,
  password: 'London123',
  seeds: 20,
)

puts 'Creating user plants...'

# UserPlant seeds

u_spider_plant = 'https://visitshipshewana.org/wp-content/uploads/2018/11/Spider-Plant-300x300.jpg'
u_aloe_vera = 'https://www.batterseaflowerstation.co.uk/wp-content/uploads/2019/06/AloeVera.jpg'
u_peace_lily = 'https://res.cloudinary.com/bloomnation/c_pad,d_vendor:global:catalog:product:image.png,f_auto,fl_preserve_transparency,q_auto/v1565298283/vendor/364/catalog/product/2/0/20170802084204_file_5982391cb4c4e.jpg'
u_orchid = 'https://res.cloudinary.com/bloomnation/c_pad,d_vendor:global:catalog:product:image.png,f_auto,fl_preserve_transparency,q_auto/v1559420334/vendor/3745/catalog/product/2/0/20181226031646_file_5c239b5ee04c2.jpg'
u_fig = 'https://s3.amazonaws.com/YouGarden/Web/500x500/800114.jpg'

jimmy_plant = UserPlant.create!(
    nickname: 'Jimmy',
    last_watered: DateTime.current - 2,
    plant: spider_plant,
    remote_photo_url: u_spider_plant,
    user: henry
)

benji = UserPlant.create!(
  nickname: 'Benji',
  last_watered: DateTime.current - 3,
  plant: aloe_vera,
  remote_photo_url: u_aloe_vera,
  user: henry
)

dawn = UserPlant.create!(
  nickname: 'Dawn',
  last_watered: DateTime.current - 4,
  plant: peace_lily,
  remote_photo_url: u_peace_lily,
  user: sofie
)

bea = UserPlant.create!(
  nickname: 'Bea',
  last_watered: DateTime.current - 4,
  plant: moth_orchid,
  remote_photo_url: u_orchid,
  user: chris
)

grace = UserPlant.create!(
  nickname: 'Grace',
  last_watered: DateTime.current - 5,
  plant: weeping_fig,
  remote_photo_url: u_fig,
  user: chris
)

dawny = UserPlant.create!(
  nickname: 'Dawny',
  last_watered: DateTime.current - 4,
  plant: peace_lily,
  remote_photo_url: u_peace_lily,
  user: chris
)

benjie = UserPlant.create!(
  nickname: 'Benjie',
  last_watered: DateTime.current - 3,
  plant: aloe_vera,
  remote_photo_url: u_aloe_vera,
  user: chris
)

jimmy_planty = UserPlant.create!(
    nickname: 'Jimmie',
    last_watered: DateTime.current - 2,
    plant: spider_plant,
    remote_photo_url: u_spider_plant,
    user: chris
)

puts 'Finished!'
