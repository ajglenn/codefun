import Data.Maybe

keys :: Int -> String
keys n = do
	let al = [(4, "important"), (3, "personal"), (2, "complex"), (1, "the future!!!!")]
	fromJust(lookup n al)

repeatNTimes 0 _ = return ()
repeatNTimes n action = do
	action
	putStrLn(keys n)
  	repeatNTimes (n-1) action

main = do
	repeatNTimes 4 (putStr( "Engineering health is "))