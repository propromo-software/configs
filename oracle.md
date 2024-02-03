# Oracle Cloud - Oracle Linux

## [Update](https://docs.oracle.com/en/operating-systems/oracle-linux/software-management/sfw-mgmt-UpdateSoftwareonEnterpriseLinux.html#update-software)

```bash
dnf update # runs `dnf update` too
```

## [Install](https://docs.oracle.com/en/operating-systems/oracle-linux/software-management/sfw-mgmt-InstallSoftwareonEnterpriseLinux.html#install-software)

```bash
sudo dnf install <package_name> # installs the package and its dependencies
```

## Firewall

```bash
sudo systemctl status firewalld
```

```bash
sudo firewall-cmd --list-all
```

```bash
sudo firewall-cmd --zone=public --add-port=<port>/<protocol> --permanent
```

```bash
sudo firewall-cmd --reload
```

## Useful

```bash
df -h ## lists disk info
```

### [Docker](https://docs.oracle.com/en/operating-systems/oracle-linux/docker/docker-ManagingtheDockerEngineService.html#docker-service-config)

```bash
sudo systemctl daemon-reload
```

```bash
sudo systemctl restart docker
```

### Minikube

```bash
minikube start --driver=podman
```