node { 
   stages {
	stage('Approve deployment on QA'){
       		input "Deploy to QA?"
       	}
        stage('Deploing to QA') {
            script {
                sshPublisher(
                    publishers: [
                        sshPublisherDesc(
                            configName: 'QA', 
                            transfers: [
                                sshTransfer(
                                    cleanRemote: false, 
                                    excludes: '', 
                                    execCommand: '''git clone https://github.com/achuchulev/jenkins-cicd-example.git /tmp/jenkins-cicd-example
                                                    #sudo rm /var/www/html/index.*.html
                                                    sudo cp /tmp/jenkins-cicd-example/index.html /var/www/html/index.html
                                                    rm -rf /tmp/jenkins-cicd-example
                                                ''', 
                                    execTimeout: 120000, 
                                    flatten: false, 
                                    makeEmptyDirs: false, 
                                    noDefaultExcludes: false, 
                                    patternSeparator: '[, ]+', 
                                    remoteDirectory: '', 
                                    remoteDirectorySDF: false, 
                                    removePrefix: '', 
                                    sourceFiles: ''
                                )
                            ], 
                            usePromotionTimestamp: false, 
                            useWorkspaceInPromotion: false, 
                            verbose: false
                        )
                    ]
                )
            }
        }
        
        stage('Approve deployment on PRD'){
            input "Deploy to PRD?"
        }
        
        stage('Deploing to PRD') {
            script {
                sshPublisher(
                    publishers: [
                        sshPublisherDesc(
                            configName: 'Web01', 
                            transfers: [
                                sshTransfer(
                                    cleanRemote: false, 
                                    excludes: '', 
                                    execCommand: '''git clone https://github.com/achuchulev/jenkins-cicd-example.git /tmp/jenkins-cicd-example
                                                    #sudo rm /var/www/html/index.*.html
                                                    sudo cp /tmp/jenkins-cicd-example/index.html /var/www/html/index.html
                                                    rm -rf /tmp/jenkins-cicd-example
                                                ''', 
                                    execTimeout: 120000, 
                                    flatten: false, 
                                    makeEmptyDirs: false, 
                                    noDefaultExcludes: false, 
                                    patternSeparator: '[, ]+', 
                                    remoteDirectory: '', 
                                    remoteDirectorySDF: false, 
                                    removePrefix: '', 
                                    sourceFiles: ''
                                )
                            ], 
                            usePromotionTimestamp: false, 
                            useWorkspaceInPromotion: false, 
                            verbose: false
                        )
                    ]
                )
            }
        }
    }
 }
