FROM jupyter/datascience-notebook:64c4cd717ab1
# install the notebook package
RUN pip install --no-cache --upgrade pip && \
    pip install --no-cache RISE nbgitpuller openpyxl xlrd lxml requests beautifulsoup4 folium

RUN R -e "install.packages('rjson', dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('rvest', dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('readxl', dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('RSQLite', dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('dplyr', dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('data.table', dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('xts', dependencies=TRUE, repos='http://cran.rstudio.com/')"