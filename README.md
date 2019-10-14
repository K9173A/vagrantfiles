# vagrantfiles
Repo for some of my Vagrantfiles for different purposes.

## Getting started
* Download [Vagrant](https://www.vagrantup.com/) and install it.
* Download [VirtualBox](https://www.virtualbox.org/wiki/Downloads) and install it.
* Clone this repo: `git clone https://github.com/K9173A/vagrantfiles`.
* Go to the directory with needed Vagrantfile and execute: `vagrant up`.

## Shared folder
* Install VirtualBox Guest Addition to be able to create shared folders:
```bash
vagrant plugin install vagrant-vbguest
# The following should be executed from the Vagrantfile directory
vagrant reload
```
* Execute on guest os:
```bash
# Add current user to the vboxsf group
sudo usermod -aG vboxsf $(whoami)
# Mount shared folder
sudo mount -t vboxsf data /vagrant_data
```

### License
vagrantfiles is released under the terms of the MIT license.  See [MIT](https://opensource.org/licenses/MIT) and [LICENSE](https://github.com/K9173A/vagrantfiles/blob/master/LICENSE) for more information.