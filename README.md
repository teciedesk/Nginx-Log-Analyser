# Nginx-Log-Analyzer

## 📌 Overview  
`nginx-log-analyzer.sh` is a simple **command-line tool** that processes **Nginx access logs** to extract useful insights.  
It provides statistics on the **top IP addresses, most requested paths, response codes, and user agents**.  
The tool can **filter logs by a specific date** and **save results to a file** for future reference.  

## 🎯 Features  
- ✅ **Top 5 IP addresses** with the most requests  
- ✅ **Top 5 most requested paths**  
- ✅ **Top 5 response status codes**  
- ✅ **Top 5 user agents**  
- ✅ **Filter logs by a specific date** (`DD/Mon/YYYY` format)  
- ✅ **Save analysis results to a timestamped log file**  

## 🛠️ Prerequisites  
- Linux system (Ubuntu, Debian, CentOS, etc.)  
- Bash shell  
- Nginx access log file (`nginx-access.log`)  

## 🚀 Installation & Usage  

1️⃣ Make the script executable
chmod +x nginx-log-analyzer.sh

2️⃣ Run the script
Analyze the entire log file
./nginx-log-analyzer.sh nginx-access.log

Analyze logs for a specific date (e.g., Feb 15, 2025)
./nginx-log-analyzer.sh nginx-access.log "15/Feb/2025"


3️⃣ View the saved analysis file
The output is stored in a timestamped file (nginx-analysis-YYYYMMDD_HHMMSS.log).
You can check the results using:
cat nginx-analysis-20250215_103000.log

📂 Sample Output
📅 Filtering logs for date: 15/Feb/2025
🔍 Analyzing log file: nginx-access.log
------------------------------------
🔹 Top 5 IP addresses:
      2 192.168.1.1
      1 192.168.1.4
      1 192.168.1.3
      1 192.168.1.2
------------------------------------
🔹 Top 5 most requested paths:
      1 /index.html
      1 /home.html
      1 /contact.html
      1 /api/login
      1 /about.html
------------------------------------
✅ Log analysis completed!
📂 Analysis saved to: nginx-analysis-20250215_103000.log


📜 License
This script is open-source and free to use.

👨‍💻 Author
Developed by OLUWATOBI OSIBERU



https://github.com/teciedesk/Nginx-Log-Analyser.git

https://roadmap.sh/projects/nginx-log-analyser