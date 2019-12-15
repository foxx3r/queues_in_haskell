module Queue where

data Queue t = F [t]
        deriving (Show)

newQueue :: Queue t
newQueue = F []

insertQueue :: Queue t -> t -> Queue t
insertQueue (F list) n = F (list ++ [n])

removeQueue :: Queue t -> Queue t
removeQueue (F []) = error "empty queue"
removeQueue (F (x:xs)) = F xs

front :: Queue t -> t
front (F []) = error "empty queue"
front (F (x:xs)) = x

emptyQueue :: Queue t -> Bool
emptyQueue (F []) = True
emptyQueue _ = False
