node('main'){
    stage('pulling'){
       git branch: 'main', url:'https://github.com/RambabuNadagana/d1.git'
        sh "ls"
    }
    stage('projectfile'){
        sh "terraform init"
        sh "terraform plan"
        sh "terraform apply -auto-approve"
    }
        }
