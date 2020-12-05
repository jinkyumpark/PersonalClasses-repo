//Impliment Stack Data Structure with Java standard Array

class Stack{
	private int[] stack;
	private int index = 0;

	public Stack(int length){
		this.stack = new int[length];
	}

	public void push(int key){
		this.stack[index] = key;
		index++;
	}

	public int keyTop(){
		return this.stack[index-1];
	}

	public int keyPop(){
		int tmp = this.Keytop();
		index--;
		return tmp;
	}

	public boolean empty(){
		if(index == 0){
			return true;
		}else{
			return false;
		}
	}
}
