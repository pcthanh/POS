
﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using POSEZ2U.Class;
using POSEZ2U.UC;
using ServicePOS;
using ServicePOS.Model;

namespace POSEZ2U
{
    public partial class frmMenuAdd : Form
    {

        #region Variables & Constructors
        private ICatalogueService _catalogeService;
        private ICatalogueService CatalogeService
        {
            get { return _catalogeService ?? (_catalogeService = new CatalogueService()); }
            set { _catalogeService = value; }
        }
        #endregion


        public int catalogueid = 0;
        public List<CategoryModel> listmap= new List<CategoryModel>();
        public List<CategoryModel> listall = new List<CategoryModel>();
        private int indexOfItem = -1;
        private UCMenuAdd ucMenuAdd;
        private List<CategoryModel> lstPosition = new List<CategoryModel>();
        public frmMenuAdd(int _catalogueid)
        {
            InitializeComponent();
            catalogueid = _catalogueid;
            listmap = CatalogeService.GetCategoryByCatalogueID(catalogueid).ToList();
            listall = CatalogeService.GetAllListCategoryByCatalogue(catalogueid).ToList();
            flpAllitems.AutoScroll = true;
        }
        //string[] str = { "Green Tea" };
        private void LoadThisGroupItems()
        {
            flpThisgroupitems.Controls.Clear();

            for (int i = 0; i < listmap.Count; i++)
            {
                UCMenuAdd ucMenuAdd = new UCMenuAdd();
                ucMenuAdd.lblGroupName.Text = listmap[i].CategoryName;
                ucMenuAdd.Tag = listmap[i];
                ucMenuAdd.Click += flpThisgroupitems_Click;
                flpThisgroupitems.Controls.Add(ucMenuAdd);
            }
        }
        private void LoadAllItem()
        {
            flpAllitems.Controls.Clear();
            foreach (var item in listall)
            {
                    UCMenuAdd ucMenuAddAll = new UCMenuAdd();
                    ucMenuAddAll.lblGroupName.Text = item.CategoryName;
                    ucMenuAddAll.Tag = item;
                    ucMenuAddAll.Click += ucMenuAddAll_Click;
                    flpAllitems.Controls.Add(ucMenuAddAll);
            }
        }

        void ucMenuAddAll_Click(object sender, EventArgs e)
        {
            UCMenuAdd ucMenuAll = (UCMenuAdd)sender;
            if (ucMenuAll.BackColor == Color.FromArgb(0, 102, 204))
            {
                ucMenuAll.BackColor = DefaultBackColor;
                ucMenuAll.ForeColor = DefaultForeColor;
            }
            else
            {
                ucMenuAll.BackColor = Color.FromArgb(0, 102, 204);
                ucMenuAll.ForeColor = Color.FromArgb(255, 255, 255);
            }
            
        }
        void flpThisgroupitems_Click(object sender, EventArgs e)
        {
            UCMenuAdd ucMenuAll = (UCMenuAdd)sender;
            indexOfItem = flpThisgroupitems.Controls.IndexOf(ucMenuAll);
            ucMenuAdd = ucMenuAll;
            if (ucMenuAll.BackColor == Color.FromArgb(0, 102, 204))
            {
                ucMenuAll.BackColor = DefaultBackColor;
                ucMenuAll.ForeColor = DefaultForeColor;
            }
            else
            {
                ucMenuAll.BackColor = Color.FromArgb(0, 102, 204);
                ucMenuAll.ForeColor = Color.FromArgb(255, 255, 255);
            }
        }
        private void btnCancel_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void frmMenuAdd_Load(object sender, EventArgs e)
        {
            LoadThisGroupItems();
            LoadAllItem();
        }

        private void btnLeft_Click(object sender, EventArgs e)
        {
            foreach (Control ctr in flpAllitems.Controls)
            {
                if (ctr.BackColor == Color.FromArgb(0, 102, 204))
                {
                    UCMenuAdd ucMenuGet = (UCMenuAdd)ctr;
                    CategoryModel itemlef = (CategoryModel) (ucMenuGet.Tag);
                    CategoryModel item = new CategoryModel();
                    item.CategoryID = itemlef.CategoryID;
                    item.CategoryName = itemlef.CategoryName;
                    listmap.Add(item);
                    var index = -1;
                    for(int i=0;i<listall.Count;i++)
                    {
                        if (listall[i].CategoryID == item.CategoryID)
                        {
                            index = i;
                        }
                    }
                    if (index> - 1)
                    {
                        listall.RemoveAt(index);
                    }
                }
            }
            LoadThisGroupItems();
            LoadAllItem();
        }

