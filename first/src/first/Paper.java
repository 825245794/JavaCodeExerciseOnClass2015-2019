package first;

import java.io.Serializable;

public class Paper implements Serializable {
	private static final long serialVersionUID=1L;
	private String[] languages;
	public String[] getLanguages() {
		return languages;
	}
	public void setLanguages(String[] languages) {
		this.languages = languages;
	}
	public Paper(){
		
	}


}
