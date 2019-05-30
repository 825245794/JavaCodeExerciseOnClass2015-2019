package app;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;

import java.util.List;
import javax.swing.JButton;
import javax.swing.JScrollPane;
import javax.swing.JTree;

import javax.swing.WindowConstants;
import javax.swing.event.TreeSelectionEvent;
import javax.swing.event.TreeSelectionListener;
import javax.swing.SwingUtilities;
import javax.swing.tree.DefaultMutableTreeNode;
import javax.swing.tree.DefaultTreeModel;
import javax.swing.tree.TreeModel;
import javax.swing.tree.TreePath;

import qq.Friend;
import qq.Group;
import qq.QQXy;

/**
 * This code was edited or generated using CloudGarden's Jigloo SWT/Swing GUI
 * Builder, which is free for non-commercial use. If Jigloo is being used
 * commercially (ie, by a corporation, company or business for any purpose
 * whatever) then you should purchase a license for each developer using Jigloo.
 * Please visit www.cloudgarden.com for details. Use of Jigloo implies
 * acceptance of these licensing terms. A COMMERCIAL LICENSE HAS NOT BEEN
 * PURCHASED FOR THIS MACHINE, SO JIGLOO OR THIS CODE CANNOT BE USED LEGALLY FOR
 * ANY CORPORATE OR COMMERCIAL PURPOSE.
 */
public class JFrameFriend extends javax.swing.JFrame {
	private JTree tree;
	private JScrollPane jScrollPane1;
	private JButton jButton1;

	private List<Group> groups;

	private QQXy qq = Public.getQQInstance();

	{
		// Set Look & Feel
		try {
			javax.swing.UIManager
					.setLookAndFeel("com.sun.java.swing.plaf.nimbus.NimbusLookAndFeel");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * Auto-generated main method to display this JFrame
	 */

	public JFrameFriend() {
		super();
		initGUI();
		new Thread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				getGroups();
			}
		}).start();
	}

	private void getGroups() {
		setTitle("请稍候,正在获取好友列表..");
		DefaultMutableTreeNode root = new DefaultMutableTreeNode("好友分组");
		groups = qq.getGroups();
		for (Group g : groups) {
			DefaultMutableTreeNode groupNode = new DefaultMutableTreeNode(
					g.getName() + g.getNum());
			List<Friend> list = qq.getFriends(g);
			for (Friend f : list) {
				groupNode.add(new DefaultMutableTreeNode("(" + f.getQq() + ")"
						+ f.getName()));
			}
			root.add(groupNode);
		}
		tree.setModel(new DefaultTreeModel(root));
		tree.setVisible(true);
		setTitle("3GQQ");
	}

	private void initGUI() {
		try {
			setDefaultCloseOperation(WindowConstants.DISPOSE_ON_CLOSE);
			setResizable(false);
			getContentPane().setLayout(null);
			pack();
			this.setSize(351, 498);
			setLocationRelativeTo(null);
			this.addWindowListener(new WindowAdapter() {
				public void windowClosing(WindowEvent evt) {
					thisWindowClosing(evt);
				}
			});
			{
				jScrollPane1 = new JScrollPane();
				getContentPane().add(jScrollPane1);
				jScrollPane1.setBounds(16, 13, 312, 403);
				{
					tree = new JTree();
					jScrollPane1.setViewportView(tree);
					tree.setVisible(false);
					tree.setBounds(259, 78, 132, 229);
					tree.setPreferredSize(new java.awt.Dimension(304, 407));
					tree.addTreeSelectionListener(new TreeSelectionListener() {
						public void valueChanged(TreeSelectionEvent evt) {
							treeValueChanged(evt);
						}
					});
				}
			}
			{
				jButton1 = new JButton();
				getContentPane().add(jButton1);
				jButton1.setText("\u5237\u65b0\u5217\u8868");
				jButton1.setBounds(20, 426, 76, 30);
				jButton1.addMouseListener(new MouseAdapter() {
					public void mouseClicked(MouseEvent evt) {
						jButton1MouseClicked(evt);
					}
				});
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private void treeValueChanged(TreeSelectionEvent evt) {
		DefaultMutableTreeNode treeNode = (DefaultMutableTreeNode) tree
				.getLastSelectedPathComponent();
	
		if (treeNode.getParent() == null || evt.getNewLeadSelectionPath().toString().equals("[好友分组]")) {
			return;
		}
		
		if (treeNode.getParent().toString().equals("好友分组")) {
			// 点击了具体分组

		} else {
			// 点击了具体好友
			new JFrameMessage("与"+treeNode.toString()+"聊天中").setVisible(true);
			
		}

	}
	
	private void thisWindowClosing(WindowEvent evt) {
		qq.logout();
		System.exit(0);
	}
	
	private void jButton1MouseClicked(MouseEvent evt) {
		new Thread(new Runnable() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				getGroups();
			}
		}).start();
	}

}
