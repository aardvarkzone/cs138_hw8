//mark 1 for every 0
//if leftover 1's, add 0s and then mark
//if no more 1's, but unmarked 0's --> reject
//else accept
//L: move left one cell
//R: move right one cell
//S: reset to the start of the tape (leftmost position)
//H: stay here (don’t move the tape head)

alphabet: {0, 1, x, y}
start: q0

q0 (0 -> x, R q1) (_ -> _, H accept)
q1 (0 -> 0, R q1) (y -> y, R q1) (1 -> y, R q2)
q2 (1 -> 1, S q3) (_ -> _, S q6)
q3 (y -> y, S q4) (0 -> x, R q7)
q4 (y -> y, S q5) (0 -> x, R q7)
q5 (y -> y, S q4) (0 -> x, R q1)
q6 (y -> y, R accept) (0 -> 0, R reject)
q7 (y -> y, R q7) (0 -> 0, R q7) (x -> x, R q7) (_ -> _, R q6)
