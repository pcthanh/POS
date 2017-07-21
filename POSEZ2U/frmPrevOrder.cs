using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using ServicePOS.Model;
using ServicePOS;
using SystemLog;
using POSEZ2U.UC;

namespace POSEZ2U
{
    public partial class frmPrevOrder : Form
    {
        public frmPrevOrder()
        {
            InitializeComponent();
        }
        POSEZ2U.Class.MoneyFortmat money = new Class.MoneyFortmat(POSEZ2U.Class.MoneyFortmat.AU_TYPE);
        public int OrderID;
        int currenPage = 1;
        int totalPages = 0;
        int pageSize = 24;
        private IOrderService _orderService;
        private IOrderService OrderService
        {
            get { return _orderService ?? (_orderService = new OrderService()); }
            set { _orderService = value; }
        }
        private void LoadPrevOrder()
        {
            try
            {
                flpPrevOrder.Controls.Clear();
                var list = OrderService.GetPrevOrder(currenPage);
                foreach (OrderDateModel Order in list)
                {
                    UCPrevOrder ucPrev = new UCPrevOrder();
                    ucPrev.lblOrderID.Text = Order.OrderID.ToString();
                    ucPrev.lblTotal.Text = money.Format2(Convert.ToDouble(Order.TotalAmount));
                    ucPrev.Tag = Order;
                    ucPrev.Click += ucPrev_Click;
                    flpPrevOrder.Controls.Add(ucPrev);
                }
            }
            catch (Exception ex)
            {
                LogPOS.WriteLog("frmPrevOrder:::::::::::::::::::LoadPrevOrder:::::::::::::::::::::" + ex.Message);
            }
        }

        void ucPrev_Click(object sender, EventArgs e)
        {
            try
            {
                UCPrevOrder ucPrev = (UCPrevOrder)sender;
                OrderDateModel Order = (OrderDateModel)ucPrev.Tag;
                OrderID = Order.OrderID;
                this.DialogResult = System.Windows.Forms.DialogResult.OK;
            }
            catch (Exception ex)
            {
                LogPOS.WriteLog("frmPrevOrder:::::::::::::::::::::ucPrev_Click::::::::::::::::::::" + ex.Message);
            }
        }
         
        private void frmPrevOrder_Load(object sender, EventArgs e)
        {
            this.TotalPage();
            this.LoadPrevOrder();
        }
        private void TotalPage()
        {
            try
            {
                var data = OrderService.GetPrevOrderTotalPages();
                totalPages =(int) Math.Ceiling(data.Count() / (decimal)pageSize);
            }
            catch (Exception ex)
            {
                
            }
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            this.DialogResult = System.Windows.Forms.DialogResult.Cancel;
        }

        private void bntNext_Click(object sender, EventArgs e)
        {
            if (currenPage < totalPages)
            {
                currenPage += 1;
                this.LoadPrevOrder();

            }
        }

        private void btnBack_Click(object sender, EventArgs e)
        {
            if (currenPage > 1)
            {
                currenPage = currenPage - 1;
                this.LoadPrevOrder();
            }
        }
    }
}
