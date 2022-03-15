/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jugador;

import java.util.Scanner;

/**
 *
 * @author joaqu
 */
public class Jugador {
    static String nombre;
    static String contraseña;
    static String contraseña2;
    
    public static void comprobar(String nombre, String contraseña, String contraseña2){
        Scanner sc = new Scanner(System.in);
        System.out.print("Introducta su nombre: ");
        nombre = sc.next();
        System.out.print("Introduzca su contraseña: ");
        contraseña = sc.next();
        System.out.print("Introduzca de nuevo su contraseña: ");
        contraseña2 = sc.next();
        
        if (!contraseña.equals(contraseña2)) {
            System.out.print("Las contraseñas no coinciden, intentelo de nuevo :");
            String contraseña3 = sc.next();
            while(!contraseña3.equals(contraseña)){
                System.out.print("Las contraseñas no coinciden, intentelo de nuevo: ");
                contraseña3 = sc.next();
            }
        } else {
            System.out.println("correcto");
        }
    }

    public static void main(String[] args) {
        comprobar(nombre, contraseña, contraseña2);
    }
    
}
