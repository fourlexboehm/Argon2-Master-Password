
echo "Enter your full legal name"
read -p 'Full Name: ' full_name

read -sp 'Master Password: ' master_password

echo "Select the Service you wish to obtain your password for"
select domain in google.com reddit.com soundcloud.com commbank.com.au github.com ebay.com mastodon.social paypal.com systemli.org facebook.com autistici.org factorio.com gog.com riseup.net
  do
    echo $master_password | argon2 "$full_name$domain" -l 12 -r -t 100 -p 4 -m 14
done
