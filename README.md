### Hubot Porch Check Integration Plugin

This plugin will check on our services health and report back.


##### Requirements

This plugin expects a file called "services.yaml" to exist in the root hubot directory. The file should have this format:

     env: dev                                   #classpath:/config/base/base-dev.yaml
     services:                                  #webapps-local.yaml
         etl:                                   #classpath:/config/base/base-dev.yaml
             host: services00.dev.porch.com     #classpath:/config/base/base-dev.yaml
             servicePort: 9263                  #classpath:/config/base/base.yaml
             adminPort: 9264                    #classpath:/config/base/base.yaml
         mastery:                               #classpath:/config/base/base-dev.yaml
             host: services00.dev.porch.com     #classpath:/config/base/base-dev.yaml
             servicePort: 9271                  #classpath:/config/base/base.yaml
             adminPort: 9272                    #classpath:/config/base/base.yaml
         ugc:                                   #classpath:/config/base/base-dev.yaml
             host: services00.dev.porch.com     #classpath:/config/base/base-dev.yaml
             <...and so on...>