        private void btnOk_Click(object sender, EventArgs e)
        {
            this.UpdatePosition();
            var result = CatalogeService.SaveMapCategoryToCatalogue(listmap, catalogueid,0);
            if (result == 1)
            {
                this.DialogResult = System.Windows.Forms.DialogResult.OK;

            }
            else
            {
                MessageBox.Show("Save data group fail.", "Messenger");
            }
            
           
        }

        private void btnRight_Click(object sender, EventArgs e)
        {
            foreach (Control ctr in flpThisgroupitems.Controls)
            {
                if (ctr.BackColor == Color.FromArgb(0, 102, 204))
                {
                    UCMenuAdd ucMenuGet = (UCMenuAdd)ctr;
                    CategoryModel itemlef = (CategoryModel)(ucMenuGet.Tag);
                    CategoryModel item = new CategoryModel();
                    item.CategoryID = itemlef.CategoryID;
                    item.CategoryName = itemlef.CategoryName;
                    listall.Add(item);
                    var index = -1;
                    for (int i = 0; i < listmap.Count; i++)
                    {
                        if (listmap[i].CategoryID == item.CategoryID)
                        {
                            index = i;
                        }
                    }
                    if (index > -1)
                    {
                        listmap.RemoveAt(index);
                    }
                }
            }
            LoadThisGroupItems();
            LoadAllItem();
        }

        private void btnAllLeft_Click(object sender, EventArgs e)
        {
            foreach (var item in listall)
            {
                listmap.Add(item);
            }
            listall=new List<CategoryModel>();
            LoadThisGroupItems();
            LoadAllItem();
        }

        private void btnAllRight_Click(object sender, EventArgs e)
        {
            foreach (var item in listmap)
            {
                listall.Add(item);
            }
            listmap = new List<CategoryModel>();
            LoadThisGroupItems();
            LoadAllItem();
        }

        private void txtSearch_TextChanged(object sender, EventArgs e)
        {
            try
            {
                var listAllSearch = new List<CategoryModel>();
                listall = new List<CategoryModel>();
                listAllSearch = CatalogeService.GetSearchAllListCategoryByCatalogue(catalogueid, txtSearch.Text).ToList();
                flpAllitems.AutoScroll = true;
                List<string> str = new List<string>();
                for (var i = 0; i < listmap.Count(); i++)
                {
                    str.Add(listmap[i].CategoryName);
                }
                foreach (var item in listAllSearch)
                {
                    if (!str.Contains(item.CategoryName))
                    {
                        listall.Add(item);
                    }
                }
                LoadAllItem();
            }
            catch (Exception ex)
            {
                SystemLog.LogPOS.WriteLog("frmMenuAdd:::::::::::::::::::txtSearch_TextChanged::::::::::::::::::::::::::" + ex.Message);
            }
        }

        private void btnUp_Click(object sender, EventArgs e)
        {
            if (indexOfItem > 0)
            {
                CategoryModel item = (CategoryModel)(ucMenuAdd.Tag);
                flpThisgroupitems.Controls.SetChildIndex(ucMenuAdd, indexOfItem - 1);

                indexOfItem = flpThisgroupitems.Controls.IndexOf(ucMenuAdd);
            }
        }

        private void btnDown_Click(object sender, EventArgs e)
        {
            int total = flpThisgroupitems.Controls.Count;
            if (indexOfItem > 0 && indexOfItem < total)
            {
                CategoryModel item = (CategoryModel)(ucMenuAdd.Tag);
                flpThisgroupitems.Controls.SetChildIndex(ucMenuAdd, indexOfItem + 1);

                indexOfItem = flpThisgroupitems.Controls.IndexOf(ucMenuAdd);
            }
        }
        private void UpdatePosition()
        {
            for (int i = 0; i < flpThisgroupitems.Controls.Count; i++)
            {
                CategoryModel item = (CategoryModel)(flpThisgroupitems.Controls[i].Tag);
                item.Position= flpThisgroupitems.Controls.IndexOf(flpThisgroupitems.Controls[i]);
                lstPosition.Add(item);
            }
            for (int j = 0; j < lstPosition.Count; j++)
            {
                CatalogeService.UpdatePostionCategory(lstPosition[j]);
            }
        }
    }
}

