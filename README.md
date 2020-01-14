Service FAQ: This is our new user signup page. It has two functions, signup and login.  The docker-compose project is dependent on a mysql database, the password is compiled in to the binary.  A successful login should return "Hello".  A failed login returns to the login page.  A successful signup returns "User created!"

There are a few issues we wish you to try to resolve.

1. The helloworld container reports errors in its docker logs and then exits.  Resolving the issue should mean the app is available at http://localhost:8080 inside the helloworld container.
1. The nginx container reports errors connecting to the helloworld container.  Resolving the issue should mean the app is available at http://localhost.  (If your current environment already has a listener on port 80, feel free to have nginx listen on a different port.)
1. We would like to add a syslog container to the existing docker-compose.yml project, and have nginx log remotely to the new syslog container.
1. We would like the access logs in the syslog container separate from the default syslog files.
1. We would like a small simple script (preferably in Python or bash) to scan the access logs and report the top five remote clients.

The root password for mysqld is `mypass`.

To build the initial Docker image, run `docker build -t kbase/techchallenge .` from this directory.  (Depending on you have configured your local dockerd, you may need sudo privileges.)

You will also need docker-compose in order to start the project.  Start using `docker-compose up -d`.

We will let you know in email where to post your solutions.

Copyright (c) 2014 The KBase Project and its Contributors

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
