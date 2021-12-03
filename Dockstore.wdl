version 1.0
workflow w {
    call hello
}
task hello {
    String name

    command { echo 'hello ${name}!' }
    output { String out = read_string( stdout() ) }
    runtime { docker: "ubuntu:latest" }
}
