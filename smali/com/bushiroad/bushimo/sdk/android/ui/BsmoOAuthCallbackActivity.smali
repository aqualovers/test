.class public Lcom/bushiroad/bushimo/sdk/android/ui/BsmoOAuthCallbackActivity;
.super Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseActivity;
.source "BsmoOAuthCallbackActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 27
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    sput-object v4, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->uiHandler:Landroid/os/Handler;

    .line 29
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoOAuthCallbackActivity;->requestWindowFeature(I)Z

    .line 31
    invoke-super {p0, p1}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v4

    const v5, 0x7f030019

    const-string v6, "layout"

    const-string v7, "bsmo_callback"

    invoke-virtual {v4, v5, v6, v7}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getResourceId(ILjava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoOAuthCallbackActivity;->setContentView(I)V

    .line 36
    const-string v4, "BushimoSDK"

    const-string v5, "BsmoOAuthCallbackActivity"

    invoke-static {v4, v5}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-virtual {p0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoOAuthCallbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 38
    .local v0, "incomingIntent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 40
    .local v1, "intentUri":Landroid/net/Uri;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v5

    const v6, 0x7f060036

    const-string v7, "string"

    const-string v8, "bsmo_callback_scheme"

    invoke-virtual {v5, v6, v7, v8}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getResourceId(ILjava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoOAuthCallbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 41
    .local v2, "uriPrefix":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 42
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 43
    .local v3, "uriString":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "?done="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 44
    const-string v4, "BushimoSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "callback to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v4

    invoke-virtual {v4, v1, p0}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->twitterCallback(Landroid/net/Uri;Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseActivity;)V

    .line 55
    .end local v1    # "intentUri":Landroid/net/Uri;
    .end local v2    # "uriPrefix":Ljava/lang/String;
    .end local v3    # "uriString":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 48
    .restart local v1    # "intentUri":Landroid/net/Uri;
    .restart local v2    # "uriPrefix":Ljava/lang/String;
    .restart local v3    # "uriString":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v4

    invoke-virtual {v4, v1, p0}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->oauthCallback(Landroid/net/Uri;Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseActivity;)V

    goto :goto_0
.end method
