package Test2;

public class NO19 {
public static void main(String[] args) {
	String s1="Dbee";
	String s2=new String ("Dbee");
	String s3=s1;
	System.out.println((s1==s2)+"\t");
	System.out.println(s1.equals(s2)+"\t");
	System.out.println((s1==s3)+"\t");
	System.out.println(s1.equals(s3)+"\t");
}
}
