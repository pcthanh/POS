﻿using System;
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
    public partial class frmAddSeat : Form
    {
        public frmAddSeat()
        {
            InitializeComponent();
        }
        public int NumberSeat = 0;
        private void btnOK_Click(object sender, EventArgs e)
        {
            if (txtNumberSeat.Text != string.Empty)
            {
                NumberSeat = Convert.ToInt32(this.txtNumberSeat.Text);
                this.DialogResult = System.Windows.Forms.DialogResult.OK;
            }
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            this.DialogResult=System.Windows.Forms.DialogResult.Cancel;
        }
    }
}