# mstdn.asterism.xyz

on docker swarm

## usage

stack deploy

```
sudo docker stack deploy mastodon -c mastodon/mstdn-asterism-xyz.yml
```

update

```
sudo docker-compose -f mastodon/mstdn-asterism-xyz.manage.yml run --rm web rails db:migrate
```
