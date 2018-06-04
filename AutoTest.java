import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import javax.xml.bind.SchemaOutputResolver;
import java.sql.*;
import java.util.List;

import static java.lang.Thread.sleep;

public class AutoTest {
    public static void main(String [] args) {
        //method1();
        System.setProperty("webdriver.chrome.driver","C:\\Users\\kabil\\Downloads\\Telegram Desktop\\SE II\\chromedriver_win32\\chromedriver.exe");
        WebDriver driver  = new ChromeDriver();
        //WebDriver driver2  = new ChromeDriver();
        //driver.get("file:///C:/Users/kabil/Desktop/trial.html");
        driver.get("https://addisfortune.net/");
        WebDriverWait wait = new WebDriverWait(driver,20);
        WebElement span6;
        span6 = wait.until(ExpectedConditions.visibilityOfElementLocated(By.className("span6")));
//        WebElement span6 =  driver.findElement(By.className("span6"));
        List<WebElement> anchors = span6.findElements(By.tagName("a"));
        List<WebElement> webElementListItem = span6.findElements(By.className("row"));
        try{
            Class.forName("org.gjt.mm.mysql.Driver");
            Connection conn = null;
            conn = DriverManager.getConnection("jdbc:mysql://localhost/news","root","");
            System.out.println("Data base is connected");
            String query;
            PreparedStatement preparedStmt;


            for (int i = 0; i < webElementListItem.size(); i++) {
//                System.out.println(webElementListItem.get(i).getText());
                try {
                    System.out.println("Title "+anchors.get(i).getText());
                    System.out.println("img "+webElementListItem.get(i).findElement(By.tagName("img")).getAttribute("src"));
                    System.out.println("Content "+webElementListItem.get(i).findElement(By.tagName("p")).getText());
                    query = "insert into addisfortune values (null,'"+anchors.get(i).getText()+"','"+webElementListItem.get(i).findElement(By.tagName("img")).getAttribute("src")+"','"+webElementListItem.get(i).findElement(By.tagName("p")).getText()+"')";
                    preparedStmt = conn.prepareStatement(query);
                    preparedStmt.execute();
                }catch (Exception e){
//                    continue;
                }
            }

            conn.close();
        }catch (Exception e){
            System.out.println("Did not connect to database - ERROR: "+e);
        }
        //method4();
        try{
            sleep(5000);
        }catch (Exception e){

        }
        driver.close();

    }

    public static void method1(){
        System.setProperty("webdriver.chrome.driver","C:\\Users\\kabil\\Downloads\\Telegram Desktop\\SE II\\chromedriver_win32\\chromedriver.exe");
        WebDriver driver = new ChromeDriver();
        driver.get("http://www.google.com");
        System.out.println("Page Title: "+driver.getTitle());
        System.out.println("Current URL: "+driver.getCurrentUrl());
        System.out.println("Length of page source: "+driver.getPageSource());
        try{
            sleep(2000);
        }catch (Exception e){

        }
        driver.navigate().to("http://www.shalomnewss.com");
        driver.close();
    }
    public static void method3(){
        System.setProperty("webdriver.chrome.driver","C:\\Users\\kabil\\Downloads\\Telegram Desktop\\SE II\\chromedriver_win32\\chromedriver.exe");
        WebDriver driver  = new ChromeDriver();
        driver.get("https://www.google.com");

        WebElement searchbox = driver.findElement(By.name("q"));
        searchbox.sendKeys("Kabila Haile");
        searchbox.click();
        try{
            sleep(5000);
        }catch (Exception e){

        }
        searchbox.clear();
        driver.close();
    }
    public static void method4(){

    }
    public static void facebookLoginNotification(){
        System.setProperty("webdriver.chrome.driver","C:\\Users\\kabil\\Downloads\\Telegram Desktop\\SE II\\chromedriver_win32\\chromedriver.exe");
        WebDriver driver = new ChromeDriver();
        driver.get("https://www.facebook.com");
        WebElement email = driver.findElement(By.id("email"));
        WebElement password = driver.findElement(By.id("pass"));
        WebElement loginBtn = driver.findElement(By.id("loginbutton"));

        email.sendKeys("0924303291");
        password.sendKeys("Lelliseee@2007J");
        loginBtn.click();
        WebElement notificationsCountValue = driver.findElement(By.id("notificationsCountValue"));
        System.out.println("Current NOTIFICATIONS VALUE "+notificationsCountValue.getText());
        try{
            sleep(5000);
        }catch (Exception e){

        }


        driver.close();
    }
}