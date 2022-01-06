version 1.0
import "secondary.wdl" as secondary
workflow w {
    call hello {}
}

task hello {
    # Calls my_task with one required input - it is okay to not
    # specify a value for my_task.opt_string since it is optional.
    call secondary
}

