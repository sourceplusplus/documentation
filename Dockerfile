FROM nginx:1.25

# Setup mkdocs
RUN apt-get update
RUN apt-get install -y git
RUN apt-get install -y mkdocs
RUN apt-get install -y python3-pip
RUN pip3 install mkdocs-material
RUN pip3 install mkdocs-awesome-pages-plugin
RUN pip3 install fancyboxmd
RUN pip3 install mkdocs-macros-plugin
RUN pip3 install mkdocs-git-revision-date-localized-plugin

# Copy documentation
RUN git clone https://github.com/sourceplusplus/documentation /src

# Build documentation
RUN cd /src && mkdocs build

# Serve documentation
RUN mv /src/site/* /usr/share/nginx/html

# Expose documentation
EXPOSE 80
