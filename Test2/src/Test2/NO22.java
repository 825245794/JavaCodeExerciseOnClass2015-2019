package Test2;
class Foos{
	public int a=3;
	public void addFive(){a+=5;System.out.println("f");}
}
public class NO22 extends Foos{
    public int a =8;
    public void addFive(){
    	this.a+=5;
    	System.out.println("b");
    }
    public static void main(String[] args) {
		Foos f=new NO22();
		f.addFive();
		System.out.println(f.a);
	}
}
