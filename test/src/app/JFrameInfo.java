package app;
import java.awt.BorderLayout;
import javax.swing.JLabel;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;

import javax.swing.WindowConstants;
import javax.swing.SwingUtilities;


/**
* This code was edited or generated using CloudGarden's Jigloo
* SWT/Swing GUI Builder, which is free for non-commercial
* use. If Jigloo is being used commercially (ie, by a corporation,
* company or business for any purpose whatever) then you
* should purchase a license for each developer using Jigloo.
* Please visit www.cloudgarden.com for details.
* Use of Jigloo implies acceptance of these licensing terms.
* A COMMERCIAL LICENSE HAS NOT BEEN PURCHASED FOR
* THIS MACHINE, SO JIGLOO OR THIS CODE CANNOT BE USED
* LEGALLY FOR ANY CORPORATE OR COMMERCIAL PURPOSE.
*/
public class JFrameInfo extends javax.swing.JFrame {
	private JScrollPane jScrollPane1;
	private JTextArea jTextArea1;

	/**
	* Auto-generated main method to display this JFrame
	*/
		
	public JFrameInfo(final String title) {
		super();
		setTitle("QQ"+title+"µÄ×ÊÁÏ");
		initGUI();
		new Thread(new Runnable() {
			
			@Override
			public void run() {
				jTextArea1.setText(Public.getQQInstance().getUserInfo(title));
			}
		}).start();
	}
	
	private void initGUI() {
		try {
			setDefaultCloseOperation(WindowConstants.DISPOSE_ON_CLOSE);
			pack();
			setSize(400, 300);
			setResizable(false);
			setLocationRelativeTo(null);
			getContentPane().setLayout(null);
			{
				jScrollPane1 = new JScrollPane();
				getContentPane().add(jScrollPane1);
				jScrollPane1.setBounds(0, 0, 394, 268);
				{
					jTextArea1 = new JTextArea();
					jTextArea1.setEditable(false);
					jScrollPane1.setViewportView(jTextArea1);
				}
			}
		} catch (Exception e) {
		    //add your error handling code here
			e.printStackTrace();
		}
	}

}
