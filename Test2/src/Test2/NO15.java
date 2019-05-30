package Test2;
interface Foo{}
class Alpha implements Foo{}
class Beta extends Alpha{}
public class NO15 extends Beta{
  public static void main(String[] args) {
	Beta x=new Beta();
	/*A*///Alpha a=x;
	/*B*/Foo f=(NO15)x;
	/*C*///Foo f1=(Alpha)x;
	/*D*///Beta b=(Beta)(Alpha)x;
}
}
