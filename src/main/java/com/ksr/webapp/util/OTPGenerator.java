package com.ksr.webapp.util;

import java.util.Random;

public class OTPGenerator {
    public static String generate() {
        Random random = new Random();
        int randomNo = random.nextInt(900000) + 100000;

        return String.valueOf(randomNo);
    }
}
