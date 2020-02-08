BEGIN;

TRUNCATE ailments
    RESTART IDENTITY CASCADE;

INSERT INTO ailments(title, ailment, treatment, illustration)
VALUES
    ('I had that for an entire year in the early 1970s!', 'Oh yeah, I remember it well. I was working at the cement plant – not Gunderson’s, this was after Gunderson’s – and every morning I would have the worst headache, and usually I’d throw up three or four times during the day, too. Your grandmother wanted me to go in and see the doctor, but I was pretty sure it would go away on its own. Sure enough, fourteen months later, it vanished without a trace!', 'Get over it.', 'oldmansad'),
    ('You’re probably pregnant', 'I see you with all these different boys on your Instagram account – no, I don’t have Instagram, but your Aunt Barbara does, and she shows me – and I ain’t ever heard anything about you having any boyfriend, so it makes me wonder what kind of lifestyle you’re living out there in the city.', 'Look, motherhood’s going to be hard, but I think it’ll be good for you. I don’t know which one of those young hooligans are the father, but if they need a little, uh, nudge to do the honorable thing, you just tell me.', 'oldmanchild'),
    ('You’ve got Plowman’s Fever!', 'When I was growing up on the farm, seems like me and all the other siblings used to come down with Plowman’s Fever almost every spring. You’d spend a week feeling like you couldn’t leave the bed, but you had to, because it was plowing season!', ' Who needs any of that newfangled medicine? Your great-grandmother’s miracle tonic always did the trick for me. All it was, is a little honey, a little lavender, and eight ounces of Kentucky bourbon. Drink up!', 'oldmanhappy'),
    ('You’ve got the disco fever!', 'I never had it, but your father did from about 1977 to 1979, and let me tell you, it’s no joke, with all the hip-shaking and finger-pointing and jumping around like some kind of wildman. Better make sure you take care of it right away: left untreated, the disco fever can develop into a more serious case of the Saturday Night Fever, which is usually terminal.', ' Listen exclusively to Merle Haggard records from here on out.', 'oldmanpensive'),
    ('You’re high on drugs!', 'Don’t mess around with me: I know the signs of a dope-fiend when I see one. Glassy eyes, erratic temper, mangy odor – I lived through the sixties and seventies, young !gender!. You’d better get out of my house, right now: everyone knows that dopers have a propensity for kleptomania.', ' There is no cure: you’re in the grasp of the Devil now.', 'oldmanshout'),
    ('You need to call Grandma and me more often!', 'I bet all your symptoms would disappear overnight if you just gave us a ring every now and again. You know we love you, young !gender!, and we’re not going to be around forever.', ' You kids carry your phones around with you all day, why don’t you try using them?', 'oldmansad'),
    ('I heard about this on 60 Minutes!', 'Your grandmother and I saw an episode about this on 60 Minutes the other night. Turns out everybody’s getting it over in China. This one guy, they showed a picture of what happened to his face, and – well, I’m sure you’ll only have some mild scarring. But hey – looks ain’t everything, right, Mildred? She should know – she married me!', ' You’re going to have to lower your dating standards a little bit.', 'oldmanpensive'),
    ('Stop doing improv and get a real job', 'Your grandmother and I went to one of your shows that one time, and if I’m being honest, I didn’t understand one lick of it. Was it supposed to be funny? Anyway, that’s probably the cause of all your problems.', ' Stop doing weird shows with your friends and go to law school like your father did.', 'oldmanangry'),
    ('You’re dying', 'Sorry, young !gender!, but with all that going on, it’s probably time to throw in the towel. When you get to heaven, say hi to my old army buddy Nick for me.', ' Rest in peace.', 'oldmansad'),
    ('That’s just the human condition', 'If there’s one thing eighty-three years have taught me, it’s that life ain’t no picnic, young !gender!. Stop complaining and get with the program, before you know it you’ll be dead.', ' *sighs deeply, looks off into distance*', 'oldmanexplain'),
    ('Young lady, you’re hysterical!', 'Sounds like your female hormones are all discombobulated and it’s causing your brain to go all out of whack. This happens to your grandmother from time to time, doesn’t it, Mildred? Ow! What did I say?', 'I’ll put you in touch with a good lobotomist.', 'oldmanchild'),
    ('Time to get dentures', 'Losing my original teeth is the best thing that every happened to me. My fancy new dentures can bite through anything, and best of all, I don’t have to go to the dentist anymore or anything!', 'I’ve got a rusty pair of pliers in my toolshed, you want to do this right now? Open wide!', 'oldmanhappy'),
    ('Pipe down! My favorite movie is on the teevee!', 'Bob Hope and Bing Crosby Get Trapped In The Bread Factory is a laugh-a-minute 1958 comedy about two GIs on leave who accidentally wander into a condemned bread factory. Trapped inside, Bob Hope (played by Bing Crosby) medicates his depression by eating hundreds of loaves of bread daily, while Bing Crosby (played by Bob Hope) develops Stockholm Syndrome and falls in love with a baguette who he names Louise. Their conflict comes to a head when Bob attempts to consume Bing’s lover, leading to a knock-down, drag-out fight that leaves both dead. The whole thing is then revealed to be a dream had by Elvis Presley (played by Bob Hope and Bing Crosby at the same time).', 'We’ll talk during the ad break!', 'oldmanangry'),
    ('You’ve got an excess of yellow bile', 'Any doctor worth his salt knows that an imbalance in the humors can make one sick and irritable!', 'Somebody get the the leeches!', 'oldmanexplain'),
    ('You need to find yourself a wife!', 'Don’t kid yourself with your swingin’ bachelor lifestyle, young !gender!. Life can be pretty lonesome, when you don’t got someone to share it with. Plus, everyone knows that men are constitutionally unfit for cooking and cleaning!', 'Back in my day you’d go down to the local malt shop to meet girls. I assume that’s still how it works?', 'oldmanexplain'),
    ('Time to get your carburetor replaced', 'How many miles do you have on you? A hundred and ten thousand? Christ, kid, no wonder you’re feeling under the weather.', 'Here, pop open your hood, let me take a look.', 'oldmanshout');

TRUNCATE symptoms
    RESTART IDENTITY CASCADE;

INSERT INTO symptoms(symptom)
VALUES
    ('headache'),
    ('stomachache'),
    ('toothache'),
    ('heartache'),
    ('nausea'),
    ('vomiting'),
    ('congestion'),
    ('weight gain'),
    ('weight loss'),
    ('fever'),
    ('bleeding'),
    ('sneezing'),
    ('coughing'),
    ('shaking'),
    ('fainting'),
    ('painful urination'),
    ('intense loneliness'),
    ('ennui');

COMMIT;



















