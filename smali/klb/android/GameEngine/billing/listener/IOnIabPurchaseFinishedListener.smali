.class public Lklb/android/GameEngine/billing/listener/IOnIabPurchaseFinishedListener;
.super Ljava/lang/Object;
.source "IOnIabPurchaseFinishedListener.java"

# interfaces
.implements Lklb/android/GameEngine/billing/util/IabHelper$OnIabPurchaseFinishedListener;


# static fields
.field private static final kClassName:Ljava/lang/String;


# instance fields
.field private sku:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lklb/android/GameEngine/billing/listener/IOnIabPurchaseFinishedListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lklb/android/GameEngine/billing/listener/IOnIabPurchaseFinishedListener;->kClassName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "_sku"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lklb/android/GameEngine/billing/listener/IOnIabPurchaseFinishedListener;->sku:Ljava/lang/String;

    .line 63
    sget-object v0, Lklb/android/GameEngine/billing/listener/IOnIabPurchaseFinishedListener;->kClassName:Ljava/lang/String;

    const-string v1, "IOnIabPurchaseFinishedListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iput-object p1, p0, Lklb/android/GameEngine/billing/listener/IOnIabPurchaseFinishedListener;->sku:Ljava/lang/String;

    .line 67
    invoke-direct {p0}, Lklb/android/GameEngine/billing/listener/IOnIabPurchaseFinishedListener;->sendMessagePurchasing()V

    .line 68
    return-void
.end method

.method private onIabPurchaseFinishedComplete(Lklb/android/GameEngine/billing/util/Purchase;)V
    .locals 2
    .param p1, "purchase"    # Lklb/android/GameEngine/billing/util/Purchase;

    .prologue
    .line 79
    sget-object v0, Lklb/android/GameEngine/billing/listener/IOnIabPurchaseFinishedListener;->kClassName:Ljava/lang/String;

    const-string v1, "onIabPurchaseFinishedComplete"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v0, p0, Lklb/android/GameEngine/billing/listener/IOnIabPurchaseFinishedListener;->sku:Ljava/lang/String;

    invoke-static {v0, p1}, Lklb/android/GameEngine/billing/listener/IOnIabPurchaseFinishedListener;->sendMessagePurchased(Ljava/lang/String;Lklb/android/GameEngine/billing/util/Purchase;)V

    .line 82
    return-void
.end method

.method private onIabPurchaseFinishedError(Lklb/android/GameEngine/billing/util/Purchase;Lklb/android/GameEngine/billing/util/IabResult;)V
    .locals 2
    .param p1, "purchase"    # Lklb/android/GameEngine/billing/util/Purchase;
    .param p2, "result"    # Lklb/android/GameEngine/billing/util/IabResult;

    .prologue
    .line 72
    sget-object v0, Lklb/android/GameEngine/billing/listener/IOnIabPurchaseFinishedListener;->kClassName:Ljava/lang/String;

    const-string v1, "onIabPurchaseFinishedError"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-direct {p0, p2}, Lklb/android/GameEngine/billing/listener/IOnIabPurchaseFinishedListener;->sendMessageFailed(Lklb/android/GameEngine/billing/util/IabResult;)V

    .line 75
    return-void
.end method

.method private sendMessageFailed(Lklb/android/GameEngine/billing/util/IabResult;)V
    .locals 5
    .param p1, "result"    # Lklb/android/GameEngine/billing/util/IabResult;

    .prologue
    .line 27
    sget-object v1, Lklb/android/GameEngine/billing/listener/IOnIabPurchaseFinishedListener;->kClassName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendMessageFailed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lklb/android/GameEngine/billing/util/IabResult;->getResponse()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    const/4 v0, 0x5

    .line 31
    .local v0, "error_code":I
    invoke-virtual {p1}, Lklb/android/GameEngine/billing/util/IabResult;->getResponse()I

    move-result v1

    const/16 v2, -0x3ed

    if-ne v1, v2, :cond_0

    .line 32
    const/16 v0, 0x9

    .line 35
    :cond_0
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lklb/android/GameEngine/billing/listener/IOnIabPurchaseFinishedListener;->sku:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v1, v0, v2, v3, v4}, Lklb/android/GameEngine/PFInterface;->clientControlEvent(IILjava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public static sendMessagePurchased(Ljava/lang/String;Lklb/android/GameEngine/billing/util/Purchase;)V
    .locals 4
    .param p0, "sku"    # Ljava/lang/String;
    .param p1, "purchase"    # Lklb/android/GameEngine/billing/util/Purchase;

    .prologue
    .line 49
    invoke-virtual {p1}, Lklb/android/GameEngine/billing/util/Purchase;->toReceiptString()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "data_str":Ljava/lang/String;
    sget-object v1, Lklb/android/GameEngine/billing/listener/IOnIabPurchaseFinishedListener;->kClassName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Purchased"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    sget-object v1, Lklb/android/GameEngine/billing/listener/IOnIabPurchaseFinishedListener;->kClassName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receipt:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p0, v0}, Lklb/android/GameEngine/PFInterface;->clientControlEvent(IILjava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method private sendMessagePurchasing()V
    .locals 5

    .prologue
    .line 41
    sget-object v0, Lklb/android/GameEngine/billing/listener/IOnIabPurchaseFinishedListener;->kClassName:Ljava/lang/String;

    const-string v1, "sendMessagePurchasing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    iget-object v3, p0, Lklb/android/GameEngine/billing/listener/IOnIabPurchaseFinishedListener;->sku:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v0, v1, v2, v3, v4}, Lklb/android/GameEngine/PFInterface;->clientControlEvent(IILjava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method


# virtual methods
.method public onIabPurchaseFinished(Lklb/android/GameEngine/billing/util/IabResult;Lklb/android/GameEngine/billing/util/Purchase;)V
    .locals 2
    .param p1, "result"    # Lklb/android/GameEngine/billing/util/IabResult;
    .param p2, "purchase"    # Lklb/android/GameEngine/billing/util/Purchase;

    .prologue
    .line 87
    sget-object v0, Lklb/android/GameEngine/billing/listener/IOnIabPurchaseFinishedListener;->kClassName:Ljava/lang/String;

    const-string v1, "onIabPurchaseFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual {p1}, Lklb/android/GameEngine/billing/util/IabResult;->isFailure()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    .line 90
    :cond_0
    sget-object v0, Lklb/android/GameEngine/billing/listener/IOnIabPurchaseFinishedListener;->kClassName:Ljava/lang/String;

    const-string v1, "Failure"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-direct {p0, p2, p1}, Lklb/android/GameEngine/billing/listener/IOnIabPurchaseFinishedListener;->onIabPurchaseFinishedError(Lklb/android/GameEngine/billing/util/Purchase;Lklb/android/GameEngine/billing/util/IabResult;)V

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_1
    invoke-direct {p0, p2}, Lklb/android/GameEngine/billing/listener/IOnIabPurchaseFinishedListener;->onIabPurchaseFinishedComplete(Lklb/android/GameEngine/billing/util/Purchase;)V

    goto :goto_0
.end method
