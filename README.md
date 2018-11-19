# Moritz' Jenkins

This is a docker container for my personal use. It includes the following - partly somewhat unusual - packages:

JDK:
- openjdk-8-jdk

Version Control:
- git
- subversion

Build-Tools:
- make
- subversion
- gradle 
- maven
- ant

Typesetting and LaTeX:
- texlive-full
- pandoc 
- python-pygments (for use in [code highlighting](https://github.com/gpoore/minted))

Other:
- docker.io 
- genisoimage (required for packaging macOS Apps in Maven via [this plugin](https://github.com/federkasten/appbundle-maven-plugin))

### Usage

To run the container, do the following:

 `` docker run  -p 8080:8080 moritzf/jenkins:latest ``


### Persistent Configuration

By default, JENKINS_HOME is set to /jenkins.  The best way to persist or import configuration is to have a separate data volume for /jenkins. 

  * https://docs.docker.com/userguide/dockervolumes/

### Author

  * Moritz Flöter
  * Allan Espinosa (<allan.espinosa@outlook.com>)

### LICENSE

Copyright 2017-2018 Moritz Flöter
Copyright 2013-2016 Allan Espinosa

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

  http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License. 
