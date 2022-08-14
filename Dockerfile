FROM jupyter/datascience-notebook:2022-08-11
# install the notebook package
RUN pip install --no-cache --upgrade pip && \
    pip install --no-cache RISE nbgitpuller
