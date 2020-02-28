package com.github.gouyelliot.opensourcetest;

import org.junit.Test;

import static org.junit.Assert.*;

public class ClassToTest {

    @Test
    public void add_isCorrect() {
        assertEquals(4, ClassToBeTested.add(2, 2));
    }

    @Test
    public void sub_isCorrect() {
        assertEquals(8, ClassToBeTested.sub(16, 8));
    }

    @Test
    public void mul_isCorrect() {
        assertEquals(18, ClassToBeTested.mul(3, 6));
    }

    @Test
    public void div_isCorrect() {
        assertEquals(5, ClassToBeTested.div(10, 2));
    }
}