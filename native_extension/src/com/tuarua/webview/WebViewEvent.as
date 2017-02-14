/**
 * Created by Eoin Landy on 01/12/2016.
 */
package com.tuarua.webview {
import flash.events.Event;

public class WebViewEvent extends Event {
    /**
     *
     */
    public static const ON_FAIL:String = "WebView.OnFail";
    /**
     * Dispatched when one of the following is updated url, title, isLoading, canGoBack, canGoForward,
     * estimatedProgress, statusMessage
     */
    public static const ON_PROPERTY_CHANGE:String = "WebView.OnPropertyChange";
    /**
     *
     */
    public static const ON_CONSOLE_MESSAGE:String = "WebView.OnConsoleMessage";
    /**
     * Dispatched when download progress changes
     */
    public static const ON_DOWNLOAD_PROGRESS:String = "WebView.OnDownloadProgress";
    /**
     * Dispatched when download is marked as complete
     */
    public static const ON_DOWNLOAD_COMPLETE:String = "WebView.OnDownloadComplete"
    /**
     * Dispatched when download is cancelled
     */
    public static const ON_DOWNLOAD_CANCEL:String = "WebView.OnDownloadCancel";
    /**
     * Dispatched when Esc key is pressed. Use this to exit fullscreen.
     */
    public static const ON_ESC_KEY:String = "WebView.OnEscKey";
    public var params:*;


    public function WebViewEvent(type:String, params:* = null, bubbles:Boolean = false, cancelable:Boolean = false) {
        super(type, bubbles, cancelable);
        this.params = params;
    }

    public override function clone():Event {
        return new WebViewEvent(type, this.params, bubbles, cancelable);
    }

    public override function toString():String {
        return formatToString("WebViewEvent", "params", "type", "bubbles", "cancelable");
    }
}


}