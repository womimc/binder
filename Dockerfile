FROM jupyter/base-notebook:latest
USER root
RUN useradd -m user -s /bin/bash && \
    usermod -aG sudo user && \
    echo "user ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
USER jovyan
CMD ["proot", "-0", "/bin/bash", "-c", "jupyter lab --ip=0.0.0.0 --port=8888 --no-browser --NotebookApp.token='' --allow-root"]
