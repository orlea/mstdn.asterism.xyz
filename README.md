# mstdn.asterism.xyz

on docker and native postgresql/redis/elasticsearch.

## usage

deploy

```
cd caddy
sudo docker-compose up -d
cd ../mastodon
sudo docker-compose up -d
```

update

```
sudo docker-compose -f mastodon/mstdn-asterism-xyz.manage.yml run --rm web rails db:migrate
cd mastodon
sudo docker-compose down
sudo docker-compose up -d
```
