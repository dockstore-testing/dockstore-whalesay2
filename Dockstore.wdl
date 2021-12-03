version 1.0

workflow test {
  meta {
    description: "1 2 32342342324234"
  }
  
  call hello
}

task hello {
  String name

  command {
    echo 'hello ${name}!'
  }
  output {
    File response = stdout()
  }
}
