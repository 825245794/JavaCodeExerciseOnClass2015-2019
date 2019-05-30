package Test2;
interface TestA{String toString();}
public class NO40 {
    public static void main(String[] args) {
		System.out.println(new TestA(){
			public String toString(){return "test";};
		});
	}
}
