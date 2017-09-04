.class public Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$DefaultWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "BsmoWebActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DefaultWebViewClient"
.end annotation


# instance fields
.field public progressbar:Landroid/widget/ProgressBar;

.field final synthetic this$0:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;


# direct methods
.method public constructor <init>(Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$DefaultWebViewClient;->this$0:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 377
    iget-object v0, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$DefaultWebViewClient;->progressbar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$DefaultWebViewClient;->progressbar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 379
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 395
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

    .line 397
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$DefaultWebViewClient;->this$0:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;

    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v2

    const v3, 0x7f060044

    const-string v4, "string"

    const-string v5, "bsmo_error_open_page"

    invoke-virtual {v2, v3, v4, v5}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getResourceId(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->alert(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$DefaultWebViewClient;->progressbar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$DefaultWebViewClient;->progressbar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 401
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
    .line 411
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 386
    iget-object v0, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$DefaultWebViewClient;->this$0:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;

    # invokes: Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->overrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    invoke-static {v0, p1, p2}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->access$000(Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;Landroid/webkit/WebView;Ljava/lang/String;)Z

    .line 388
    const/4 v0, 0x1

    return v0
.end method
