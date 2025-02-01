proc myproc {a b} {
    if {$a == 0} {
        return 0
    }
    return [expr {$a + $b}]
}

puts [myproc 0 5]