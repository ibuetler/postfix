# Postfix Testing

The setup procedure will generate a new public and private keypair for postfix communication and a new dkim keypair (hacking-lab.com) to sign mails.

## Start the Service
```
docker compose up -d 
```

## Send Test Mails 
Make sure you observe the /var/log/mail.log before sending test mails!

```bash
docker compose exec postfix tail -f /var/log/mail.log
```


## Postfix will not accept this - user (sender) not authenticated
```bash
./smtptest.py -v ibuetler@ost.ch ivan.buetler@gmail.com localhost
```


## Postfix will accept this - but GMAIL is not accepting it (mail does not look trustworthy for GMAIL)
Port 25

```bash
./smtptest.py -v -u ivan.buetler -p EBp5CJNcykf7cgmb ibuetler@ost.ch ivan.buetler@gmail.com localhost
```

Port 587 (Submission)
```bash
./smtptest.py -v -n 587 -t -u ivan.buetler -p EBp5CJNcykf7cgmb ibuetler@ost.ch ivan.buetler@gmail.com localhost
```

