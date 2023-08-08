<h1 align="center">Script for ip / domain / attack !</h1>
<em><h5 align="center">(Programming Language - Shell)</h5></em>

# Tutorial to install this codes ! For LINUX (VPS or Dedicated Server)

## 1 - on Terminal

<h5>A) Auto installer</h5>

- Run command :

```shell
bash <(curl -s https://raw.githubusercontent.com/Kurama250/Tools_Linux/main/setup.sh)
```

<h5>B) Manual installer</h5>

```shell
apt update && apt upgrade -y
apt install dnsrecon whois curl git -y
git clone https://github.com/Kurama250/Tools_Linux.git
```

### Modifie file :

- Enter your api stresser !

```shell
l: 33
nano Tools_Linux/menu/ddos/ddos.sh
api_url="API_URL$ip_address&port=$port&time=60&method=$method"
```

- Start Menu :

```shell
cd Tools_Linux
bash app.sh
```

- Demo : 

![alt text](https://github.com/Kurama250/Tools_Linux/blob/main/linux_tools_v1.1.png)

<h1 align="center">There you go and be happy !</h1>
<h4 align="center">What you get in this repositories is for educational purposes !</h4>
