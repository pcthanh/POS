namespace POSEZ2U.UC
{
    partial class UCListVoidItem
    {
        /// <summary> 
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary> 
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Component Designer generated code

        /// <summary> 
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.panel1 = new System.Windows.Forms.Panel();
            this.ucVoidItemTitle1 = new POSEZ2U.UC.UCVoidItemTitle();
            this.panel2 = new System.Windows.Forms.Panel();
            this.flpVoidList = new System.Windows.Forms.FlowLayoutPanel();
            this.panel1.SuspendLayout();
            this.panel2.SuspendLayout();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.ucVoidItemTitle1);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(711, 34);
            this.panel1.TabIndex = 0;
            // 
            // ucVoidItemTitle1
            // 
            this.ucVoidItemTitle1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.ucVoidItemTitle1.Location = new System.Drawing.Point(0, 0);
            this.ucVoidItemTitle1.Name = "ucVoidItemTitle1";
            this.ucVoidItemTitle1.Size = new System.Drawing.Size(711, 34);
            this.ucVoidItemTitle1.TabIndex = 0;
            // 
            // panel2
            // 
            this.panel2.Controls.Add(this.flpVoidList);
            this.panel2.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panel2.Location = new System.Drawing.Point(0, 34);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(711, 341);
            this.panel2.TabIndex = 1;
            // 
            // flpVoidList
            // 
            this.flpVoidList.AutoScroll = true;
            this.flpVoidList.Dock = System.Windows.Forms.DockStyle.Fill;
            this.flpVoidList.Location = new System.Drawing.Point(0, 0);
            this.flpVoidList.Name = "flpVoidList";
            this.flpVoidList.Size = new System.Drawing.Size(711, 341);
            this.flpVoidList.TabIndex = 0;
            // 
            // UCListVoidItem
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.White;
            this.Controls.Add(this.panel2);
            this.Controls.Add(this.panel1);
            this.Name = "UCListVoidItem";
            this.Size = new System.Drawing.Size(711, 375);
            this.panel1.ResumeLayout(false);
            this.panel2.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Panel panel2;
        public System.Windows.Forms.FlowLayoutPanel flpVoidList;
        private UCVoidItemTitle ucVoidItemTitle1;
    }
}
