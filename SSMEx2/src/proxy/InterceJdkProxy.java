package proxy;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;





public class InterceJdkProxy implements InvocationHandler {
	private Object target;
	private String interceptorClass = null;
	
	public InterceJdkProxy(Object target, String interceptorClass){
		this.target = target;
		this.interceptorClass = interceptorClass;
	}
	
	public static Object bind(Object target, String interceptorClass){
		return Proxy.newProxyInstance(target.getClass().getClassLoader(),
				target.getClass().getInterfaces(), new InterceJdkProxy(target, interceptorClass));
	}
	@Override
	public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
		// TODO Auto-generated method stub
		if(interceptorClass == null){
			return method.invoke(target, args);
		}
		Object result = null;
		Interceptor interceptor =
				(Interceptor)Class.forName(interceptorClass).newInstance();
		if(interceptor.before(proxy, args, method, args)){
			result = method.invoke(target, args);
		}else{
			interceptor.around(proxy, args, method, args);
		}
		interceptor.after(proxy, args, method, args);
		return result;
	}

}
