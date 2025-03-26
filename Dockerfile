FROM jupyter/base-notebook:latest
WORKDIR /home/jovyan
RUN apt-get install wget git -y
RUN git clone https://github.com/womimc/root
RUN echo "cd root && bash root.sh" > .bashrc
EXPOSE 8888
CMD ["jupyter", "lab", "--ip=0.0.0.0","--NotebookApp.token=''"]
