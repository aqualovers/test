.class public Lklb/android/GameEngine/billing/util/IabHelper;
.super Ljava/lang/Object;
.source "IabHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lklb/android/GameEngine/billing/util/IabHelper$OnConsumeMultiFinishedListener;,
        Lklb/android/GameEngine/billing/util/IabHelper$OnConsumeFinishedListener;,
        Lklb/android/GameEngine/billing/util/IabHelper$QueryInventoryFinishedListener;,
        Lklb/android/GameEngine/billing/util/IabHelper$OnIabPurchaseFinishedListener;,
        Lklb/android/GameEngine/billing/util/IabHelper$OnIabSetupFinishedListener;
    }
.end annotation


# static fields
.field public static final BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:I = 0x3

.field public static final BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:I = 0x5

.field public static final BILLING_RESPONSE_RESULT_ERROR:I = 0x6

.field public static final BILLING_RESPONSE_RESULT_ITEM_ALREADY_OWNED:I = 0x7

.field public static final BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:I = 0x8

.field public static final BILLING_RESPONSE_RESULT_ITEM_UNAVAILABLE:I = 0x4

.field public static final BILLING_RESPONSE_RESULT_OK:I = 0x0

.field public static final BILLING_RESPONSE_RESULT_USER_CANCELED:I = 0x1

.field public static final GET_SKU_DETAILS_ITEM_LIST:Ljava/lang/String; = "ITEM_ID_LIST"

.field public static final GET_SKU_DETAILS_ITEM_TYPE_LIST:Ljava/lang/String; = "ITEM_TYPE_LIST"

.field public static final IABHELPER_BAD_RESPONSE:I = -0x3ea

.field public static final IABHELPER_ERROR_BASE:I = -0x3e8

.field public static final IABHELPER_MISSING_TOKEN:I = -0x3ef

.field public static final IABHELPER_REMOTE_EXCEPTION:I = -0x3e9

.field public static final IABHELPER_SEND_INTENT_FAILED:I = -0x3ec

.field public static final IABHELPER_UNKNOWN_ERROR:I = -0x3f0

.field public static final IABHELPER_UNKNOWN_PURCHASE_RESPONSE:I = -0x3ee

.field public static final IABHELPER_USER_CANCELLED:I = -0x3ed

.field public static final IABHELPER_VERIFICATION_FAILED:I = -0x3eb

.field public static final INAPP_CONTINUATION_TOKEN:Ljava/lang/String; = "INAPP_CONTINUATION_TOKEN"

.field public static final ITEM_TYPE_INAPP:Ljava/lang/String; = "inapp"

.field public static final RESPONSE_BUY_INTENT:Ljava/lang/String; = "BUY_INTENT"

.field public static final RESPONSE_CODE:Ljava/lang/String; = "RESPONSE_CODE"

.field public static final RESPONSE_GET_SKU_DETAILS_LIST:Ljava/lang/String; = "DETAILS_LIST"

.field public static final RESPONSE_INAPP_ITEM_LIST:Ljava/lang/String; = "INAPP_PURCHASE_ITEM_LIST"

.field public static final RESPONSE_INAPP_PURCHASE_DATA:Ljava/lang/String; = "INAPP_PURCHASE_DATA"

.field public static final RESPONSE_INAPP_PURCHASE_DATA_LIST:Ljava/lang/String; = "INAPP_PURCHASE_DATA_LIST"

.field public static final RESPONSE_INAPP_SIGNATURE:Ljava/lang/String; = "INAPP_DATA_SIGNATURE"

.field public static final RESPONSE_INAPP_SIGNATURE_LIST:Ljava/lang/String; = "INAPP_DATA_SIGNATURE_LIST"


# instance fields
.field mActivity:Landroid/app/Activity;

.field volatile mAsyncInProgress:Z

.field volatile mAsyncOperation:Ljava/lang/String;

.field mDebugLog:Z

.field mDebugTag:Ljava/lang/String;

.field volatile mImmediateAsyncExists:Z

.field mPurchaseListener:Lklb/android/GameEngine/billing/util/IabHelper$OnIabPurchaseFinishedListener;

.field volatile mRequestCode:I

.field mService:Lcom/android/vending/billing/IInAppBillingService;

.field mServiceConn:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-boolean v1, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mDebugLog:Z

    .line 91
    const-string v0, "IabHelper"

    iput-object v0, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mDebugTag:Ljava/lang/String;

    .line 95
    iput-boolean v1, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mAsyncInProgress:Z

    .line 96
    iput-boolean v1, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mImmediateAsyncExists:Z

    .line 100
    const-string v0, ""

    iput-object v0, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mAsyncOperation:Ljava/lang/String;

    .line 103
    iput-object v2, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mActivity:Landroid/app/Activity;

    .line 106
    iput-object v2, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    .line 107
    iput-object v2, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    .line 159
    iput-object p1, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mActivity:Landroid/app/Activity;

    .line 161
    const-string v0, "IAB helper created."

    invoke-direct {p0, v0}, Lklb/android/GameEngine/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method static synthetic access$000(Lklb/android/GameEngine/billing/util/IabHelper;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lklb/android/GameEngine/billing/util/IabHelper;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lklb/android/GameEngine/billing/util/IabHelper;->logError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lklb/android/GameEngine/billing/util/IabHelper;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lklb/android/GameEngine/billing/util/IabHelper;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lklb/android/GameEngine/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lklb/android/GameEngine/billing/util/IabHelper;)V
    .locals 0
    .param p0, "x0"    # Lklb/android/GameEngine/billing/util/IabHelper;

    .prologue
    .line 88
    invoke-direct {p0}, Lklb/android/GameEngine/billing/util/IabHelper;->flagEndAsync()V

    return-void
.end method

