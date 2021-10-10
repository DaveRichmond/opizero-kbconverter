pipeline {
	agent any

	stages {
		stage('Build'){
			cache(maxCacheSize: 1024, caches: [
				[$class: 'ArbitraryFileCache', path: '${GIT_CHECKOUT_DIR}/buildroot', includes: 'dl/**'])
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
