#!/usr/bin/env nextflow

nextflow.enable.dsl=2

// Define la imagen Docker
dockerImage = 'blastp_image'

// Proceso para construir la imagen Docker
process buildDockerImage {
    // Definir el directorio de trabajo para este proceso
    script:
    """
    cd /workspace/Prot_Pipeline/Prot_Pipeline/Dockerfiles
    docker build -t ${dockerImage} -f Dockerfile_blastp .
    """
}

// Definir el flujo de trabajo
workflow {
    buildDockerImage()
}

