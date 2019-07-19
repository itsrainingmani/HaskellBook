data Mood = Blah | Woot | Heck deriving Show

changeMood :: Mood -> Mood
changeMood Blah = Woot
changeMood _ = Blah