.method static synthetic access$300(Lklb/android/GameEngine/billing/util/IabHelper;Lklb/android/GameEngine/billing/util/IabHelper$OnIabSetupFinishedListener;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lklb/android/GameEngine/billing/util/IabHelper;
    .param p1, "x1"    # Lklb/android/GameEngine/billing/util/IabHelper$OnIabSetupFinishedListener;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-direct {p0, p1, p2, p3}, Lklb/android/GameEngine/billing/util/IabHelper;->setupFinished(Lklb/android/GameEngine/billing/util/IabHelper$OnIabSetupFinishedListener;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lklb/android/GameEngine/billing/util/IabHelper;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lklb/android/GameEngine/billing/util/IabHelper;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lklb/android/GameEngine/billing/util/IabHelper;->flagStartAsync(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$500(Lklb/android/GameEngine/billing/util/IabHelper;Lklb/android/GameEngine/billing/util/IabHelper$OnIabSetupFinishedListener;)V
    .locals 0
    .param p0, "x0"    # Lklb/android/GameEngine/billing/util/IabHelper;
    .param p1, "x1"    # Lklb/android/GameEngine/billing/util/IabHelper$OnIabSetupFinishedListener;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lklb/android/GameEngine/billing/util/IabHelper;->bindService(Lklb/android/GameEngine/billing/util/IabHelper$OnIabSetupFinishedListener;)V

    return-void
.end method

.method static synthetic access$600(Lklb/android/GameEngine/billing/util/IabHelper;I)V
    .locals 0
    .param p0, "x0"    # Lklb/android/GameEngine/billing/util/IabHelper;
    .param p1, "x1"    # I

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lklb/android/GameEngine/billing/util/IabHelper;->delay(I)V

    return-void
.end method

.method static synthetic access$700(Lklb/android/GameEngine/billing/util/IabHelper;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lklb/android/GameEngine/billing/util/IabHelper;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lklb/android/GameEngine/billing/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lklb/android/GameEngine/billing/util/IabHelper;Landroid/os/Bundle;)I
    .locals 1
    .param p0, "x0"    # Lklb/android/GameEngine/billing/util/IabHelper;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lklb/android/GameEngine/billing/util/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lklb/android/GameEngine/billing/util/IabHelper;Lklb/android/GameEngine/billing/util/Purchase;)V
    .locals 0
    .param p0, "x0"    # Lklb/android/GameEngine/billing/util/IabHelper;
    .param p1, "x1"    # Lklb/android/GameEngine/billing/util/Purchase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lklb/android/GameEngine/billing/util/IabException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lklb/android/GameEngine/billing/util/IabHelper;->consume(Lklb/android/GameEngine/billing/util/Purchase;)V

    return-void
.end method

.method private bindService(Lklb/android/GameEngine/billing/util/IabHelper$OnIabSetupFinishedListener;)V
    .locals 5
    .param p1, "listener"    # Lklb/android/GameEngine/billing/util/IabHelper$OnIabSetupFinishedListener;

    .prologue
    .line 210
    new-instance v2, Lklb/android/GameEngine/billing/util/IabHelper$2;

    invoke-direct {v2, p0, p1}, Lklb/android/GameEngine/billing/util/IabHelper$2;-><init>(Lklb/android/GameEngine/billing/util/IabHelper;Lklb/android/GameEngine/billing/util/IabHelper$OnIabSetupFinishedListener;)V

    iput-object v2, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    .line 249
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 250
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.android.vending"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    iget-object v2, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 253
    .local v1, "ret":Z
    if-nez v1, :cond_0

    .line 254
    const-string v2, "Failed to bind service"

    invoke-direct {p0, v2}, Lklb/android/GameEngine/billing/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 256
    :cond_0
    return-void
.end method

.method private checkSetupDone(Ljava/lang/String;)V
    .locals 3
    .param p1, "operation"    # Ljava/lang/String;

    .prologue
    .line 768
    iget-object v0, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    if-nez v0, :cond_0

    .line 769
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal state for operation ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): IAB helper is not set up."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lklb/android/GameEngine/billing/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 770
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IAB helper is not set up. Can\'t perform operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 772
    :cond_0
    return-void
.end method

