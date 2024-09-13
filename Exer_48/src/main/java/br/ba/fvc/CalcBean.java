/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.ba.fvc;

/**
 *
 * @author layla
 */
import java.io.Serializable;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;

@ManagedBean(name = "calcBean")
@ViewScoped
public class CalcBean implements Serializable {

    private int base;
    private int exponent;
    private long result;

    public int getBase() {
        return base;
    }

    public void setBase(int base) {
        this.base = base;
    }

    public int getExponent() {
        return exponent;
    }

    public void setExponent(int exponent) {
        this.exponent = exponent;
    }

    public long getResult() {
        return result;
    }

    public void calculate() {
        if (base >= 2 && exponent > 1) {
            result = (long) Math.pow(base, exponent);
        } else {
            result = 0;
        }
    }
}
