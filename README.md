# Postfix Testing
## Setup DKIM
This will generate the dkim files
```
cd ./dkim
./setup.sh
```

## Setup StartTLS certs
This will generate the tls (startssl files)
```
cd ./certs
./setup.sh
```

## Start the Service
```
docker-compose up -d 
```

## Send Test Mails 
Make sure you observe the /var/log/mail.log before sending test mails!

```
docker-compose exec postfix tail -f /var/log/mail.log
```


### Postfix will not accept this - user (sender) not authenticated
./smtptest.py -v ibuetler@hsr.ch ivan.buetler@gmail.com localhost



### Postfix will accept this - but GMAIL is not accepting it (mail does not look trustworthy for GMAIL)
Port 25
* ./smtptest.py -v -u ivan.buetler -p EBp5CJNcykf7cgmb ibuetler@hsr.ch ivan.buetler@gmail.com localhost$

Port 587 (Submission)
* ./smtptest.py -v -n 587 -t -u ivan.buetler -p EBp5CJNcykf7cgmb ibuetler@hsr.ch ivan.buetler@gmail.com localhost





