import JavaScriptKit

let document = JSObject.global.document

var divElement = document.createElement("div")
divElement.innerHTML = #"""
<p>Welcome to <a href="https://swiftwasm.org">SwiftWasm</a>! Check out <a
href="https://book.swiftwasm.org/">the SwiftWasm book</a> if you're just getting started.
</p>

This <a
href="https://github.com/swiftwasm/browser-basic-template">template</a> provides a basic setup for an
app built with SwiftWasm and <a href="https://github.com/swiftwasm/JavaScriptKit">JavaScriptKit</a>.

Check out <a href="https://tokamak.dev">Tokamak</a> if you prefer a high-level API for building
browser apps. It is also compatible with SwiftUI, which allows you to build your apps for multiple
platforms.
"""#

_ = document.body.appendChild(divElement)
