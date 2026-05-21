pipeline {
    agent any

    environment {
        image = "vardhan-maven"
        container = "maven-container"
    }

    triggers {
        cron('H/5 * * * *')
    }

    stages {

        stage("Clone Git") {
            steps {
                git 'https://github.com/vardhanacharya/internal1.git'
            }
        }

        stage("Build") {
            steps {
                sh 'mvn clean package'
            }
        }

        stage("Docker Build") {
            steps {
                sh 'docker build -t $image .'
            }
        }

        stage("Docker Run") {
            steps {
                sh 'docker run -dit --name $container -p 8080:8080 $image'
            }
        }
    }
}
