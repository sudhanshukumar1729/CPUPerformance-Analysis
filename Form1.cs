using System;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Windows.Forms;
namespace TaskManager_DataBase
{
 public partial class Form1 : Form
 {
 private string connectionString = "Data Source=DESKTOP7KE8K8N\\SQLEXPRESS;Initial Catalog=manager;Integrated Security=True";
 private PerformanceCounter cpuCounter;
 public Form1()
 {
 InitializeComponent();
 InitializePerformanceCounter();
 UpdateTaskList();
 UpdateCpuPerformance();
 }
 private void InitializePerformanceCounter()
 {
 cpuCounter = new PerformanceCounter("Processor", "% Processor Time", "_Total");
 // public PerformanceCounter(string categoryName, string counterName, string
instanceName)
 // : this(categoryName, counterName, instanceName, readOnly: true)

 cpuCounter.NextValue(); // Call NextValue once to initialize the counter
 }
 private void UpdateTaskList()
 {
 listBoxTasks.Items.Clear();
 Process[] processes = Process.GetProcesses();
 foreach (Process process in processes)
 {
 listBoxTasks.Items.Add($"{process.ProcessName} (ID: {process.Id})");
 }
 }
CPU Performance Monitor
Project Report 2024
private void UpdateCpuPerformance()
{
float cpuUsage = cpuCounter.NextValue();
labelCpuUsage.Text = $"CPU Usage: {cpuUsage:F2}%";
if (cpuUsage > 73.93409729)//73.93409729
{
StoreCpuPerformanceInDatabase(cpuUsage);
}
}
private void StoreCpuPerformanceInDatabase(float cpuUsage)
 {
 try
 {
 using (SqlConnection connection = new SqlConnection(connectionString))
 {
 connection.Open();
 string query = "INSERT INTO CpuPerformance (Timestamp, CpuUsage) VALUES
(@Timestamp, @CpuUsage)";
 using (SqlCommand command = new SqlCommand(query, connection))
 {
 command.Parameters.AddWithValue("@Timestamp", DateTime.Now);
 command.Parameters.AddWithValue("@CpuUsage", cpuUsage);
 command.ExecuteNonQuery();
 }
 }
 }
 catch (Exception ex)
 {
 MessageBox.Show($"Error storing CPU performance in the database: {ex.Message}",
"Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
 }
 }
CPU Performance Monitor
Project Report 2024
private void timer1_Tick(object sender, EventArgs e)
{
UpdateTaskList();
UpdateCpuPerformance();
}
private void Form1_Load(object sender, EventArgs e)
{
InitializeDatabase(); // Call this to create the database table if it doesn't exist
timer1.Start();
}
private void InitializeDatabase()
 {
 try
 {
 using (SqlConnection connection = new SqlConnection(connectionString))
 {
 connection.Open();
 string createTableQuery = @"
 USE manager;
 IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE
TABLE_NAME = 'CpuPerformance')
 BEGIN
 CREATE TABLE CpuPerformance (
 Id INT PRIMARY KEY IDENTITY(1,1),
 Timestamp DATETIME NOT NULL,
 CpuUsage FLOAT NOT NULL
 );
 END ";
 using (SqlCommand command = new SqlCommand(createTableQuery, connection))
 {
 command.ExecuteNonQuery();
 }
 }
 }
 catch (Exception ex)
 {
 MessageBox.Show($"Error initializing database: {ex.Message}", "Error",
MessageBoxButtons.OK, MessageBoxIcon.Error);
 }
 }
CPU Performance Monitor
Project Report 2024
private void GenerateReport()
{
try
{
using (SqlConnection connection = new SqlConnection(connectionString))
{
connection.Open();
string query = "SELECT MAX(CpuUsage) AS MaxCpuUsage, MIN(CpuUsage) AS
MinCpuUsage, AVG(CpuUsage) AS AvgCpuUsage, DATEDIFF(SECOND,
MIN(Timestamp), MAX(Timestamp)) AS TotalRunTime FROM CpuPerformance";
using (SqlCommand command = new SqlCommand(query, connection))
{
SqlDataReader reader = command.ExecuteReader();
if (reader.Read())
{
float maxCpuUsage = Convert.ToSingle(reader["MaxCpuUsage"]);
float minCpuUsage = Convert.ToSingle(reader["MinCpuUsage"]);
float avgCpuUsage = Convert.ToSingle(reader["AvgCpuUsage"]);
int totalRunTimeInSeconds = Convert.ToInt32(reader["TotalRunTime"]);
TimeSpan totalRunTime =
TimeSpan.FromSeconds(totalRunTimeInSeconds);
MessageBox.Show($"Report:\n\nMaximum CPU Usage:
{maxCpuUsage:F2}%\nMinimum CPU Usage: {minCpuUsage:F2}%\nAverage CPU Usage:
{avgCpuUsage:F2}%\nTotal Run Time: {totalRunTime}", "Report",
MessageBoxButtons.OK, MessageBoxIcon.Information);
}
reader.Close();
}
}
}
CPU Performance Monitor
Project Report 2024
catch (Exception ex)
{
MessageBox.Show($"Error generating report: {ex.Message}", "Error",
MessageBoxButtons.OK, MessageBoxIcon.Error);
}
}
// Modify the Form1_FormClosing method to call GenerateReport before
closing the application
private void Form1_FormClosing(object sender, FormClosingEventArgs e)
{
timer1.Stop();
cpuCounter.Dispose();
GenerateReport(); // Call this function to generate the report
}
}
}