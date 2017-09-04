.class public Lklb/android/GameEngine/billing/listener/IOnIabSetupFinishedListener;
.super Ljava/lang/Object;
.source "IOnIabSetupFinishedListener.java"

# interfaces
.implements Lklb/android/GameEngine/billing/util/IabHelper$OnIabSetupFinishedListener;


# static fields
.field private static final kClassName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lklb/android/GameEngine/billing/listener/IOnIabSetupFinishedListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lklb/android/GameEngine/billing/listener/IOnIabSetupFinishedListener;->kClassName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget-object v0, Lklb/android/GameEngine/billing/listener/IOnIabSetupFinishedListener;->kClassName:Ljava/lang/String;

    const-string v1, "IOnIabSetupFinishedListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    return-void
.end method


# virtual methods
.method public onIabSetupFinished(Lklb/android/GameEngine/billing/util/IabResult;)V
    .locals 5
    .param p1, "result"    # Lklb/android/GameEngine/billing/util/IabResult;

    .prologue
    .line 27
    sget-object v0, Lklb/android/GameEngine/billing/listener/IOnIabSetupFinishedListener;->kClassName:Ljava/lang/String;

    const-string v1, "onIabSetupFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-virtual {p1}, Lklb/android/GameEngine/billing/util/IabResult;->isFailure()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    const-string v1, "ENG_AND_BILLING_ALERT_TITLE"

    const-string v2, "\u6a5f\u80fd\u5236\u9650"

    invoke-virtual {v0, v1, v2}, Lklb/android/GameEngine/PFInterface;->getLocalizedMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v1

    const-string v2, "END_AND_BILLING_ALERT_MSG_DISABLED"

    const-string v3, "\u304a\u4f7f\u3044\u306eGoogle Play\u30a2\u30ab\u30a6\u30f3\u30c8\u3067\u306f\u30a2\u30d7\u30ea\u5185\u8ab2\u91d1\u6a5f\u80fd\u3092\u3054\u5229\u7528\u9802\u3051\u307e\u305b\u3093\u3002"

    invoke-virtual {v1, v2, v3}, Lklb/android/GameEngine/PFInterface;->getLocalizedMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lklb/android/GameEngine/PFInterface;->startAlertDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    sget-object v0, Lklb/android/GameEngine/billing/listener/IOnIabSetupFinishedListener;->kClassName:Ljava/lang/String;

    const-string v1, "sendMessageFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    const-string v3, ""

    const-string v4, ""

    invoke-virtual {v0, v1, v2, v3, v4}, Lklb/android/GameEngine/PFInterface;->clientControlEvent(IILjava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_0
    return-void
.end method
