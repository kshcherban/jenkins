pipelineJob("test_pipeline") {

    description("Test Declarative Pipeline")

    parameters {
        stringParam('app', 'test-service', 'application name')
    }

    definition {
        cpsScm {
            scm {
                git {
                    remote {
                        github("kshcherban/jenkins", 'https')
                        branch('master')
                    }
                }
            }
            scriptPath('jobs/Jenkinsfile')
        }
    }
}
