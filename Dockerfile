FROM jupyter/base-notebook:latest
ARG NB_USER=root
ARG NB_UID=0
USER root
RUN echo "root:1234" | chpasswd
RUN usermod -u ${NB_UID} ${NB_USER} || true
RUN groupmod -g ${NB_UID} ${NB_USER} || true
EXPOSE 8888
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--NotebookApp.token=''", "--allow-root"]
