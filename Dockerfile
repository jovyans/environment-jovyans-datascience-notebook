FROM jupyter/datascience-notebook:64c4cd717ab1
# install the notebook package
RUN pip install --no-cache --upgrade pip && \
    pip install --no-cache RISE nbgitpuller
## run any install.R script we find
RUN if [ -f install.R ]; then R --quiet -f install.R; fi
