namespace TaskManager_DataBase
{
partial class Form1
{
private System.ComponentModel.IContainer components = null;
protected override void Dispose(bool disposing)
{
if (disposing && (components != null))
{
components.Dispose();
}
base.Dispose(disposing);
}
private void InitializeComponent()
{
this.components = new System.ComponentModel.Container();
this.listBoxTasks = new System.Windows.Forms.ListBox();
this.labelCpuUsage = new System.Windows.Forms.Label();
this.timer1 = new System.Windows.Forms.Timer(this.components);
this.SuspendLayout();
//
// listBoxTasks
//
this.listBoxTasks.FormattingEnabled = true;
this.listBoxTasks.Location = new System.Drawing.Point(12, 12);
this.listBoxTasks.Name = "listBoxTasks";
this.listBoxTasks.Size = new System.Drawing.Size(200, 200);
this.listBoxTasks.TabIndex = 0;
//
// labelCpuUsage
//
this.labelCpuUsage.AutoSize = true;
this.labelCpuUsage.Location = new System.Drawing.Point(12, 220);
this.labelCpuUsage.Name = "labelCpuUsage";
this.labelCpuUsage.Size = new System.Drawing.Size(82, 13);
this.labelCpuUsage.TabIndex = 1;
this.labelCpuUsage.Text = "CPU Usage: 0%";
//
// timer1
//
this.timer1.Tick += new System.EventHandler(this.timer1_Tick);
//
// Form1
//
this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
this.ClientSize = new System.Drawing.Size(224, 251);
this.Controls.Add(this.labelCpuUsage);
this.Controls.Add(this.listBoxTasks);
this.Name = "Form1";
this.Text = "Task Manager";
this.Load += new System.EventHandler(this.Form1_Load);
this.FormClosing += new
System.Windows.Forms.FormClosingEventHandler(this.Form1_FormClosing);
this.ResumeLayout(false);
this.PerformLayout();
}
private System.Windows.Forms.ListBox listBoxTasks;
private System.Windows.Forms.Label labelCpuUsage;
private System.Windows.Forms.Timer timer1;
}
}
