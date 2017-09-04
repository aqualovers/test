.class public Lklb/android/GameEngine/billing/listener/IOnConsumeFinishedListener;
.super Ljava/lang/Object;
.source "IOnConsumeFinishedListener.java"

# interfaces
.implements Lklb/android/GameEngine/billing/util/IabHelper$OnConsumeFinishedListener;


# static fields
.field private static final kClassName:Ljava/lang/String;


# instance fields
.field purchase:Lklb/android/GameEngine/billing/util/Purchase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lklb/android/GameEngine/billing/listener/IOnConsumeFinishedListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lklb/android/GameEngine/billing/listener/IOnConsumeFinishedListener;->kClassName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lklb/android/GameEngine/billing/util/Purchase;)V
    .locals 2
    .param p1, "_purchase"    # Lklb/android/GameEngine/billing/util/Purchase;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lklb/android/GameEngine/billing/listener/IOnConsumeFinishedListener;->purchase:Lklb/android/GameEngine/billing/util/Purchase;

    .line 24
    sget-object v0, Lklb/android/GameEngine/billing/listener/IOnConsumeFinishedListener;->kClassName:Ljava/lang/String;

    const-string v1, "IOnConsumeFinishedListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    iput-object p1, p0, Lklb/android/GameEngine/billing/listener/IOnConsumeFinishedListener;->purchase:Lklb/android/GameEngine/billing/util/Purchase;

    .line 27
    return-void
.end method

.method private onConsumeFinishedError(Lklb/android/GameEngine/billing/util/IabResult;Lklb/android/GameEngine/billing/util/Purchase;)V
    .locals 3
    .param p1, "result"    # Lklb/android/GameEngine/billing/util/IabResult;
    .param p2, "purchase"    # Lklb/android/GameEngine/billing/util/Purchase;

    .prologue
    .line 30
    sget-object v0, Lklb/android/GameEngine/billing/listener/IOnConsumeFinishedListener;->kClassName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConsumeFinishedError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lklb/android/GameEngine/billing/util/IabResult;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    if-eqz p2, :cond_0

    .line 38
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    invoke-virtual {v0}, Lklb/android/GameEngine/PFInterface;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lklb/android/GameEngine/billing/manager/BillingManager;->getInstance(Landroid/app/Activity;)Lklb/android/GameEngine/billing/manager/BillingManager;

    move-result-object v0

    invoke-virtual {p2}, Lklb/android/GameEngine/billing/util/Purchase;->toReceiptString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2}, Lklb/android/GameEngine/billing/manager/BillingManager;->requestConsume(Ljava/lang/String;I)V

    .line 43
    :cond_0
    return-void
.end method

.method private onConsumeFinishedSuccess(Lklb/android/GameEngine/billing/util/Purchase;)V
    .locals 3
    .param p1, "purchase"    # Lklb/android/GameEngine/billing/util/Purchase;

    .prologue
    .line 46
    sget-object v0, Lklb/android/GameEngine/billing/listener/IOnConsumeFinishedListener;->kClassName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConsumeFinishedSuccess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-static {p1}, Lklb/android/GameEngine/sdkwrapper/SDKWrapper;->onPayment(Lklb/android/GameEngine/billing/util/Purchase;)V

    .line 51
    invoke-static {}, Lklb/android/GameEngine/KLBExtensionRuntime;->getInstance()Lklb/android/GameEngine/KLBExtensionRuntime;

    move-result-object v0

    invoke-virtual {v0, p1}, Lklb/android/GameEngine/KLBExtensionRuntime;->onPayment(Lklb/android/GameEngine/billing/util/Purchase;)V

    .line 52
    return-void
.end method


# virtual methods
.method public onConsumeFinished(Lklb/android/GameEngine/billing/util/Purchase;Lklb/android/GameEngine/billing/util/IabResult;)V
    .locals 3
    .param p1, "purchase"    # Lklb/android/GameEngine/billing/util/Purchase;
    .param p2, "result"    # Lklb/android/GameEngine/billing/util/IabResult;

    .prologue
    .line 57
    sget-object v0, Lklb/android/GameEngine/billing/listener/IOnConsumeFinishedListener;->kClassName:Ljava/lang/String;

    const-string v1, "onConsumeFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {p2}, Lklb/android/GameEngine/billing/util/IabResult;->isFailure()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    sget-object v0, Lklb/android/GameEngine/billing/listener/IOnConsumeFinishedListener;->kClassName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lklb/android/GameEngine/billing/util/IabResult;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-direct {p0, p2, p1}, Lklb/android/GameEngine/billing/listener/IOnConsumeFinishedListener;->onConsumeFinishedError(Lklb/android/GameEngine/billing/util/IabResult;Lklb/android/GameEngine/billing/util/Purchase;)V

    .line 66
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-direct {p0, p1}, Lklb/android/GameEngine/billing/listener/IOnConsumeFinishedListener;->onConsumeFinishedSuccess(Lklb/android/GameEngine/billing/util/Purchase;)V

    goto :goto_0
.end method
