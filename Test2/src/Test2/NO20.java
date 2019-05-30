package Test2;
class Persons{
	public void printValue(int i,int j){}
	public void printValue(int i){System.out.println("parent");}
}
public class NO20 extends Persons{
public void printValue(){}
public void printValue(int i){System.out.println("childen");}
public static void main(String[] args) {
	Persons t=new NO20();
	t.printValue(10);
}
}
