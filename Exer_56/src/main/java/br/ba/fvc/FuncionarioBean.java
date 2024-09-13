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

@ManagedBean(name = "funcionarioBean")
@ViewScoped
public class FuncionarioBean implements Serializable {

    private List<Funcionario> funcionarios = new ArrayList<>();
    private Funcionario novoFuncionario = new Funcionario();

    private int pessoasBairros;
    private int funcionariosComBonus;
    private double valorBonus = 300.0;
    private double mediaPeso;
    private double mediaIdade;
    private int funcionariosBasquete;
    private double totalFolhaSalarial;
    private int quantidadeGerentesSecretarias;
    private Funcionario novaSecretaria;

    public Funcionario getNovoFuncionario() {
        return novoFuncionario;
    }

    public void setNovoFuncionario(Funcionario novoFuncionario) {
        this.novoFuncionario = novoFuncionario;
    }

    public List<Funcionario> getFuncionarios() {
        return funcionarios;
    }

    public void adicionarFuncionario() {
        funcionarios.add(novoFuncionario);
        novoFuncionario = new Funcionario();
        calcularDecisoes();
    }

    public void calcularDecisoes() {
        pessoasBairros = calcularPessoasBairros();
        funcionariosComBonus = calcularBonus();
        mediaPeso = calcularMediaPeso();
        mediaIdade = calcularMediaIdade();
        funcionariosBasquete = calcularFuncionariosBasquete();
        totalFolhaSalarial = calcularFolhaSalarial();
        quantidadeGerentesSecretarias = calcularQtdGerentesSecretarias();
        novaSecretaria = escolherNovaSecretaria();
    }

    private int calcularPessoasBairros() {
        return (int) funcionarios.stream().filter(f
                -> f.getBairro().equalsIgnoreCase("Brotas")
                || f.getBairro().equalsIgnoreCase("Nazaré")
                || f.getBairro().equalsIgnoreCase("Bonocô")
        ).count();
    }

    private int calcularBonus() {
        return (int) funcionarios.stream()
                .filter(f -> f.getSalarioBruto() >= 200 && f.getSalarioBruto() <= 500)
                .count();
    }

    private double calcularMediaPeso() {
        return funcionarios.stream().filter(f -> f.getCargo().equalsIgnoreCase("Produção"))
                .mapToDouble(Funcionario::getPeso).average().orElse(0.0);
    }

    private double calcularMediaIdade() {
        return funcionarios.stream().filter(f -> f.getCargo().equalsIgnoreCase("Produção"))
                .mapToDouble(Funcionario::getIdade).average().orElse(0.0);
    }

    private int calcularFuncionariosBasquete() {
        return (int) funcionarios.stream()
                .filter(f -> f.getAltura() >= 1.70 && f.getAltura() <= 2.10
                && f.getSexo().equalsIgnoreCase("Masculino")
                && f.getIdade() >= 17 && f.getIdade() <= 25)
                .count();
    }

    private double calcularFolhaSalarial() {
        return funcionarios.stream().mapToDouble(f -> f.getSalarioBruto() - f.getEncargos()).sum();
    }

    private int calcularQtdGerentesSecretarias() {
        return (int) funcionarios.stream().filter(f
                -> f.getCargo().equalsIgnoreCase("Gerente")
                || f.getCargo().equalsIgnoreCase("Secretaria")
        ).count();
    }

    private Funcionario escolherNovaSecretaria() {
        return funcionarios.stream().filter(f -> f.getCargo().equalsIgnoreCase("Secretaria"))
                .filter(f -> f.getSalarioBruto() < 700).min((f1, f2)
                -> Double.compare(f1.getSalarioBruto(), f2.getSalarioBruto())
        ).orElse(null);
    }

    public int getPessoasBairros() {
        return pessoasBairros;
    }

    public int getFuncionariosComBonus() {
        return funcionariosComBonus;
    }

    public void setFuncionariosComBonus(int funcionariosComBonus) {
        this.funcionariosComBonus = funcionariosComBonus;
    }

    public double getValorBonus() {
        return valorBonus;
    }

    public void setValorBonus(double valorBonus) {
        this.valorBonus = valorBonus;
    }

    public double getMediaPeso() {
        return mediaPeso;
    }

    public double getMediaIdade() {
        return mediaIdade;
    }

    public int getFuncionariosBasquete() {
        return funcionariosBasquete;
    }

    public void setFuncionariosBasquete(int funcionariosBasquete) {
        this.funcionariosBasquete = funcionariosBasquete;
    }

    public double getTotalFolhaSalarial() {
        return totalFolhaSalarial;
    }

    public int getQuantidadeGerentesSecretarias() {
        return quantidadeGerentesSecretarias;
    }

    public Funcionario getNovaSecretaria() {
        return novaSecretaria;
    }

}
