# queues_in_haskell
I've created a data structure called queue, which implements the concept of FIFO (First In, First Out)

To test the script, on prelude, run the command:

`:cd <directory>`

And then, load the source file:

`:l queue.hs`

Now, you can use those functions:

- newQueue -> Queue t
- insertQueue: F, num -> Queue t
- removeQueue: F -> Queue t
- front: F -> elem
- emptyQueue: F -> Bool

Here is the implementation of Queue:

```hs
data Queue t = F [t]
        deriving (Show)
```
