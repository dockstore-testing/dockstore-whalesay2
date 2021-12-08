version 1.0

workflow test {
  meta {
    description: "1 2 32342342324234"
  }
  
  call hello
}

task hello {
  input {
    String name
  }
  runtime {
    docker: "ubuntu:latest"
  }
  command {
    echo 'hello ${name}!'
  }
  output { String out = read_string( stdout() ) }
}
