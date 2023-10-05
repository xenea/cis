# Testing

## Distribution boxes used by Molecule and Vagrant

```console
almalinux/8
almalinux/9
bento/debian-12
bento/ubuntu-20.04
debian/bookworm64
debian/bullseye64
debian/testing64
generic/rhel8
ubuntu/focal64
ubuntu/jammy64
ubuntu/lunar64
```

## Test examples

```shell
ansible-playbook tests/test.yml --extra-vars "sshd_admin_net=192.168.1.0/24"   -c local -i 'localhost,' -K
```

If the [runTests.sh](runTests.sh) script is executed as `runTests.sh vagrant`,
[Vagrant](https://www.vagrantup.com/ "Vagrant") will configure hosts and run the
`konstruktoid.hardening` role, it will then run
[Lynis](https://github.com/CISOfy/lynis/ "Lynis") and `bats` tests from the
[konstruktoid/hardening](https://github.com/konstruktoid/hardening "konstruktoid/hardening")
repository if the host is using [Ubuntu](https://ubuntu.com/ "Ubuntu").

### tox environments

```console
devel
py310-ansible7
py310-ansible8
py310-ansibledevel
py311-ansible7
py311-ansible8
py311-ansibledevel
```