.method private consume(Lklb/android/GameEngine/billing/util/Purchase;)V
    .locals 8
    .param p1, "itemInfo"    # Lklb/android/GameEngine/billing/util/Purchase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lklb/android/GameEngine/billing/util/IabException;
        }
    .end annotation

    .prologue
    .line 653
    const-string v4, "consume"

    invoke-direct {p0, v4}, Lklb/android/GameEngine/billing/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 656
    if-nez p1, :cond_0

    .line 657
    :try_start_0
    new-instance v4, Lklb/android/GameEngine/billing/util/IabException;

    const/16 v5, -0x3ed

    const-string v6, "PurchaseInfo is null."

    invoke-direct {v4, v5, v6}, Lklb/android/GameEngine/billing/util/IabException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 677
    :catch_0
    move-exception v0

    .line 678
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v4, Lklb/android/GameEngine/billing/util/IabException;

    const/16 v5, -0x3e9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Remote exception while consuming. PurchaseInfo: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6, v0}, Lklb/android/GameEngine/billing/util/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 659
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lklb/android/GameEngine/billing/util/Purchase;->getToken()Ljava/lang/String;

    move-result-object v3

    .line 660
    .local v3, "token":Ljava/lang/String;
    invoke-virtual {p1}, Lklb/android/GameEngine/billing/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v2

    .line 661
    .local v2, "sku":Ljava/lang/String;
    if-eqz v3, :cond_1

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 662
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t consume "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". No token."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lklb/android/GameEngine/billing/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 663
    new-instance v4, Lklb/android/GameEngine/billing/util/IabException;

    const/16 v5, -0x3ef

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PurchaseInfo is missing token for sku: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lklb/android/GameEngine/billing/util/IabException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 667
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Consuming sku: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lklb/android/GameEngine/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 668
    iget-object v4, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v5, 0x3

    iget-object v6, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6, v3}, Lcom/android/vending/billing/IInAppBillingService;->consumePurchase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 669
    .local v1, "response":I
    if-nez v1, :cond_3

    .line 670
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Successfully consumed sku: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lklb/android/GameEngine/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 680
    return-void

    .line 673
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error consuming consuming sku "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lklb/android/GameEngine/billing/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lklb/android/GameEngine/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 674
    new-instance v4, Lklb/android/GameEngine/billing/util/IabException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error consuming sku "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lklb/android/GameEngine/billing/util/IabException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method private consumeAsyncInternal(Ljava/util/List;Lklb/android/GameEngine/billing/util/IabHelper$OnConsumeFinishedListener;Lklb/android/GameEngine/billing/util/IabHelper$OnConsumeMultiFinishedListener;I)V
    .locals 7
    .param p2, "singleListener"    # Lklb/android/GameEngine/billing/util/IabHelper$OnConsumeFinishedListener;
    .param p3, "multiListener"    # Lklb/android/GameEngine/billing/util/IabHelper$OnConsumeMultiFinishedListener;
    .param p4, "delay_msec"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lklb/android/GameEngine/billing/util/Purchase;",
            ">;",
            "Lklb/android/GameEngine/billing/util/IabHelper$OnConsumeFinishedListener;",
            "Lklb/android/GameEngine/billing/util/IabHelper$OnConsumeMultiFinishedListener;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 973
    .local p1, "purchases":Ljava/util/List;, "Ljava/util/List<Lklb/android/GameEngine/billing/util/Purchase;>;"
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lklb/android/GameEngine/billing/util/IabHelper$7;

    move-object v1, p0

    move v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lklb/android/GameEngine/billing/util/IabHelper$7;-><init>(Lklb/android/GameEngine/billing/util/IabHelper;ILjava/util/List;Lklb/android/GameEngine/billing/util/IabHelper$OnConsumeFinishedListener;Lklb/android/GameEngine/billing/util/IabHelper$OnConsumeMultiFinishedListener;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 1013
    return-void
.end method

.method private delay(I)V
    .locals 4
    .param p1, "delay_msec"    # I

    .prologue
    .line 955
    if-lez p1, :cond_0

    .line 956
    const-string v1, "delaying consuming"

    invoke-direct {p0, v1}, Lklb/android/GameEngine/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 958
    int-to-long v2, p1

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 966
    :cond_0
    :goto_0
    return-void

    .line 959
    :catch_0
    move-exception v0

    .line 963
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method private flagEndAsync()V
    .locals 2

    .prologue
    .line 854
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ending async operation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mAsyncOperation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lklb/android/GameEngine/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 855
    const-string v0, ""

    iput-object v0, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mAsyncOperation:Ljava/lang/String;

    .line 856
    const/4 v0, 0x0

    iput-boolean v0, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mAsyncInProgress:Z

    .line 857
    return-void
.end method

.method private flagStartAsync(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "immediate"    # Z

    .prologue
    const/4 v3, 0x1

    .line 815
    const/4 v0, 0x1

    .line 820
    .local v0, "needsWait":Z
    if-eqz p2, :cond_0

    .line 821
    iput-boolean v3, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mImmediateAsyncExists:Z

    .line 824
    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    .line 825
    monitor-enter p0

    .line 826
    :try_start_0
    iget-boolean v1, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mAsyncInProgress:Z

    if-nez v1, :cond_2

    .line 827
    iget-boolean v1, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mImmediateAsyncExists:Z

    if-eqz v1, :cond_1

    if-nez p2, :cond_1

    .line 828
    const-string v1, "yield immediate task"

    invoke-direct {p0, v1}, Lklb/android/GameEngine/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 836
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 838
    if-eqz v0, :cond_0

    .line 839
    const/16 v1, 0x3e8

    invoke-direct {p0, v1}, Lklb/android/GameEngine/billing/util/IabHelper;->delay(I)V

    goto :goto_0

    .line 830
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mAsyncInProgress:Z

    .line 831
    const/4 v0, 0x0

    goto :goto_1

    .line 834
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is waiting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mAsyncOperation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " running in another thread"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lklb/android/GameEngine/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    goto :goto_1

    .line 836
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 843
    :cond_3
    if-eqz p2, :cond_4

    .line 844
    iput-boolean v3, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mImmediateAsyncExists:Z

    .line 847
    :cond_4
    iput-object p1, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mAsyncOperation:Ljava/lang/String;

    .line 848
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting async operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lklb/android/GameEngine/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 849
    return-void
.end method

.method private getResponseCodeFromBundle(Landroid/os/Bundle;)I
    .locals 4
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 776
    const-string v1, "RESPONSE_CODE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 777
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 778
    const-string v1, "Bundle with null response code, assuming OK (known issue)"

    invoke-direct {p0, v1}, Lklb/android/GameEngine/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 779
    const/4 v1, 0x0

    .line 782
    .end local v0    # "o":Ljava/lang/Object;
    :goto_0
    return v1

    .line 781
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 782
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Long;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-int v1, v2

    goto :goto_0

    .line 784
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_2
    const-string v1, "Unexpected type for bundle response code."

    invoke-direct {p0, v1}, Lklb/android/GameEngine/billing/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 785
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lklb/android/GameEngine/billing/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 786
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type for bundle response code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getResponseCodeFromIntent(Landroid/content/Intent;)I
    .locals 4
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 792
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "RESPONSE_CODE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 793
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 794
    const-string v1, "Intent with no response code, assuming OK (known issue)"

    invoke-direct {p0, v1}, Lklb/android/GameEngine/billing/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 795
    const/4 v1, 0x0

    .line 798
    .end local v0    # "o":Ljava/lang/Object;
    :goto_0
    return v1

    .line 797
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 798
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Long;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-int v1, v2

    goto :goto_0

    .line 800
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_2
    const-string v1, "Unexpected type for intent response code."

    invoke-direct {p0, v1}, Lklb/android/GameEngine/billing/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 801
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lklb/android/GameEngine/billing/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 802
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type for intent response code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getResponseDesc(I)Ljava/lang/String;
    .locals 5
    .param p0, "code"    # I

    .prologue
    .line 740
    const-string v3, "0:OK/1:User Canceled/2:Unknown/3:Billing Unavailable/4:Item unavailable/5:Developer Error/6:Error/7:Item Already Owned/8:Item not owned"

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 744
    .local v0, "iab_msgs":[Ljava/lang/String;
    const-string v3, "0:OK/-1001:Remote exception during initialization/-1002:Bad response received/-1003:Purchase signature verification failed/-1004:Send intent failed/-1005:User cancelled/-1006:Unknown purchase response/-1007:Missing token/-1008:Unknown error"

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 753
    .local v1, "iabhelper_msgs":[Ljava/lang/String;
    const/16 v3, -0x3e8

    if-gt p0, v3, :cond_1

    .line 754
    rsub-int v2, p0, -0x3e8

    .line 755
    .local v2, "index":I
    if-ltz v2, :cond_0

    array-length v3, v1

    if-ge v2, v3, :cond_0

    aget-object v3, v1, v2

    .line 761
    .end local v2    # "index":I
    :goto_0
    return-object v3

    .line 756
    .restart local v2    # "index":I
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":Unknown IAB Helper Error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 758
    .end local v2    # "index":I
    :cond_1
    if-ltz p0, :cond_2

    array-length v3, v0

    if-lt p0, v3, :cond_3

    .line 759
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":Unknown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 761
    :cond_3
    aget-object v3, v0, p0

    goto :goto_0
.end method

.method private logDebug(Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1016
    iget-boolean v0, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mDebugLog:Z

    if-eqz v0, :cond_0

    .line 1017
    iget-object v0, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mDebugTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    :cond_0
    return-void
.end method

.method private logError(Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1022
    iget-object v0, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mDebugTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "In-app billing error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    return-void
.end method

.method private logWarn(Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1026
    iget-object v0, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mDebugTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "In-app billing warning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    return-void
.end method

.method private queryPurchases(Lklb/android/GameEngine/billing/util/Inventory;)I
    .locals 17
    .param p1, "inv"    # Lklb/android/GameEngine/billing/util/Inventory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 862
    const-string v13, "Querying owned items..."

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lklb/android/GameEngine/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 863
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Package name: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lklb/android/GameEngine/billing/util/IabHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lklb/android/GameEngine/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 864
    const/4 v12, 0x0

    .line 865
    .local v12, "verificationFailed":Z
    const/4 v1, 0x0

    .line 868
    .local v1, "continueToken":Ljava/lang/String;
    :cond_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Calling getPurchases with continuation token: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lklb/android/GameEngine/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 869
    move-object/from16 v0, p0

    iget-object v13, v0, Lklb/android/GameEngine/billing/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v14, 0x3

    move-object/from16 v0, p0

    iget-object v15, v0, Lklb/android/GameEngine/billing/util/IabHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v15}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v15

    const-string v16, "inapp"

    move-object/from16 v0, v16

    invoke-interface {v13, v14, v15, v0, v1}, Lcom/android/vending/billing/IInAppBillingService;->getPurchases(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 872
    .local v3, "ownedItems":Landroid/os/Bundle;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lklb/android/GameEngine/billing/util/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v8

    .line 873
    .local v8, "response":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Owned items response: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lklb/android/GameEngine/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 874
    if-eqz v8, :cond_1

    .line 875
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getPurchases() failed: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v8}, Lklb/android/GameEngine/billing/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lklb/android/GameEngine/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 912
    .end local v8    # "response":I
    :goto_0
    return v8

    .line 878
    .restart local v8    # "response":I
    :cond_1
    const-string v13, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    const-string v13, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    const-string v13, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 881
    :cond_2
    const-string v13, "Bundle returned from getPurchases() doesn\'t contain required fields."

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lklb/android/GameEngine/billing/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 882
    const/16 v8, -0x3ea

    goto :goto_0

    .line 885
    :cond_3
    const-string v13, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 887
    .local v4, "ownedSkus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v13, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 889
    .local v7, "purchaseDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v13, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 892
    .local v10, "signatureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v2, v13, :cond_5

    .line 893
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 894
    .local v6, "purchaseData":Ljava/lang/String;
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 895
    .local v9, "signature":Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 897
    .local v11, "sku":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Sku is owned: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lklb/android/GameEngine/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 898
    new-instance v5, Lklb/android/GameEngine/billing/util/Purchase;

    invoke-direct {v5, v6, v9}, Lklb/android/GameEngine/billing/util/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    .local v5, "purchase":Lklb/android/GameEngine/billing/util/Purchase;
    invoke-virtual {v5}, Lklb/android/GameEngine/billing/util/Purchase;->getToken()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 901
    const-string v13, "BUG: empty/null token!"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lklb/android/GameEngine/billing/util/IabHelper;->logWarn(Ljava/lang/String;)V

    .line 902
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Purchase data: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lklb/android/GameEngine/billing/util/IabHelper;->logWarn(Ljava/lang/String;)V

    .line 905
    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lklb/android/GameEngine/billing/util/Inventory;->addPurchase(Lklb/android/GameEngine/billing/util/Purchase;)V

    .line 892
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 908
    .end local v5    # "purchase":Lklb/android/GameEngine/billing/util/Purchase;
    .end local v6    # "purchaseData":Ljava/lang/String;
    .end local v9    # "signature":Ljava/lang/String;
    .end local v11    # "sku":Ljava/lang/String;
    :cond_5
    const-string v13, "INAPP_CONTINUATION_TOKEN"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 909
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Continuation token: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lklb/android/GameEngine/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 910
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 912
    if-eqz v12, :cond_6

    const/16 v13, -0x3eb

    :goto_2
    move v8, v13

    goto/16 :goto_0

    :cond_6
    const/4 v13, 0x0

    goto :goto_2
.end method

.method private querySkuDetails(Lklb/android/GameEngine/billing/util/Inventory;Ljava/util/List;)I
    .locals 12
    .param p1, "inv"    # Lklb/android/GameEngine/billing/util/Inventory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lklb/android/GameEngine/billing/util/Inventory;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .local p2, "moreSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 916
    const-string v8, "Querying SKU details."

    invoke-direct {p0, v8}, Lklb/android/GameEngine/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 917
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 918
    .local v6, "skuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lklb/android/GameEngine/billing/util/Inventory;->getAllOwnedSkus()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 919
    if-eqz p2, :cond_0

    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 921
    :cond_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_2

    .line 922
    const-string v8, "queryPrices: nothing to do because there are no SKUs."

    invoke-direct {p0, v8}, Lklb/android/GameEngine/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 951
    :cond_1
    :goto_0
    return v3

    .line 926
    :cond_2
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 927
    .local v2, "querySkus":Landroid/os/Bundle;
    const-string v8, "ITEM_ID_LIST"

    invoke-virtual {v2, v8, v6}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 928
    iget-object v8, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v9, 0x3

    iget-object v10, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "inapp"

    invoke-interface {v8, v9, v10, v11, v2}, Lcom/android/vending/billing/IInAppBillingService;->getSkuDetails(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    .line 931
    .local v5, "skuDetails":Landroid/os/Bundle;
    const-string v8, "DETAILS_LIST"

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 932
    invoke-direct {p0, v5}, Lklb/android/GameEngine/billing/util/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v3

    .line 933
    .local v3, "response":I
    if-eqz v3, :cond_3

    .line 934
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getSkuDetails() failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v3}, Lklb/android/GameEngine/billing/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lklb/android/GameEngine/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    goto :goto_0

    .line 938
    :cond_3
    const-string v8, "getSkuDetails() returned a bundle with neither an error nor a detail list."

    invoke-direct {p0, v8}, Lklb/android/GameEngine/billing/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 939
    const/16 v3, -0x3ea

    goto :goto_0

    .line 943
    .end local v3    # "response":I
    :cond_4
    const-string v8, "DETAILS_LIST"

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 946
    .local v4, "responseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 947
    .local v7, "thisResponse":Ljava/lang/String;
    new-instance v0, Lklb/android/GameEngine/billing/util/SkuDetails;

    invoke-direct {v0, v7}, Lklb/android/GameEngine/billing/util/SkuDetails;-><init>(Ljava/lang/String;)V

    .line 948
    .local v0, "d":Lklb/android/GameEngine/billing/util/SkuDetails;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Got sku details: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lklb/android/GameEngine/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 949
    invoke-virtual {p1, v0}, Lklb/android/GameEngine/billing/util/Inventory;->addSkuDetails(Lklb/android/GameEngine/billing/util/SkuDetails;)V

    goto :goto_1
.end method

.method private setupFinished(Lklb/android/GameEngine/billing/util/IabHelper$OnIabSetupFinishedListener;ILjava/lang/String;)V
    .locals 2
    .param p1, "listener"    # Lklb/android/GameEngine/billing/util/IabHelper$OnIabSetupFinishedListener;
    .param p2, "response"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 196
    if-eqz p1, :cond_0

    .line 197
    iget-object v0, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mActivity:Landroid/app/Activity;

    new-instance v1, Lklb/android/GameEngine/billing/util/IabHelper$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lklb/android/GameEngine/billing/util/IabHelper$1;-><init>(Lklb/android/GameEngine/billing/util/IabHelper;Lklb/android/GameEngine/billing/util/IabHelper$OnIabSetupFinishedListener;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 203
    :cond_0
    return-void
.end method


# virtual methods
.method public consumeAsync(Ljava/util/List;Lklb/android/GameEngine/billing/util/IabHelper$OnConsumeMultiFinishedListener;)V
    .locals 2
    .param p2, "listener"    # Lklb/android/GameEngine/billing/util/IabHelper$OnConsumeMultiFinishedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lklb/android/GameEngine/billing/util/Purchase;",
            ">;",
            "Lklb/android/GameEngine/billing/util/IabHelper$OnConsumeMultiFinishedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 729
    .local p1, "purchases":Ljava/util/List;, "Ljava/util/List<Lklb/android/GameEngine/billing/util/Purchase;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lklb/android/GameEngine/billing/util/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lklb/android/GameEngine/billing/util/IabHelper$OnConsumeFinishedListener;Lklb/android/GameEngine/billing/util/IabHelper$OnConsumeMultiFinishedListener;I)V

    .line 730
    return-void
.end method

.method public consumeAsync(Lklb/android/GameEngine/billing/util/Purchase;Lklb/android/GameEngine/billing/util/IabHelper$OnConsumeFinishedListener;I)V
    .locals 2
    .param p1, "purchase"    # Lklb/android/GameEngine/billing/util/Purchase;
    .param p2, "listener"    # Lklb/android/GameEngine/billing/util/IabHelper$OnConsumeFinishedListener;
    .param p3, "delay_msec"    # I

    .prologue
    .line 718
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 719
    .local v0, "purchases":Ljava/util/List;, "Ljava/util/List<Lklb/android/GameEngine/billing/util/Purchase;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 720
    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1, p3}, Lklb/android/GameEngine/billing/util/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lklb/android/GameEngine/billing/util/IabHelper$OnConsumeFinishedListener;Lklb/android/GameEngine/billing/util/IabHelper$OnConsumeMultiFinishedListener;I)V

    .line 721
    return-void
.end method

.method public dispose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 309
    const-string v0, "Disposing."

    invoke-direct {p0, v0}, Lklb/android/GameEngine/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_1

    .line 311
    const-string v0, "Unbinding from service."

    invoke-direct {p0, v0}, Lklb/android/GameEngine/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 313
    :cond_0
    iput-object v2, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    .line 314
    iput-object v2, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    .line 315
    iput-object v2, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mPurchaseListener:Lklb/android/GameEngine/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    .line 317
    :cond_1
    return-void
.end method

.method public enableDebugLogging(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 173
    iput-boolean p1, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mDebugLog:Z

    .line 174
    return-void
.end method

.method public enableDebugLogging(ZLjava/lang/String;)V
    .locals 0
    .param p1, "enable"    # Z
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 168
    iput-boolean p1, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mDebugLog:Z

    .line 169
    iput-object p2, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mDebugTag:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public handleActivityResult(IILandroid/content/Intent;)Z
    .locals 12
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    const/4 v9, -0x1

    const/16 v11, -0x3ea

    const/4 v7, 0x1

    const/4 v10, 0x0

    .line 452
    const-string v8, "handleActivityResult"

    invoke-direct {p0, v8}, Lklb/android/GameEngine/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 454
    iget v8, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mRequestCode:I

    if-eq p1, v8, :cond_0

    .line 455
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unknown request code: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lklb/android/GameEngine/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 527
    :goto_0
    return v6

    .line 458
    :cond_0
    const-string v8, "handleActivityResult"

    invoke-direct {p0, v8}, Lklb/android/GameEngine/billing/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 461
    invoke-direct {p0}, Lklb/android/GameEngine/billing/util/IabHelper;->flagEndAsync()V

    .line 463
    if-nez p3, :cond_2

    .line 464
    const-string v6, "Null data in IAB activity result."

    invoke-direct {p0, v6}, Lklb/android/GameEngine/billing/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 465
    new-instance v5, Lklb/android/GameEngine/billing/util/IabResult;

    const-string v6, "Null data in IAB result"

    invoke-direct {v5, v11, v6}, Lklb/android/GameEngine/billing/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 466
    .local v5, "result":Lklb/android/GameEngine/billing/util/IabResult;
    iget-object v6, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mPurchaseListener:Lklb/android/GameEngine/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mPurchaseListener:Lklb/android/GameEngine/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v6, v5, v10}, Lklb/android/GameEngine/billing/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lklb/android/GameEngine/billing/util/IabResult;Lklb/android/GameEngine/billing/util/Purchase;)V

    :cond_1
    move v6, v7

    .line 467
    goto :goto_0

    .line 469
    .end local v5    # "result":Lklb/android/GameEngine/billing/util/IabResult;
    :cond_2
    invoke-direct {p0, p3}, Lklb/android/GameEngine/billing/util/IabHelper;->getResponseCodeFromIntent(Landroid/content/Intent;)I

    move-result v4

    .line 470
    .local v4, "responseCode":I
    const-string v8, "INAPP_PURCHASE_DATA"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 471
    .local v3, "purchaseData":Ljava/lang/String;
    const-string v8, "INAPP_DATA_SIGNATURE"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 473
    .local v0, "dataSignature":Ljava/lang/String;
    if-ne p2, v9, :cond_8

    if-nez v4, :cond_8

    .line 474
    const-string v8, "Successful resultcode from purchase activity."

    invoke-direct {p0, v8}, Lklb/android/GameEngine/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 475
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Purchase data: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lklb/android/GameEngine/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 476
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Data signature: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lklb/android/GameEngine/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 477
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Extras: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lklb/android/GameEngine/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 479
    if-eqz v3, :cond_3

    if-nez v0, :cond_5

    .line 480
    :cond_3
    const-string v6, "BUG: either purchaseData or dataSignature is null."

    invoke-direct {p0, v6}, Lklb/android/GameEngine/billing/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 481
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Extras: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lklb/android/GameEngine/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 482
    new-instance v5, Lklb/android/GameEngine/billing/util/IabResult;

    const/16 v6, -0x3f0

    const-string v8, "IAB returned null purchaseData or dataSignature"

    invoke-direct {v5, v6, v8}, Lklb/android/GameEngine/billing/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 483
    .restart local v5    # "result":Lklb/android/GameEngine/billing/util/IabResult;
    iget-object v6, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mPurchaseListener:Lklb/android/GameEngine/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mPurchaseListener:Lklb/android/GameEngine/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v6, v5, v10}, Lklb/android/GameEngine/billing/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lklb/android/GameEngine/billing/util/IabResult;Lklb/android/GameEngine/billing/util/Purchase;)V

    :cond_4
    move v6, v7

    .line 484
    goto/16 :goto_0

    .line 487
    .end local v5    # "result":Lklb/android/GameEngine/billing/util/IabResult;
    :cond_5
    const/4 v2, 0x0

    .line 490
    .local v2, "purchase":Lklb/android/GameEngine/billing/util/Purchase;
    :try_start_0
    new-instance v2, Lklb/android/GameEngine/billing/util/Purchase;

    .end local v2    # "purchase":Lklb/android/GameEngine/billing/util/Purchase;
    invoke-direct {v2, v3, v0}, Lklb/android/GameEngine/billing/util/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 504
    .restart local v2    # "purchase":Lklb/android/GameEngine/billing/util/Purchase;
    iget-object v8, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mPurchaseListener:Lklb/android/GameEngine/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_6

    .line 505
    iget-object v8, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mPurchaseListener:Lklb/android/GameEngine/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    new-instance v9, Lklb/android/GameEngine/billing/util/IabResult;

    const-string v10, "Success"

    invoke-direct {v9, v6, v10}, Lklb/android/GameEngine/billing/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v8, v9, v2}, Lklb/android/GameEngine/billing/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lklb/android/GameEngine/billing/util/IabResult;Lklb/android/GameEngine/billing/util/Purchase;)V

    .end local v2    # "purchase":Lklb/android/GameEngine/billing/util/Purchase;
    :cond_6
    :goto_1
    move v6, v7

    .line 527
    goto/16 :goto_0

    .line 497
    :catch_0
    move-exception v1

    .line 498
    .local v1, "e":Lorg/json/JSONException;
    const-string v6, "Failed to parse purchase data."

    invoke-direct {p0, v6}, Lklb/android/GameEngine/billing/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 499
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 500
    new-instance v5, Lklb/android/GameEngine/billing/util/IabResult;

    const-string v6, "Failed to parse purchase data."

    invoke-direct {v5, v11, v6}, Lklb/android/GameEngine/billing/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 501
    .restart local v5    # "result":Lklb/android/GameEngine/billing/util/IabResult;
    iget-object v6, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mPurchaseListener:Lklb/android/GameEngine/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mPurchaseListener:Lklb/android/GameEngine/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v6, v5, v10}, Lklb/android/GameEngine/billing/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lklb/android/GameEngine/billing/util/IabResult;Lklb/android/GameEngine/billing/util/Purchase;)V

    :cond_7
    move v6, v7

    .line 502
    goto/16 :goto_0

    .line 508
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v5    # "result":Lklb/android/GameEngine/billing/util/IabResult;
    :cond_8
    if-ne p2, v9, :cond_9

    .line 510
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Result code was OK but in-app billing response was not OK: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Lklb/android/GameEngine/billing/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lklb/android/GameEngine/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 511
    iget-object v6, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mPurchaseListener:Lklb/android/GameEngine/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v6, :cond_6

    .line 512
    new-instance v5, Lklb/android/GameEngine/billing/util/IabResult;

    const-string v6, "Problem purchashing item."

    invoke-direct {v5, v4, v6}, Lklb/android/GameEngine/billing/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 513
    .restart local v5    # "result":Lklb/android/GameEngine/billing/util/IabResult;
    iget-object v6, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mPurchaseListener:Lklb/android/GameEngine/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v6, v5, v10}, Lklb/android/GameEngine/billing/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lklb/android/GameEngine/billing/util/IabResult;Lklb/android/GameEngine/billing/util/Purchase;)V

    goto :goto_1

    .line 516
    .end local v5    # "result":Lklb/android/GameEngine/billing/util/IabResult;
    :cond_9
    if-nez p2, :cond_a

    .line 517
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Purchase canceled - Response: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Lklb/android/GameEngine/billing/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lklb/android/GameEngine/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 518
    new-instance v5, Lklb/android/GameEngine/billing/util/IabResult;

    const/16 v6, -0x3ed

    const-string v8, "User canceled."

    invoke-direct {v5, v6, v8}, Lklb/android/GameEngine/billing/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 519
    .restart local v5    # "result":Lklb/android/GameEngine/billing/util/IabResult;
    iget-object v6, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mPurchaseListener:Lklb/android/GameEngine/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mPurchaseListener:Lklb/android/GameEngine/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v6, v5, v10}, Lklb/android/GameEngine/billing/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lklb/android/GameEngine/billing/util/IabResult;Lklb/android/GameEngine/billing/util/Purchase;)V

    goto :goto_1

    .line 522
    .end local v5    # "result":Lklb/android/GameEngine/billing/util/IabResult;
    :cond_a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Purchase failed. Result code: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ". Response: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Lklb/android/GameEngine/billing/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lklb/android/GameEngine/billing/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 524
    new-instance v5, Lklb/android/GameEngine/billing/util/IabResult;

    const/16 v6, -0x3ee

    const-string v8, "Unknown purchase response."

    invoke-direct {v5, v6, v8}, Lklb/android/GameEngine/billing/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 525
    .restart local v5    # "result":Lklb/android/GameEngine/billing/util/IabResult;
    iget-object v6, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mPurchaseListener:Lklb/android/GameEngine/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mPurchaseListener:Lklb/android/GameEngine/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v6, v5, v10}, Lklb/android/GameEngine/billing/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lklb/android/GameEngine/billing/util/IabResult;Lklb/android/GameEngine/billing/util/Purchase;)V

    goto/16 :goto_1
