package app;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import javax.swing.JButton;
import javax.swing.JOptionPane;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;

import javax.swing.WindowConstants;
import javax.swing.SwingUtilities;

import qq.QQXy;
import util.WebRequest;


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
public class JFrameMessage extends javax.swing.JFrame {

	{
		//Set Look & Feel
		try {
			javax.swing.UIManager.setLookAndFeel("com.sun.java.swing.plaf.nimbus.NimbusLookAndFeel");
		} catch(Exception e) {
			e.printStackTrace();
		}
	}

	private QQXy qq = Public.getQQInstance();
	private JScrollPane jScrollPane1;
	private JButton jButton1;
	private JScrollPane jScrollPane2;
	private JButton jButton2;
	private JTextArea jTextArea2;
	private JTextArea jTextArea1;
	private String friendQQ;

	/**
	* Auto-generated main method to display this JFrame
	*/
		
	public JFrameMessage(String title) {
		super(title);
		friendQQ = WebRequest.mid(title, "”Î(", ")");
		initGUI();
		new Thread(new Runnable() {
			@Override
			public void run() {
				while(true){
				getMsgRecord();
				try {
					Thread.sleep(2000);
				} catch (InterruptedException e) {
					e.printStackTrace();
				}
				}
			}
		}).start();
	}
	
	private void initGUI() {
		try {
			setDefaultCloseOperation(WindowConstants.DISPOSE_ON_CLOSE);
			setResizable(false);
			getContentPane().setLayout(null);
			pack();
			this.setSize(441, 510);
			setLocationRelativeTo(null);
			{
				jScrollPane1 = new JScrollPane();
				getContentPane().add(jScrollPane1);
				jScrollPane1.setBounds(18, 13, 402, 378);
				{
					jTextArea1 = new JTextArea();
					jScrollPane1.setViewportView(jTextArea1);
					jTextArea1.setEditable(false);
					jTextArea1.setBounds(20, 7, 408, 375);
				}
			}
			{
				jButton1 = new JButton();
				getContentPane().add(jButton1);
				jButton1.setText("\u53d1\u9001\u6d88\u606f");
				jButton1.setBounds(330, 409, 90, 24);
				jButton1.addMouseListener(new MouseAdapter() {
					public void mouseClicked(MouseEvent evt) {
						jButton1MouseClicked(evt);
					}
				});
			}
			{
				jScrollPane2 = new JScrollPane();
				getContentPane().add(jScrollPane2);
				jScrollPane2.setBounds(18, 403, 300, 69);
				{
					jTextArea2 = new JTextArea();
					jScrollPane2.setViewportView(jTextArea2);
					jTextArea2.setBounds(26, 318, 294, 61);
				}
			}
			{
				jButton2 = new JButton();
				getContentPane().add(jButton2);
				jButton2.setText("\u67e5\u770b\u8d44\u6599");
				jButton2.setBounds(330, 439, 90, 24);
				jButton2.addMouseListener(new MouseAdapter() {
					public void mouseClicked(MouseEvent evt) {
						jButton2MouseClicked(evt);
					}
				});
			}
		} catch (Exception e) {
		    //add your error handling code here
			e.printStackTrace();
		}
	}
	
	private void jButton1MouseClicked(MouseEvent evt) {
		if(qq.sendMessage(friendQQ,jTextArea2.getText())){
			jTextArea2.setText("");
		}
		else{
			JOptionPane.showMessageDialog(null, "∑¢ÀÕ ß∞‹");
		}
	}
	
	public void getMsgRecord(){
		jTextArea1.setText(qq.getMessageRecord(friendQQ));
	}
	
	private void jButton2MouseClicked(MouseEvent evt) {
		new JFrameInfo(friendQQ).setVisible(true);
	}

}
