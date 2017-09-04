.class Lklb/android/GameEngine/billing/util/IabHelper$2;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lklb/android/GameEngine/billing/util/IabHelper;->bindService(Lklb/android/GameEngine/billing/util/IabHelper$OnIabSetupFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lklb/android/GameEngine/billing/util/IabHelper;

.field final synthetic val$listener:Lklb/android/GameEngine/billing/util/IabHelper$OnIabSetupFinishedListener;


# direct methods
.method constructor <init>(Lklb/android/GameEngine/billing/util/IabHelper;Lklb/android/GameEngine/billing/util/IabHelper$OnIabSetupFinishedListener;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lklb/android/GameEngine/billing/util/IabHelper$2;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    iput-object p2, p0, Lklb/android/GameEngine/billing/util/IabHelper$2;->val$listener:Lklb/android/GameEngine/billing/util/IabHelper$OnIabSetupFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 219
    iget-object v4, p0, Lklb/android/GameEngine/billing/util/IabHelper$2;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    const-string v5, "Billing service connected."

    # invokes: Lklb/android/GameEngine/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lklb/android/GameEngine/billing/util/IabHelper;->access$100(Lklb/android/GameEngine/billing/util/IabHelper;Ljava/lang/String;)V

    .line 220
    iget-object v4, p0, Lklb/android/GameEngine/billing/util/IabHelper$2;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    invoke-static {p2}, Lcom/android/vending/billing/IInAppBillingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object v5

    iput-object v5, v4, Lklb/android/GameEngine/billing/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    .line 221
    iget-object v4, p0, Lklb/android/GameEngine/billing/util/IabHelper$2;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    iget-object v4, v4, Lklb/android/GameEngine/billing/util/IabHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 227
    .local v2, "packageName":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lklb/android/GameEngine/billing/util/IabHelper$2;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    const-string v5, "Checking for in-app billing 3 support."

    # invokes: Lklb/android/GameEngine/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lklb/android/GameEngine/billing/util/IabHelper;->access$100(Lklb/android/GameEngine/billing/util/IabHelper;Ljava/lang/String;)V

    .line 228
    iget-object v4, p0, Lklb/android/GameEngine/billing/util/IabHelper$2;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    iget-object v4, v4, Lklb/android/GameEngine/billing/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v5, 0x3

    const-string v6, "inapp"

    invoke-interface {v4, v5, v2, v6}, Lcom/android/vending/billing/IInAppBillingService;->isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 230
    .local v3, "response":I
    if-nez v3, :cond_0

    .line 231
    const-string v1, "Setup successful."
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    .local v1, "msg":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lklb/android/GameEngine/billing/util/IabHelper$2;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    # invokes: Lklb/android/GameEngine/billing/util/IabHelper;->flagEndAsync()V
    invoke-static {v4}, Lklb/android/GameEngine/billing/util/IabHelper;->access$200(Lklb/android/GameEngine/billing/util/IabHelper;)V

    .line 246
    iget-object v4, p0, Lklb/android/GameEngine/billing/util/IabHelper$2;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    iget-object v5, p0, Lklb/android/GameEngine/billing/util/IabHelper$2;->val$listener:Lklb/android/GameEngine/billing/util/IabHelper$OnIabSetupFinishedListener;

    # invokes: Lklb/android/GameEngine/billing/util/IabHelper;->setupFinished(Lklb/android/GameEngine/billing/util/IabHelper$OnIabSetupFinishedListener;ILjava/lang/String;)V
    invoke-static {v4, v5, v3, v1}, Lklb/android/GameEngine/billing/util/IabHelper;->access$300(Lklb/android/GameEngine/billing/util/IabHelper;Lklb/android/GameEngine/billing/util/IabHelper$OnIabSetupFinishedListener;ILjava/lang/String;)V

    .line 247
    return-void

    .line 233
    .end local v1    # "msg":Ljava/lang/String;
    :cond_0
    :try_start_1
    const-string v1, "Error checking for billing v3 support."
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v1    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 236
    .end local v1    # "msg":Ljava/lang/String;
    .end local v3    # "response":I
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Landroid/os/RemoteException;
    const/16 v3, -0x3e9

    .line 238
    .restart local v3    # "response":I
    const-string v1, "RemoteException while setting up in-app billing."

    .line 239
    .restart local v1    # "msg":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 213
    iget-object v0, p0, Lklb/android/GameEngine/billing/util/IabHelper$2;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    const-string v1, "Billing service disconnected."

    # invokes: Lklb/android/GameEngine/billing/util/IabHelper;->logError(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lklb/android/GameEngine/billing/util/IabHelper;->access$000(Lklb/android/GameEngine/billing/util/IabHelper;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lklb/android/GameEngine/billing/util/IabHelper$2;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    invoke-virtual {v0}, Lklb/android/GameEngine/billing/util/IabHelper;->restartSetup()V

    .line 215
    return-void
.end method
