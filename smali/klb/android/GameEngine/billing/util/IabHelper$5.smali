.class Lklb/android/GameEngine/billing/util/IabHelper$5;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lklb/android/GameEngine/billing/util/IabHelper;->launchPurchaseFlow(Ljava/lang/String;ILklb/android/GameEngine/billing/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lklb/android/GameEngine/billing/util/IabHelper;

.field final synthetic val$extraData:Ljava/lang/String;

.field final synthetic val$listener:Lklb/android/GameEngine/billing/util/IabHelper$OnIabPurchaseFinishedListener;

.field final synthetic val$requestCode:I

.field final synthetic val$sku:Ljava/lang/String;


# direct methods
.method constructor <init>(Lklb/android/GameEngine/billing/util/IabHelper;Ljava/lang/String;Ljava/lang/String;Lklb/android/GameEngine/billing/util/IabHelper$OnIabPurchaseFinishedListener;I)V
    .locals 0

    .prologue
    .line 368
    iput-object p1, p0, Lklb/android/GameEngine/billing/util/IabHelper$5;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    iput-object p2, p0, Lklb/android/GameEngine/billing/util/IabHelper$5;->val$sku:Ljava/lang/String;

    iput-object p3, p0, Lklb/android/GameEngine/billing/util/IabHelper$5;->val$extraData:Ljava/lang/String;

    iput-object p4, p0, Lklb/android/GameEngine/billing/util/IabHelper$5;->val$listener:Lklb/android/GameEngine/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    iput p5, p0, Lklb/android/GameEngine/billing/util/IabHelper$5;->val$requestCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 371
    iget-object v0, p0, Lklb/android/GameEngine/billing/util/IabHelper$5;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    const-string v1, "launchPurchaseFlow"

    # invokes: Lklb/android/GameEngine/billing/util/IabHelper;->flagStartAsync(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lklb/android/GameEngine/billing/util/IabHelper;->access$400(Lklb/android/GameEngine/billing/util/IabHelper;Ljava/lang/String;Z)V

    .line 372
    iget-object v0, p0, Lklb/android/GameEngine/billing/util/IabHelper$5;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    const-string v1, "launchPurchaseFlow"

    # invokes: Lklb/android/GameEngine/billing/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lklb/android/GameEngine/billing/util/IabHelper;->access$700(Lklb/android/GameEngine/billing/util/IabHelper;Ljava/lang/String;)V

    .line 375
    :try_start_0
    iget-object v0, p0, Lklb/android/GameEngine/billing/util/IabHelper$5;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Constructing buy intent for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lklb/android/GameEngine/billing/util/IabHelper$5;->val$sku:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lklb/android/GameEngine/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lklb/android/GameEngine/billing/util/IabHelper;->access$100(Lklb/android/GameEngine/billing/util/IabHelper;Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Lklb/android/GameEngine/billing/util/IabHelper$5;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    iget-object v0, v0, Lklb/android/GameEngine/billing/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v1, 0x3

    iget-object v2, p0, Lklb/android/GameEngine/billing/util/IabHelper$5;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    iget-object v2, v2, Lklb/android/GameEngine/billing/util/IabHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lklb/android/GameEngine/billing/util/IabHelper$5;->val$sku:Ljava/lang/String;

    const-string v4, "inapp"

    iget-object v5, p0, Lklb/android/GameEngine/billing/util/IabHelper$5;->val$extraData:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Lcom/android/vending/billing/IInAppBillingService;->getBuyIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 377
    .local v7, "buyIntentBundle":Landroid/os/Bundle;
    iget-object v0, p0, Lklb/android/GameEngine/billing/util/IabHelper$5;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    # invokes: Lklb/android/GameEngine/billing/util/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I
    invoke-static {v0, v7}, Lklb/android/GameEngine/billing/util/IabHelper;->access$800(Lklb/android/GameEngine/billing/util/IabHelper;Landroid/os/Bundle;)I

    move-result v10

    .line 378
    .local v10, "response":I
    if-eqz v10, :cond_1

    .line 379
    iget-object v0, p0, Lklb/android/GameEngine/billing/util/IabHelper$5;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to buy item, Error response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v10}, Lklb/android/GameEngine/billing/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lklb/android/GameEngine/billing/util/IabHelper;->logError(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lklb/android/GameEngine/billing/util/IabHelper;->access$000(Lklb/android/GameEngine/billing/util/IabHelper;Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lklb/android/GameEngine/billing/util/IabHelper$5;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    # invokes: Lklb/android/GameEngine/billing/util/IabHelper;->flagEndAsync()V
    invoke-static {v0}, Lklb/android/GameEngine/billing/util/IabHelper;->access$200(Lklb/android/GameEngine/billing/util/IabHelper;)V

    .line 383
    new-instance v11, Lklb/android/GameEngine/billing/util/IabResult;

    const-string v0, "Unable to buy item"

    invoke-direct {v11, v10, v0}, Lklb/android/GameEngine/billing/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 385
    .local v11, "result":Lklb/android/GameEngine/billing/util/IabResult;
    iget-object v0, p0, Lklb/android/GameEngine/billing/util/IabHelper$5;->val$listener:Lklb/android/GameEngine/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lklb/android/GameEngine/billing/util/IabHelper$5;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    iget-object v0, v0, Lklb/android/GameEngine/billing/util/IabHelper;->mActivity:Landroid/app/Activity;

    new-instance v1, Lklb/android/GameEngine/billing/util/IabHelper$5$1;

    invoke-direct {v1, p0, v11}, Lklb/android/GameEngine/billing/util/IabHelper$5$1;-><init>(Lklb/android/GameEngine/billing/util/IabHelper$5;Lklb/android/GameEngine/billing/util/IabResult;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 435
    .end local v7    # "buyIntentBundle":Landroid/os/Bundle;
    .end local v10    # "response":I
    .end local v11    # "result":Lklb/android/GameEngine/billing/util/IabResult;
    :cond_0
    :goto_0
    return-void

    .line 398
    .restart local v7    # "buyIntentBundle":Landroid/os/Bundle;
    .restart local v10    # "response":I
    :cond_1
    const-string v0, "BUY_INTENT"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/app/PendingIntent;

    .line 399
    .local v9, "pendingIntent":Landroid/app/PendingIntent;
    iget-object v0, p0, Lklb/android/GameEngine/billing/util/IabHelper$5;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launching buy intent for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lklb/android/GameEngine/billing/util/IabHelper$5;->val$sku:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Request code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lklb/android/GameEngine/billing/util/IabHelper$5;->val$requestCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lklb/android/GameEngine/billing/util/IabHelper;->logDebug(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lklb/android/GameEngine/billing/util/IabHelper;->access$100(Lklb/android/GameEngine/billing/util/IabHelper;Ljava/lang/String;)V

    .line 400
    iget-object v0, p0, Lklb/android/GameEngine/billing/util/IabHelper$5;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    iget v1, p0, Lklb/android/GameEngine/billing/util/IabHelper$5;->val$requestCode:I

    iput v1, v0, Lklb/android/GameEngine/billing/util/IabHelper;->mRequestCode:I

    .line 401
    iget-object v0, p0, Lklb/android/GameEngine/billing/util/IabHelper$5;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    iget-object v1, p0, Lklb/android/GameEngine/billing/util/IabHelper$5;->val$listener:Lklb/android/GameEngine/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    iput-object v1, v0, Lklb/android/GameEngine/billing/util/IabHelper;->mPurchaseListener:Lklb/android/GameEngine/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    .line 402
    iget-object v0, p0, Lklb/android/GameEngine/billing/util/IabHelper$5;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    iget-object v0, v0, Lklb/android/GameEngine/billing/util/IabHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    iget v2, p0, Lklb/android/GameEngine/billing/util/IabHelper$5;->val$requestCode:I

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 407
    .end local v7    # "buyIntentBundle":Landroid/os/Bundle;
    .end local v9    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v10    # "response":I
    :catch_0
    move-exception v8

    .line 408
    .local v8, "e":Landroid/content/IntentSender$SendIntentException;
    iget-object v0, p0, Lklb/android/GameEngine/billing/util/IabHelper$5;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    # invokes: Lklb/android/GameEngine/billing/util/IabHelper;->flagEndAsync()V
    invoke-static {v0}, Lklb/android/GameEngine/billing/util/IabHelper;->access$200(Lklb/android/GameEngine/billing/util/IabHelper;)V

    .line 409
    iget-object v0, p0, Lklb/android/GameEngine/billing/util/IabHelper$5;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SendIntentException while launching purchase flow for sku "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lklb/android/GameEngine/billing/util/IabHelper$5;->val$sku:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lklb/android/GameEngine/billing/util/IabHelper;->logError(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lklb/android/GameEngine/billing/util/IabHelper;->access$000(Lklb/android/GameEngine/billing/util/IabHelper;Ljava/lang/String;)V

    .line 410
    invoke-virtual {v8}, Landroid/content/IntentSender$SendIntentException;->printStackTrace()V

    .line 412
    new-instance v11, Lklb/android/GameEngine/billing/util/IabResult;

    const/16 v0, -0x3ec

    const-string v1, "Failed to send intent."

    invoke-direct {v11, v0, v1}, Lklb/android/GameEngine/billing/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 413
    .restart local v11    # "result":Lklb/android/GameEngine/billing/util/IabResult;
    iget-object v0, p0, Lklb/android/GameEngine/billing/util/IabHelper$5;->val$listener:Lklb/android/GameEngine/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lklb/android/GameEngine/billing/util/IabHelper$5;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    iget-object v0, v0, Lklb/android/GameEngine/billing/util/IabHelper;->mActivity:Landroid/app/Activity;

    new-instance v1, Lklb/android/GameEngine/billing/util/IabHelper$5$2;

    invoke-direct {v1, p0, v11}, Lklb/android/GameEngine/billing/util/IabHelper$5$2;-><init>(Lklb/android/GameEngine/billing/util/IabHelper$5;Lklb/android/GameEngine/billing/util/IabResult;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 421
    .end local v8    # "e":Landroid/content/IntentSender$SendIntentException;
    .end local v11    # "result":Lklb/android/GameEngine/billing/util/IabResult;
    :catch_1
    move-exception v8

    .line 422
    .local v8, "e":Landroid/os/RemoteException;
    iget-object v0, p0, Lklb/android/GameEngine/billing/util/IabHelper$5;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    # invokes: Lklb/android/GameEngine/billing/util/IabHelper;->flagEndAsync()V
    invoke-static {v0}, Lklb/android/GameEngine/billing/util/IabHelper;->access$200(Lklb/android/GameEngine/billing/util/IabHelper;)V

    .line 423
    iget-object v0, p0, Lklb/android/GameEngine/billing/util/IabHelper$5;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException while launching purchase flow for sku "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lklb/android/GameEngine/billing/util/IabHelper$5;->val$sku:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lklb/android/GameEngine/billing/util/IabHelper;->logError(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lklb/android/GameEngine/billing/util/IabHelper;->access$000(Lklb/android/GameEngine/billing/util/IabHelper;Ljava/lang/String;)V

    .line 424
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    .line 426
    new-instance v11, Lklb/android/GameEngine/billing/util/IabResult;

    const/16 v0, -0x3e9

    const-string v1, "Remote exception while starting purchase flow"

    invoke-direct {v11, v0, v1}, Lklb/android/GameEngine/billing/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 427
    .restart local v11    # "result":Lklb/android/GameEngine/billing/util/IabResult;
    iget-object v0, p0, Lklb/android/GameEngine/billing/util/IabHelper$5;->val$listener:Lklb/android/GameEngine/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lklb/android/GameEngine/billing/util/IabHelper$5;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    iget-object v0, v0, Lklb/android/GameEngine/billing/util/IabHelper;->mActivity:Landroid/app/Activity;

    new-instance v1, Lklb/android/GameEngine/billing/util/IabHelper$5$3;

    invoke-direct {v1, p0, v11}, Lklb/android/GameEngine/billing/util/IabHelper$5$3;-><init>(Lklb/android/GameEngine/billing/util/IabHelper$5;Lklb/android/GameEngine/billing/util/IabResult;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method
