FROM logstash:6.6.1

RUN logstash-plugin install logstash-input-jdbc && \
	mkdir -p /usr/share/logstash/vendor/jar/jdbc

RUN curl -o /tmp/mysql-connector-java-8.0.15.tar.gz -L 'http://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-java-8.0.15.tar.gz' && \
	tar xvzf /tmp/mysql-connector-java-8.0.15.tar.gz -C /tmp && \
	mv /tmp/mysql-connector-java-8.0.15/mysql-connector-java-8.0.15.jar /usr/share/logstash/vendor/jar/jdbc && \
	rm -rf /tmp/mysql-connector-java-8.0.15*
