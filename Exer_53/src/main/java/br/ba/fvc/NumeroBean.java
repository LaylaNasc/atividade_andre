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
import java.util.ArrayList;
import java.util.List;

@ManagedBean(name = "numeroBean")
@ViewScoped
public class NumeroBean implements Serializable {

    private List<Integer> numerosValidos;

    public NumeroBean() {
        numerosValidos = new ArrayList<>();
        calcularNumerosValidos();
    }

    public List<Integer> getNumerosValidos() {
        return numerosValidos;
    }

    public void calcularNumerosValidos() {
        numerosValidos.clear();
        for (int numero = 11; numero < 100; numero++) {
            if (numero % 10 != 0) {
                int resto = numero / 10;
                if (numero % resto == 0) {
                    numerosValidos.add(numero);
                }
            }
        }
    }
}
