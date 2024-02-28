[Unit]
Description=Tomcat Service
Requires=network.target
After=syslog.target network.target

[Service]
Type=forking

User=tomcat
Environment="CATALINA_PID=/usr/share/tomcat/logs/tomcat.pid"
Environment="CATALINA_BASE=/usr/share/tomcat"
Environment="CATALINA_HOME=/usr/share/tomcat"

ExecStart=/usr/share/tomcat/bin/startup.sh
ExecStop=/usr/share/tomcat/bin/shutdown.sh
Restart=on-abnormal

[Install]
WantedBy=multi-user.target
