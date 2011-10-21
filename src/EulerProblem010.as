package {
import flash.display.Sprite;

public class EulerProblem010 extends Sprite {
    public function EulerProblem010() {
        super();

        /*
         The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
         Find the sum of all the primes below two million.
         */

        var result:Number = 0;

        for(var i:Number = 1; i < 2000000; i++) {
            if(isPrime(i)) result += i;
        }

        trace("Result: " + result);
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