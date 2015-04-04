This project contains a sample GraniteDS 2.0/ Tide / Maven / Spring project.

# Retreive the project #

  * svn checkout http://graniteds-samples.googlecode.com/svn/trunk/tide-test tide-test
  * You must have Maven 2.0.10+,Eclipse 3.3+ (J2EE distribution recommended, m2eclipse 0.9.8+ and Flex Builder installed
  * Run Eclipse, and go to menu File -> Import -> General -> **Maven project** and select only tide-test-parent and tide-test-server. tide-test-client should be uncheked as it will be import as a Flex Builder project, not a Maven project
  * Now, import tide-test-client by going to File -> Import -> General -> **Existing project in workspace**

# Compile and run the project #

The project can be compiled by Maven or un Eclipse. Maven build is usually used in a continuous integration build, and Eclipse build is usually used during developpment since it is far more efficient.

## With Maven ##
  * Go to tide-test directory and run mvn clean install
  * To run it, go to server view, create a tomcat server without adding any webapp in it, double click on the server in the server view, select the module tab, and click on "Add an external web amodule" and configure the tide-test/tide-test-server/target/tide-test-server directory as doc base **and /tide-test-server as path**.
  * Run the tomcat server
  * The project should be available in your browser at the url http://localhost:8080/tide-test-server/main.swf

## More documentation about these stuffs ##
  * [Blog post about Tide integration for Spring](http://graniteds.blogspot.com/2008/11/graniteds-tide-for-spring.html)
  * [Tide documentation](http://www.graniteds.org/confluence/display/DOC20/6.+Tide+Data+Framework)
  * [Maven Flex Mojo wiki](https://docs.sonatype.org/display/FLEXMOJOS/Home)
  * [GraniteDS Tide Spring example](http://granite.svn.sourceforge.net/viewvc/granite/graniteds/trunk/examples/graniteds_tide_spring/)

## TODO ##
  * JPA support ...