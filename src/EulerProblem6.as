package {
import flash.display.Sprite;

public class EulerProblem6 extends Sprite {
    public function EulerProblem6() {
        super();

        /*
         The sum of the squares of the first ten natural numbers is,
         (1)2 + (2)2 + ... + (10)2 = 385

         The square of the sum of the first ten natural numbers is,
         (1 + 2 + ... + 10)2 = (55)2 = 3025

         Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 - 385 = 2640.
         Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
         */

        var sumOfSquares:Number = 0;
        var squareOfSum:Number = 0;
        var num:int;

        for (num = 1; num <= 100; num++) {
            sumOfSquares += Math.pow(num, 2);
            squareOfSum += num;
        }

        squareOfSum = Math.pow(squareOfSum, 2);
        trace("Result: " + (squareOfSum - sumOfSquares));
    }
}
}