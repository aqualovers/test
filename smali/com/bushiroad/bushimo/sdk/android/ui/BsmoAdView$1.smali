.class Lcom/bushiroad/bushimo/sdk/android/ui/BsmoAdView$1;
.super Ljava/lang/Object;
.source "BsmoAdView.java"

# interfaces
.implements Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bushiroad/bushimo/sdk/android/ui/BsmoAdView;->loadAd(Ljava/lang/String;Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener",
        "<",
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoAdView;

.field final synthetic val$listener:Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;


# direct methods
.method constructor <init>(Lcom/bushiroad/bushimo/sdk/android/ui/BsmoAdView;Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoAdView$1;->this$0:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoAdView;

    iput-object p2, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoAdView$1;->val$listener:Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(II)V
    .locals 2
    .param p1, "errorCode"    # I
    .param p2, "statusCode"    # I

    .prologue
    .line 114
    iget-object v0, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoAdView$1;->this$0:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoAdView;

    iget-object v0, v0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoAdView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoAdView$1$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoAdView$1$2;-><init>(Lcom/bushiroad/bushimo/sdk/android/ui/BsmoAdView$1;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 125
    return-void
.end method

.method public bridge synthetic onResponse(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 86
    check-cast p2, Ljava/util/HashMap;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoAdView$1;->onResponse(ILjava/util/HashMap;)V

    return-void
.end method

.method public onResponse(ILjava/util/HashMap;)V
    .locals 4
    .param p1, "statusCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p2, "response":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoAdView$1;->this$0:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoAdView;

    # getter for: Lcom/bushiroad/bushimo/sdk/android/ui/BsmoAdView;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoAdView;->access$000(Lcom/bushiroad/bushimo/sdk/android/ui/BsmoAdView;)Landroid/webkit/WebView;

    move-result-object v1

    const-string v0, "html"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "text/html"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v1, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoAdView$1;->this$0:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoAdView;

    const-string v0, "linkUrl"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    # setter for: Lcom/bushiroad/bushimo/sdk/android/ui/BsmoAdView;->mLinkUrl:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoAdView;->access$102(Lcom/bushiroad/bushimo/sdk/android/ui/BsmoAdView;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoAdView$1;->this$0:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoAdView;

    iget-object v0, v0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoAdView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoAdView$1$1;

    invoke-direct {v1, p0, p1}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoAdView$1$1;-><init>(Lcom/bushiroad/bushimo/sdk/android/ui/BsmoAdView$1;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 107
    return-void
.end method
