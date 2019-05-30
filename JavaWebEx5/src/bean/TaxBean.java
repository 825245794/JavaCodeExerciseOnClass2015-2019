package bean;

public class TaxBean {
	public double f(double num){
		double s=num-1600;
		double tax=0;
		double sq=0;
		if(s<=500){
			tax=0.05;
			sq=0;
		}else if(s>500&&s<=3000){
			tax=0.1;
			sq=25;
		}else if(s>3000&&s<=5000){
			tax=0.15;
			sq=125;
		}else if(s>5000&&s<=20000){
			tax=0.2;
			sq=375;
		}else if(s>20000&&s<=40000){
			tax=0.25;
			sq=1375;
		}else if(s>40000&&s<=60000){
			tax=0.3;
			sq=3375;
		}else if(s>60000&&s<=80000){
			tax=0.35;
			sq=6375;
		}else if(s>80000&&s<=100000){
			tax=0.4;
			sq=10375;
		}else if(s>100000){
			tax=0.45;
			sq=15375;
		}
		return s*tax-sq;
	}
}
