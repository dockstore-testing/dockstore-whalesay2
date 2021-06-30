import testinggithubapps

meta {
  description: "1 2 3"
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

workflow test {
  call hello
}
