package com.bjpowernode.oa.bean;


import java.util.Objects;

public class Staff1 {
    public Staff1() {
    }

    private String name;
    private String dname;
    private String time;
    private String wages;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDname() {
        return dname;
    }

    public void setDname(String dname) {
        this.dname = dname;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getWages() {
        return wages;
    }

    public void setWages(String wages) {
        this.wages = wages;
    }

    @Override
    public String toString() {
        return "Staff1{" +
                "name='" + name + '\'' +
                ", dname='" + dname + '\'' +
                ", time='" + time + '\'' +
                ", wages='" + wages + '\'' +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Staff1 staff1 = (Staff1) o;
        return Objects.equals(name, staff1.name) && Objects.equals(dname, staff1.dname) && Objects.equals(time, staff1.time) && Objects.equals(wages, staff1.wages);
    }

    @Override
    public int hashCode() {
        return Objects.hash(name, dname, time, wages);
    }
}
