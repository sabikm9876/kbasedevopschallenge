FROM dolson/challenge6

RUN perl -pi -e 's/127.0.0.1/0.0.0.0/' /etc/mysql/my.cnf
RUN mysqld_safe --skip-grant-tables & sleep 5 && mysql -uroot -D mysql -e 'update user set password=password("mypass") where user="root"'
#RUN mysqld_safe --skip-grant-tables & sleep 5 && mysql -u root -p --password='mypass'
CMD 'docker run -d -p 514/udp --name loggly-docker -e TOKEN=TOKEN -e TAG=Docker sendgridlabs/loggly-docker'

COPY signup.* /go/Go-Signup-Login-Example-MySQL/
