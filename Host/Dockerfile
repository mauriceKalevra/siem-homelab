FROM debian:11

RUN apt update && apt upgrade -y

RUN apt update && apt install openssh-server sudo -y

RUN apt install net-tools -y

RUN apt install iproute2 - y

RUN apt install curl -y

RUN apt install wget -y

RUN apt install vim -y

RUN apt install ufw -y 

# Create a new user
RUN useradd -m -s /bin/bash debian

# Set a password for the new user (replace 'yourpassword' with the desired password)
RUN echo 'debian:tor' | chpasswd

# Add the user to the sudo group to grant sudo privileges
RUN usermod -aG sudo debian

RUN echo "PermitRootLogin yes">etc/sshd_config

RUN echo 'root:root' | chpasswd

COPY systemctl3.py /usr/bin/systemctl

RUN apt install suricata -y

RUN systemctl enable suricata.service

RUN service ssh start

EXPOSE 22

RUN echo "/usr/sbin/sshd -D">entry.sh

RUN chmod 700 entry.sh

CMD ./entry.sh

