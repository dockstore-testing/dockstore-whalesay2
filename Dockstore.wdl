version 1.0

workflow test {
  call hello
}

task hello {
  input {
    String name
  }
  command {
    echo 'hello ${name}!'
  }
  output { String out = read_string( stdout() ) }
}
