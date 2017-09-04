.class Lcom/bushiroad/bushimo/sdk/android/api/Bushimo$6$1;
.super Ljava/lang/Object;
.source "Bushimo.java"

# interfaces
.implements Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bushiroad/bushimo/sdk/android/api/Bushimo$6;->onResponse(ILjava/util/HashMap;)V
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
.field final synthetic this$1:Lcom/bushiroad/bushimo/sdk/android/api/Bushimo$6;


# direct methods
.method constructor <init>(Lcom/bushiroad/bushimo/sdk/android/api/Bushimo$6;)V
    .locals 0

    .prologue
    .line 483
    iput-object p1, p0, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo$6$1;->this$1:Lcom/bushiroad/bushimo/sdk/android/api/Bushimo$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(II)V
    .locals 3
    .param p1, "appUseErrorCode"    # I
    .param p2, "appUseStatusCode"    # I

    .prologue
    .line 511
    const-string v0, "BushimoSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "app_use onError "

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

    .line 514
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->logout()V

    .line 517
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 518
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 521
    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 483
    check-cast p2, Ljava/util/HashMap;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo$6$1;->onResponse(ILjava/util/HashMap;)V

    return-void
.end method

.method public onResponse(ILjava/util/HashMap;)V
    .locals 3
    .param p1, "appUseStatusCode"    # I
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
    .line 488
    .local p2, "appUseResponse":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "BushimoSDK"

    const-string v2, "app_use onResponse"

    invoke-static {v1, v2}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter;

    move-result-object v1

    const-string v2, "completeAuth"

    invoke-virtual {v1, v2}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter;->postNotification(Ljava/lang/String;)V

    .line 494
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 495
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 499
    :cond_0
    const/4 v0, 0x0

    .line 500
    .local v0, "callbackNotifyId":Ljava/lang/Integer;
    const-string v1, "1"

    iget-object v2, p0, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo$6$1;->this$1:Lcom/bushiroad/bushimo/sdk/android/api/Bushimo$6;

    iget-object v2, v2, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo$6;->val$sns:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 501
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 503
    :cond_1
    iget-object v1, p0, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo$6$1;->this$1:Lcom/bushiroad/bushimo/sdk/android/api/Bushimo$6;

    iget-object v1, v1, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo$6;->this$0:Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    iget-object v2, p0, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo$6$1;->this$1:Lcom/bushiroad/bushimo/sdk/android/api/Bushimo$6;

    iget-object v2, v2, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo$6;->val$activity:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseActivity;

    # invokes: Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->startCallBackActivity(Landroid/app/Activity;Ljava/lang/Integer;)V
    invoke-static {v1, v2, v0}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->access$200(Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;Landroid/app/Activity;Ljava/lang/Integer;)V

    .line 505
    return-void
.end method
