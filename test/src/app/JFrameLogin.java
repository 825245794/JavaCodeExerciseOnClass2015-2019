package app;
import java.awt.BorderLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.util.List;

import javax.swing.BorderFactory;
import javax.swing.DebugGraphics;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPasswordField;
import javax.swing.JRadioButton;
import javax.swing.JTextField;

import javax.swing.WindowConstants;
import javax.swing.border.LineBorder;
import javax.swing.SwingUtilities;

import qq.Friend;
import qq.QQXy;


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
public class JFrameLogin extends javax.swing.JFrame {

	{
		//Set Look & Feel
		try {
			javax.swing.UIManager.setLookAndFeel("com.sun.java.swing.plaf.nimbus.NimbusLookAndFeel");
		} catch(Exception e) {
			e.printStackTrace();
		}
	}

	static private JLabel jLabel1;
	static private JLabel jLabel2;
	private JLabel jLabel3;
	private JButton jButton1;
	private JRadioButton jRadioButton2;
	private JRadioButton jRadioButton1;
	private JLabel jLabel4;
	private JPasswordField jPasswordField1;
	private JTextField jTextField2;
	private JTextField jTextField1;
	private JButton jButton2;
	private JLabel verify;
	/**
	* Auto-generated main method to display this JFrame
	*/
	public static void main(String[] args) {
		SwingUtilities.invokeLater(new Runnable() {
			public void run() {
				JFrameLogin inst = new JFrameLogin();
				inst.setLocationRelativeTo(null);
				inst.setVisible(true);
				inst.getContentPane().setLayout(null);
			}
		});
	}
	
	public JFrameLogin() {
		super();
		initGUI();
	}
	
	private void initGUI() {
		try {
			setDefaultCloseOperation(WindowConstants.DISPOSE_ON_CLOSE);
			setResizable(false);
			setTitle("登录QQ");
			getContentPane().setLayout(null);
			{
				jLabel1 = new JLabel();
				getContentPane().add(jLabel1);
				jLabel1.setText("QQ\u53f7");
				jLabel1.setBounds(41, 39, 37, 15);
			}
			{
				jLabel2 = new JLabel();
				getContentPane().add(jLabel2);
				jLabel2.setText("\u5bc6\u7801");
				jLabel2.setBounds(39, 82, 37, 15);
			}
			{
				jLabel3 = new JLabel();
				getContentPane().add(jLabel3);
				jLabel3.setText("\u9a8c\u8bc1");
				jLabel3.setBounds(39, 129, 45, 15);
			}
			{
				verify = new JLabel();
				getContentPane().add(verify);
				verify.setBounds(284, 44, 112, 100);
				verify.setBorder(new LineBorder(new java.awt.Color(0,0,0), 1, false));
			}
			{
				jButton1 = new JButton();
				getContentPane().add(jButton1);
				jButton1.setText("\u666e\u901a\u767b\u5f55");
				jButton1.setBounds(62, 221, 100, 22);
				jButton1.addMouseListener(new MouseAdapter() {
					public void mouseClicked(MouseEvent evt) {
						jButton1MouseClicked(evt);
					}
				});
			}
			{
				jButton2 = new JButton();
				getContentPane().add(jButton2);
				jButton2.setText("\u5e26\u9a8c\u8bc1\u7801\u767b\u5f55");
				jButton2.setBounds(237, 221, 131, 22);
				jButton2.addMouseListener(new MouseAdapter() {
					public void mouseClicked(MouseEvent evt) {
						jButton2MouseClicked(evt);
					}
				});
			}
			{
				jTextField1 = new JTextField();
				getContentPane().add(jTextField1);
				jTextField1.setBounds(93, 36, 160, 21);
				jTextField1.setText("1810956532");
			}
			{
				jTextField2 = new JTextField();
				getContentPane().add(jTextField2);
				jTextField2.setBounds(94, 126, 160, 21);
			}
			{
				jPasswordField1 = new JPasswordField();
				getContentPane().add(jPasswordField1);
				jPasswordField1.setBounds(94, 81, 160, 21);
				jPasswordField1.setText("z123z123");//z123z123
			}
			{
				jLabel4 = new JLabel();
				getContentPane().add(jLabel4);
				jLabel4.setText("\u72b6\u6001");
				jLabel4.setBounds(39, 174, 37, 15);
			}
			{
				jRadioButton1 = new JRadioButton();
				getContentPane().add(jRadioButton1);
				jRadioButton1.setText("\u6211\u5728\u7ebf\u4e0a");
				jRadioButton1.setBounds(94, 172, 87, 18);
				jRadioButton1.setSelected(true);
				jRadioButton1.addActionListener(new ActionListener() {
					public void actionPerformed(ActionEvent evt) {
						jRadioButton1ActionPerformed(evt);
					}
				});
			}
			{
				jRadioButton2 = new JRadioButton();
				getContentPane().add(jRadioButton2);
				jRadioButton2.setText("\u9690\u8eab\u767b\u5f55");
				jRadioButton2.setBounds(193, 172, 87, 18);
				jRadioButton2.addActionListener(new ActionListener() {
					public void actionPerformed(ActionEvent evt) {
						jRadioButton2ActionPerformed(evt);
					}
				});
			}
			pack();
			this.setSize(438, 300);
		} catch (Exception e) {
		    //add your error handling code here
			e.printStackTrace();
		}
	}
	
	private void jRadioButton1ActionPerformed(ActionEvent evt) {
		jRadioButton1.setSelected(true);
		jRadioButton2.setSelected(false);
	}
	
	private void jRadioButton2ActionPerformed(ActionEvent evt) {
		jRadioButton2.setSelected(true);
		jRadioButton1.setSelected(false);
	}
	
	private void jButton1MouseClicked(MouseEvent evt) {
		int result = Public.getQQInstance().login(jTextField1.getText(), jPasswordField1.getText(), jRadioButton1.isSelected() ? 1 : 2);
		String msg = "";
		switch (result) {
		case QQXy.LOGIN_ERROR:
			msg = "程序出错,请重试";
			break;
		case QQXy.LOGIN_SUCCESS:
			JOptionPane.showMessageDialog(null, "登录成功");
			this.setVisible(false);
			new JFrameFriend().setVisible(true);
			return ;
		case QQXy.LOGIN_FAIL:
			msg = "登录失败,请检查QQ号和密码是否正确";
			break;
		case QQXy.LOGIN_VERIFY:
			msg = "需要验证码";
			verify.setIcon(new ImageIcon(Public.getQQInstance().getVerifyCode()));
		}
		JOptionPane.showMessageDialog(null, msg);
	}
	
	private void jButton2MouseClicked(MouseEvent evt) {
		int result = Public.getQQInstance().login(jTextField2.getText());
		String msg = "";
		switch (result) {
		case QQXy.LOGIN_ERROR:
			msg = "程序出错,请重试";
			break;
		case QQXy.LOGIN_SUCCESS:
			JOptionPane.showMessageDialog(null, "登录成功");
			this.setVisible(false);
			new JFrameFriend().setVisible(true);
			return ;
		case QQXy.LOGIN_FAIL:
			msg = "登录失败,请检查QQ号和密码是否正确";
			break;
		case QQXy.LOGIN_VERIFY:
			msg = "验证码错误";
			verify.setIcon(new ImageIcon(Public.getQQInstance().getVerifyCode()));
		}
		JOptionPane.showMessageDialog(null, msg);
	}

}
