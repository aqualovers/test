.class public Lextension/klb/FOX/PFInterface;
.super Ljava/lang/Object;
.source "PFInterface.java"


# static fields
.field private static final USE_FOX:Z = true

.field private static fox:Ljp/appAdForce/android/AdManager; = null

.field private static foxLtvPointPurchase:I = 0x0

.field private static ltv:Ljp/appAdForce/android/LtvManager; = null

.field private static mFOX_InstallReceiver:Ljp/appAdForce/android/InstallReceiver; = null

.field private static m_inventory:Lklb/android/GameEngine/billing/util/Inventory; = null

.field private static final urlScheme:Ljava/lang/String; = "klab-lovelive-jp://"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/16 v0, 0x2de

    sput v0, Lextension/klb/FOX/PFInterface;->foxLtvPointPurchase:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static afterOnActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 113
    return-void
.end method

.method public static afterOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    :try_start_0
    invoke-static {p0}, Lextension/klb/FOX/PFInterface;->getAdManager(Landroid/app/Activity;)Ljp/appAdForce/android/AdManager;

    move-result-object v0

    const-string v1, "klab-lovelive-jp://"

    invoke-virtual {v0, v1}, Ljp/appAdForce/android/AdManager;->sendConversion(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :goto_0
    return-void

    .line 39
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static afterOnPause()V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method public static afterOnRestart()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method public static afterOnResume(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 87
    :try_start_0
    invoke-static {p0}, Ljp/appAdForce/android/AnalyticsManager;->sendStartSession(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 97
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 98
    invoke-static {p0}, Lextension/klb/FOX/PFInterface;->getAdManager(Landroid/app/Activity;)Ljp/appAdForce/android/AdManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljp/appAdForce/android/AdManager;->sendReengagementConversion(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 105
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_1
    return-void

    .line 89
    :catch_0
    move-exception v1

    goto :goto_0

    .line 102
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static afterOnStart()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public static afterOnStop()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public static beforeOnActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 109
    return-void
.end method

.method public static beforeOnPause()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method public static beforeOnRestart()V
    .locals 0

    .prologue
    .line 57
    return-void
.end method

.method public static beforeOnResume()V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method private static getAdManager(Landroid/app/Activity;)Ljp/appAdForce/android/AdManager;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 148
    sget-object v0, Lextension/klb/FOX/PFInterface;->fox:Ljp/appAdForce/android/AdManager;

    if-nez v0, :cond_0

    .line 149
    invoke-static {}, Ljp/appAdForce/android/AdManager;->updateFrom2_10_4g()V

    .line 150
    new-instance v0, Ljp/appAdForce/android/AdManager;

    invoke-direct {v0, p0}, Ljp/appAdForce/android/AdManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lextension/klb/FOX/PFInterface;->fox:Ljp/appAdForce/android/AdManager;

    .line 152
    :cond_0
    new-instance v0, Ljp/appAdForce/android/LtvManager;

    sget-object v1, Lextension/klb/FOX/PFInterface;->fox:Ljp/appAdForce/android/AdManager;

    invoke-direct {v0, v1}, Ljp/appAdForce/android/LtvManager;-><init>(Ljp/appAdForce/android/AdManager;)V

    sput-object v0, Lextension/klb/FOX/PFInterface;->ltv:Ljp/appAdForce/android/LtvManager;

    .line 154
    sget-object v0, Lextension/klb/FOX/PFInterface;->fox:Ljp/appAdForce/android/AdManager;

    return-object v0
.end method

.method public static onPayment(Lklb/android/GameEngine/billing/util/Purchase;)V
    .locals 6
    .param p0, "purchase"    # Lklb/android/GameEngine/billing/util/Purchase;

    .prologue
    .line 116
    const-string v3, "LOVELIVE_ID"

    const-string v4, "user_id"

    invoke-static {v3, v4}, Lklb/android/GameEngine/PFInterface;->getKeyChain(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 117
    .local v2, "userID":Ljava/lang/String;
    sget-object v3, Lextension/klb/FOX/PFInterface;->m_inventory:Lklb/android/GameEngine/billing/util/Inventory;

    invoke-virtual {p0}, Lklb/android/GameEngine/billing/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lklb/android/GameEngine/billing/util/Inventory;->getSkuDetails(Ljava/lang/String;)Lklb/android/GameEngine/billing/util/SkuDetails;

    move-result-object v1

    .line 118
    .local v1, "skuDetails":Lklb/android/GameEngine/billing/util/SkuDetails;
    invoke-virtual {v1}, Lklb/android/GameEngine/billing/util/SkuDetails;->getPriceAmount()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    float-to-int v0, v3

    .line 125
    .local v0, "price":I
    :try_start_0
    sget-object v3, Lextension/klb/FOX/PFInterface;->ltv:Ljp/appAdForce/android/LtvManager;

    if-eqz v3, :cond_0

    .line 126
    sget-object v3, Lextension/klb/FOX/PFInterface;->ltv:Ljp/appAdForce/android/LtvManager;

    const-string v4, "_sku"

    invoke-virtual {p0}, Lklb/android/GameEngine/billing/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljp/appAdForce/android/LtvManager;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    sget-object v3, Lextension/klb/FOX/PFInterface;->ltv:Ljp/appAdForce/android/LtvManager;

    const-string v4, "PackageName"

    invoke-virtual {p0}, Lklb/android/GameEngine/billing/util/Purchase;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljp/appAdForce/android/LtvManager;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    sget-object v3, Lextension/klb/FOX/PFInterface;->ltv:Ljp/appAdForce/android/LtvManager;

    const-string v4, "_price"

    invoke-virtual {v3, v4, v0}, Ljp/appAdForce/android/LtvManager;->addParam(Ljava/lang/String;I)V

    .line 129
    sget-object v3, Lextension/klb/FOX/PFInterface;->ltv:Ljp/appAdForce/android/LtvManager;

    sget v4, Lextension/klb/FOX/PFInterface;->foxLtvPointPurchase:I

    invoke-virtual {v3, v4, v2}, Ljp/appAdForce/android/LtvManager;->sendLtvConversion(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static onReceiveInstallReferrer(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 46
    new-instance v0, Ljp/appAdForce/android/InstallReceiver;

    invoke-direct {v0}, Ljp/appAdForce/android/InstallReceiver;-><init>()V

    sput-object v0, Lextension/klb/FOX/PFInterface;->mFOX_InstallReceiver:Ljp/appAdForce/android/InstallReceiver;

    .line 49
    :try_start_0
    sget-object v0, Lextension/klb/FOX/PFInterface;->mFOX_InstallReceiver:Ljp/appAdForce/android/InstallReceiver;

    invoke-virtual {v0, p0, p1}, Ljp/appAdForce/android/InstallReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static onSuccessQueryInventory(Lklb/android/GameEngine/billing/util/Inventory;)V
    .locals 0
    .param p0, "inventory"    # Lklb/android/GameEngine/billing/util/Inventory;

    .prologue
    .line 142
    sput-object p0, Lextension/klb/FOX/PFInterface;->m_inventory:Lklb/android/GameEngine/billing/util/Inventory;

    .line 143
    return-void
.end method
