package com.cyh.monitor.module;

/**
 * User: cyh
 * Date: 13-5-18
 * Time: 下午11:22
 * To change this template use File | Settings | File Templates.
 */
public class ChartSeriesData {
    public ChartSeriesData(float x,float y,String name){
        this.x=x;
        this.y=y;
        this.name=name;
    }
    private float x;
    private float y;
    private String name;


    public float getX() {
        return x;
    }

    public void setX(float x) {
        this.x = x;
    }

    public float getY() {
        return y;
    }

    public void setY(float y) {
        this.y = y;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
