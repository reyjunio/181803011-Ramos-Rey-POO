
import java.util.Scanner;

/*
calcular el cubo de un numero
 */
public class NewClass {
    public static void main(String[] args) {
        Scanner leer = new Scanner(System.in);
        System.out.println("Introduce un numero ");
        double numero=leer.nextDouble();
        System.out.println("el cubo del numero es :"+((numero*numero)*numero));
    }
}
