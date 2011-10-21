package {
import flash.display.Sprite;

public class EulerProblem9 extends Sprite {
    public function EulerProblem9() {
        super();

        /*
         A Pythagorean triplet is a set of three natural numbers, a  b  c, for which a2 + b2 = c2.
         For example, 32 + 42 = 9 + 16 = 25 = 52.

         There exists exactly one Pythagorean triplet for which a + b + c = 1000.
         Find the product abc.
         */

        var a:int, b:int, c:int = 0;
        var found:Boolean = false;

        for (a = 1; a < 500; a++) {
            for (b = a; b < 500; b++) {
                    c = 1000 - a - b;
                
                    if ((a * a) + (b * b) == (c * c)) {
                        found = true;
                        break;
                    }
            }

            if(found) break;
        }

        trace("a = " + a + ", b = " + b + ", c = " + c);
        trace("a2 = " + (a * a) + ", b2 = " + (b * b) + ", c2 = " + (c * c));
        trace("Result: " + (a * b* c));
    }
}
}