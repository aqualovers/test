.class public Lcom/bushiroad/bushimo/sdk/android/ui/BsmoAdView;
.super Landroid/widget/RelativeLayout;
.source "BsmoAdView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bushiroad/bushimo/sdk/android/ui/BsmoAdView$DefaultWebViewClient;
    }
.end annotation


# instance fields
.field public mClient:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoAdView$DefaultWebViewClient;

.field mHandler:Landroid/os/Handler;

.field private mLinkUrl:Ljava/lang/String;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoAdView;->mHandler:Landroid/os/Handler;

    .line 47
    invoke-direct {p0, p1}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoAdView;->init(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoAdView;->mHandler:Landroid/os/Handler;

    .line 54
    invoke-direct {p0, p1}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoAdView;->init(Landroid/content/Context;)V

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/bushiroad/bushimo/sdk/android/ui/BsmoAdView;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/bushiroad/bushimo/sdk/android/ui/BsmoAdView;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoAdView;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/bushiroad/bushimo/sdk/android/ui/BsmoAdView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/bushiroad/bushimo/sdk/android/ui/BsmoAdView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoAdView;->mLinkUrl:Ljava/lang/String;

    return-object p1
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x2

    .line 64
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoAdView;->setGravity(I)V

    .line 66
    iget-object v0, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoAdView;->mWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoAdView;->mWebView:Landroid/webkit/WebView;

    .line 69
    iget-object v0, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoAdView;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    iget-object v0, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoAdView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoAdView;->addView(Landroid/view/View;)V

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoAdView;->mClient:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoAdView$DefaultWebViewClient;

    if-nez v0, :cond_1

    .line 75
    new-instance v0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoAdView$DefaultWebViewClient;

    invoke-direct {v0, p0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoAdView$DefaultWebViewClient;-><init>(Lcom/bushiroad/bushimo/sdk/android/ui/BsmoAdView;)V

    iput-object v0, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoAdView;->mClient:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoAdView$DefaultWebViewClient;

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoAdView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 81
    iget-object v0, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoAdView;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoAdView;->mClient:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoAdView$DefaultWebViewClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 82
    return-void
.end method


# virtual methods
.method public loadAd(Ljava/lang/String;Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;)V
    .locals 2
    .param p1, "bannerTypeKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p2, "listener":Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;, "Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener<Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/bushiroad/bushimo/sdk/android/api/BsmoAd;

    invoke-direct {v0}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoAd;-><init>()V

    new-instance v1, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoAdView$1;

    invoke-direct {v1, p0, p2}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoAdView$1;-><init>(Lcom/bushiroad/bushimo/sdk/android/ui/BsmoAdView;Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;)V

    invoke-virtual {v0, p1, v1}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoAd;->getAdHtml(Ljava/lang/String;Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;)V

    .line 129
    return-void
.end method
