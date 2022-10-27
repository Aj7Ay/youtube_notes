pipeline{
        agent any
        parameters {
            string (name: "NAME" , description : 'please tell me your name?')
            choice (name: "GENDER", choices: ['Male','Female'], description: 'choose gender')
        }
        tools{
            maven "maven3"
        } 
        stages {
            stage ('printing name') {
                steps {
                    script {
                        def name = "${params.NAME}"
                        def gender = "${params.GENDER}"
                        if (gender == "Male") {
                            echo "Mr.$name"
                        } else {
                            echo "Mrs.$name"
                        }
                    }
                }
            }
            stage ("GIT CHECKOUT") {
                steps {
                    echo "GIT CHECKOUT "
                    git credentialsId: 'Git-creds', url: 'https://github.com/Aj7Ay/sparkjava-war-example.git'
                }
            }
            stage ("BUILD") {
                steps {
                      script {
                        sh "mvn clean install package "
                      }
                }
            }
        }
    }    