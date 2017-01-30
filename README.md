Reddit-History &mdash; A reddit account history exporter
========================================================
![](http://img.shields.io/version/0.0.3.png?color=green)

Reddit-History is a reddit history account exporter. It exports your comments, saved threads, submitted posts, and account overview to an organized markdown file, of the format:
```md
subreddit: [worldnews](https://reddit.com/r/worldnews)

[Post/Comment/Saved title](https://reddit.com/r/worldnews/... the reddit link)

The body of my post, comment, or saved item.
--------------------------------------------

subreddit: [AskReddit](https://reddit.com/r/AskReddit)
....
```

## Installation

### Requirements
- Java 8

### Setup a reddit script client

*This is required to make API calls to reddit at the rate of at least 1 per second.*

- Go [here](https://www.reddit.com/prefs/apps)
- Click create another app
- Click personal use script
- Copy down the `client_id`, and `client_secret` for later use.


### Download
[Download reddit-history.jar](https://github.com/tchoulihan/reddit-history/releases/download/0.0.3/reddit-history.jar)

### Run 

```sh
java -jar reddit-history.jar -user USER_NAME_TO_EXPORT -username YOUR_USERNAME -password YOUR_PASSWORD -client_id CLIENT_ID -client_secret CLIENT_SECRET -sort new
```
`sort` can be `top`, or `new`. 

## Limitations

Unfortunately, reddit *doesn't allow a full account export*, and only lets you retrieve a limit of 1000 records per type(submitted, comments, saved, overview). You can run reddit history using `-sort new` and `-sort top`, to get different slices of your history that reddit will allow. If you want this feature, [help complain like I did](https://github.com/reddit/reddit/issues/1680#issuecomment-243936909). 

## Bugs and feature requests
Have a bug or a feature request? If your issue isn't [already listed](https://github.com/tchoulihan/reddit-history/issues/), then open a [new issue here](https://github.com/tchoulihan/reddit-history/issues/new).
