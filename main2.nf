#!/usr/bin/env nextflow
nextflow.enable.dsl=2 

params.word = "Hello main.nf"

process sayHello {
  input: 
    val x
  output:
    stdout
  script:
    """
    echo '$x world 2!'
    """
}

workflow {
  sayHello(params.word) | view
}
