package biboots.registry.utils;

public class TimeUtils {

    public static String getFriendlyTimeDiff(long uptime) {
        long timeDiffMills = System.currentTimeMillis() - uptime;
        long diffSeconds = timeDiffMills / 1000;
        long diffMinutes = timeDiffMills / (60 * 1000);
        long diffHours = timeDiffMills / (60 * 60 * 1000);
        long diffDays = timeDiffMills / (60 * 60 * 1000 * 24);

        if (diffMinutes < 1) {
            return diffSeconds + "s";
        } else if (diffHours < 1) {
            return diffMinutes + "m" + diffSeconds % 60 + "s";
        } else if (diffDays < 1) {
            return diffHours + "h" + diffMinutes % 60 + "m";
        } else {
            return diffDays + "d" + diffHours % 24 + "h";
        }
    }

}
