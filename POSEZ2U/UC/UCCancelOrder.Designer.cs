﻿namespace POSEZ2U.UC
{
    partial class UCCancelOrder
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(UCCancelOrder));
            this.panel1 = new System.Windows.Forms.Panel();
            this.pcCancelORD = new System.Windows.Forms.PictureBox();
            this.panel3 = new System.Windows.Forms.Panel();
            this.panel2 = new System.Windows.Forms.Panel();
            this.lblCancelORD = new System.Windows.Forms.Label();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pcCancelORD)).BeginInit();
            this.panel2.SuspendLayout();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.pcCancelORD);
            this.panel1.Controls.Add(this.panel3);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(68, 27);
            this.panel1.TabIndex = 0;
            // 
            // pcCancelORD
            // 
            this.pcCancelORD.Dock = System.Windows.Forms.DockStyle.Fill;
            this.pcCancelORD.Image = ((System.Drawing.Image)(resources.GetObject("pcCancelORD.Image")));
            this.pcCancelORD.Location = new System.Drawing.Point(0, 10);
            this.pcCancelORD.Name = "pcCancelORD";
            this.pcCancelORD.Size = new System.Drawing.Size(68, 17);
            this.pcCancelORD.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.pcCancelORD.TabIndex = 1;
            this.pcCancelORD.TabStop = false;
            this.pcCancelORD.Click += new System.EventHandler(this.UCCancelOrder_Click);
            // 
            // panel3
            // 
            this.panel3.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel3.Location = new System.Drawing.Point(0, 0);
            this.panel3.Name = "panel3";
            this.panel3.Size = new System.Drawing.Size(68, 10);
            this.panel3.TabIndex = 0;
            // 
            // panel2
            // 
            this.panel2.Controls.Add(this.lblCancelORD);
            this.panel2.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panel2.Location = new System.Drawing.Point(0, 27);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(68, 25);
            this.panel2.TabIndex = 1;
            // 
            // lblCancelORD
            // 
            this.lblCancelORD.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblCancelORD.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblCancelORD.ForeColor = System.Drawing.Color.White;
            this.lblCancelORD.Location = new System.Drawing.Point(0, 0);
            this.lblCancelORD.Name = "lblCancelORD";
            this.lblCancelORD.Size = new System.Drawing.Size(68, 25);
            this.lblCancelORD.TabIndex = 0;
            this.lblCancelORD.Text = "CANCEL";
            this.lblCancelORD.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            this.lblCancelORD.Click += new System.EventHandler(this.UCCancelOrder_Click);
            // 
            // UCCancelOrder
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(50)))), ((int)(((byte)(33)))), ((int)(((byte)(0)))));
            this.Controls.Add(this.panel2);
            this.Controls.Add(this.panel1);
            this.Name = "UCCancelOrder";
            this.Size = new System.Drawing.Size(68, 52);
            this.panel1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.pcCancelORD)).EndInit();
            this.panel2.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.Panel panel3;
        private System.Windows.Forms.Label lblCancelORD;
        private System.Windows.Forms.PictureBox pcCancelORD;
    }
}
