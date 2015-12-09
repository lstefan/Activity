# Activity
Event recommendation app

Prerequisites: <br/>
Eclipse IDE for Java EE Developers https://www.eclipse.org/downloads/ <br/>
Apache Tomcat http://tomcat.apache.org/download-80.cgi <br/>
MySql Server https://dev.mysql.com/downloads/mysql/ <br/>
MySql Workbench https://www.mysql.com/products/workbench/ <br/>
Git https://git-scm.com/download/win <br/>

Build and run: <br/>
Option1: from Eclipse <br/>
	Right click on project: Run As -> Maven install <br/>
	Window->Show View->Servers <br/>
	Define Tomcat Server <br/>
	Right click on project: Run As -> Run on Server <br/>
	
Option2: from git bash <br/>
	You also need Apache Maven installed: https://maven.apache.org/download.cgi <br/>
	Open gitbash console <br/>
	cd project_dir <br/>
	maven clean install <br/>
	cp activity.war from target dir to apache tomcat dir/webapps <br/>
	apache-tomcat-8.0.20\bin\startup.bat <br/>
	
Database dump can be found in src/main/resources.
	
	
