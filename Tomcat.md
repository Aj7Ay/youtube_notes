##################----INSTALL TOMCAT----##################

--> change to opt directory 

cd /opt

--> Download tomcat file using wget command

sudo wget https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.65/bin/apache-tomcat-9.0.65.tar.gz

sudo wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.80/bin/apache-tomcat-9.0.80.tar.gz (Another link )

--> Unzip tar file 

sudo tar -xvf apache-tomcat-9.0.65.tar.gz

--> move to conf directory and change port in tomcat server to another port from default port

vi server.xml

--> update tomcat users xml file for manager app login.

cd /opt/apache-tomcat-9.0.65/conf

sudo vi tomcat-users.xml

# ---add-below-line at the end (2nd-last line)----

<user username="admin" password="admin1234" roles="admin-gui, manager-gui"/>

--> create a symbolic links for direct start and stop of tomcat

sudo ln -s /opt/apache-tomcat-9.0.65/bin/startup.sh /usr/bin/startTomcat

sudo ln -s /opt/apache-tomcat-9.0.65/bin/shutdown.sh /usr/bin/stopTomcat

sudo vi /opt/apache-tomcat-9.0.65/webapps/manager/META-INF/context.xml

comment:

 Valve className="org.apache.catalina.valves.RemoteAddrValve"
 
  allow="127\.\d+\.\d+\.\d+|::1|0:0:0:0:0:0:0:1" />

sudo vi /opt/apache-tomcat-9.0.65/webapps/host-manager/META-INF/context.xml

comment:

 Valve className="org.apache.catalina.valves.RemoteAddrValve"
 
  allow="127\.\d+\.\d+\.\d+|::1|0:0:0:0:0:0:0:1" />

sudo stopTomcat

sudo startTomcat
