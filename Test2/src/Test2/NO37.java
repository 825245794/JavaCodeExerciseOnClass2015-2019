package Test2;

public class NO37 {
    void printValue(int m){
    	do{
    		System.out.println("The value is"+m);
    	}
    	while(--m>10);
    }
    public static void main(String[] args) {
		int i=10;
		NO37 t=new NO37();
		t.printValue(i);
	}
}
