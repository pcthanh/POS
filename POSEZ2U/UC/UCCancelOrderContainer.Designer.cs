namespace POSEZ2U.UC
{
    partial class UCCancelOrderContainer
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
            this.ucCancelOrderItem1 = new POSEZ2U.UC.UCCancelOrderItem();
            this.panel1 = new System.Windows.Forms.Panel();
            this.flpCancelOrder = new System.Windows.Forms.FlowLayoutPanel();
            this.panel1.SuspendLayout();
            this.SuspendLayout();
            // 
            // ucCancelOrderItem1
            // 
            this.ucCancelOrderItem1.BackColor = System.Drawing.Color.Black;
            this.ucCancelOrderItem1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.ucCancelOrderItem1.Location = new System.Drawing.Point(0, 0);
            this.ucCancelOrderItem1.Name = "ucCancelOrderItem1";
            this.ucCancelOrderItem1.Size = new System.Drawing.Size(814, 32);
            this.ucCancelOrderItem1.TabIndex = 0;
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.ucCancelOrderItem1);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(814, 32);
            this.panel1.TabIndex = 1;
            // 
            // flpCancelOrder
            // 
            this.flpCancelOrder.AutoScroll = true;
            this.flpCancelOrder.Dock = System.Windows.Forms.DockStyle.Fill;
            this.flpCancelOrder.Location = new System.Drawing.Point(0, 32);
            this.flpCancelOrder.Name = "flpCancelOrder";
            this.flpCancelOrder.Size = new System.Drawing.Size(814, 403);
            this.flpCancelOrder.TabIndex = 2;
            // 
            // UCCancelOrderContainer
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.White;
            this.Controls.Add(this.flpCancelOrder);
            this.Controls.Add(this.panel1);
            this.Name = "UCCancelOrderContainer";
            this.Size = new System.Drawing.Size(814, 435);
            this.panel1.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private UCCancelOrderItem ucCancelOrderItem1;
        private System.Windows.Forms.Panel panel1;
        public System.Windows.Forms.FlowLayoutPanel flpCancelOrder;
    }
}
