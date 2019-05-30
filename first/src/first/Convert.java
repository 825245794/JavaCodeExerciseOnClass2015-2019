package first;

public class Convert {
	public String arr2Str(String[] arr){
		String s="";
		for(int i=0;i<arr.length;i++){
			s+=arr[i];
			s+=",";
		}
		return s;
	}
}
