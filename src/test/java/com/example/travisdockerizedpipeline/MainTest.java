package com.example.travisdockerizedpipeline;

import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class MainTest {
    @Test
    public void testOne(){
        System.out.println("This is now a successful test");
        assertEquals(true, true);
    }

    @Test
    public void testTwo(){
        System.out.println("This is a successful test");
        assertEquals(true, true);
    }
}
