FROM frolvlad/alpine-glibc
WORKDIR /ff
ENV "PATH"="/ff/osquery/usr/local/bin:/ff/zulu/bin:/ff/kitt:${PATH}"
RUN mkdir -p /ff/osquery &&\ 
 wget -c https://pkg.osquery.io/linux/osquery-4.5.1_1.linux_x86_64.tar.gz &&\ 
 tar -zxf osquery-4.5.1_1.linux_x86_64.tar.gz -C /ff/osquery &&\ 
 rm osquery-4.5.1_1.linux_x86_64.tar.gz &&\ 
 rm /ff/osquery/usr/local/bin/osqueryctl &&\ 
 rm -rf /ff/osquery/usr/local/share &&\ 
 rm -rf /ff/osquery/usr/local/lib &&\ 
 rm -rf /ff/osquery/etc &&\ 
 wget -c https://cdn.azul.com/zulu/bin/zulu15.28.13-ca-jdk15.0.1-linux_musl_x64.tar.gz &&\ 
 tar -zxf zulu15.28.13-ca-jdk15.0.1-linux_musl_x64.tar.gz -C /ff &&\ 
 rm zulu15.28.13-ca-jdk15.0.1-linux_musl_x64.tar.gz &&\ 
 mv zulu15.28.13-ca-jdk15.0.1-linux_musl_x64 zulu &&\ 
 rm -rf /ff/zulu/demo &&\ 
 rm -rf /ff/zulu/man &&\ 
 rm -rf /ff/zulu/legal &&\ 
 rm -rf /ff/zulu/jmods &&\ 
 rm -rf /ff/zulu/include &&\ 
 rm /ff/zulu/lib/src.zip &&\ 
 rm -rf /ff/osquery/.scripts
ADD ["kitt", "kitt"]
