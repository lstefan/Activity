# Activity
Event recommendation app

Prerequisites:
Eclipse IDE for Java EE Developers https://www.eclipse.org/downloads/
Apache Tomcat http://tomcat.apache.org/download-80.cgi
MySql Server https://dev.mysql.com/downloads/mysql/
MySql Workbench https://www.mysql.com/products/workbench/
Git https://git-scm.com/download/win

Build and run:
Option1: from Eclipse
	Right click on project: Run As -> Maven install
	Window->Show View->Servers
	Define Tomcat Server
	Right click on project: Run As -> Run on Server
	
Option2: from git bash
	You also need Apache Maven installed: https://maven.apache.org/download.cgi
	Open gitbash console
	cd project_dir
	maven clean install
	cp activity.war from target dir to apache tomcat dir/webapps
	apache-tomcat-8.0.20\bin\startup.bat
	
	