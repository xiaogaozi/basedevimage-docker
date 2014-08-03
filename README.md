# basedevimage-docker

Docker image build on top of [phusion/baseimage](https://github.com/phusion/baseimage-docker)

Docker registry link:
[https://hub.docker.com/u/xiaogaozi/basedevimage](https://hub.docker.com/u/xiaogaozi/basedevimage)

## What's included?

- All [phusion/baseimage](https://github.com/phusion/baseimage-docker)
  provide things
- [`build-essential`](http://packages.ubuntu.com/trusty/build-essential)
  package
- Puppet
- Git
- `app` user

## How to use?

### Vagrant

There's an example `Vagrantfile`:

```ruby
Vagrant.configure("2") do |config|
  config.vm.provider "docker" do |d|
    d.cmd     = ["/sbin/my_init", "--enable-insecure-key"]
    d.image   = "xiaogaozi/basedevimage"
    d.has_ssh = true
  end

  config.ssh.username = "root"
  config.ssh.private_key_path = "phusion.key"
end
```

### `Dockerfile`

```
FROM xiaogaozi/basedevimage:<VERSION>

...
```

## Building the image yourself

```bash
$ vagrant up
$ vagrant ssh
$ cd /vagrant
$ make
```
