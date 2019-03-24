# send_email

To send out scheduled emails from your terminal, clone this repository to a desired location. cd to 'send_email' in terminal. To make the shell script executable, run the following once

```sh
chmod +x send_mail.sh
```

Next, follow the instructions in setup.txt to configure your gmail account with postfix. To send a regularly scheduled message, set the desired frequency in line 15 of set_schedule.sh. Write your desired message in email.txt. Then run the following,

```sh
./set_schedule.sh yourName destinationAddress
```

Congrats, you've set a recurring email message! Sit back and reap the rewards.