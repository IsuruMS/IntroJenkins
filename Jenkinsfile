pipeline{
    agent any
    stages {
        stage('Build'){
            steps{
                sh 'echo "Building the program..."'
                sh 'chmod +x scripts/Linux-Build.sh'
                sh 'scripts/Linux-Build.sh'
                archiveArtifacts artifacts: 'bin/Debug/*', fingerprint: True
            }
        }
        stage('Test'){
            steps{
                sh 'echo "Running the program...'
                sh 'chmod +x scripts/Linux-Run.sh'
                sh 'scripts/Linux-Run.sh'
            }
        }
    }
}