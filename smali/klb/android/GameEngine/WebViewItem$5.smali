.class Lklb/android/GameEngine/WebViewItem$5;
.super Ljava/lang/Object;
.source "WebViewItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lklb/android/GameEngine/WebViewItem;->update()V
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
    .line 304
    iput-object p1, p0, Lklb/android/GameEngine/WebViewItem$5;->this$0:Lklb/android/GameEngine/WebViewItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 308
    iget-object v1, p0, Lklb/android/GameEngine/WebViewItem$5;->this$0:Lklb/android/GameEngine/WebViewItem;

    # getter for: Lklb/android/GameEngine/WebViewItem;->m_web:Lklb/android/GameEngine/HelpWebView;
    invoke-static {v1}, Lklb/android/GameEngine/WebViewItem;->access$100(Lklb/android/GameEngine/WebViewItem;)Lklb/android/GameEngine/HelpWebView;

    move-result-object v1

    invoke-virtual {v1}, Lklb/android/GameEngine/HelpWebView;->requestLayout()V

    .line 311
    iget-object v1, p0, Lklb/android/GameEngine/WebViewItem$5;->this$0:Lklb/android/GameEngine/WebViewItem;

    iget-object v2, p0, Lklb/android/GameEngine/WebViewItem$5;->this$0:Lklb/android/GameEngine/WebViewItem;

    iget v2, v2, Lklb/android/GameEngine/WebViewItem;->m_alpha:I

    iget-object v3, p0, Lklb/android/GameEngine/WebViewItem$5;->this$0:Lklb/android/GameEngine/WebViewItem;

    iget v3, v3, Lklb/android/GameEngine/WebViewItem;->m_color:I

    invoke-virtual {v1, v2, v3}, Lklb/android/GameEngine/WebViewItem;->setColor(II)V

    .line 315
    iget-object v1, p0, Lklb/android/GameEngine/WebViewItem$5;->this$0:Lklb/android/GameEngine/WebViewItem;

    # invokes: Lklb/android/GameEngine/WebViewItem;->setStatus()V
    invoke-static {v1}, Lklb/android/GameEngine/WebViewItem;->access$300(Lklb/android/GameEngine/WebViewItem;)V

    .line 317
    iget-object v1, p0, Lklb/android/GameEngine/WebViewItem$5;->this$0:Lklb/android/GameEngine/WebViewItem;

    iget-boolean v1, v1, Lklb/android/GameEngine/WebViewItem;->m_reload:Z

    if-eqz v1, :cond_0

    .line 318
    iget-object v1, p0, Lklb/android/GameEngine/WebViewItem$5;->this$0:Lklb/android/GameEngine/WebViewItem;

    # invokes: Lklb/android/GameEngine/WebViewItem;->authHeader()V
    invoke-static {v1}, Lklb/android/GameEngine/WebViewItem;->access$400(Lklb/android/GameEngine/WebViewItem;)V

    .line 319
    iget-object v1, p0, Lklb/android/GameEngine/WebViewItem$5;->this$0:Lklb/android/GameEngine/WebViewItem;

    # getter for: Lklb/android/GameEngine/WebViewItem;->m_web:Lklb/android/GameEngine/HelpWebView;
    invoke-static {v1}, Lklb/android/GameEngine/WebViewItem;->access$100(Lklb/android/GameEngine/WebViewItem;)Lklb/android/GameEngine/HelpWebView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 320
    iget-object v1, p0, Lklb/android/GameEngine/WebViewItem$5;->this$0:Lklb/android/GameEngine/WebViewItem;

    # getter for: Lklb/android/GameEngine/WebViewItem;->m_web:Lklb/android/GameEngine/HelpWebView;
    invoke-static {v1}, Lklb/android/GameEngine/WebViewItem;->access$100(Lklb/android/GameEngine/WebViewItem;)Lklb/android/GameEngine/HelpWebView;

    move-result-object v1

    iget-object v2, p0, Lklb/android/GameEngine/WebViewItem$5;->this$0:Lklb/android/GameEngine/WebViewItem;

    # getter for: Lklb/android/GameEngine/WebViewItem;->m_url:Ljava/lang/String;
    invoke-static {v2}, Lklb/android/GameEngine/WebViewItem;->access$500(Lklb/android/GameEngine/WebViewItem;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lklb/android/GameEngine/WebViewItem$5;->this$0:Lklb/android/GameEngine/WebViewItem;

    # getter for: Lklb/android/GameEngine/WebViewItem;->m_extraHeaders:Ljava/util/Map;
    invoke-static {v3}, Lklb/android/GameEngine/WebViewItem;->access$200(Lklb/android/GameEngine/WebViewItem;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lklb/android/GameEngine/HelpWebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 321
    iget-object v1, p0, Lklb/android/GameEngine/WebViewItem$5;->this$0:Lklb/android/GameEngine/WebViewItem;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lklb/android/GameEngine/WebViewItem;->m_reload:Z

    .line 324
    :cond_0
    iget-object v1, p0, Lklb/android/GameEngine/WebViewItem$5;->this$0:Lklb/android/GameEngine/WebViewItem;

    # getter for: Lklb/android/GameEngine/WebViewItem;->m_javascript:Ljava/lang/String;
    invoke-static {v1}, Lklb/android/GameEngine/WebViewItem;->access$600(Lklb/android/GameEngine/WebViewItem;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 325
    iget-object v1, p0, Lklb/android/GameEngine/WebViewItem$5;->this$0:Lklb/android/GameEngine/WebViewItem;

    # getter for: Lklb/android/GameEngine/WebViewItem;->m_javascript:Ljava/lang/String;
    invoke-static {v1}, Lklb/android/GameEngine/WebViewItem;->access$600(Lklb/android/GameEngine/WebViewItem;)Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, "script":Ljava/lang/String;
    iget-object v1, p0, Lklb/android/GameEngine/WebViewItem$5;->this$0:Lklb/android/GameEngine/WebViewItem;

    # setter for: Lklb/android/GameEngine/WebViewItem;->m_javascript:Ljava/lang/String;
    invoke-static {v1, v4}, Lklb/android/GameEngine/WebViewItem;->access$602(Lklb/android/GameEngine/WebViewItem;Ljava/lang/String;)Ljava/lang/String;

    .line 327
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_2

    .line 328
    iget-object v1, p0, Lklb/android/GameEngine/WebViewItem$5;->this$0:Lklb/android/GameEngine/WebViewItem;

    # getter for: Lklb/android/GameEngine/WebViewItem;->m_web:Lklb/android/GameEngine/HelpWebView;
    invoke-static {v1}, Lklb/android/GameEngine/WebViewItem;->access$100(Lklb/android/GameEngine/WebViewItem;)Lklb/android/GameEngine/HelpWebView;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Lklb/android/GameEngine/HelpWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 333
    .end local v0    # "script":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 330
    .restart local v0    # "script":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lklb/android/GameEngine/WebViewItem$5;->this$0:Lklb/android/GameEngine/WebViewItem;

    # getter for: Lklb/android/GameEngine/WebViewItem;->m_web:Lklb/android/GameEngine/HelpWebView;
    invoke-static {v1}, Lklb/android/GameEngine/WebViewItem;->access$100(Lklb/android/GameEngine/WebViewItem;)Lklb/android/GameEngine/HelpWebView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lklb/android/GameEngine/HelpWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
