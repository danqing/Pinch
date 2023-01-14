# Pinch

![preview](https://user-images.githubusercontent.com/5134133/212483164-a5369ee2-294b-4cfe-8455-c7a11b6f75ff.jpg)

A simple menubar app that lets you fix faulty Mac trackpad pinch gesture in one click.

[Download App here](https://github.com/danqing/Pinch/releases/download/1.0/Pinch.zip) — after downloading, unzip and drag to your Applications folder.

## Background

Sometimes the two finger pinch (pan, zooming) gesture on a Mac trackpad would stop working. This is a bug first introduced in Monterey, but unfortunately it has not been fixed after all this time.

The most reliable fix of the problem is to kill the Dock process. That is, you can run the following command in your terminal:

```sh
killall Dock
```

But not everyone uses the terminal, and I personally often forget the command. So I made this simple menubar tool that calls the command for you. Just click on "Fix Pinch Gesture," and voila!
