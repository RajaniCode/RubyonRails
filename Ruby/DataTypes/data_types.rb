nxt = "a"
(26 - 1).times {nxt = nxt.next}
puts nxt # z
puts
nxt = "a"
(26).times {nxt = nxt.next}
puts nxt # aa
puts
nxt = "a"
(26 * 2 - 1).times {nxt = nxt.next}
puts nxt # az
puts
nxt = "a"
(26 * 27 - 1).times {nxt = nxt.next}
puts nxt # zz
puts
nxt = "a"
(26 * 27).times {nxt = nxt.next}
puts nxt # aaa
puts
nxt = "a"
# 18278
((26 * 26 * 27) + 26).times {nxt = nxt.next}
puts nxt # aaaa
puts
