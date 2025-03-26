FROM jupyter/base-notebook:latest
WORKDIR /home/jovyan
RUN apt-get install wget -y
COPY root/ .
RUN echo "cd root && bash root.sh" > .bashrc
RUN printf "useradd -m user -s /bin/bash && usermod -aG sudo user && passwd -d user"
EXPOSE 8888
CMD ["jupyter", "lab", "--ip=0.0.0.0","--NotebookApp.token=''"]
