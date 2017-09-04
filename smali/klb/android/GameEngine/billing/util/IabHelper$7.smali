.class Lklb/android/GameEngine/billing/util/IabHelper$7;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lklb/android/GameEngine/billing/util/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lklb/android/GameEngine/billing/util/IabHelper$OnConsumeFinishedListener;Lklb/android/GameEngine/billing/util/IabHelper$OnConsumeMultiFinishedListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lklb/android/GameEngine/billing/util/IabHelper;

.field final synthetic val$delay_msec:I

.field final synthetic val$multiListener:Lklb/android/GameEngine/billing/util/IabHelper$OnConsumeMultiFinishedListener;

.field final synthetic val$purchases:Ljava/util/List;

.field final synthetic val$singleListener:Lklb/android/GameEngine/billing/util/IabHelper$OnConsumeFinishedListener;


# direct methods
.method constructor <init>(Lklb/android/GameEngine/billing/util/IabHelper;ILjava/util/List;Lklb/android/GameEngine/billing/util/IabHelper$OnConsumeFinishedListener;Lklb/android/GameEngine/billing/util/IabHelper$OnConsumeMultiFinishedListener;)V
    .locals 0

    .prologue
    .line 973
    iput-object p1, p0, Lklb/android/GameEngine/billing/util/IabHelper$7;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    iput p2, p0, Lklb/android/GameEngine/billing/util/IabHelper$7;->val$delay_msec:I

    iput-object p3, p0, Lklb/android/GameEngine/billing/util/IabHelper$7;->val$purchases:Ljava/util/List;

    iput-object p4, p0, Lklb/android/GameEngine/billing/util/IabHelper$7;->val$singleListener:Lklb/android/GameEngine/billing/util/IabHelper$OnConsumeFinishedListener;

    iput-object p5, p0, Lklb/android/GameEngine/billing/util/IabHelper$7;->val$multiListener:Lklb/android/GameEngine/billing/util/IabHelper$OnConsumeMultiFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 976
    iget-object v4, p0, Lklb/android/GameEngine/billing/util/IabHelper$7;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    const-string v5, "consume"

    # invokes: Lklb/android/GameEngine/billing/util/IabHelper;->flagStartAsync(Ljava/lang/String;Z)V
    invoke-static {v4, v5, v6}, Lklb/android/GameEngine/billing/util/IabHelper;->access$400(Lklb/android/GameEngine/billing/util/IabHelper;Ljava/lang/String;Z)V

    .line 977
    iget-object v4, p0, Lklb/android/GameEngine/billing/util/IabHelper$7;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    const-string v5, "consume"

    # invokes: Lklb/android/GameEngine/billing/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lklb/android/GameEngine/billing/util/IabHelper;->access$700(Lklb/android/GameEngine/billing/util/IabHelper;Ljava/lang/String;)V

    .line 982
    iget-object v4, p0, Lklb/android/GameEngine/billing/util/IabHelper$7;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    iget v5, p0, Lklb/android/GameEngine/billing/util/IabHelper$7;->val$delay_msec:I

    # invokes: Lklb/android/GameEngine/billing/util/IabHelper;->delay(I)V
    invoke-static {v4, v5}, Lklb/android/GameEngine/billing/util/IabHelper;->access$600(Lklb/android/GameEngine/billing/util/IabHelper;I)V

    .line 984
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 985
    .local v3, "results":Ljava/util/List;, "Ljava/util/List<Lklb/android/GameEngine/billing/util/IabResult;>;"
    iget-object v4, p0, Lklb/android/GameEngine/billing/util/IabHelper$7;->val$purchases:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lklb/android/GameEngine/billing/util/Purchase;

    .line 987
    .local v2, "purchase":Lklb/android/GameEngine/billing/util/Purchase;
    :try_start_0
    iget-object v4, p0, Lklb/android/GameEngine/billing/util/IabHelper$7;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    # invokes: Lklb/android/GameEngine/billing/util/IabHelper;->consume(Lklb/android/GameEngine/billing/util/Purchase;)V
    invoke-static {v4, v2}, Lklb/android/GameEngine/billing/util/IabHelper;->access$900(Lklb/android/GameEngine/billing/util/IabHelper;Lklb/android/GameEngine/billing/util/Purchase;)V

    .line 988
    new-instance v4, Lklb/android/GameEngine/billing/util/IabResult;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Successful consume of sku "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lklb/android/GameEngine/billing/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lklb/android/GameEngine/billing/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lklb/android/GameEngine/billing/util/IabException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 990
    :catch_0
    move-exception v0

    .line 991
    .local v0, "ex":Lklb/android/GameEngine/billing/util/IabException;
    invoke-virtual {v0}, Lklb/android/GameEngine/billing/util/IabException;->getResult()Lklb/android/GameEngine/billing/util/IabResult;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 995
    .end local v0    # "ex":Lklb/android/GameEngine/billing/util/IabException;
    .end local v2    # "purchase":Lklb/android/GameEngine/billing/util/Purchase;
    :cond_0
    iget-object v4, p0, Lklb/android/GameEngine/billing/util/IabHelper$7;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    # invokes: Lklb/android/GameEngine/billing/util/IabHelper;->flagEndAsync()V
    invoke-static {v4}, Lklb/android/GameEngine/billing/util/IabHelper;->access$200(Lklb/android/GameEngine/billing/util/IabHelper;)V

    .line 997
    iget-object v4, p0, Lklb/android/GameEngine/billing/util/IabHelper$7;->val$singleListener:Lklb/android/GameEngine/billing/util/IabHelper$OnConsumeFinishedListener;

    if-eqz v4, :cond_1

    .line 998
    iget-object v4, p0, Lklb/android/GameEngine/billing/util/IabHelper$7;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    iget-object v4, v4, Lklb/android/GameEngine/billing/util/IabHelper;->mActivity:Landroid/app/Activity;

    new-instance v5, Lklb/android/GameEngine/billing/util/IabHelper$7$1;

    invoke-direct {v5, p0, v3}, Lklb/android/GameEngine/billing/util/IabHelper$7$1;-><init>(Lklb/android/GameEngine/billing/util/IabHelper$7;Ljava/util/List;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1004
    :cond_1
    iget-object v4, p0, Lklb/android/GameEngine/billing/util/IabHelper$7;->val$multiListener:Lklb/android/GameEngine/billing/util/IabHelper$OnConsumeMultiFinishedListener;

    if-eqz v4, :cond_2

    .line 1005
    iget-object v4, p0, Lklb/android/GameEngine/billing/util/IabHelper$7;->this$0:Lklb/android/GameEngine/billing/util/IabHelper;

    iget-object v4, v4, Lklb/android/GameEngine/billing/util/IabHelper;->mActivity:Landroid/app/Activity;

    new-instance v5, Lklb/android/GameEngine/billing/util/IabHelper$7$2;

    invoke-direct {v5, p0, v3}, Lklb/android/GameEngine/billing/util/IabHelper$7$2;-><init>(Lklb/android/GameEngine/billing/util/IabHelper$7;Ljava/util/List;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1011
    :cond_2
    return-void
.end method
