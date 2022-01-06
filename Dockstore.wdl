import "https://dockstore.org/api/ga4gh/trs/v2/tools/%23workflow%2Fgithub.com%2FRichard-Hansen%2Fdockstore-whalesay/versions/multiDescriptor/PLAIN_WDL/descriptor/%2Fsecondary.wdl" as sub

workflow main_workflow {

    call sub.hello_and_goodbye { input: hello_and_goodbye_input = "sub world" }

    # call myTask { input: hello_and_goodbye.hello_output }

    output {
        String main_output = hello_and_goodbye.hello_output
    }
}
