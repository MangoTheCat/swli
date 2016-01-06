<!-- README.md is generated from README.Rmd. Please edit that file -->
Star Wars lorem ipsum generator
===============================

Using [ForcemJS](https://github.com/scottyg/ForcemJS), this package
produces Star Wars filler text.

    if (!(require(devtools))) install.packages("devtools")
    devtools::install_github("MangoTheCat/swli")

How it works — reference wrappers
---------------------------------

    library(swli)
    strwrap(aNewHope(paragraphs = 1))
    #>  [1] "There she is. See-Threepio, do you copy? For the moment. Uh,"   
    #>  [2] "we're in the main hangar across from the ship. We're right"     
    #>  [3] "above you. Stand by. You came in that thing? You're braver that"
    #>  [4] "I thought. Nice! Come on! It's them! Blast them! Get back to"   
    #>  [5] "the ship! Where are you going? Come back! He certainly has"     
    #>  [6] "courage. What good will it do us if he gets himself killed?"    
    #>  [7] "Come on! I think we took a wrong turn. There's no lock! That"   
    #>  [8] "oughta hold it for a while. Quick, we've got to get across."    
    #>  [9] "Find the control that extends the bridge. Oh, I think I just"   
    #> [10] "blasted it. They're coming through! Here, hold this. Here they" 
    #> [11] "come! For luck!"
    strwrap(theEmpireStrikesBack(paragraphs = 1))
    #> [1] "What did you have in mind for your next move? Well, if they"    
    #> [2] "follow standard Imperial procedure, they'll dump their garbage" 
    #> [3] "before they go to light-speed, then we just float away. With"   
    #> [4] "the rest of the garbage. Then what? Then we've got to find a"   
    #> [5] "safe port somewhere around here. Got any ideas? No. Where are"  
    #> [6] "we? The Anoat system. Anoat system. There's not much there. No."
    strwrap(returnOfTheJedi(paragraphs = 1))
    #> [1] "Move! Move! The shield is down! Commence attack on theDeath"  
    #> [2] "Star's main reactor. We're on our way. Red Group, Gold Group,"
    #> [3] "all fighters follow me. Told you they'd do it!"
    places(paragraphs = 1)
    #> [1] "Eriadu"
    people(paragraphs = 1)
    #> [1] "Nichos Marr"

How it works — root function
----------------------------

    library(swli)

Change paragraphs
-----------------

    strwrap(swli(paragraphs = 2))
    #>  [1] "Stand by, Chewie, here we go. Cut in the sublight engines. What"
    #>  [2] "the...? Aw, we've come out of hyperspace into a meteor shower." 
    #>  [3] "Some kind of asteroid collision. It's not on any of the charts."
    #>  [4] "What's going on? Our position is correct, except...no,"         
    #>  [5] "Alderaan! What do you mean? Where is it? Thats what I'm trying" 
    #>  [6] "to tell you, kid. It ain't there. It's been totally blown away."
    #>  [7] "What? How? Destroyed...by the Empire!"                          
    #>  [8] "That malfunctioning little twerp. This is all his fault! He"    
    #>  [9] "tricked me into going this way, but he'll do no better. Wait,"  
    #> [10] "what's that? A transport! I'm saved! Over here! Help! Please,"  
    #> [11] "help! Artoo-Detoo! It's you! It's you!"

Change type of return
---------------------

    strwrap(swli(type = "e4"))
    #>  [1] "Are they away? They have just made the jump into hyperspace."   
    #>  [2] "You're sure the homing beacon is secure aboard their ship? I'm" 
    #>  [3] "taking an awful risk, Vader. This had better work."             
    #>  [4] "Chewie! Get behind me! Get behind me! Can't get out that way."  
    #>  [5] "Looks like you managed to cut off our only escape route. Maybe" 
    #>  [6] "you'd like it back in your cell, Your Highness. See-Threepio!"  
    #>  [7] "See-Threepio! Yes sir?  We've been cut off! Are there any other"
    #>  [8] "ways out of the cell bay?...What was that? I didn't copy! I"    
    #>  [9] "said, all systems have been alerted to your presence, sir. The" 
    #> [10] "main entrance seems to be the only way in or out, all other"    
    #> [11] "information on your level is restricted."                       
    #> [12] "General Kenobi, years ago you served my father in the Clone"    
    #> [13] "Wars. Now he begs you to help him in his struggle against the"  
    #> [14] "Empire. I regret that I am unable to present my father's"       
    #> [15] "request to you in person, but my ship has fallen under attack"  
    #> [16] "and I'm afraid my mission to bring you to Alderaan has failed." 
    #> [17] "I have placed information vital to the survival of the"         
    #> [18] "Rebellion into the memory systems of this R2 unit. My father"   
    #> [19] "will know how to retrieve it. You must see this droid safely"   
    #> [20] "delivered to him on Alderaan. This is our most desperate hour." 
    #> [21] "Help me, Obi-Wan Kenobi, you're my only hope."

Get an item from each type
--------------------------

    options <- c("e4", "e5", "e6", "places", "people")
    lapply(
      mapply(swli, type = options, paragraphs = 1),
      strwrap
    )
    #> $e4
    #>  [1] "Are you all right? What's wrong? I felt a great disturbance in" 
    #>  [2] "the Force...as if millions of voices suddenly cried out in"     
    #>  [3] "terror and were suddenly silenced. I fear something terrible"   
    #>  [4] "has happened. You'd better get on with your exercises. Well,"   
    #>  [5] "you can forget your troubles with those Imperial slugs. I told" 
    #>  [6] "you I'd outrun 'em. Don't everyone thank me at once. Anyway, we"
    #>  [7] "should be at Alderaan about oh-two-hundred hours. Now be"       
    #>  [8] "careful, Artoo. He made a fair move. Screaming about it won't"  
    #>  [9] "help you. Let him have it. It's not wise to upset a Wookiee."   
    #> [10] "But sir, nobody worries about upsetting a droid. That's 'cause" 
    #> [11] "droids don't pull people's arms out of their socket when they"  
    #> [12] "lose. Wookiees are known to do that. I see your point, sir. I"  
    #> [13] "suggest a new strategy, Artoo. Let the Wookiee win."            
    #> 
    #> $e5
    #> [1] "Yes, Admiral? Our ships have sighted the Millennium Falcon,"   
    #> [2] "lord. But...it has entered an asteroid field and we cannot"    
    #> [3] "risk... Asteroids do not concern me, Admiral. I want that ship"
    #> [4] "and not excuses. Yes, lord. I'm going to shut down everything" 
    #> [5] "but the emergency power systems."                              
    #> 
    #> $e6
    #>  [1] "Greetings, Exalted One. Allow me to introduce myself. I am Luke"
    #>  [2] "Skywalker, Jedi Knight and friend to Captain Solo. I know that" 
    #>  [3] "you are powerful, mighty Jabba, and that your anger with Solo"  
    #>  [4] "must be equally powerful. I seek an audience with Your"         
    #>  [5] "Greatness to bargain for Solo's life. With your wisdom, I'm"    
    #>  [6] "sure that we can work out an arrangement which will be mutually"
    #>  [7] "beneficial and enable us to avoid any unpleasant confrontation."
    #>  [8] "As a token of my goodwill, I present to you a gift: these two"  
    #>  [9] "droids. What did he say? Both are hardworking and will serve"   
    #> [10] "you well."                                                      
    #> 
    #> $places
    #> [1] "Bothawui"
    #> 
    #> $people
    #> [1] "Het Nkik"

Quirks & Bugs
-------------

Due to the randomisation of paragraphs for return, the original JS
auther returns 5 paragraphs when a request for length 0 comes in.

The `window` scope in the original javascript errors when called by V8
so the version locally has this replaced with `global`.
