import brokenbrokenbroken2345

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
  call hello
}
