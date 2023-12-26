 
CREATE DATABASE ALOHA
drop database ALOHA
CREATE TABLE AdminLogin(
AdminId int IDENTITY(1,1) PRIMARY KEY,
  AdminName varchar(255) NOT NULL,
  AdminPass varchar(255) NOT NULL
)
Insert into AdminLogin values('Aloha@aloha.com','aloha')
drop table AdminLogin
CREATE TABLE TBLUserInfo (
  IdUs int IDENTITY(1,1) PRIMARY KEY,
  UsernameUs varchar(11) NOT NULL,
  PasswordUs varchar(255) NOT NULL,
  Email varchar(50) Not NULL,
 
)
CREATE TABLE ContactInfo(
id int IDENTITY(1,1) PRIMARY KEY,
username varchar(50) NOT NULL,
contactno varchar(100) NOT NULL,
usermessage varchar(255) NOT NULL,
Email varchar(50) Not NULL,
)
delete from TBLUserInfo where IdUs=1

CREATE TABLE Category(
Category_Id int IDENTITY(1,1) PRIMARY KEY,
Category_Name varchar(100) NOT NULL,
)
CREATE Table SubCategory(
SubCategory_Id int IDENTITY(1,1) PRIMARY KEY,
SubCategory_Name varchar(100) NOT NULL,
Category_Id int FOREIGN KEY REFERENCES Category(Category_Id),
)

