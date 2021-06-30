task hello {
  String name

  command {
    echo 'hello ${name}!'
  }
  output {
    File response = stdout()
  }
}

workflow test {
  meta {
    description: "1 2 3"
  }
  
  call hello
}
