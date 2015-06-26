# Boundary Vagrant Environment for Plugin Development

Provides virtual machines to develop and test Boundary meter plugins.

This provides operating system environments:

- Amazon Linux - _Future release_
- Centos 7.1 - _Future release_
- Centos 7.0 - Currently an issue with the Boundary Puppet module, needs a fix to the Boundary RPM repository location
- Centos 6.6
- Centos 5.11 - _Future release_
- Ubuntu 12.04
- Ubuntu 14.04
- Windows Server 2008 R2 - _Future release_
- Windows Server 2012 R2 - _Future release_

## Prerequisites

- Vagrant 1.7.2 or later. Vagrant can be downloaded [here](https://www.vagrantup.com/downloads.html)
- VirtualBox 4.3.2.6 or later. VirtualBox can be downloaded [here](https://www.virtualbox.org/wiki/Downloads)

## Installation

### Getting Started

To install the Boundary Meter it is required that you have a Boundary _api token_ to perform the install in addition to the prequisites listed above.

### List of Platforms to Virtual Machine Mapping

The table below provides the mapping of platform to virtual machine name that is used later to start a virtual machine for testing plugins.

| Platform             | Virtual Machine Name  |
|:---------------------|:---------------------:|
|Centos 5.11           |`centos-5.11`          |
|Centos 6.6            |`centos-6.6`           |
|Centos 7.0            |`centos-7.0`           |
|Centos 7.1            |`centos-7.1`           |
|Ubuntu 12.04          |`ubuntu-12.04`         |
|Ubuntu 14.04          |`ubuntu-14.04`         |
|Windows Server 2008 R2|`win-serv-2008-r2`     |
|Windows Server 2012 R2|`win-serv-2012-r2`     |


### Starting a Virtual Machine

With the Boundary api token perform the following:

1. Either checkout or clone the git repository ()[]
2. Issue the following command, the target platforms are listed in the table below:
```
$ BOUNDARY_API_TOKEN=<api token> vagrant up <virtual machine name>
```


### Stopping a Virtual Machine

```
$ vagrant halt <virtual machine name>
```

### Destroying a Virtual Machine

```
$ vagrant destroy <virtual machine name>
```