Create Table BlogPost(
postId int IDENTITY(1,1) PRIMARY KEY,
BlogTitle varchar(255) NOT NULL,
BlogPicture varchar(50) NOT NULL,
Category varchar(50) NOT NULL,
BlogPart varchar(6565) NOT NULL,
BlogDescription varchar(6565) NOT NULL,
Created_On datetime default CURRENT_TIMESTAMP
)
------Fashion BlogPosts
insert into BlogPost(BlogTitle,BlogPicture,Category,BlogPart,BlogDescription) values('Vintage Style Inspiration','Fashion_3.jpg','Fashion','Vintage Style','Vintage style Fashion')
insert into BlogPost(BlogTitle,BlogPicture,Category,BlogPart,BlogDescription) values('Go-To Brunch
Outfit Ideas!','Fashion_1.jpg','Fashion','For a casual brunch, there’s nothing chicer than a pair of white jeans – they can make any outfit look fresh and polished.','Go-To Brunch Outfit Ideas!, For a casual brunch, there’s nothing chicer than a pair of white jeans – they can make any outfit look fresh and polished. I styled them with a crossover neckline top. Completed this look with sandals, statement earrings and a straw bag. If you’re looking to elevate this look, simply swap the sandals for a kitten heel.')
 insert into BlogPost(BlogTitle,BlogPicture,Category,BlogPart,BlogDescription) values('Cute End Of Summer
Outfit Ideas!','Fashion_4.jpg','Fashion','And just like that, our summer days are numbered. However, this does not mean we are fully ready to give up our warm weather outfits.','And just like that, our summer days are numbered. However, this does not mean we are fully ready to give up our warm weather outfits. If you’re like someone who  holds on to summer for dear life, here’s an easy outfit idea to get you through your end-of-summer blues!      When in doubt, reach for a cute maxi style dress, it’s perfect for that in between weather. Styled it here, with a pearl necklace. Footwear is optional, but you could finish this look with some strappy sandals or a kitten heel. This simple & fresh ensemble is perfect for a stroll through the city or hanging by the beach.    Xx Team ALOHA  ')
 insert into BlogPost(BlogTitle,BlogPicture,Category,BlogPart,BlogDescription) values('How To Style a Blazer For 
Your Office Look','Fashion_2.jpg','Fashion',' We always like to find white dresses that offer an interesting detail or go for a plain sleek silhouette. Oh and did We mention there are endless ways to style this little number?         For a polished/classy look, pair a mini LWD with neutral fabrics like an oversized  blazer, as seen here.','   A little white crop top is a must-have staple during the summer! There’s just something so chic, clean and effortless about them + summer whites pair so well against sun-kissed skin. We always like to find white dresses that offer an interesting detail or go for a plain sleek silhouette. Oh and did We mention there are endless ways to style this little number?         For a polished/classy look, pair a mini LWD with neutral fabrics like an oversized  blazer, as seen here. Mastered this look, with statement earrings, high heels and a tote for that chic office style vibe. For a more casual look that requires minimal effort,  swap the blazer for a denim jacket and throw on some sleek sneakers. Perfect ensemble to explore a cute town or a picnic setting. Lastly, don’t be afraid to throw in a pop of color to your LWD look, try fun colorful statement earrings (like these) and a bag for a playful ensemble (love this cutie).       XOXO Team ALOHA ')
 insert into BlogPost(BlogTitle,BlogPicture,Category,BlogPart,BlogDescription) values('Get Some Dawat Outfit Ideas!','Fashion_5.jpg','Fashion','It is always amazing to style yourself for a dawat in a traditional way.',' It is always amazing to style yourself for a dawat in a traditional way.This "ankhrakha" style dresses are so in trend now. You can easily pair this look with any "khussas/juti" and with a pair of "jhumkas".   You can also wear this dress with "gharara".But while pairing this look with a gharara you can also go with a shorter length "kurti". You can also do a classic hairbun with long  "jhumkas".     XOXO Team ALOHA    ')
 insert into BlogPost(BlogTitle,BlogPicture,Category,BlogPart,BlogDescription) values('How To Get A Chic Look 
With a Black And White Outfit!<3','Fashion_3.jpg','Fashion','statement earrings for a polished finish. This look is easily wearable to attend any formal events, a brunch date or if you have an important meeting to attend, simply layer on a blazer!','We are in full favor of wearing black pants, no matter the season. From fitted-skinny jeans to laid-back BF jeans to wide leg denim, like the pair the model wearing here. No matter the style they always seem to add a fresh take to any ensemble.     This look– they literally go with everything! Recently, we have been in a minimalistic mood so this  can be paired them with a white tank top, high heels, straw bag and statement earrings for a polished finish. This look is easily wearable to attend any formal events, a brunch date or if you have an important meeting to attend, simply layer on a blazer! A t-shirt and sneaker combo is the perfect alternative for those casual running errand days or hitting your local farmers market!       How do you wear your black pants/denims? Comment below!      Xx Team ALOHA!   ')
 insert into BlogPost(BlogTitle,BlogPicture,Category,BlogPart,BlogDescription) values('How To Style Yourself 
As a Wedding Guest!','Fashion_6.jpg','Fashion','You can never go wrong with sarees.They can always make you look elegant. As a wedding guest, sarees are the best option.','  You can never go wrong with sarees.They can always make you look elegant.As a wedding guest,sarees are the best option.You can wear minimal makeup for a more neutral look based on the color of the saree.Also can pair the look with classic tight hair bun if you love wearing heavy jewelleries.If you are a more of a open hair kind of person you can go with less jewelleries.Always keep in mind to balance your saree with makeup and accessories.Do not miss a classy or a traditional hand clutch for completing your look.      XOXO Team ALOHA')
 
-------Lifestyle Blogposts 
insert into BlogPost(BlogTitle,BlogPicture,Category,BlogPart,BlogDescription) values('6 Tips To Help
You De-Stress','lifestyle7.jpg','Lifestyle','We get asked for advice by a lot of readers. One of the most common is how to destress your life and live a simpler, calmer existence.  Now, we’ll admit, paring down and living a life with less stuff has helped address the root cause of our stress quite a bit. The simpler your lifestyle, the less chaos you need to worry about. Minimalism lends itself to a calm, orderly way to focus on what matters.  But, of course, there are plenty of times when we get stressed out about money, too many commitments, or social drama. Even though we’ve managed to cut way back on the typical stressors, there are times when I still have to step back and destress. So, if you’re wondering how to destress your life, here are the practical steps I take to cut out the chaos','Because stress is a fact of life, how we navigate it is crucial to our health. Here are some helpful ways to de-stress your life: 1.Exercise:   Perhaps the most popular way to tackle stress is with a healthy dose of exercise. Walking, jogging, biking, dancing—whatever is enjoyable—will all contribute to reducing stress. 2.Meditation:   With the advent of popular smartphone apps, it’s easier than ever to access guided meditations to help us chill out.3.Rest: It It may seem silly to suggest rest if one of the challenges of stress we face is insomnia, but the more sleep we get, the better we feel.4.Nutrition: Eating poorly is sometimes how we react to stress, but we should be doing just the opposite. Adhering to a healthy diet will make us feel better and give us the fuel we need to combat stressors.5.Socialize:  Isolation can be unhealthy when we’re stressed. Even introverts need human contact, whether it be sharing a meal with a loved one or enjoying a night out with friends.6.Escape:  We all need to get out of our own heads from time to time, and an escape—whether literal or mental—is the perfect way to do that. Travel, if possible, just for a change of scenery.')
insert into BlogPost(BlogTitle,BlogPicture,Category,BlogPart,BlogDescription) values('The Perfect Travel 
Essentials!!','lifestyle3.jpg','Lifestyle','Most people aren’t born savvy travelers.The following tips for traveling will have you saving money, sleeping better, getting off the beaten path more, meeting locals, and just being a better traveler','Most people aren’t born savvy travelers.   It’s something that only comes with on-the-road experience.   The following tips for traveling will have you saving money, sleeping better, getting off the beaten path more, meeting locals, and just being a better traveler.       	1.Always pack a towel:	It’s the key to successful galactic hitchhiking and plain common sense. You never know when you will need it, whether it’s at the beach, on a picnic, or just to dry off.       	2.Buy a small backpack/suitcase: By purchasing a small backpack ,  you will be forced you to pack light and avoid carrying too much stuff.	 Humans have a natural tendency to want to fill space so if you pack light but have lots of extra room in your bag.     	 	3.Pack light: It’s OK to wear the same t-shirt a few days in a row. Take half the clothes you think you will need…you won’t need as much as you think. Write down a list of essentials, cut it in half, and then only pack that! ')
insert into BlogPost(BlogTitle,BlogPicture,Category,BlogPart,BlogDescription) values('Healthy Diet Plan 
You Wish To Follow','lifestyle2.jpg','Lifestyle','An eating plan that helps manage your weight includes a variety of healthy foods. Add an array of colors to your plate and think of it as eating the rainbow.','An eating plan that helps manage your weight includes a variety of healthy foods. Add an array of colors to your plate and think of it as eating the rainbow. Dark, leafy greens, oranges, and tomatoes—even fresh herbs—are loaded with vitamins, fiber, and minerals. Adding frozen peppers, broccoli, or onions to stews and omelets gives them a quick and convenient boost of color and nutrients.Emphasizes fruits, vegetables, whole grains, and fat-free or low-fat milk and milk products. Includes a variety of protein foods such as seafood, lean meats and poultry, eggs, legumes (bean and     peas), soy products, nuts, and seeds. Is low in saturated fats, trans fats, cholesterol, salt (sodium), and added sugars Stays within your daily calorie needs. Some general tips for comfort foods: Eat them less often. If you normally eat these foods every day, cut back to once a week or once a month. Eat smaller amounts. If your favorite higher-calorie food is a chocolate bar, have a smaller size or only half a bar.Try a lower-calorie version. Use lower-calorie ingredients or prepare food differently. For example, if your macaroni and cheese recipe includes whole milk, butter, and full-fat cheese, try remaking it with non-fat milk, less butter, low-fat cheese, fresh spinach and tomatoes. Just remember to not increase your portion size.')
insert into BlogPost(BlogTitle,BlogPicture,Category,BlogPart,BlogDescription) values('How To Get More 
Work Done- Get Some
Productivity Tips','lifestyle6.jpg','Lifestyle','Follow these tips on how to increase productivity and become your best, most productive self at work.',' Imagine closing each workday with a satisfied sigh, knowing that you had been so productive that you accomplished everything on your list. And knowing, too, that you were at the top of your creative game—getting your tasks done both efficiently and well. See yourself whistling as you walk away from work?      1.Do Your Heavy Lifting When You are at Your Best. ...     2.Stop Multitasking. ...     3.Prepare a To-Do List Each Night. ...     4.Cut Down Your To-Do List. ...     5.Delegate Properly. ...     6.Eliminate Distractions. ...     7.Plan Phone Calls. ...     8. Break up Work Periods With Exercise.')
insert into BlogPost(BlogTitle,BlogPicture,Category,BlogPart,BlogDescription) values('Fitness Tips 
And Routine','lifestyle4.jpg','Lifestyle','Exercise Daily.Read more to get more fitness tips ','Exercise Daily. Exercise daily for at least an hour.Exercise daily for at least an hour. You do not have to kill yourself from running, jogging, etc., but you should have some sort of moderate physical activity in your everyday life.Eat the Right Foods and Portion Each Meal. No matter how bad your stomach is telling you to go for  candy over healthy food, try to stay away from sweets.Keep Track of Calories and Food Intake Per Day.Keeping track of how many calories you eat in a day will be helpful in planning out your physical exercising. Be Sure to Get Sleep.Even though most of us have eight-hour jobs during the day or night, it is crucial to get enough sleep to recharge the body battery. Stay Motivated.An important key to being in shape is to set goals and keep a positive mindset. If you stay positive, you will be able to push yourself to get that fit body you have always wanted.')
insert into BlogPost(BlogTitle,BlogPicture,Category,BlogPart,BlogDescription) values('3 Secrets Behind
Glowing Skin','lifestyle5.jpg','Lifestyle',' We dug out the most well-kept glowing skin secrets to help you out with this skin struggle. Here, we have 3 beauty secrets for glowing that actually works like a charm.','We dug out the most well-kept glowing skin secrets to help you out with this skin struggle. Here, we have 3 beauty secrets for glowing that actually works like a charm. So, get ready to make some lifestyle and skincare changes for the glowing skin you always wanted... 	1.Exfoliate two or three times a week:   Over-exfoliating (every day) can lead to skin irritation, dryness and accelerated signs of aging, exfoliating two to three times per week (or just once if your skin is sensitive) can help keep pores from becoming clogged and leave the skin feeling refreshed and rejuvenated.  	2.Massage your face daily:   A daily massage improves facial muscle tone, enhances product absorption and improves blood circulation, all of which can help increase your skin’s glow. So next time grab some lovely oil— argan or jojoba are good options—and give your face a well-deserved massage.  	3.Get enough sleep:  It’s called “beauty sleep” for a reason, and without enough of it, you can exacerbate existing skin conditions and accelerate the aging process. Between 7-9 hours of restful,regenerative sleep each night contribute to better health and beautiful skin.')
insert into BlogPost(BlogTitle,BlogPicture,Category,BlogPart,BlogDescription) values('Get Some Morning
Routine Ideas!','lifestyle10.jpg','Lifestyle','Tired of being tired? Of feeling like you’re wasting your morning and, in turn, wasting your day? You need to revamp your morning routine! ','Tired of being tired? Of feeling like you’re wasting your morning and, in turn, wasting your day? You need to revamp your morning routine! And good news. I have just the thing you need – morning routine ideas that you can use to do more with your mornings.Ah, morning routine ideas… There are a seemingly endless supply of them that you can implement to become your best self. To help set your day up in a deliberate manner so that you can do more, achieve more, and be more.    Make your bed.Some things you definitely need in your morning routine--     Brush your teeth.     Get dressed for the day.     Make tea or coffee.     Say hello to a loved one.     Make breakfast.     Open the curtains and let some sunshine in.     Prepare your lunch or dinner for the day.')
insert into BlogPost(BlogTitle,BlogPicture,Category,BlogPart,BlogDescription) values('How To Avoid Online 
Distractions And 
Focus On Work','lifestyle11.jpg','Lifestyle',' Let’s face it, the Internet can be a very distracting place. Whether you’re taking an online class or simply trying to complete your schoolwork outside of the classroom, all efforts of productivity can fly out the window as soon as a viral video pops-up on your social media feed.','Let’s face it, the Internet can be a very distracting place. Whether you’re taking an online class or simply trying to complete your schoolwork outside of the classroom, all efforts of productivity can fly out the window as soon as a viral video pops-up on your social media feed. 1.Get into a study routine.By establishing and sticking to an online study schedule, you can make sure that you are focused during the times you plan to do your schoolwork, resulting in better productivity! 2.Silence all nonessential notifications.Nothing is worse than having constant pings, buzzes, whistles, and bells throw off your concentration.To alleviate yourself of these distractions, make sure to temporarily silence all nonessential notifications when you are working online.3.Block access to distracting websites.f you’re someone who might want a little more impulse control, then you might be interested in getting a free third-party application or browser extension that blocks access to distracting websites. Third-party extensions, such as StayFocused and Block Site on Google Chrome, allow you to create a blacklist of distracting websites and then easily activate when you plan to study.4.Take a screen break.However, if you plan to return to schoolwork, make sure your break doesn’t extend beyond your scheduled limit. Try setting a timer so your study routine stays on track. 5.Get some rest.First look at your sleep schedule for opportunities of improvement. If you’re not getting the standard eight hours, try to go to bed earlier, reorganize your daily schedule, and eliminate any late-night distractions that could be keeping you up.')
insert into BlogPost(BlogTitle,BlogPicture,Category,BlogPart,BlogDescription) values('List Of Some 
Inspirational Quotes','lifestyle8.jpg','Lifestyle','Motivational quotes can help you reach your potential each day. Sure, they’re just words. But they’re positive words.','Motivational quotes can help you reach your potential each day. Sure, they’re just words. But they’re positive words. And if you’re on the verge of giving up or struggling to push yourself to the next level, sometimes that’s just what you need.   1. “All our dreams can come true, if we have the courage to pursue them.” – Walt Disney 2. “The secret of getting ahead is getting started.” – Mark Twain 3. “I’ve missed more than 9,000 shots in my career. I’ve lost almost 300 games. 26 times I’ve been trusted to take the game winning shot and missed. I’ve failed over and over and over again in my life and that is why I succeed.” – Michael Jordan 4. “Don’t limit yourself. Many people limit themselves to what they think they can do. You can go as far as your mind lets you. What you believe, remember, you can achieve.” – Mary Kay Ash 5. “The best time to plant a tree was 20 years ago. The second best time is now.” – Chinese Proverb')

ALTER TABLE TBLUserInfo
ADD Address varchar(255);

ALTER TABLE TBLUserInfo
ADD Designation varchar(255);

ALTER TABLE TBLUserInfo
ADD ContactNo varchar(255);




 
insert into Category values('Fashion')
insert into SubCategory values('Vintage',1)
insert into SubCategory values('Classic',1)
insert into BlogPost(BlogPicture,BlogPart,SubCategory_Id) values('fashion.jpg','Vintage style',1)
insert into BlogPost(BlogPicture,BlogPart,SubCategory_Id) values('Fashion_3.jpg','Classic Style',2)

CREATE TABLE Comment(
CommentId int IDENTITY(1,1) PRIMARY KEY,
postId int FOREIGN KEY REFERENCES BlogPost(postId),
CommentBy varchar(255) NOT NULL,
Content varchar(255) NOT NULL,
Created_On datetime default CURRENT_TIMESTAMP,
CommentApproval int default 0 NOT NULL
)
insert into Comment(postId,CommentBy,Content) values(1,'yumna','hello')
drop table ContactInfo
drop table TBLUserInfo
drop table Category
drop table SubCategory
drop table BlogPost
drop table Comment

Select* from TBLUserInfo
Select* from BlogPost
Select* from  ContactInfo