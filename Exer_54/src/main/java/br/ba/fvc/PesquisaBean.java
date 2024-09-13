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

@ManagedBean(name = "pesquisaBean")
@ViewScoped
public class PesquisaBean implements Serializable {

    private List<Espectador> espectadores;
    private double mediaIdadeExcelente;
    private int qtdRegular;
    private double percentualExcelente;
    private double percentualBom;
    private double percentualRegular;

    public PesquisaBean() {
        espectadores = new ArrayList<>();
        gerarEspectadores();
        calcularResultados();
    }

    public double getMediaIdadeExcelente() {
        return mediaIdadeExcelente;
    }

    public int getQtdRegular() {
        return qtdRegular;
    }

    public double getPercentualExcelente() {
        return percentualExcelente;
    }

    public double getPercentualBom() {
        return percentualBom;
    }

    public double getPercentualRegular() {
        return percentualRegular;
    }

    public void gerarEspectadores() {
        for (int i = 0; i < 10000; i++) {
            int idade = (int) (Math.random() * 80) + 10;
            int opiniao = (int) (Math.random() * 3) + 1;
            espectadores.add(new Espectador(idade, opiniao));
        }
    }

    public void calcularResultados() {
        int somaIdadeExcelente = 0;
        int qtdExcelente = 0;
        qtdRegular = 0;
        int qtdBom = 0;

        for (Espectador espectador : espectadores) {
            if (espectador.getOpiniao() == 3) {
                somaIdadeExcelente += espectador.getIdade();
                qtdExcelente++;
            } else if (espectador.getOpiniao() == 1) {
                qtdRegular++;
            } else if (espectador.getOpiniao() == 2) {
                qtdBom++;
            }
        }

        if (qtdExcelente > 0) {
            mediaIdadeExcelente = (double) somaIdadeExcelente / qtdExcelente;
        }

        percentualExcelente = (double) qtdExcelente / espectadores.size() * 100;
        percentualBom = (double) qtdBom / espectadores.size() * 100;
        percentualRegular = (double) qtdRegular / espectadores.size() * 100;
    }

    public static class Espectador {

        private int idade;
        private int opiniao;

        public Espectador(int idade, int opiniao) {
            this.idade = idade;
            this.opiniao = opiniao;
        }

        public int getIdade() {
            return idade;
        }

        public int getOpiniao() {
            return opiniao;
        }
    }
}
