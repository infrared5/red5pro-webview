# red5pro-webview
Explorations in Red5 Pro HTML SDK in native WebView

# iOS
The iOS implmentation uses the `WKWebView` to either load compiled sources or to load a remote page.

## Where the magic happens

[ios/Red5ProWebView/Red5ProWebView/ViewController](https://github.com/infrared5/red5pro-webview/blob/master/ios/Red5ProWebView/Red5ProWebView/ViewController.m#L43-L60)

```js
    // load subscriber from local resource.
    NSURL *subindex = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"index-subscriber" ofType:@"html"]];
    [_webView loadRequest:[NSURLRequest requestWithURL:subindex]];

    // OR //

    // load publisher form local resource.
//    NSURL *pubindex = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"index-publisher" ofType:@"html"]];
//    [_webView loadRequest:[NSURLRequest requestWithURL:pubindex]];

    // OR //

    // load subscriber from remote location.
//    [_webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://webrtc.red5.org/live/ios-index-subscriber.html"]]];

    // OR //

    // load publisher from remote location.
//    [_webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://webrtc.red5.org/live/ios-index-publisher.html"]]];
```

Comment out and uncomment which tests you want to try. There are tests for:

* Subscriber from local resource.
* Publisher from local resource.
* Subscriber from remote resource.
* Publisher from remote resource.

You may want to modify the configurations in each of those; currently, the point to `webrtc.red5.org` and either publish or subscribe to a stream names `stream1`.

> Additionally, you may need to upload the `ios-index-publisher.html` and `ios-index-subscriber.html` to a remote server and update their URLs in the `ViewController` as seen above.

