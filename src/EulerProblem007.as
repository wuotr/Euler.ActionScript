package {
import flash.display.Sprite;

public class EulerProblem007 extends Sprite {
    public function EulerProblem007() {
        super();

        /*
         By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
         What is the 10 001st prime number?
         */

        var num:Number = 0;
        var counter:int = 0;

        do {
            num++;
            if (isPrime(num)) counter++;
        } while (counter < 10001)

        trace("Result: " + num);
    }

    public function isPrime(num:Number):Boolean {
        for (var i:Number = 3; i <= Math.sqrt(num); i += 2) {
            if (num % i == 0) {
                return false;
            }
        }
        return (( num % 2 != 0 && num > 2) || num == 2);
    }
}
}
