package;

import lime.app.Application;

class Main extends Application
{
	public function new()
	{
		super();
		trace(decimalToBinary(11));
	}

	function getIntInputAsList(num:Int) {
		var str:String = Std.string(num);
		var retArray:Array<Int> = [];
		for (i in 0...str.length) {
			retArray.push(Std.parseInt(str.charAt(i)));
		}
		return retArray;
	}

	// Base2
	function binaryToDecimal(input:Int) {
		var realInput:Array<Int> = getIntInputAsList(input);
		realInput.reverse();
		var decimal:Float = 0;
		var counter:Int = 0;
		for (i in realInput) {
			decimal += Math.pow(2, counter) * i;
			counter++;
		}

		return decimal;
	}

	function decimalToBinary(input:Int) {
		var binary:Array<Int> = [];
		while (input > 0) {
			binary.push(input % 2);
			input >>= 1;
		}

		binary.reverse();

		return Std.parseInt(binary.join(""));
	}
}
