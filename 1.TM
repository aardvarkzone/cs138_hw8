alphabet: {0, 1, _, x}
start: q0

q0 (0 -> x, R q1) (_ -> _, L reject)
q1 (0 -> 0, R q1) (1 -> x, R q2) (_ -> _, R q5)
q2 (1 -> 1, R q2) (_ -> _, L q3)
q3 (1 -> 1, L q3) (0 -> 0, L q3) (x -> x, L q3)
q3 (_ -> _, R q4)
q4 (1 -> x, R q4) (_ -> _, L accept)
q5 (x -> x, R q5) (_ -> _, L reject)