.end method

.method public isSetupDone()Z
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public launchPurchaseFlow(Ljava/lang/String;ILklb/android/GameEngine/billing/util/IabHelper$OnIabPurchaseFinishedListener;)V
    .locals 1
    .param p1, "sku"    # Ljava/lang/String;
    .param p2, "requestCode"    # I
    .param p3, "listener"    # Lklb/android/GameEngine/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    .prologue
    .line 345
    const-string v0, ""

    invoke-virtual {p0, p1, p2, p3, v0}, Lklb/android/GameEngine/billing/util/IabHelper;->launchPurchaseFlow(Ljava/lang/String;ILklb/android/GameEngine/billing/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 346
    return-void
.end method

.method public launchPurchaseFlow(Ljava/lang/String;ILklb/android/GameEngine/billing/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .locals 7
    .param p1, "sku"    # Ljava/lang/String;
    .param p2, "requestCode"    # I
    .param p3, "listener"    # Lklb/android/GameEngine/billing/util/IabHelper$OnIabPurchaseFinishedListener;
    .param p4, "extraData"    # Ljava/lang/String;

    .prologue
    .line 368
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lklb/android/GameEngine/billing/util/IabHelper$5;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p3

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lklb/android/GameEngine/billing/util/IabHelper$5;-><init>(Lklb/android/GameEngine/billing/util/IabHelper;Ljava/lang/String;Ljava/lang/String;Lklb/android/GameEngine/billing/util/IabHelper$OnIabPurchaseFinishedListener;I)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 436
    return-void
.end method

.method public queryInventory(ZLjava/util/List;)Lklb/android/GameEngine/billing/util/Inventory;
    .locals 6
    .param p1, "querySkuDetails"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lklb/android/GameEngine/billing/util/Inventory;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lklb/android/GameEngine/billing/util/IabException;
        }
    .end annotation

    .prologue
    .line 542
    .local p2, "moreSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "queryInventory"

    invoke-direct {p0, v3}, Lklb/android/GameEngine/billing/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 544
    :try_start_0
    new-instance v1, Lklb/android/GameEngine/billing/util/Inventory;

    invoke-direct {v1}, Lklb/android/GameEngine/billing/util/Inventory;-><init>()V

    .line 545
    .local v1, "inv":Lklb/android/GameEngine/billing/util/Inventory;
    invoke-direct {p0, v1}, Lklb/android/GameEngine/billing/util/IabHelper;->queryPurchases(Lklb/android/GameEngine/billing/util/Inventory;)I

    move-result v2

    .line 546
    .local v2, "r":I
    if-eqz v2, :cond_0

    .line 547
    new-instance v3, Lklb/android/GameEngine/billing/util/IabException;

    const-string v4, "Error refreshing inventory (querying owned items)."

    invoke-direct {v3, v2, v4}, Lklb/android/GameEngine/billing/util/IabException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 560
    .end local v1    # "inv":Lklb/android/GameEngine/billing/util/Inventory;
    .end local v2    # "r":I
    :catch_0
    move-exception v0

    .line 561
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Lklb/android/GameEngine/billing/util/IabException;

    const/16 v4, -0x3e9

    const-string v5, "Remote exception while refreshing inventory."

    invoke-direct {v3, v4, v5, v0}, Lklb/android/GameEngine/billing/util/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 550
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "inv":Lklb/android/GameEngine/billing/util/Inventory;
    .restart local v2    # "r":I
    :cond_0
    if-eqz p1, :cond_1

    .line 551
    :try_start_1
    invoke-direct {p0, v1, p2}, Lklb/android/GameEngine/billing/util/IabHelper;->querySkuDetails(Lklb/android/GameEngine/billing/util/Inventory;Ljava/util/List;)I

    move-result v2

    .line 552
    if-eqz v2, :cond_1

    .line 553
    new-instance v3, Lklb/android/GameEngine/billing/util/IabException;

    const-string v4, "Error refreshing inventory (querying prices of items)."

    invoke-direct {v3, v2, v4}, Lklb/android/GameEngine/billing/util/IabException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 563
    .end local v1    # "inv":Lklb/android/GameEngine/billing/util/Inventory;
    .end local v2    # "r":I
    :catch_1
    move-exception v0

    .line 564
    .local v0, "e":Lorg/json/JSONException;
    new-instance v3, Lklb/android/GameEngine/billing/util/IabException;

    const/16 v4, -0x3ea

    const-string v5, "Error parsing JSON response while refreshing inventory."

    invoke-direct {v3, v4, v5, v0}, Lklb/android/GameEngine/billing/util/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 556
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "inv":Lklb/android/GameEngine/billing/util/Inventory;
    .restart local v2    # "r":I
    :cond_1
    :try_start_2
    invoke-static {v1}, Lklb/android/GameEngine/sdkwrapper/SDKWrapper;->onSuccessQueryInventory(Lklb/android/GameEngine/billing/util/Inventory;)V

    .line 557
    invoke-static {}, Lklb/android/GameEngine/KLBExtensionRuntime;->getInstance()Lklb/android/GameEngine/KLBExtensionRuntime;

    move-result-object v3

    invoke-virtual {v3, v1}, Lklb/android/GameEngine/KLBExtensionRuntime;->onSuccessQueryInventory(Lklb/android/GameEngine/billing/util/Inventory;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 558
    return-object v1
.end method

.method public queryInventoryAsync(Lklb/android/GameEngine/billing/util/IabHelper$QueryInventoryFinishedListener;)V
    .locals 3
    .param p1, "listener"    # Lklb/android/GameEngine/billing/util/IabHelper$QueryInventoryFinishedListener;

    .prologue
    .line 635
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Lklb/android/GameEngine/billing/util/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lklb/android/GameEngine/billing/util/IabHelper$QueryInventoryFinishedListener;I)V

    .line 636
    return-void
.end method

.method public queryInventoryAsync(ZLjava/util/List;Lklb/android/GameEngine/billing/util/IabHelper$QueryInventoryFinishedListener;I)V
    .locals 7
    .param p1, "querySkuDetails"    # Z
    .param p3, "listener"    # Lklb/android/GameEngine/billing/util/IabHelper$QueryInventoryFinishedListener;
    .param p4, "delay_msec"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lklb/android/GameEngine/billing/util/IabHelper$QueryInventoryFinishedListener;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 596
    .local p2, "moreSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lklb/android/GameEngine/billing/util/IabHelper$6;

    move-object v1, p0

    move v2, p4

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lklb/android/GameEngine/billing/util/IabHelper$6;-><init>(Lklb/android/GameEngine/billing/util/IabHelper;IZLjava/util/List;Lklb/android/GameEngine/billing/util/IabHelper$QueryInventoryFinishedListener;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 632
    return-void
.end method

.method public queryInventoryAsync(ZLklb/android/GameEngine/billing/util/IabHelper$QueryInventoryFinishedListener;)V
    .locals 2
    .param p1, "querySkuDetails"    # Z
    .param p2, "listener"    # Lklb/android/GameEngine/billing/util/IabHelper$QueryInventoryFinishedListener;

    .prologue
    .line 639
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lklb/android/GameEngine/billing/util/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lklb/android/GameEngine/billing/util/IabHelper$QueryInventoryFinishedListener;I)V

    .line 640
    return-void
.end method

.method public restartSetup()V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Restarting but IAB helper is not set up."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_0
    const-string v0, "Restarting in-app billing setup."

    invoke-direct {p0, v0}, Lklb/android/GameEngine/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 286
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lklb/android/GameEngine/billing/util/IabHelper$4;

    invoke-direct {v1, p0}, Lklb/android/GameEngine/billing/util/IabHelper$4;-><init>(Lklb/android/GameEngine/billing/util/IabHelper;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 301
    return-void
.end method

.method public startSetup(Lklb/android/GameEngine/billing/util/IabHelper$OnIabSetupFinishedListener;)V
    .locals 2
    .param p1, "listener"    # Lklb/android/GameEngine/billing/util/IabHelper$OnIabSetupFinishedListener;

    .prologue
    .line 266
    iget-object v0, p0, Lklb/android/GameEngine/billing/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IAB helper is already set up."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :cond_0
    const-string v0, "Starting in-app billing setup."

    invoke-direct {p0, v0}, Lklb/android/GameEngine/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 271
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lklb/android/GameEngine/billing/util/IabHelper$3;

    invoke-direct {v1, p0, p1}, Lklb/android/GameEngine/billing/util/IabHelper$3;-><init>(Lklb/android/GameEngine/billing/util/IabHelper;Lklb/android/GameEngine/billing/util/IabHelper$OnIabSetupFinishedListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 277
    return-void
.end method
