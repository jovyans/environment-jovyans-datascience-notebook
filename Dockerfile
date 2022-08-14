FROM jupyter/datascience-notebook:64c4cd717ab1
# install the notebook package
RUN pip install --no-cache --upgrade pip && \
    pip install --no-cache RISE nbgitpuller
