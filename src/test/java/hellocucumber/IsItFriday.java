package hellocucumber;

public class IsItFriday {
    static String isItFriday(String today) throws InterruptedException {
        long milliseconds = (long)(1000L * ((Math.random() * (30 - 10)) + 10));
        System.out.println("Waiting for " + milliseconds/1000 + " seconds");
        Thread.sleep(milliseconds);
        return "Friday".equals(today) ? "TGIF" : "Nope";
    }
}
