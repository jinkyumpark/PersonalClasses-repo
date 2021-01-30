public class IntegerMultiplication{
	public static void main(String[] args){

	}

	public int standardIntegerMultiplication(int num1, int num2){
		int num2Len;
		int product = 0;
		String num2Str = String.valueOf(num2);

		for(int i = 0; i < num2Len; i++){
			String partialProduct = "";
			int tmp = num1 * Integer.parseInt(num2Str.charAt(num2Str.length()-i));
			partialProduct += String.valueOf(tmp);
			for(int j = 0; j < i; j++){
				partialProduct += "0";
			}
			product += Integer.parseInt(partialProduct);
		}

		return product;
	}
}
