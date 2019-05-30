package proxy;

public class TestJDKProxy {
	public static void main(String args[]){
		JDKProxy jdk = new JDKProxy();
		HelloWorld proxy = (HelloWorld)jdk.bind(new HelloWorldImpl());
		proxy.sayHello();
	}
}
