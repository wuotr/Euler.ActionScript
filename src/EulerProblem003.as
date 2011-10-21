package {
import flash.display.Sprite;

public class EulerProblem003 extends Sprite {
    public function EulerProblem003() {
        super();

        /*
         The prime factors of 13195 are 5, 7, 13 and 29.
         What is the largest prime factor of the number 600851475143 ?
         */

        // Start the algoritm by dividing with the smallest prime (=2).
        divideByPrime(600851475143, 2);
    }

    private function divideByPrime(num:Number, prime:Number):void {
        while (num % prime == 0) {
            num = num / prime;
            if (num == 1) {
                trace("Result: " + prime);
                return;
            }
        }

        do {
            prime++;
        } while (!isPrime(prime));

        divideByPrime(num, prime);
    }

    private function isPrime(num:Number):Boolean {
        for (var i:int = (num - 1); i > 1; i--) {
            if ((num % i) == 0) {
                return false;
            }
        }
        return true;
    }
}
}