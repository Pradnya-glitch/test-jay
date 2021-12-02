pipeline{

    stages {
        stage('clone resources'){
             git url: 'https://github.com/jfrogdev/project-examples.git'
        }
        stage('Get specific commit'){
            git diff branch1 branch2
        }
        stage('UCD'){
            sitename : UCD deploy server
            step([$class: "UCDeployPublisher', 
                component: [
                    class: 'com.urbancode.jenkins.plugins.ucdeploy.VersionHelpersVersionBlock',
                    componentName: 'UCD - Pipeline', // Component name
                createComponent: [
                    class: com.urbancode.jenkins.plugins.ucdeploy.ComponentHelpersCreateComponentBlock,
                    component Template:", // Template name to base component on
                    componentApplication: Jenkins Pipeline Snapshot Demo' // Name of application to add component
                ]
                storeComponentwithVersion : [$class: 'com.urbancode.jenkins.plugins.ucdeploy. DeliveryHelpersPush',
                    pushVersion: "${BUILD_NUMBER)', // Name to assign component version
                    baseDir: "/var/jenkins_home/workspace/J0B/dist', // Base directory containing artifacts
                    //In this base dir we will store component with versioning .
                    pushProperties: jenkins.server=Local\njenkins.reviewed=false', // Assign properties to new component version
                    ]
                ])    
            }
        },
        stege('Deploy to IIS'){
            step([$class: "UCDeployPublisher', 
            siteName : IIS Server,
            deploy : [
                class: com.urbancode.jenkins.plugins.ucdeploy.ComponentHelpersCreateComponentBlock,
                deployEnv : env,
                deployVersions : "<jenkins dir path where component has been stored>",
                deployOnlyChanged : true
            ]
            ])
        }
    }
}