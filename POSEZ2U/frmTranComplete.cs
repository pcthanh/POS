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
    public partial class frmTranComplete : Form
    {
        private string Total;
        private string Tendered;
        private string Change;
        public frmTranComplete(string total,string tender,string change)
        {
            InitializeComponent();
            Total = total;
            Tendered= tender;
            Change = change;
        }

        private void frmTranComplete_Load(object sender, EventArgs e)
        {
            lblTotal.Text = Total;
            lblTendered.Text = Tendered;
            lblChange.Text = Change;
        }

        private void btnOK_Click(object sender, EventArgs e)
        {
            DialogResult = System.Windows.Forms.DialogResult.OK;
        }
    }
}
