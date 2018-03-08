Decode HTML entities
Swift 4

Is prepared to show tables, images, styles... in your WebKitView


Example with option 1:

// webview conected to storyboard
@IBOutlet weak var myWebview: WKWebView!

let htmlText = "&lt;html&gt;&lt;body&gt;&lt;img src=&quot;https://www.apple.com/ac/structured-data/images/knowledge_graph_logo.png&quot; style=&quot;width: 50px;&quot;&gt;&lt;br&gt;&lt;a href=&quot;www.apple.es&quot;&gt;&lt;i&gt;Apple&lt;/i&gt;&lt;/a&gt;&lt;/body&gt;&lt;/html&gt;"

let decodedHtmlText = DecodeHtmlEntities.decodeHtml(encodedHtml: htmlText)
self.bodyWebview.loadHTMLString(decodedHtmlText, baseURL: nil)



Example with option 2:

// webview conected to storyboard
@IBOutlet weak var myWebview: WKWebView!

let htmlText = "&lt;html&gt;&lt;body&gt;&lt;img src=&quot;https://www.apple.com/ac/structured-data/images/knowledge_graph_logo.png&quot; style=&quot;width: 50px;&quot;&gt;&lt;br&gt;&lt;a href=&quot;www.apple.es&quot;&gt;&lt;i&gt;Apple&lt;/i&gt;&lt;/a&gt;&lt;/body&gt;&lt;/html&gt;"

let decodedHtmlText = htmlText.decodeHtml(encodedHtml: htmlText)
self.bodyWebview.loadHTMLString(decodedHtmlText, baseURL: nil)
