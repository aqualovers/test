.class public Lklb/android/GameEngine/WebViewItem$JsObject;
.super Ljava/lang/Object;
.source "WebViewItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lklb/android/GameEngine/WebViewItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "JsObject"
.end annotation


# instance fields
.field private m_context:Landroid/content/Context;

.field final synthetic this$0:Lklb/android/GameEngine/WebViewItem;


# direct methods
.method public constructor <init>(Lklb/android/GameEngine/WebViewItem;Landroid/content/Context;)V
    .locals 0
    .param p2, "_context"    # Landroid/content/Context;

    .prologue
    .line 61
    iput-object p1, p0, Lklb/android/GameEngine/WebViewItem$JsObject;->this$0:Lklb/android/GameEngine/WebViewItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p2, p0, Lklb/android/GameEngine/WebViewItem$JsObject;->m_context:Landroid/content/Context;

    .line 63
    return-void
.end method


# virtual methods
.method public cmd(Ljava/lang/String;)V
    .locals 3
    .param p1, "_str"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem$JsObject;->this$0:Lklb/android/GameEngine/WebViewItem;

    iget-boolean v0, v0, Lklb/android/GameEngine/WebViewItem;->m_remove:Z

    if-eqz v0, :cond_0

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem$JsObject;->this$0:Lklb/android/GameEngine/WebViewItem;

    # setter for: Lklb/android/GameEngine/WebViewItem;->m_tmpUrl:Ljava/lang/String;
    invoke-static {v0, p1}, Lklb/android/GameEngine/WebViewItem;->access$002(Lklb/android/GameEngine/WebViewItem;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    iget-object v1, p0, Lklb/android/GameEngine/WebViewItem$JsObject;->this$0:Lklb/android/GameEngine/WebViewItem;

    # getter for: Lklb/android/GameEngine/WebViewItem;->m_web:Lklb/android/GameEngine/HelpWebView;
    invoke-static {v1}, Lklb/android/GameEngine/WebViewItem;->access$100(Lklb/android/GameEngine/WebViewItem;)Lklb/android/GameEngine/HelpWebView;

    move-result-object v1

    sget-object v2, Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;->E_URLJUMP:Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;

    invoke-virtual {v2}, Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;->GetNum()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lklb/android/GameEngine/PFInterface;->WebViewControlEvent(Landroid/webkit/WebView;I)V

    goto :goto_0
.end method
