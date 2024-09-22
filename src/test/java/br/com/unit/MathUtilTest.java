package br.com.unit;

import static org.junit.jupiter.api.Assertions.assertThrows;
import org.junit.jupiter.api.Test;

public class MathUtilTest {

    @Test
    public void testDivisaoPorZero() {
        assertThrows(ArithmeticException.class, () -> {
            MathUtil.Calculadora.divisao(10, 0);
        }, "A divisão por zero deveria lançar uma ArithmeticException.");
    }
}

class MathUtil {

    public static class Calculadora {
        public static int divisao(int a, int b) {
            return a / b;
        }
    }
}
