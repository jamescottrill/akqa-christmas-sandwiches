-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
  --
  -- Host: localhost:3306
-- Generation Time: Jan 04, 2020 at 04:58 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
  -- Database: `sandwiches`
--
  
  -- --------------------------------------------------------
  
  --
  -- Table structure for table `review`
--
  
  CREATE TABLE `review` (
    `id` int(11) NOT NULL,
    `reviewerId` int(11) NOT NULL,
    `sandwichId` int(11) NOT NULL,
    `flavour` float DEFAULT NULL,
    `structure` float DEFAULT NULL,
    `christmasness` float DEFAULT NULL,
    `valueformoney` float DEFAULT NULL,
    `comments` varchar(1000) DEFAULT NULL,
    `timestamp` datetime DEFAULT NULL
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
  -- Dumping data for table `review`
--
  
  INSERT INTO `review` (`id`, `reviewerId`, `sandwichId`, `flavour`, `structure`, `christmasness`, `valueformoney`, `comments`, `timestamp`) VALUES
(1, 1, 1, 9, 9, 8.5, 8, 'I am struggling to put into words the joy this product provided, wow wow wow. It had absolutely everything you could expect of a festive sandwich product, it OOOOOZED Crimbo from the first bite to the last. For a warm shelf product, the fact the yorkshire was soft and crunchy in all the right places is a feat to behold! Ingredients were fantastic, turkey, sausage, bacon and stuffing. Only downside was that it could possibly have done with a bit more cranbo sauce throughout perhaps a bit more greenery and a slightly lower sodium content. EVERYONE MUST TRY THIS......ASAP', NULL),
(2, 1, 2, 8.5, 9, 9, 9, 'This is a great sandwich, solid! Has all the ingredients and they are brought together well. This is defo a goto option for those only wanting to have a couple of sarnies over the festive period! Went to a different Pret and think the onions were far better than the non baguette variant, much more crispy!', NULL),
(3, 1, 3, 10, 9, 9.75, 9, 'This was boxing day on a plate (in a baguette) for me, was concerned about the lack of turkey and also serving it up containing cold brussels but it was a dream! Whilst the Eat wrap was tasty, I feel this was more authentically Christmas, there is something about having some greenery to take away from the beige. All ingredients in this sandwich deserve a mention, from the lovely pigs in blankets, the crunchy brussels were a realy surprise and really added to the texture, the red cabbage was divine and the chutney gave it lashings of moistness! The cherry on top is how Paul have added bacon to the actual baguette, yes, you heard me correctly, bacon infused bread!!! THIS IS A CRIMBO WINNER', NULL),
(4, 1, 4, 7.5, 8, 7.5, 9.5, 'This was actually a really good sandwich, it had chunky turkey, lovely bacon and the first sarnie I have had with lettuce this festive season. All the ingredients were lovely and was really nice and moist. The bread was banging too! ', NULL),
(5, 1, 5, 8, 8.5, 8.5, 7.5, 'The Turkey in this sandwich is AMAZING! Thick slabs of it like someone has kacked at the turkey with a sword! Stuffing gets a bit lost in with the other innards but the cranberry and Port and Orange chutney is AMAZING!', NULL),
(6, 1, 9, 9.5, 9, 8.5, 5, 'Well this was nice! Stuffing was probably the best I have had this season and all flavours in the wrap actually came through, nothing was overpowered. A nice mixture of flavs and the nice amount of moisture with the cranberry and clementine sauce.', NULL),
(7, 1, 10, 7, 8, 7, 8, 'Great tasting sarnie! Good structure, good moisture content and innards all the way to the edges! Flavour was fantastic, loved the bacon and turkey was delish, however the cranberry could have come through a bit more, this was hidden by the flavour of the stuffing (which did taste lovely). Sainsbos are defo a step up from Tesco! Tasted very much like a boxing day sambo at home!', NULL),
(8, 1, 11, 8.5, 8, 8, 7.5, 'This was a great baguette! I think I am defo a baguette fan over normal bread! Good innards, spread nicely throughout and the baguette was really crunchy due to it being made fresh in store! Turkey was great, as was the cranberry and mayonise ratio. One note would be that the bacon was dry and not fresh.', NULL),
(9, 1, 12, 6, 8, 9, 6, 'This is always my goto sarnie, it is THE ORIGINAL Crimbo sarnie. Good fill, all the way to the edges, all ingredients on point except for the crispy onions! They weren\'t crispy! Will have to try this again during the festive season to see if they re-appear. This happened last year and the December variants of the sarnies stepped it up with the quality of their ingredients.', NULL),
(10, 1, 13, 7.5, 7.5, 4, 7, 'You cant say this isnt a tasty sarnie, its yumsters but I am not sure its Christmas enough for me. The turkey is lovely and succulent (better than most turkey sarnies) and the cranberry infused bread is lovely. Only issue for me is the horseraddish, whilst its really tasty, this just isnt Christmas for me!', NULL),
(11, 1, 14, 7, 6, 7, 6, 'This was tasty and had all the ingredients to be a good sandwich. I find with baguette\'s they need a little extra moisture to account for the dryness of the bread, that is where this sandwich fell short, it needed more cranberry or mayo. Also, the turkey was a little lost, I could see it but not taste it! I do love a crispy onion and this sarnie delivered on that, or I should say, delivered the crispy onions all over my desk, as they were just sprinkled over the openning of the baguette, low structure marks!', NULL),
(12, 1, 15, 4, 7, 7, 7, 'Fantastic tasting Crimbo Sarnie, suculent turkey, strong cranberry flavour and a definitely better than average stuffing. Innards right up to the edges of the bread, of which was rather dry, most likely due to being gluten free ', NULL),
(13, 1, 16, 7, 6, 6, 6, 'I enjoyed this, it had a kick to it! Brie was in a little short supply but I absolutely loved the pistachios! Not bad for a veggie sarnie but not really that Christmassy', NULL),
(14, 1, 18, 5, 6, 5, 7, 'This was an average sandwich, Cranberry is more like jam than the deep rich flavours of other sandwiches and the brie was quite hard', NULL),
(15, 1, 19, 6, 7, 1, 6, 'Whilst this was all kinds of delicious, I felt it lacked a Christmas element. The Potter household does have Turkey currry over the festive period, however I feel this wrap needed to bring a Christmas spice to the Indian \"Spiced\" Tortilla, cinammon perhaps?', NULL),
(16, 1, 20, 7, 8, 6, 8, 'I quite liked this as a vegetarian Crimbo sarnie, there seems to be a gap in the market for faux meat sarnies, which would certainly be interesting to try! The cranberry brings the Christmas and who doesnt have brie over the festive period? It was well constructed and the inards were nicely spread.', NULL),
(17, 1, 21, 5, 8, 5, 6, 'Was hoping this would be a better sarnie, its the flag ship sarnie in Tesco\'s Crimbo range. There werent any flavours apart from wholemeal and mayonaise. The one redeaming feature was the inards were right up to the edges!', NULL),
(18, 1, 22, 4, 6, 3, 7, 'This wasnt a great sarnie, it has pigs, it has blankets but its basically just a bangers and bacon buttie. It has a slither of cranberry but I couldnt taste it, not a great option here!', NULL),
(19, 1, 23, 7, 6, 7, 8, 'I thought this was an ok sandwich to be honest. You have to look beyond the fact that its a jazzed up ham and cheese sarnie but the ham is thick, just like you would cut from the a gammon joint cooked for boxing day cold cuts! Cheese was lovely and crumbley and so yes, this is Christmas!', NULL),
(20, 1, 26, 3, 5, 5, 5, 'WAY WAY TOO MUCH MAYONAISE! At least some flavour of the stuffing and cranberry came through but not an awful lot. Also proves that bread to innards ratio is poor for subs.', NULL),
(21, 1, 27, 3, 4, 8, 3, 'This had a very Christmas flavour, the stuffing tasted just like Mrs P makes it, however Mrs P\'s stuffing isn\'t as dry as an AA meeting! I can\'t really get beyond how dry this sarnie is, the structure was also poor, inards not reaching the edges all the way around!', NULL),
(22, 1, 28, 3, 6, 3, 3, 'This was a little dull, its basically a cut back version of the Turkey Feast. No greenery, bacon and turkey were average and the cranberry didnt really come through', NULL),
(23, 1, 30, 3, 4, 3, 5, 'This was awful, ingredients suggest Christmas but nothing came through beyond the mayo. Tesco, hold back on your MAYO!', NULL),
(24, 1, 32, 4, 0, 2, 7, 'I actually quite liked these, they were a nice accompaniment to a crimbo sarnie. As they are not a sarnie, I am marking 0 for structure. They are not a sarnie, no further pies will be allowed during this voting', NULL),
(25, 2, 1, 9, 9, 10, 8.5, 'If anything is going to get you into the festive spirit, this is it. Astounded by Eats ability to keep the Yorkshire pudding crispy, excellent filling throughout and retained heat well on the walk back to the office. It’s at the pricier end of the Christmas sandwich market but worth every penny, I am stuffed.', NULL),
(26, 2, 3, 8, 5, 9.9, 5, 'This sandwich did not meet my sky high expectations. Yes - it\'s Christmas through and through but I found many faults. Awful structure, half the filling fell out and ended up at the bottom of the bag, I also found the texture of the onions a bit slimy and the bread ever so slightly dry at each end. Overal very tasty, could do with being at least 50p cheaper. ', NULL),
(27, 2, 8, 6.8, 7, 9.5, 7.8, 'I love the concept of this Christmas sandwich. Individually these are good M&S sarnies but combined in a three pack is a real festive novelty. I particularly liked the carrot and parnsip in the chicken one. Four quid is quite pricy but given you get three of them I think it\'s decent value. ', NULL),
(28, 2, 12, 7.5, 7.8, 9, 6, 'Excellent sarnie, marked down for lack of crispy onions. ', NULL),
(29, 2, 19, 5.3, 6, 6, 6, 'Smells quite nice but turkey looks a little grey. Fillings not very well dispursed throughout the wrap, you get a lot of filling at the top but chewing on a wrap and sauce by the end of it. Personally I\'m a big fan of Turkey curry at Chritmas so this does get festive kudos from me.  ', NULL),
(30, 2, 21, 2, 4, 3, 4, 'Horrible. Tastes like mayo and old meat. Didn\'t taste christmassy at all, and it\'s all squished together so far too dense. Didn\'t even finish it. ', NULL),
(31, 2, 26, 5, 5, 4, 5, 'Was dreading eating this but it wasn\'t too bad. The turkey was the most \'roast turkey\' tasting turkey that I\'ve eaten from the Tesco range. Overal fine, but wouldn\'t eat again. ', NULL),
(32, 2, 27, 4.5, 4, 8, 5, 'Big fan of Wicked Kitchen Vegan range so had high hopes for this sandwich. This sandwich however, was an utter dissapointment. Far too dry, filling was falling out all over the place, it also didn\'t taste very fresh. Festive vibes strong though, saved the scoring significantly. ', NULL),
(33, 2, 30, 3, 4, 3, 3, 'Beige mess. Poor quality sausages. Appreciated the sage and onion bread flavour but thats pretty much it. ', NULL),
(34, 3, 1, 9.2, 9.75, 9.75, 9.5, '', NULL),
(35, 3, 19, 7, 7, 3.5, 7, 'I really nice boxing day, coronation chicken style vibe. Bit of something relishy etc, nice spiced wrap and turkey. All that said, no feelings of real festive cheer from this. ', NULL),
(36, 3, 21, 4, 6, 6, 6, 'In theory this should have been an absolute winner. On first look there was loads of turkey, stuffing, sausages and evidence of cranberry. First issue was wholemeal bread, which was over powering. Add to that there was no seasoning, and lots of mayo, just made for a meaty yet bland mess. swap the mayo for cranberry, and a good crunch of salt and pepper and it might have been a winner. ', NULL),
(37, 3, 26, 5, 4.5, 7, 6, 'Just sloppy and mayo, all a bit grim.', NULL),
(38, 3, 27, 3, 3, 7, 2, 'SO. DRAI! Basically tastes like very dry stuffing and soggy veg, with some spice, in a falling apart sarnie. Tastes like Christmas, but not like nice food. ', NULL),
(39, 3, 30, 4, 5, 4, 6, 'Full of bloody mayo, flavourless and a bit grim. Sage bread a nice touch, ruining by filling. ', NULL),
(40, 4, 7, 8, 9, 8, 7, 'A trusty favourite! Good bread and good levels of cranberry sauce. They also donate a % of proceeds to Shelter. Very Christmassy', NULL),
(41, 4, 12, 7, 6, 7, 8, 'Yummy! But not as good as the M&S one', NULL),
(42, 4, 23, 5, 4, 0, 3, 'Bit boring really but tasted pleasant enough. Not very Christmassy at all. Just a dressed up ham and cheese sandwich.', NULL),
(43, 5, 1, 8, 9, 8, 8, 'This was great. Really delicious.  And SUPER Christmassy. I did love it but I kept thinking how much MORE I would have liked it, if it was served a little pot of gravy for dunking because, can you imagine how good that would be? Also for me , a little on the greasy side. So because it was almost the best but not quite, I have to mark it down. Also, a quick moment for the elephant in the room but... it\'s not a sandwich is it? ', NULL),
(44, 5, 12, 8, 7, 9, 9, 'Holidays are coming, holidays are coming! HO HO HO etc etc\nTHIS WAS YUMMMMMMMMY. My first foray into the Christmas sandwhich sphere this year, and I\'m back in the game.  Very enjoyable, twas Christmassy, twas tasty. Twas a good start.\nIt was a little squished - so structure has taken a hit. But the \"innards\" were well proportioned, and consistent throughout.\nNot sure but think the onions may have been less than crispy. but I ate it so quickly, who the hell can tell.\nOverall, double thumbs up from me. ', NULL),
(45, 6, 19, 6, 6, 3, 7, 'Whilst overcome with intruige at this wrap, it somewhat fell short of my expectations. I feel it lacked christmassness and the bhajji was notable in it\'s absence.\n\nThe turkey in this wrap really is the christmas trojan horse but i\'m no fool, it deserves no place next to christmas sandwiches.', NULL),
(46, 6, 21, 4, 6, 7, 7, 'Promised so much and delivered on a so litte. Plenty of filling but too much mayo. Why does everyone put mayo in everything?\n\nLots of meat and filled to the edges which is pleasing, but somehow, it didn\'t live up to expectations.', NULL),
(47, 6, 26, 4, 5, 4, 3, 'If i wanted a sugar baguette filled with mayo only, i would\'ve bought one. ', NULL),
(48, 6, 27, 6, 4, 7, 3, 'Dry as the sahara and tough to swallow. Who wants potato in a sandwich? Not me. i will not be buying this sandwich again.\n\nDecent veg to be fair. ', NULL),
(49, 6, 30, 5, 4, 6, 4, 'The sausage and cranberry were more apparent but to be fair, pretty bollocks and loads of mayo. Shocker.', NULL),
(50, 7, 1, 9, 10, 8, 9, 'It\'s a Christmas lunch in a wrap, except the vegetables. MUST HAVE - Not a daily though (Christmas only comes once a year) - V.Full.  Great with mince pie and Gingerbread latte... Is Yorkshire Christmassy? With Turkey not Beef? Who gives a Fuck it\'s shitting tasty!', NULL),
(51, 7, 2, 9, 9, 8, 7, 'All the basics, Turkey, stuffing, cranberry, mayo, crispy onion - but then topped with Rocket in a white baguette... Very tasty, very moist, fan fave. Personal taste - spinach instead of rocket, brown baguette instead of white.', NULL),
(52, 7, 3, 9.5, 8, 9.6, 7, 'A unique and original take.  Great to see sprouts making an appearence, love them or hate them they are part of christmas. Little bit dry with some slimy onions and cabbage. Pigs great, and Bacon in the bread is inspired!', NULL),
(53, 7, 6, 8, 8, 8, 8, 'It is fully loaded! Chunky meat, Turkey and stuffing. Great sauce distribution and multi-grain bloomer bread was fab.', NULL),
(54, 7, 9, 9, 7, 8, 6, 'A right cracker. British turkey, ham hock, and pork, sage & onion stuffing balls, all wrapped up with spinach, tarragon mayo and a cranberry & clementine sauce. Leon wraps fall apart, interesting flavours, flat-bread standard LEON and not very Christmas (unless you are in Aden)', NULL),
(55, 7, 10, 7, 8, 8, 9, 'It\'s a weighty sandwich for the size. Good sprad, eveninly distributed - a Benchmark sandwich.', NULL),
(56, 7, 11, 8, 8, 8, 6, 'Great instore made baguette.  Tangy Cranberry - healthy use of mayo, succulent turkey, can taste that supermarket baguette bread taste that makes it feel homemade. Spinach - not that Christmasssssy', NULL),
(57, 7, 12, 8, 8, 9, 6, 'A good solid chrimbo sarnie. Spinach is a nice addition, great use of Cranberry sauce so not dry. Turkey base with a meaty sage & onion stuffing. Brown bread completes the package. 50p to Help the Homeless', NULL),
(58, 7, 13, 8, 8, 9, 7, 'Love the Cranberry bread, easily the best Turkey i\'ve had, succulant and didnt feel processed. What is it with spinach?!? Is that Christmas? I think more should rise shreaded sproats.', NULL),
(59, 7, 16, 7, 8, 4, 5, 'Veggie so it\'s going to struggle.  Nuts are good, Cranberry good, gotta love a bit of Brie, strong multi-seed baguette. Could be a year round sarnie.', NULL),
(60, 7, 17, 9, 0, 9, 5, 'It\'s half a sandwich, infact there is nothing to sandwich between, will fair badly on structure.  Great tastes though... hard to eat with hands, maybe knife and fork jobbie. GF Bread sucks balls, only more dry.', NULL),
(61, 7, 25, 5, 1, 8, 5, 'Like a day after the day after Boxing Day left over sandwidch. DRY. AS. FUCK', NULL),
(62, 7, 31, 3, 2, 8, 3, 'Expected so much - was dissappointed. Not worth the walk. Dry bread, dryer than the Costa turkey feast. Lacking in moisture throughout. Hint of Cranberry applied to one side of bread, hint of mayo applied to the apposing slice, bacon was tasteless, turkey dry, Spinach was plump and fresh. Suggest re-introduction of Gluten.', NULL),
(63, 7, 32, 5, 0, 2, 8, 'Couldn\'t distinguish between these and the normal pickle pork pies.  Tasty pork pies - but not floating my boat and a sandwich alternative.', NULL),
(64, 7, 34, 9, 8, 9, 9.5, 'FIRST PARSNIP INGREDIENT !! Porchetta (Porchetta is a savoury, fatty, and moist boneless pork roast of Italian culinary tradition.). Cranberry, Parsnip stuffing, chilli jam, peppercorns, mayo, spinach. A hefty sarnie, and a change to the usual flavours, but a good change it is! Really good lasting after taste!', NULL),
(65, 7, 35, 7, 9, 7, 5, 'Crunchy slaw was the standout ingredient for me away from the traditional taste. Good mayo, think there was Ham too, Cranberry was good... could have more meat.', NULL),
(66, 8, 33, 3, 2, 4, 1, 'Poor. Dryer than Turkey which is a mystery to me. Tasted and looked like baby sick wrapped in soggy brown bread. If this is Christmas, Im out.', NULL),
(67, 9, 1, 8.9, 9.4, 9.8, 9.6, 'If you could capture Christmas in a sandwich then this is pretty close to what you\'d get. From the crunchy ends to the soft filling, this wrap had it all. Although not a traditional pairing, yorkshire puddings and turkey are a match made in heaven and will definitely be making an appearance on my plate this Christmas. It also managed to retain all the filling, despite being open ended, something most Burrito bars should take note of. My only, and I mean only. criticism was the distribution of cranberry sauce. A thin layer of sauce over the yorksire pudding would have completed this otherwise delectable offering from Eat. ', NULL),
(68, 9, 2, 8.4, 9.5, 9.6, 9.8, 'This is literally Christmas in a baguette. Plenty of cranberry sauce, good pieces of turkey, not Sainsbury\'s slices, tasty stuffing, what more could you ask for? I felt let down by the large amount of rocket that appeard to be shoved on top as an afterthought; it was a bit messy but didn\'t detract from the overall enjoyment of this sandwich. It also got better as it warmed up in the room, the time in the fridge did this sandwich no favours.', NULL),
(69, 9, 3, 8, 7.9, 8.4, 7.1, 'Well, controversial maybe, but the cold, slimy onions for me were just unpleasant and a real detractor from the overall enjoyment of this sandwich, hence the low scores in flavour and VfM. Also slightly difficult to eat as the filling kept trying to escape out of the side, however not sure how they could do this otherwise.\nThe chutney on the sandwich was plentiful and added much needed moisture to the sandwich. The sprouts added a nice crunch and also some much needed colour in the beigeness of christmas, and the bacon in the bread was inspired. But my lasting memory is of cold, slimy onions, and that\'s just not Christmas for me.', NULL),
(70, 9, 9, 8, 8.8, 8.5, 2, 'This is just too expensive for what it is. It was tasty, had all the right things in it to be a winning combination AND it was warm (huge bonus) but I found myself calculating how much each bite cost, and that\'s not a position you want to be in when enjoying your Christmas sandwich.', NULL),
(71, 9, 12, 7, 7.5, 8, 8, '', NULL),
(72, 9, 24, 6.5, 8, 1, 4, 'Was it tasty? Yes. Did I enjoy eating it? Yes. did I feel in the least bit christmassy? Not in the slightest. The flavours should have all been there, but the sparse distribution of \"Nut Roast\" (more like a few seeds) and cranberry sauce, combined with the bland, out-of-the-packet-tasting turkey that you can get in any supermarket and it just reminded me of a ham and cheese toastie, with the horseradish mayo just aiding that flavour. In its defense, the bread was soft, but with a beatuiful golden toast on top, it held together well and at any other time of the year would have been a more than satisfactory (although slightly expensive) luncheon. But not today.', NULL),
(73, 9, 29, 4, 7, 4, 3, 'The anticipation of that classic pigs in blankets flavour, combined with that oh so christmassy cranberry sauce and rosemary wrapped a croque monsieur-esque sandwich was almost too much to cope with, but I managed to make it back to my desk before tucking in. However, the sandwich failed to deliver. Whilst nice, the rosemary came in waves, varying between overpowering and hardly noticable, the bechamel sauce just was thick and stodgy, the sausages were tough and the bacon barely warm. A disappointing start to the christmas sandwich season. That said, it did hold up well, so credit where it\'s due', NULL),
(74, 10, 20, 4.175, 4, 1, 4, 'It\'s a cheese and jam sandwich - and that\'s just not Xmas.  Can I get my money back?', NULL),
(75, 10, 22, 5, 3, 6, 6, 'Poncy name aside...that will be a (mostly) sausage sarnie with bacon and turkey then! Cranberry sauce is always good IMHO but this serving was lop-sided, so it was a more like 2 sandwiches in one... the second being \'Cranberry sauce with assorted meat\'. It was a bit like a sandwich of mixed Xmas leftovers...made by your sweet cenile granny (less the odd hair or two). You eat it, it fills you up, but you won\'t be looking for seconds.', NULL),
(76, 10, 28, 3, 5, 6, 7, 'What can I say other than just plain \'average\'.\nOn the plus side it wasn\'t too dry, probably due to the massive layers of BUTTER applied other sife of the filling. Weird but less invasive than mayo I guess. It also began to taste just too much of ham by the end of the meal. The best thing it has going for it is the price (meal deal). If you served this up to Santa on Xmas eve he\'d probably not leave you that ipad upgrade you wanted, so don\'t do it boys and girls.', NULL),
(77, 10, 32, 7, 0, 0, 3, 'Described as \'seasoned cured British pork w cranberries encased in rich hot water crust pastry\'. Tasted like a mini pork pie with a few baked cranberries chucked in for good measure should I guess. The combo works, after all as they said in the classic movie Babe, \"Pork is a sweet meat\" but to be honest I can\'t get over the fact that pork pies are for summer picnics, not winter warming. Especially as the \'hot water pastry\' was decidedly cold. An \'On the Go\' item that should be a \'No Go\'.', NULL),
(78, 11, 1, 9, 9, 7.5, 8.5, 'I have filed a petition to EAT to change the name of this glorious wrap to “Christmas Morning™” because that is the only way I can describe the feeling that I experienced today.\nFrom the medley of textures of the Yorkshire pud to the pungently savoury flavour of the turkey and bacon.\nWe can all agree that it was lacking in the cranberry sauce department but a part from that… what’s not to like?\nYes its saturated in fat, slightly greasy and has nothing healthy found in nature but who cares? Its Christmas it’s the time of year to say fuck it and indulge in anything and everything that your heart desires.\nSo stop being a sandGrinch, head to EAT tomorrow and pick up yourself one of these bad boys. Because why experience Christmas Morning just once a year when you can do it everyday for 4.99.((Christmas Morning™ is a registered trademark by Evill Design. All rights reserved.', NULL),
(79, 12, 1, 8, 7, 9, 7, 'Pretty darn good, a bit heavy and greasy but definitely a revolution in the market', NULL);

-- --------------------------------------------------------
  
  --
  -- Table structure for table `sandwich`
--
  
  CREATE TABLE `sandwich` (
    `id` int(11) NOT NULL,
    `name` varchar(150) DEFAULT NULL,
    `brand` varchar(30) DEFAULT NULL,
    `price` float DEFAULT NULL,
    `temperature` varchar(4) DEFAULT NULL,
    `format` varchar(20) DEFAULT NULL,
    `timestamp` datetime DEFAULT NULL
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
  -- Dumping data for table `sandwich`
--
  
  INSERT INTO `sandwich` (`id`, `name`, `brand`, `price`, `temperature`, `format`, `timestamp`) VALUES
(1, 'Roast In A Yorkshire Pudding Wrap', 'Eat', 4.99, 'warm', 'wrap', NULL),
(2, 'Pret Christmas Baguette', 'Pret-a-Manger', 3.99, 'cold', 'baguette', NULL),
(3, 'The Festive Pig Sandwich', 'Paul', 4.65, 'cold', 'baguette', NULL),
(4, 'Christmas Lunch Sandwich', 'Greggs', 2.75, 'cold', 'sandwich', NULL),
(5, 'Turkey, Stuffing & Bacon - WITH GLUTEN!', 'Waitrose', 3.5, 'cold', 'sandwich', NULL),
(6, 'Festive Fullworks bloomer', 'Eat', 3.99, 'cold', 'sandwich', NULL),
(7, 'Turkey Feast', 'Marks & Spencer', 4.25, 'cold', 'sandwich', NULL),
(8, 'Three Bird Roast', 'Marks & Spencer', 4, 'cold', 'sandwich', NULL),
(9, 'The Christmas Wrap', 'LEON', 6.5, 'cold', 'wrap', NULL),
(10, 'Turkey Feast', 'Sainsbos', 2.4, 'cold', 'sandwich', NULL),
(11, 'Turkey, Bacon & Cranberry Baguette', 'Waitrose', 4.25, 'cold', 'baguette', NULL),
(12, 'Pret Christmas Lunch 2019', 'Pret-a-Manger', 3.95, 'cold', 'sandwich', NULL),
(13, 'Dinde De Noel', 'Paul', 4.65, 'cold', 'baguette', NULL),
(14, 'Festive Full Works on Malted Wheat', 'Eat', 4.25, 'cold', 'baguette', NULL),
(15, 'Turkey & Trimmings (Gluton Free)', 'Coop', 3, 'cold', 'sandwich', NULL),
(16, 'Brie, Pistachio & Cranberry (v)', 'Pret-a-Manger', 3.5, 'cold', 'baguette', NULL),
(17, 'Christmas Lunch on Gluten Free Bread', 'Pret-a-Manger', 3.75, 'cold', 'sandwich', NULL),
(18, 'Brie and Cranberry Christmas Sanwich', 'Coop', 2.5, 'cold', 'sandwich', NULL),
(19, 'Turkey Tikka With Onion Bhaji (Wrap)', 'Tesco', 2.5, 'cold', 'wrap', NULL),
(20, 'Brie & Cranberry with Rocket and Black Pepper', 'Sainsbos', 2.6, 'cold', 'sandwich', NULL),
(21, 'Turkey & Trimmings', 'Tesco', 2.5, 'cold', 'sandwich', NULL),
(22, 'Turkey with Pigs under blankets', 'Sainsbos', 2.4, 'cold', 'sandwich', NULL),
(23, 'Ham & Wensleydale Sandwich', 'Sainsbos', 2.25, 'cold', 'sandwich', NULL),
(24, 'Turkey & Bacon Toastie', 'Benugo', 5.75, 'warm', 'sandwich', NULL),
(25, 'Turkey Feast', 'Costa', 3.6, 'cold', 'sandwich', NULL),
(26, 'Turkey Stuffing & Cranberry (Sub)', 'Tesco', 2.5, 'cold', 'baguette', NULL),
(27, 'Bubble, Squeak & Greens (Vegan)', 'Wicked', 3, 'cold', 'sandwich', NULL),
(28, 'Turkey, Bacon & Cranberry on malted bread', 'Sainsbos', 2, 'cold', 'sandwich', NULL),
(29, 'Pigs On Blankets', 'Caffe Nero', 4.35, 'warm', 'sandwich', NULL),
(30, 'Pigs Under Blankets (Sub)', 'Tesco', 2.5, 'cold', 'baguette', NULL),
(31, 'Gluten Free Turkey, Stuffing & Bacon', 'Waitrose', 3.5, 'cold', 'sandwich', NULL),
(32, '2 Pork & Cranberry Mini Pies', 'Sainsbos', 1.2, 'cold', 'pies', NULL),
(33, 'Very Merry Christmas Lunch 2019 (Vegan)', 'Pret-a-Manger', 3.8, 'cold', 'sandwich', NULL),
(34, 'Very Merry Porchetta on Sourdough', 'COCO DI MAMA', 4.25, 'cold', 'sandwich', NULL),
(35, 'Christmas Turkey Wrap', 'Marks & Spencer', 4.5, 'cold', 'wrap', NULL);

-- --------------------------------------------------------
  
  --
  -- Table structure for table `user`
--
  
  CREATE TABLE `user` (
    `id` int(11) NOT NULL,
    `name` varchar(1000) DEFAULT NULL
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
  -- Dumping data for table `user`
--
  
  INSERT INTO `user` (`id`, `name`) VALUES
(1, 'Potter'),
(2, 'Kate'),
(3, 'Alex'),
(4, 'Sarah'),
(5, 'Rosie'),
(6, 'Rhys'),
(7, 'Will'),
(8, 'Joshua'),
(9, 'James'),
(10, 'Bradley'),
(11, 'Ollie'),
(12, 'Raph'),
(13, 'Jules');

--
  -- Indexes for dumped tables
--
  
  --
  -- Indexes for table `review`
--
  ALTER TABLE `review`
ADD PRIMARY KEY (`id`);

--
  -- Indexes for table `sandwich`
--
  ALTER TABLE `sandwich`
ADD PRIMARY KEY (`id`);

--
  -- Indexes for table `user`
--
  ALTER TABLE `user`
ADD PRIMARY KEY (`id`);

--
  -- AUTO_INCREMENT for dumped tables
--
  
  --
  -- AUTO_INCREMENT for table `review`
--
  ALTER TABLE `review`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
  -- AUTO_INCREMENT for table `sandwich`
--
  ALTER TABLE `sandwich`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
  -- AUTO_INCREMENT for table `user`
--
  ALTER TABLE `user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
