package Test2;

public class NO14 extends Person{
    public int id=20;
    
    public void info(){
    	System.out.println("Child");
    }
    
    public static void main(String[] args) {
		Person p=new NO14();
		System.out.println(p.id+"\t");
		p.info();
	}
}
class Person{
	public int id=10;
	
	public void info(){
		System.out.println("Super");
	}
}