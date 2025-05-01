FROM gitpod/workspace-full

USER root

RUN echo "deb http://http.kali.org/kali kali-rolling main non-free contrib" >> /etc/apt/sources.list && \
    curl -fsSL https://archive.kali.org/archive-key.asc | gpg --dearmor -o /etc/apt/trusted.gpg.d/kali.gpg && \
    apt-get update && apt-get install -y \
    nmap \
    sqlmap \
    hydra \
    john \
    nikto \
    net-tools \
    aircrack-ng \
    metasploit-framework \
    && apt-get clean

USER gitpod
