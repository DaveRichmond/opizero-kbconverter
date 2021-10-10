pipeline {
	agent any

	stages {
		stage('Build'){
			steps {
				checkout scm
				sh 'git submodule update --init --recursive'
				sh 'make opi_zero_defconfig'
				sh 'make'
				archiveArtifacts artifacts: 'buildroot/output/images/*', fingerprint: true
			}
		}
	}
}
