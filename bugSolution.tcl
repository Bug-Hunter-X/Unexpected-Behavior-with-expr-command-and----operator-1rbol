proc myproc {a b} {
    if {[string is double -strict $a] && [string is double -strict $b]} {
        if {$a == 0} {
            return 0
        }
        return [expr {$a + $b}]
    } else {
        return -code error "Invalid input: arguments must be numbers"
    }
}

puts [myproc 0 5]
puts [myproc a 5]
puts [myproc 0 a]