## vagrant-boxes
Provided vagrant boxes for develop, testing and deploy.


## Usage
1. Install [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
2. Install [Vagrant](https://www.vagrantup.com)
3. Use `vagrant box add zealic/centos-7-devenv` to initialize Vagrantfile
4. Use `vagrant plugin install vagrant-vbguest` install plugin
5. Use `vagrant up` to boot vagrant environment

For more information, visit [Vagrant Documentation](https://docs.vagrantup.com/v2/)

### Availables targets
* generic
* devenv


## Build
To build vagrant box, you need:

1. Get an [Atlas](http://atlas.hashicorp.com) account
2. Install [Packer](http://www.packer.io)
3. Use `rake 'build[generic]'` or `rake 'build[devenv]'` to build

### Availables tasks
* build
* build_ova
* push
* generate


## Boxes
### CentOS 7

#### :star: [centos-7-generic](https://atlas.hashicorp.com/zealic/centos-7-generic)
**Packages:**
* [Docker](https://www.docker.com)

#### :star: [centos-7-devenv](https://atlas.hashicorp.com/zealic/centos-7-devenv)
**Packages:**
* VirtualBox Guest Additions
* [Docker](https://www.docker.com)
* [Go](https://golang.org)
* [Python](https://www.python.org)
  - pip
  - virtualenv
* [Node.js](https://nodejs.org)
  - nose
  - npm
  - bower
  - grunt
  - gulp
  - mocha
* [Ruby](https://www.ruby-lang.org)
  - Rake
  - Bundler


License and Author
------------------

- Author : Zealic (<zealic@gmail.com>)
- Copyright : 2015, Zealic

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
