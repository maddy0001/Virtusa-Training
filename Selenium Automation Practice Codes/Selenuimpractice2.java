package seleniumlearn;

import java.time.Duration;
import java.util.concurrent.TimeUnit;

import org.openqa.selenium.Alert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.ui.Select;

import io.github.bonigarcia.wdm.WebDriverManager;

public class AlertHandle {

	private static WebDriver driver;

	public static void main(String[] args) {
		WebDriverManager.chromedriver().setup();
		driver = new ChromeDriver();
		String baselink = "https://omayo.blogspot.com/";
		driver.get(baselink);
		driver.manage().timeouts().implicitlyWait(Duration.ofSeconds(20));
		driver.manage().window().maximize();
		/*
		 * driver.manage().timeouts().implicitlyWait(Duration.ofSeconds(5)); WebElement
		 * we = driver.findElement(By.xpath("//*[@id=\"ta1\"]")); we.click();
		 * //*[@id="Blog1"]/div[1]/div/div/div/div/h3/a we.sendKeys("hello");
		 * 
		 * WebElement we = driver.findElement(By.xpath("")); we.click(); Alert
		 * alertwindow = driver.switchTo().alert(); alertwindow.accept(); String text =
		 * alertwindow.getText(); System.out.println(text);
		 */
		WebElement fi = driver.findElement(By.xpath("(//h2[contains(text(),'Other Sites to Practice Automation')])"));
        System.out.println(fi.getText());
		  
	}
}
