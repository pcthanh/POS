
﻿using POSEZ2U.Class;
﻿using POSEZ2U.Properties;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace POSEZ2U
{
    public partial class frmSettingAll : Form
    {
        public frmSettingAll()
        {
            InitializeComponent();
           
        }
        private void btnProduct_Click(object sender, EventArgs e)
        {
            frmMenuSetting frm = new frmMenuSetting();
            frm.ShowDialog();
        }

        private void btnUserSetting_Click(object sender, EventArgs e)
        {
            frmUserSetting frm = new frmUserSetting();
            frm.ShowDialog();
        }

        private void btnPrinter_Click(object sender, EventArgs e)
        {
            frmSettingPrint frm = new frmSettingPrint();
            frm.ShowDialog();
        }

        private void btnLogOut_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnDatabase_Click(object sender, EventArgs e)
        {
            frmBackupData frm = new frmBackupData();
            frm.ShowDialog();
        }
        private void frmSettingAll_Load(object sender, EventArgs e)
        {
            var userid = UserLoginModel.UserLoginInfo.StaffID;
            if (userid == 0)
            {
                Form1 frm = new Form1();
                this.Close();
                frm.ShowDialog();
            }
            else
            {
                this.lblNameUser.Text = UserLoginModel.UserLoginInfo.Fname;
            }
        }

        private void panel5_Paint(object sender, PaintEventArgs e)
        {

        }

        private void btnAccount_Click(object sender, EventArgs e)
        {
            frmAccountDebit frm = new frmAccountDebit();
            frm.ShowDialog();
        }

        private void ucDatabase_Load(object sender, EventArgs e)
        {

        }
    }
}
