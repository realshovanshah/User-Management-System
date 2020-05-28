/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.datapirates.ums.controller;

import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

/**
 *
 * @author Shah Jr
 */
public class SessionCounter implements HttpSessionListener{
    
    private static int totalActiveSessions;


    public static int getTotalActiveSession() {
        return totalActiveSessions;
    }
    
    @Override
    public void sessionCreated(HttpSessionEvent se) {
        totalActiveSessions++;
    }

    @Override
    public void sessionDestroyed(HttpSessionEvent se) {
        if (totalActiveSessions > 0)  {
            totalActiveSessions--;
        }
    }
    
}
