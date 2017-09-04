.class public Lcom/bushiroad/bushimo/sdk/android/ui/BsmoLoginActivity;
.super Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;
.source "BsmoLoginActivity.java"


# static fields
.field public static sharedInstance:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoLoginActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected shouldOverrideUrlLoadingApp(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 35
    const-string v1, "app://yes"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 38
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->oauthAuthorization(Landroid/app/Activity;)V

    .line 41
    invoke-virtual {p0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoLoginActivity;->finish()V

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    const-string v1, "app://logined"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 45
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoOAuthCallbackActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 46
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 47
    invoke-virtual {p0, v0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoLoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 49
    invoke-virtual {p0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoLoginActivity;->finish()V

    goto :goto_0

    .line 52
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    const-string v1, "app://no"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->isSDK()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 56
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoLoginActivity;->mDashboardClosed:Z

    .line 57
    invoke-virtual {p0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoLoginActivity;->finish()V

    goto :goto_0

    .line 62
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "https://www.bushimo.jp/m/"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 63
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoLoginActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
