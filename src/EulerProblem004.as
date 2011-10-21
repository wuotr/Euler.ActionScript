package {
import flash.display.Sprite;

public class EulerProblem004 extends Sprite {
    public function EulerProblem004() {
        super();

        /*
         A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 x 99.
         Find the largest palindrome made from the product of two 3-digit numbers.
         */

        var a:Number;
        var b:Number;
        var result:String; // Use String here because it's more a lexical problem then a mathematical one.
        var found:Boolean = false;

        // Estimate the largest palindrome will be a factor of two 3-digit numbers between 900 & 999.
        for (a = 999; a >= 900; a--) {
            for (b = 999; b >= 900; b--) {
                result = "" + (a * b);
                if (result == result.split("").reverse().join("")) {
                    found = true;
                    break;
                }
            }

            if(found) break;
        }

        trace("Result: " + result);
    }
}
}