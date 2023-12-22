package com.bjpowernode.oa.bean;


import java.util.Objects;

public class Staff {
    public Staff() {
    }

    private String name;
    private String dname;
    private String time;
    private String job;

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

    public String getJob() {
        return job;
    }

    public void setJob(String job) {
        this.job = job;
    }

    @Override
    public String toString() {
        return "Staff{" +
                "name='" + name + '\'' +
                ", dname='" + dname + '\'' +
                ", time='" + time + '\'' +
                ", job='" + job + '\'' +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Staff staff = (Staff) o;
        return Objects.equals(name, staff.name) && Objects.equals(dname, staff.dname) && Objects.equals(time, staff.time) && Objects.equals(job, staff.job);
    }

    @Override
    public int hashCode() {
        return Objects.hash(name, dname, time, job);
    }
}
