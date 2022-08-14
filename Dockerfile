FROM jupyter/datascience-notebook:hub-2.3.1
# install the notebook package
RUN pip install --no-cache --upgrade pip && \
    pip install --no-cache notebook jupyterlab && \
    pip install --no-cache RISE nbgitpuller
