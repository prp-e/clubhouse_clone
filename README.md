# Do not be shy, join the club!

Recently [Club House](http://joinclubhouse.com) became pretty popular. So, I was curious how can I clone that? It was simple. I am a _FLOSS_ advocate since 2012, almost 12 freaking years! So I had some good tools. 

First, I thought about creating the whole thing from scratch, but I found out that we had a lot of fun using [Big Blue Button](https://bigbluebutton.org). I knew BBB uses a frontend platform/application called _Greenlight_, but it was like any other online event performing tool! Just a great tool for accounting and managing the event. So I had an idea, why not creating a whole __social media__ around BBB? So I started making this project. 

## Requirements 

_TO BE UPDATED_ 

* A Big Blue Button instance (only API is enough, do not install _Greenlight_)
* An instance of this code!
    * Rails deployment article will be available here as soon as I finish this project. 
* Setting up `BBB_API`, `BBB_SECRET`, `BBB_MP` and `BBB_AP` environment variables (preferably in `bashrc` or `zshrc` files)
    * `BBB_API` is responsible for your BigBlueButton Server. 
    * `BBB_SECRET` is the _shared secret_ you can get from `bbb-conf --secret` on your BBB server. 
    * `BBB_MP` is the moderator password for BBB 
    * `BBB_AP` is the attendee password for BBB (Note: it's better to choose them differently)

## TODO 

- [ ] Designing timeline, follower/following in the frontend side 
- [x] Connecting the whole thing to the _BBB_ instance (It should be done in some environment variable, maybe a `.env` file isn't a bad idea at all)
    - [ ] Joining Mechanism
- [ ] Migrating to MySQL 
- [x] Designing a nice UI 
- [ ] Implementing the UI
- [ ] Choosing a name, if I want this to be a startup!