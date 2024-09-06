package TestRunners;

import org.junit.AfterClass;

//Name: Hari Prasanth S
//Requirements: Testrunner file for API testing of Movie rental management endpoints, using restassured with cucumber
//Date: 05-09-24



import io.cucumber.testng.AbstractTestNGCucumberTests;
import io.cucumber.testng.CucumberOptions;

@CucumberOptions(
 features = "src/test/resources/features",
 glue = "stepdefinitions",
 plugin = { "pretty", "html:target/cucumber-reports.html" }
)
public class TestRunner extends AbstractTestNGCucumberTests { 
	
	
}
