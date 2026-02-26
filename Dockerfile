FROM registry.access.redhat.com/ubi9/ubi:9.4-1214.1726694543

# Install build dependencies
RUN dnf update -y
RUN dnf install openssl-devel openldap-devel make gcc unzip diffutils patch m4 zip -y

COPY install_pdflatex.sh /root/install_pdflatex.sh

WORKDIR /root

# make the /root/luaossl directory, install pdflatex, then make and install lua
RUN mkdir /root/luaossl && /root/install_pdflatex.sh && curl https://www.lua.org/ftp/lua-5.4.7.tar.gz -o lua-5.4.7.tar.gz && tar xvzf lua-5.4.7.tar.gz && cp -r lua-5.4.7 lua-5.4.7.orig
#RUN mkdir /root/luaossl && curl https://www.lua.org/ftp/lua-5.4.7.tar.gz -o lua-5.4.7.tar.gz && tar xvzf lua-5.4.7.tar.gz && cp -r lua-5.4.7 lua-5.4.7.orig
COPY lua-5.4.7.patch /root/lua-5.4.7.patch
#RUN patch -i ~/lua-5.4.7.patch -p 1 -d lua-5.4.7
RUN cd lua-5.4.7 && make all && make install

# now luarocks
RUN curl -R https://luarocks.github.io/luarocks/releases/luarocks-3.13.0.tar.gz -o luarocks-3.13.0.tar.gz && tar zxf luarocks-3.13.0.tar.gz && cd luarocks-3.13.0 && ./configure && make && make install

# copy and make our luaossl code
WORKDIR /root/luaossl
COPY . .
RUN make all && make install

