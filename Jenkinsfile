pipeline {
    agent any
    stages {
        stage ('Checkout') {
            steps {
                checkout scmGit(
                    branches: [[name: 'main']],
                    userRemoteConfigs: [[url: 'https://github.com/dangphuc2470/MockitoTest.git']])
            }
        }
        stage ('Download lcov converter') {
            steps {
                sh "curl -O https://raw.githubusercontent.com/eriwen/lcov-to-cobertura-xml/master/lcov_cobertura/lcov_cobertura.py"
            }
        }
//         stage ('Flutter Doctor') {
//             steps {
//                 sh "flutter doctor"
//             }
//         }
        stage('Test') {
            steps {
                sh "flutter test --coverage"
            }
            post {
                always {
                    sh "py lcov_cobertura.py coverage/lcov.info --output coverage/coverage.xml"
                    step([$class: 'CoberturaPublisher', coberturaReportFile: 'coverage/coverage.xml'])
                }
            }
        }
//         stage('Run Analyzer') {
//             steps {
//                 sh "flutter analyze"
//             }
//         }
    }
}