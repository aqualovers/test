.class Lcom/bushiroad/bushimo/sdk/android/api/Bushimo$6;
.super Ljava/lang/Object;
.source "Bushimo.java"

# interfaces
.implements Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->oauthCallback(Landroid/net/Uri;Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseActivity;)V
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
.field final synthetic this$0:Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

.field final synthetic val$activity:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseActivity;

.field final synthetic val$sns:Ljava/lang/String;

.field final synthetic val$token:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;Ljava/lang/String;Ljava/lang/String;Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseActivity;)V
    .locals 0

    .prologue
    .line 430
    iput-object p1, p0, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo$6;->this$0:Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    iput-object p2, p0, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo$6;->val$token:Ljava/lang/String;

    iput-object p3, p0, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo$6;->val$sns:Ljava/lang/String;

    iput-object p4, p0, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo$6;->val$activity:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(II)V
    .locals 3
    .param p1, "errorCode"    # I
    .param p2, "statusCode"    # I

    .prologue
    .line 436
    const-string v0, "BushimoSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "oauthCallback onError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 441
    const/16 v0, 0x19c

    if-eq p2, v0, :cond_0

    .line 442
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 445
    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 430
    check-cast p2, Ljava/util/HashMap;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo$6;->onResponse(ILjava/util/HashMap;)V

    return-void
.end method

.method public onResponse(ILjava/util/HashMap;)V
    .locals 6
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
    .line 450
    .local p2, "response":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v3, 0xc8

    if-eq p1, v3, :cond_1

    .line 451
    const-string v3, "BushimoSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "statusCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 454
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 524
    :cond_0
    :goto_0
    return-void

    .line 460
    :cond_1
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->getSharedPreferencesPrivate()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 461
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "access_token"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 462
    .local v1, "latestAccessToken":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 463
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter;

    move-result-object v3

    const-string v4, "userChanged"

    invoke-virtual {v3, v4}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter;->postNotification(Ljava/lang/String;)V

    .line 467
    :cond_2
    iget-object v3, p0, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo$6;->this$0:Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    invoke-virtual {v3}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->removeUserInfo()V

    .line 470
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 471
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "access_token"

    iget-object v4, p0, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo$6;->val$token:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 472
    const-string v4, "userId"

    const-string v3, "id"

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 473
    const-string v4, "nickname"

    const-string v3, "nickname"

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 474
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 475
    iget-object v3, p0, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo$6;->this$0:Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    iget-object v4, p0, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo$6;->val$token:Ljava/lang/String;

    # setter for: Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->mAccessToken:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->access$002(Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;Ljava/lang/String;)Ljava/lang/String;

    .line 478
    iget-object v3, p0, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo$6;->this$0:Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    new-instance v4, Lcom/bushiroad/bushimo/sdk/android/api/BsmoUser;

    invoke-direct {v4, p2}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoUser;-><init>(Ljava/util/HashMap;)V

    # setter for: Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->mCurrentUser:Lcom/bushiroad/bushimo/sdk/android/api/BsmoUser;
    invoke-static {v3, v4}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->access$102(Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;Lcom/bushiroad/bushimo/sdk/android/api/BsmoUser;)Lcom/bushiroad/bushimo/sdk/android/api/BsmoUser;

    .line 480
    const-string v3, "BushimoSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "oauthCallback onResponse "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    new-instance v3, Lcom/bushiroad/bushimo/sdk/android/api/BsmoAppUse;

    invoke-direct {v3}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoAppUse;-><init>()V

    new-instance v4, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo$6$1;

    invoke-direct {v4, p0}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo$6$1;-><init>(Lcom/bushiroad/bushimo/sdk/android/api/Bushimo$6;)V

    invoke-virtual {v3, v4}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoAppUse;->registAppUse(Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;)V

    goto/16 :goto_0
.end method
