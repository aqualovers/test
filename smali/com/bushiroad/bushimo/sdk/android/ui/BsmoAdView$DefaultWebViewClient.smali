.class public Lcom/bushiroad/bushimo/sdk/android/ui/BsmoAdView$DefaultWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "BsmoAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bushiroad/bushimo/sdk/android/ui/BsmoAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DefaultWebViewClient"
.end annotation


# instance fields
.field public progressbar:Landroid/widget/ProgressBar;

.field final synthetic this$0:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoAdView;


# direct methods
.method public constructor <init>(Lcom/bushiroad/bushimo/sdk/android/ui/BsmoAdView;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoAdView$DefaultWebViewClient;->this$0:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoAdView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoAdView$DefaultWebViewClient;->progressbar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoAdView$DefaultWebViewClient;->progressbar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 146
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 176
    const-string v0, "BushimoSDK webview error"

    const-string v1, "%d %s %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    aput-object p4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoAdView$DefaultWebViewClient;->progressbar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoAdView$DefaultWebViewClient;->progressbar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 182
    :cond_0
    return-void
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/HttpAuthHandler;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "realm"    # Ljava/lang/String;

    .prologue
    .line 192
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 151
    const-string v3, "BushimoSDK webview load"

    invoke-static {v3, p2}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-static {p2}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->isBushimoSite(Ljava/lang/String;)Z

    move-result v1

    .line 156
    .local v1, "isBushimo":Z
    if-eqz v1, :cond_0

    .line 159
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoDashboard;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    .line 169
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 164
    :cond_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 165
    .local v2, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 166
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
