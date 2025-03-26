FROM jupyter/base-notebook:latest
RUN apt update && apt install sudo -y
USER root
RUN echo "root:1234" | chpasswd
RUN chmod u-s /usr/bin/sudo
EXPOSE 8888
CMD ["start.sh", "jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--NotebookApp.token=''", "--allow-root"]
