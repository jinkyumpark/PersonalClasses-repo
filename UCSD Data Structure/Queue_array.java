//Implement Queues data structure with java standard array

class Queues{
	private int read = 0;
	private int write = 0;
	private int[] queues;

	public Queues(int length){
		this.queues = new int[length];
	}

	public void enqueue(int key){
		this.queues[write] = key;
		if(this.nextIndex(write) == read){
			assert true;
		}else{
			this.nextIndex(write);
		}
	}

	public int dequeue(){
		int tmp = this.queues[read];
		this.nextIndex(read);
		return tmp;
	}

	public boolean isEmpty(){
		if(read == write){
			return true;
		}else{
			return false;
		}
	}

	public void nextIndex(int keyIndex){
		if(keyIndex != length-1){
			keyIndex++;
		}else{
			keyIndex = 0;
		}
	}
}
