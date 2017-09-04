.class public Lklb/android/GameEngine/billing/manager/BillingManager;
.super Ljava/lang/Object;
.source "BillingManager.java"


# static fields
.field public static final BILLING_ALERT_MSG_DISABLED:Ljava/lang/String; = "\u304a\u4f7f\u3044\u306eGoogle Play\u30a2\u30ab\u30a6\u30f3\u30c8\u3067\u306f\u30a2\u30d7\u30ea\u5185\u8ab2\u91d1\u6a5f\u80fd\u3092\u3054\u5229\u7528\u9802\u3051\u307e\u305b\u3093\u3002"

.field public static final BILLING_ALERT_MSG_ITEM_NOTFOUND:Ljava/lang/String; = "\u5546\u54c1\u30ea\u30b9\u30c8\u3092\u53d6\u5f97\u51fa\u6765\u307e\u305b\u3093\u3067\u3057\u305f\u3002\u304a\u4f7f\u3044\u306eGoogle Play\u30a2\u30ab\u30a6\u30f3\u30c8\u3092\u78ba\u8a8d\u3057\u3066\u304f\u3060\u3055\u3044\u3002"

.field public static final BILLING_ALERT_TITLE:Ljava/lang/String; = "\u6a5f\u80fd\u5236\u9650"

.field public static final BILLING_DEFAULT_DELAY_MSEC:I = 0x3e8

.field public static final BILLING_NODELAY:I

.field private static billingManager:Lklb/android/GameEngine/billing/manager/BillingManager;

.field private static final kClassName:Ljava/lang/String;


# instance fields
.field private activity:Landroid/app/Activity;

.field private iabHelper:Lklb/android/GameEngine/billing/util/IabHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lklb/android/GameEngine/billing/manager/BillingManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lklb/android/GameEngine/billing/manager/BillingManager;->kClassName:Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    sput-object v0, Lklb/android/GameEngine/billing/manager/BillingManager;->billingManager:Lklb/android/GameEngine/billing/manager/BillingManager;

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;)V
    .locals 4
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object v0, p0, Lklb/android/GameEngine/billing/manager/BillingManager;->activity:Landroid/app/Activity;

    .line 36
    iput-object v0, p0, Lklb/android/GameEngine/billing/manager/BillingManager;->iabHelper:Lklb/android/GameEngine/billing/util/IabHelper;

    .line 58
    sget-object v0, Lklb/android/GameEngine/billing/manager/BillingManager;->kClassName:Ljava/lang/String;

    const-string v1, "BillingManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iput-object p1, p0, Lklb/android/GameEngine/billing/manager/BillingManager;->activity:Landroid/app/Activity;

    .line 61
    new-instance v0, Lklb/android/GameEngine/billing/util/IabHelper;

    iget-object v1, p0, Lklb/android/GameEngine/billing/manager/BillingManager;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lklb/android/GameEngine/billing/util/IabHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lklb/android/GameEngine/billing/manager/BillingManager;->iabHelper:Lklb/android/GameEngine/billing/util/IabHelper;

    .line 63
    iget-object v0, p0, Lklb/android/GameEngine/billing/manager/BillingManager;->iabHelper:Lklb/android/GameEngine/billing/util/IabHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lklb/android/GameEngine/billing/util/IabHelper;->enableDebugLogging(Z)V

    .line 65
    invoke-direct {p0}, Lklb/android/GameEngine/billing/manager/BillingManager;->isBillingAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
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

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lklb/android/GameEngine/billing/manager/BillingManager;->iabHelper:Lklb/android/GameEngine/billing/util/IabHelper;

    new-instance v1, Lklb/android/GameEngine/billing/listener/IOnIabSetupFinishedListener;

    invoke-direct {v1}, Lklb/android/GameEngine/billing/listener/IOnIabSetupFinishedListener;-><init>()V

    invoke-virtual {v0, v1}, Lklb/android/GameEngine/billing/util/IabHelper;->startSetup(Lklb/android/GameEngine/billing/util/IabHelper$OnIabSetupFinishedListener;)V

    goto :goto_0
.end method

.method public static getInstance(Landroid/app/Activity;)Lklb/android/GameEngine/billing/manager/BillingManager;
    .locals 1
    .param p0, "context"    # Landroid/app/Activity;

    .prologue
    .line 40
    invoke-static {p0}, Lklb/android/GameEngine/billing/manager/BillingManager;->init(Landroid/app/Activity;)V

    .line 41
    sget-object v0, Lklb/android/GameEngine/billing/manager/BillingManager;->billingManager:Lklb/android/GameEngine/billing/manager/BillingManager;

    return-object v0
.end method

.method public static init(Landroid/app/Activity;)V
    .locals 1
    .param p0, "context"    # Landroid/app/Activity;

    .prologue
    .line 76
    sget-object v0, Lklb/android/GameEngine/billing/manager/BillingManager;->billingManager:Lklb/android/GameEngine/billing/manager/BillingManager;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lklb/android/GameEngine/billing/manager/BillingManager;

    invoke-direct {v0, p0}, Lklb/android/GameEngine/billing/manager/BillingManager;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lklb/android/GameEngine/billing/manager/BillingManager;->billingManager:Lklb/android/GameEngine/billing/manager/BillingManager;

    .line 79
    :cond_0
    return-void
