package exceptions;
public class NumericException extends Exception {
    public NumericException(String paramName) {
        super("Le parametre " + paramName + " doit etre un nombre");
    }
}