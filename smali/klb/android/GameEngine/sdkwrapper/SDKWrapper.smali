.class public Lklb/android/GameEngine/sdkwrapper/SDKWrapper;
.super Ljava/lang/Object;
.source "SDKWrapper.java"


# static fields
.field private static inventory:Lklb/android/GameEngine/billing/util/Inventory; = null

.field private static final urlScheme:Ljava/lang/String; = "klab-lovelive-jp://"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onCreate(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 36
    const-string v0, "SDKWrapper"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return-void
.end method

.method public static onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 63
    const-string v0, "SDKWrapper"

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-void
.end method

.method public static onPayment(Lklb/android/GameEngine/billing/util/Purchase;)V
    .locals 6
    .param p0, "purchase"    # Lklb/android/GameEngine/billing/util/Purchase;

    .prologue
    .line 40
    const-string v3, "SDKWrapper"

    const-string v4, "onPayment"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const-string v3, "LOVELIVE_ID"

    const-string v4, "user_id"

    invoke-static {v3, v4}, Lklb/android/GameEngine/PFInterface;->getKeyChain(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 43
    .local v2, "userID":Ljava/lang/String;
    sget-object v3, Lklb/android/GameEngine/sdkwrapper/SDKWrapper;->inventory:Lklb/android/GameEngine/billing/util/Inventory;

    invoke-virtual {p0}, Lklb/android/GameEngine/billing/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lklb/android/GameEngine/billing/util/Inventory;->getSkuDetails(Ljava/lang/String;)Lklb/android/GameEngine/billing/util/SkuDetails;

    move-result-object v1

    .line 44
    .local v1, "skuDetails":Lklb/android/GameEngine/billing/util/SkuDetails;
    invoke-virtual {v1}, Lklb/android/GameEngine/billing/util/SkuDetails;->getPriceAmount()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    float-to-int v0, v3

    .line 45
    .local v0, "price":I
    const-string v3, "SDKWrapper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SKU:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lklb/android/GameEngine/billing/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lklb/android/GameEngine/billing/util/Purchase;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const-string v3, "SDKWrapper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "user:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "price:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return-void
.end method

.method public static onResume(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 51
    const-string v0, "SDKWrapper"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return-void
.end method

.method public static onSuccessQueryInventory(Lklb/android/GameEngine/billing/util/Inventory;)V
    .locals 0
    .param p0, "inventory"    # Lklb/android/GameEngine/billing/util/Inventory;

    .prologue
    .line 67
    sput-object p0, Lklb/android/GameEngine/sdkwrapper/SDKWrapper;->inventory:Lklb/android/GameEngine/billing/util/Inventory;

    .line 68
    return-void
.end method
