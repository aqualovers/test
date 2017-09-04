.class Lklb/android/GameEngine/WebViewItem$4;
.super Landroid/webkit/WebViewClient;
.source "WebViewItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lklb/android/GameEngine/WebViewItem;->create()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lklb/android/GameEngine/WebViewItem;


# direct methods
.method constructor <init>(Lklb/android/GameEngine/WebViewItem;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lklb/android/GameEngine/WebViewItem$4;->this$0:Lklb/android/GameEngine/WebViewItem;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 265
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem$4;->this$0:Lklb/android/GameEngine/WebViewItem;

    iget-boolean v0, v0, Lklb/android/GameEngine/WebViewItem;->m_remove:Z

    if-eqz v0, :cond_0

    .line 268
    :goto_0
    return-void

    .line 267
    :cond_0
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    sget-object v1, Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;->E_DIDLOADENDWEB:Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;

    invoke-virtual {v1}, Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;->GetNum()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lklb/android/GameEngine/PFInterface;->WebViewControlEvent(Landroid/webkit/WebView;I)V

    goto :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 256
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 257
    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem$4;->this$0:Lklb/android/GameEngine/WebViewItem;

    iget-boolean v0, v0, Lklb/android/GameEngine/WebViewItem;->m_remove:Z

    if-eqz v0, :cond_0

    .line 259
    :goto_0
    return-void

    .line 258
    :cond_0
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    sget-object v1, Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;->E_DIDSTARTLOADWEB:Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;

    invoke-virtual {v1}, Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;->GetNum()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lklb/android/GameEngine/PFInterface;->WebViewControlEvent(Landroid/webkit/WebView;I)V

    goto :goto_0
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 274
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem$4;->this$0:Lklb/android/GameEngine/WebViewItem;

    iget-boolean v0, v0, Lklb/android/GameEngine/WebViewItem;->m_remove:Z

    if-eqz v0, :cond_0

    .line 277
    :goto_0
    return-void

    .line 276
    :cond_0
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    sget-object v1, Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;->E_FAILEDLOADWEB:Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;

    invoke-virtual {v1}, Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;->GetNum()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lklb/android/GameEngine/PFInterface;->WebViewControlEvent(Landroid/webkit/WebView;I)V

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 234
    iget-object v1, p0, Lklb/android/GameEngine/WebViewItem$4;->this$0:Lklb/android/GameEngine/WebViewItem;

    iget-boolean v1, v1, Lklb/android/GameEngine/WebViewItem;->m_remove:Z

    if-eqz v1, :cond_0

    .line 249
    :goto_0
    return v3

    .line 235
    :cond_0
    const-string v1, "native://"

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 236
    .local v0, "native_protocol_begin":I
    if-gez v0, :cond_1

    .line 242
    iget-object v1, p0, Lklb/android/GameEngine/WebViewItem$4;->this$0:Lklb/android/GameEngine/WebViewItem;

    # getter for: Lklb/android/GameEngine/WebViewItem;->m_extraHeaders:Ljava/util/Map;
    invoke-static {v1}, Lklb/android/GameEngine/WebViewItem;->access$200(Lklb/android/GameEngine/WebViewItem;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 247
    :cond_1
    iget-object v1, p0, Lklb/android/GameEngine/WebViewItem$4;->this$0:Lklb/android/GameEngine/WebViewItem;

    const-string v2, "native://"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    # setter for: Lklb/android/GameEngine/WebViewItem;->m_tmpUrl:Ljava/lang/String;
    invoke-static {v1, v2}, Lklb/android/GameEngine/WebViewItem;->access$002(Lklb/android/GameEngine/WebViewItem;Ljava/lang/String;)Ljava/lang/String;

    .line 248
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v1

    sget-object v2, Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;->E_URLJUMP:Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;

    invoke-virtual {v2}, Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;->GetNum()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lklb/android/GameEngine/PFInterface;->WebViewControlEvent(Landroid/webkit/WebView;I)V

    goto :goto_0
.end method
