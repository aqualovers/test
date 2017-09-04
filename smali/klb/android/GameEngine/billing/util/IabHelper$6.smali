.class Lklb/android/GameEngine/billing/util/IabHelper$6;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lklb/android/GameEngine/billing/util/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lklb/android/GameEngine/billing/util/IabHelper$QueryInventoryFinishedListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lklb/android/GameEngine/billing/util/IabHelper;

.field final synthetic val$delay_msec:I

.field final synthetic val$listener:Lklb/android/GameEngine/billing/util/IabHelper$QueryInventoryFinishedListener;

.field final synthetic val$moreSkus:Ljava/util/List;

.field final synthetic val$querySkuDetails:Z


# direct methods
.method constructor <init>(Lklb/android/GameEngine/billing/util/IabHelper;IZLjava/util/List;Lklb/android/GameEngine/billing/util/IabHelper$QueryInventoryFinishedListener;)V
    .locals 0

    .prologue
    .line 596
    iput-object p1, p0, Lklb/android/GameEngine/billing/util/IabHelper$6;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    iput p2, p0, Lklb/android/GameEngine/billing/util/IabHelper$6;->val$delay_msec:I

    iput-boolean p3, p0, Lklb/android/GameEngine/billing/util/IabHelper$6;->val$querySkuDetails:Z

    iput-object p4, p0, Lklb/android/GameEngine/billing/util/IabHelper$6;->val$moreSkus:Ljava/util/List;

    iput-object p5, p0, Lklb/android/GameEngine/billing/util/IabHelper$6;->val$listener:Lklb/android/GameEngine/billing/util/IabHelper$QueryInventoryFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 599
    iget-object v5, p0, Lklb/android/GameEngine/billing/util/IabHelper$6;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    const-string v6, "refresh inventory"

    # invokes: Lklb/android/GameEngine/billing/util/IabHelper;->flagStartAsync(Ljava/lang/String;Z)V
    invoke-static {v5, v6, v7}, Lklb/android/GameEngine/billing/util/IabHelper;->access$400(Lklb/android/GameEngine/billing/util/IabHelper;Ljava/lang/String;Z)V

    .line 600
    iget-object v5, p0, Lklb/android/GameEngine/billing/util/IabHelper$6;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    const-string v6, "queryInventory"

    # invokes: Lklb/android/GameEngine/billing/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lklb/android/GameEngine/billing/util/IabHelper;->access$700(Lklb/android/GameEngine/billing/util/IabHelper;Ljava/lang/String;)V

    .line 602
    iget-object v5, p0, Lklb/android/GameEngine/billing/util/IabHelper$6;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    iget v6, p0, Lklb/android/GameEngine/billing/util/IabHelper$6;->val$delay_msec:I

    # invokes: Lklb/android/GameEngine/billing/util/IabHelper;->delay(I)V
    invoke-static {v5, v6}, Lklb/android/GameEngine/billing/util/IabHelper;->access$600(Lklb/android/GameEngine/billing/util/IabHelper;I)V

    .line 604
    new-instance v3, Lklb/android/GameEngine/billing/util/IabResult;

    const-string v5, "Inventory refresh successful."

    invoke-direct {v3, v7, v5}, Lklb/android/GameEngine/billing/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 605
    .local v3, "result":Lklb/android/GameEngine/billing/util/IabResult;
    const/4 v1, 0x0

    .line 607
    .local v1, "inv":Lklb/android/GameEngine/billing/util/Inventory;
    :try_start_0
    iget-object v5, p0, Lklb/android/GameEngine/billing/util/IabHelper$6;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    const-string v6, "queryInventory"

    # invokes: Lklb/android/GameEngine/billing/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lklb/android/GameEngine/billing/util/IabHelper;->access$700(Lklb/android/GameEngine/billing/util/IabHelper;Ljava/lang/String;)V

    .line 609
    iget-object v5, p0, Lklb/android/GameEngine/billing/util/IabHelper$6;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    iget v6, p0, Lklb/android/GameEngine/billing/util/IabHelper$6;->val$delay_msec:I

    # invokes: Lklb/android/GameEngine/billing/util/IabHelper;->delay(I)V
    invoke-static {v5, v6}, Lklb/android/GameEngine/billing/util/IabHelper;->access$600(Lklb/android/GameEngine/billing/util/IabHelper;I)V

    .line 611
    iget-object v5, p0, Lklb/android/GameEngine/billing/util/IabHelper$6;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    iget-boolean v6, p0, Lklb/android/GameEngine/billing/util/IabHelper$6;->val$querySkuDetails:Z

    iget-object v7, p0, Lklb/android/GameEngine/billing/util/IabHelper$6;->val$moreSkus:Ljava/util/List;

    invoke-virtual {v5, v6, v7}, Lklb/android/GameEngine/billing/util/IabHelper;->queryInventory(ZLjava/util/List;)Lklb/android/GameEngine/billing/util/Inventory;
    :try_end_0
    .catch Lklb/android/GameEngine/billing/util/IabException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 620
    :goto_0
    iget-object v5, p0, Lklb/android/GameEngine/billing/util/IabHelper$6;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    # invokes: Lklb/android/GameEngine/billing/util/IabHelper;->flagEndAsync()V
    invoke-static {v5}, Lklb/android/GameEngine/billing/util/IabHelper;->access$200(Lklb/android/GameEngine/billing/util/IabHelper;)V

    .line 622
    move-object v4, v3

    .line 623
    .local v4, "result_f":Lklb/android/GameEngine/billing/util/IabResult;
    move-object v2, v1

    .line 625
    .local v2, "inv_f":Lklb/android/GameEngine/billing/util/Inventory;
    iget-object v5, p0, Lklb/android/GameEngine/billing/util/IabHelper$6;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    iget-object v5, v5, Lklb/android/GameEngine/billing/util/IabHelper;->mActivity:Landroid/app/Activity;

    new-instance v6, Lklb/android/GameEngine/billing/util/IabHelper$6$1;

    invoke-direct {v6, p0, v4, v2}, Lklb/android/GameEngine/billing/util/IabHelper$6$1;-><init>(Lklb/android/GameEngine/billing/util/IabHelper$6;Lklb/android/GameEngine/billing/util/IabResult;Lklb/android/GameEngine/billing/util/Inventory;)V

    invoke-virtual {v5, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 630
    return-void

    .line 613
    .end local v2    # "inv_f":Lklb/android/GameEngine/billing/util/Inventory;
    .end local v4    # "result_f":Lklb/android/GameEngine/billing/util/IabResult;
    :catch_0
    move-exception v0

    .line 614
    .local v0, "ex":Lklb/android/GameEngine/billing/util/IabException;
    invoke-virtual {v0}, Lklb/android/GameEngine/billing/util/IabException;->getResult()Lklb/android/GameEngine/billing/util/IabResult;

    move-result-object v3

    .line 618
    goto :goto_0

    .line 615
    .end local v0    # "ex":Lklb/android/GameEngine/billing/util/IabException;
    :catch_1
    move-exception v0

    .line 617
    .local v0, "ex":Ljava/lang/IllegalStateException;
    new-instance v3, Lklb/android/GameEngine/billing/util/IabResult;

    .end local v3    # "result":Lklb/android/GameEngine/billing/util/IabResult;
    const/4 v5, 0x3

    const-string v6, "Inventory refresh failed."

    invoke-direct {v3, v5, v6}, Lklb/android/GameEngine/billing/util/IabResult;-><init>(ILjava/lang/String;)V

    .restart local v3    # "result":Lklb/android/GameEngine/billing/util/IabResult;
    goto :goto_0
.end method
