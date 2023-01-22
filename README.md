# Pinch

![preview](https://user-images.githubusercontent.com/5134133/212483164-a5369ee2-294b-4cfe-8455-c7a11b6f75ff.jpg)

A simple menubar app that lets you fix faulty Mac trackpad pinch gesture in one click.

[Download App here](https://github.com/danqing/Pinch/releases/download/1.2/Pinch.zip) — after downloading, unzip and drag to your Applications folder.

## Background

Sometimes the two finger pinch (pan, zooming) gesture on a Mac trackpad would stop working. This is a bug first introduced in Monterey, but unfortunately it has not been fixed after all this time.

A fix that worked for me is killing the Dock process. That is, you can run the following command in your terminal:

```sh
killall Dock
```

So I made it into a menubar app that you can use to fix the issue in one click. Just click on "Fix Pinch Gesture," and voila!

[Since I shared the app](https://twitter.com/danqing_liu/status/1614308997653499905), it came to my attention that the command doesn't work for everyone. So I updated the app to toggle on/off the preference in addition. I hope this is a reliable enough fix. If not, please let me know by opening an issue or [reaching out on Twitter](https://twitter.com/danqing_liu)!
