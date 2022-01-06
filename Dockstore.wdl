version 1.0
import "secondary.wdl" as secondary
workflow one {
    call secondary.w {}
}
