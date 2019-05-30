package proxy;

import java.lang.reflect.Method;

public class MyInterceptor implements Interceptor{

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		HelloWorld proxy = (HelloWorld)InterceJdkProxy.bind(new HelloWorldImpl(), "proxy.MyInterceptor");
		proxy.sayHello();
	}

	@Override
	public boolean before(Object proxy, Object target, Method method, Object[] args) {
		// TODO Auto-generated method stub
		System.out.println("Before");
		return false;
	}

	@Override
	public void around(Object proxy, Object target, Method method, Object[] args) {
		// TODO Auto-generated method stub
		System.out.println("Around");
	}

	@Override
	public void after(Object proxy, Object target, Method method, Object[] args) {
		// TODO Auto-generated method stub
		System.out.println("After");
	}

}