.end method

.method private isBillingAvailable()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 50
    iget-object v4, p0, Lklb/android/GameEngine/billing/manager/BillingManager;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 51
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 52
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "com.android.vending"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 54
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static requestTerminate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 110
    sget-object v0, Lklb/android/GameEngine/billing/manager/BillingManager;->billingManager:Lklb/android/GameEngine/billing/manager/BillingManager;

    if-eqz v0, :cond_1

    .line 111
    sget-object v0, Lklb/android/GameEngine/billing/manager/BillingManager;->billingManager:Lklb/android/GameEngine/billing/manager/BillingManager;

    iget-object v0, v0, Lklb/android/GameEngine/billing/manager/BillingManager;->iabHelper:Lklb/android/GameEngine/billing/util/IabHelper;

    if-eqz v0, :cond_0

    .line 112
    sget-object v0, Lklb/android/GameEngine/billing/manager/BillingManager;->billingManager:Lklb/android/GameEngine/billing/manager/BillingManager;

    iget-object v0, v0, Lklb/android/GameEngine/billing/manager/BillingManager;->iabHelper:Lklb/android/GameEngine/billing/util/IabHelper;

    invoke-virtual {v0}, Lklb/android/GameEngine/billing/util/IabHelper;->dispose()V

    .line 113
    sget-object v0, Lklb/android/GameEngine/billing/manager/BillingManager;->billingManager:Lklb/android/GameEngine/billing/manager/BillingManager;

    iput-object v1, v0, Lklb/android/GameEngine/billing/manager/BillingManager;->iabHelper:Lklb/android/GameEngine/billing/util/IabHelper;

    .line 115
    :cond_0
    sput-object v1, Lklb/android/GameEngine/billing/manager/BillingManager;->billingManager:Lklb/android/GameEngine/billing/manager/BillingManager;

    .line 117
    :cond_1
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 121
    iget-object v0, p0, Lklb/android/GameEngine/billing/manager/BillingManager;->iabHelper:Lklb/android/GameEngine/billing/util/IabHelper;

    invoke-virtual {v0, p1, p2, p3}, Lklb/android/GameEngine/billing/util/IabHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public requestBuy(Ljava/lang/String;)V
    .locals 3
    .param p1, "sku"    # Ljava/lang/String;

    .prologue
    .line 100
    const/16 v0, 0x1229

    .line 101
    .local v0, "requestCode":I
    iget-object v1, p0, Lklb/android/GameEngine/billing/manager/BillingManager;->iabHelper:Lklb/android/GameEngine/billing/util/IabHelper;

    new-instance v2, Lklb/android/GameEngine/billing/listener/IOnIabPurchaseFinishedListener;

    invoke-direct {v2, p1}, Lklb/android/GameEngine/billing/listener/IOnIabPurchaseFinishedListener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, v0, v2}, Lklb/android/GameEngine/billing/util/IabHelper;->launchPurchaseFlow(Ljava/lang/String;ILklb/android/GameEngine/billing/util/IabHelper$OnIabPurchaseFinishedListener;)V

    .line 105
    return-void
.end method

.method public requestConsume(Ljava/lang/String;I)V
    .locals 3
    .param p1, "receipt"    # Ljava/lang/String;
    .param p2, "delay"    # I

    .prologue
    .line 91
    invoke-static {p1}, Lklb/android/GameEngine/billing/util/Purchase;->fromReceiptString(Ljava/lang/String;)Lklb/android/GameEngine/billing/util/Purchase;

    move-result-object v0

    .line 92
    .local v0, "purchase":Lklb/android/GameEngine/billing/util/Purchase;
    iget-object v1, p0, Lklb/android/GameEngine/billing/manager/BillingManager;->iabHelper:Lklb/android/GameEngine/billing/util/IabHelper;

    new-instance v2, Lklb/android/GameEngine/billing/listener/IOnConsumeFinishedListener;

    invoke-direct {v2, v0}, Lklb/android/GameEngine/billing/listener/IOnConsumeFinishedListener;-><init>(Lklb/android/GameEngine/billing/util/Purchase;)V

    invoke-virtual {v1, v0, v2, p2}, Lklb/android/GameEngine/billing/util/IabHelper;->consumeAsync(Lklb/android/GameEngine/billing/util/Purchase;Lklb/android/GameEngine/billing/util/IabHelper$OnConsumeFinishedListener;I)V

    .line 96
    return-void
.end method

.method public requestGetProducts(Ljava/util/List;I)V
    .locals 3
    .param p2, "delay"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, "skuList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lklb/android/GameEngine/billing/manager/BillingManager;->iabHelper:Lklb/android/GameEngine/billing/util/IabHelper;

    const/4 v1, 0x1

    new-instance v2, Lklb/android/GameEngine/billing/listener/IQueryInventoryFinishedListener;

    invoke-direct {v2, p1}, Lklb/android/GameEngine/billing/listener/IQueryInventoryFinishedListener;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1, p1, v2, p2}, Lklb/android/GameEngine/billing/util/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lklb/android/GameEngine/billing/util/IabHelper$QueryInventoryFinishedListener;I)V

    .line 87
    return-void
.end method
