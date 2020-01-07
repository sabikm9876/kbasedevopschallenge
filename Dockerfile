FROM dolson/challenge6

RUN perl -pi -e 's/127.0.0.1/0.0.0.0/' /etc/mysql/my.cnf
RUN mysqld_safe --skip-grant-tables & sleep 5 && mysql -uroot -D mysql -e 'update user set password=password("mypass") where user="root"'

COPY signup.* /go/Go-Signup-Login-Example-MySQL/
