[Packer](http://packer.io) templates for [Docker](https://www.docker.com/).

- [x] Demo - provision docker image using ansible


# Quick Guide
## Setup
---
#### Linux
docker, virtualenv is are required, this can also be installed using the `ifs` example below:

* Set-up Environment
```bash
git clone repo
virtualenv .
source bin/activate
sudo pip install -r pip_requirements.txt
```
* Search and Check for packer (or other packages)

`ifs grep packer`
 or
 `ifs ls | grep "virtualbox"`

 ```bash
$ ifs info packer
      default_version: 0.11.0
      dependencies: unzip
      description: packer
      download_url: https://releases.hashicorp.com/packer/VERSION/packer_VERSION_linux_amd64.zip
      current_version: Not Installed
$ ifs info docker
      default_version: 1.12.3
      dependencies: apt-transport-https
      description: docker
      download_url: None
      current_version: Not Installed

```
* Install packer and docker using [`ifs`](https://github.com/cbednarski/ifs-python)
```bash
sudo ifs install packer
sudo ifs install docker
```
---
#### MAC

* Install packer using homebrew
```bash
brew install packer
brew install docker
```
---

## Build
* Build virtualbox .box image
```bash
packer inspect demo.json
packer validate demo.json
packer build -var-file=secrets/dockerhub.json demo.json
```
***Tip -***
Be sure to create the secrets/dockerhub.json from secrets/dockerhub.json.template file: `cp secrets/dockerhub.json.template secrets/dockerhub.json; vim secrets/dockerhub.json`
