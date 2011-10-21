package {
import flash.display.Sprite;

public class EulerProblem005 extends Sprite {
    public function EulerProblem005() {
        super();

        /*
         2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
         What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
         */

        // So actually we need to find the least common multiple of the numbers from 2 -> 20 ;-)

        // Create and populate an array (2 to 20)
        var numbers:Array = new Array();
        for (var i:int = 2; i <= 20; i++) {
            numbers.push(i);
        }

        trace("Result: " + lcmm(numbers));
    }

    function gcd(a:Number, b:Number):Number {
        // Euclidean algorithm to find the "greatest common divisor"
        var t:Number;
        while (b != 0) {
            t = b;
            b = a % b;
            a = t;
        }
        return a;
    }

    function lcm(a:Number, b:Number):Number {
        // Find the "least common multiple" with this formula:
        return (a / gcd(a, b)) * b;
    }

    function lcmm(args:Array):Number {
        // Recursively iterate through pairs of arguments
        // i.e. lcm(args[0], lcm(args[1], lcm(args[2], args[3])))

        if (args.length == 2) {
            return lcm(args[0], args[1]);
        } else {
            var arg0:Number = args[0];
            args.shift();
            return lcm(arg0, lcmm(args));
        }
    }
}
}