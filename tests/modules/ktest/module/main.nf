#!/usr/bin/env nextflow

nextflow.enable.dsl = 2

include { MODULE } from '../../../../modules/ktest/module/main.nf'

workflow test_module {
    
    input = [
        [ id:'test', single_end:false ], // meta map
        file(params.test_data['sarscov2']['illumina']['test_paired_end_bam'], checkIfExists: true)
    ]

    MODULE ( input )
}
