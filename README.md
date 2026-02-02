# 🔐 DevSecOps-Enabled SOC Monitoring and Automated Incident Response System

# Project Overview
This project implements a small-scale Security Operations Center (SOC) using open-source tools on Debian Linux. It demonstrates real-time security monitoring, automated incident response, and DevSecOps practices.

The system monitors SSH authentication activity, detects brute-force attacks, visualizes logs and system metrics, and automatically blocks malicious IP addresses.

---

# Objectives
- Monitor SSH security logs in real time
- Detect suspicious login attempts
- Automate incident response using Fail2Ban
- Visualize logs, CPU usage, and memory usage
- Apply DevSecOps principles using Git

---

# Architecture Overview
**Flow:**

SSH Logs → Promtail → Loki → Grafana → Alerts
                         ↘ Fail2Ban (Auto IP Ban)

---

# Technologies Used

| Technology | Purpose |
|----------|--------|
| Debian Linux | Base operating system |
| SSH | Target service |
| Fail2Ban | Automated incident response |
| Promtail | Log collection agent |
| Loki | Log storage and querying |
| Grafana | Dashboard and alerting |
| Git & GitHub | Version control (DevSecOps) |

---

#  Monitoring & Alerting
- SSH logs collected from systemd journal
- Logs stored in Loki
- Visualized using Grafana Explore and dashboards
- Alerts triggered for repeated failed login attempts

Example LogQL:
```logql
{job="sshlogs"}

# Alert Query

count_over_time({job="sshlogs"}[1m]) > 3
