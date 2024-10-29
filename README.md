# CPU Performance Monitor

## Overview

The **CPU Performance Monitor** is a C# Windows Forms application designed to provide real-time insights into system performance. It monitors running processes, tracks CPU usage, and logs performance data into a SQL Server database for further analysis.

## Features

- **Real-Time Process Monitoring**: Displays a list of currently running processes on the system.
- **CPU Usage Tracking**: Continuously measures and updates CPU usage percentage.
- **Database Integration**: Stores CPU performance metrics in a SQL Server database, creating a `CpuPerformance` table if it doesn't exist.
- **Automated Reporting**: Generates a performance report summarizing maximum, minimum, average CPU usage, and total runtime upon application closure.
- **User-Friendly Interface**: Built with Windows Forms for a straightforward user experience.

## Technology Stack

- **Programming Language**: C#
- **Framework**: .NET Framework (Windows Forms)
- **Database**: SQL Server
- **Libraries**: System.Diagnostics for performance monitoring

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/cpu-performance-monitor.git
   cd cpu-performance-monitor
