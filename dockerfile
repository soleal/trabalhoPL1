FROM ubuntu:22.04

RUN apt-get update && apt-get install -y sudo

RUN useradd -m -s /bin/bash user1
RUN useradd -m -s /bin/bash user2

RUN mkdir /home/pastausr1 && echo "olá user1" > /home/pastausr1/texto.txt
RUN mkdir /home/pastausr2 && echo "olá user2" > /home/pastausr2/texto.txt

RUN chown user1:user1 /home/pastausr1/texto.txt
RUN chmod 644 /home/pastausr1/texto.txt

CMD ["bash"]
