version 1.0
import "secondary.wdl" as secondary
workflow w {
    call secondary.w {}
}
