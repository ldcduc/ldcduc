# Ubuntu


```bash
# Lib install
sudo apt install build-essential libssl-dev pkg-config libpq-dev

# Install docker:
sudo apt-get update && 
sudo apt-get remove docker docker-engine docker.io && 
sudo apt install docker.io && 
sudo systemctl start docker && 
sudo systemctl enable docker && 
docker --version

# Install docker-compose:
sudo curl -L https://github.com/docker/compose/releases/download/1.27.4/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose && 
sudo chmod +x /usr/local/bin/docker-compose && 
docker-compose --version

# Set permission for docker:
sudo gpasswd -a $USER docker &&
newgrp docker
```

## Rust 

```bash
Install Rust & Diesel:
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh && 
source $HOME/.cargo/env && 
cargo install diesel_cli --no-default-features --features postgres
```

## Go

```bash
sudo apt-get update  
sudo apt-get -y upgrade  
```

* Download Go from official [download page](https://golang.org/dl)

```bash
wget https://dl.google.com/go/go1.16.4.linux-amd64.tar.gz 
```

* Extract and install

```bash
sudo tar -xvf go1.16.4.linux-amd64.tar.gz   
sudo mv go /usr/local  
```

* Setup Go environment

```bash
# GOROOT is the location where Go package is installed on your system
export GOROOT=/usr/local/go 
# GOPATH is the location of your work directory. 
export GOPATH=$HOME/go
# Now set the PATH variable to access go binary system wide
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
```

* Verify installation

```bash
go version
go env
```

## NodeJs

### nvm - Node version manager

```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
```

or

```bash
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
```

```
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
```
