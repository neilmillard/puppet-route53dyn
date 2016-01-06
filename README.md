PreRequisites
=============

AWS tools - quick install

```
curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py"
sudo python get-pip.py

sudo pip install awscli
```

IAM profile template

Before we can use the CLI, we will need credentials to interact with the AWS. To generate these, open up your AWS console in the browser and go to the IAM users. Create a new user with the following security policy - copy Hosted Zone ID from Route 53 and replace the value in the ARN below with your one:

```json
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "route53:CreateHostedZone",
        "route53:ChangeResourceRecordSets"
      ],
      "Resource": [
        "arn:aws:route53:::hostedzone/BJBK35SKMM9OE"
      ]
    }
  ]
}
```