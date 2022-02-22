node('main'){
    stage('pulling'){
       git branch: 'main', url:'https://github.com/RambabuNadagana/Studentmanagement.git'
        sh "ls"
    }
    stage('ec2&rds launching'){
        sh "terraform init"
        sh "terraform plan"
        sh "terraform apply -auto-approve"
    }
    stage('pushing data'){
        sh "git add terraform.tfstate"
        sh "git commit -m 'terraform'"
        sh "git remote set-url origin https://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@github.com:RambabuNadagana/Studentmanagement.git"
        sh "git push --set-upstream origin main"
       }
    }
