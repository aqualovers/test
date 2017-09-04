.class Lklb/android/GameEngine/billing/util/IabHelper$7$1;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lklb/android/GameEngine/billing/util/IabHelper$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lklb/android/GameEngine/billing/util/IabHelper$7;

.field final synthetic val$results:Ljava/util/List;


# direct methods
.method constructor <init>(Lklb/android/GameEngine/billing/util/IabHelper$7;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 998
    iput-object p1, p0, Lklb/android/GameEngine/billing/util/IabHelper$7$1;->this$1:Lklb/android/GameEngine/billing/util/IabHelper$7;

    iput-object p2, p0, Lklb/android/GameEngine/billing/util/IabHelper$7$1;->val$results:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1000
    iget-object v0, p0, Lklb/android/GameEngine/billing/util/IabHelper$7$1;->this$1:Lklb/android/GameEngine/billing/util/IabHelper$7;

    iget-object v2, v0, Lklb/android/GameEngine/billing/util/IabHelper$7;->val$singleListener:Lklb/android/GameEngine/billing/util/IabHelper$OnConsumeFinishedListener;

    iget-object v0, p0, Lklb/android/GameEngine/billing/util/IabHelper$7$1;->this$1:Lklb/android/GameEngine/billing/util/IabHelper$7;

    iget-object v0, v0, Lklb/android/GameEngine/billing/util/IabHelper$7;->val$purchases:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklb/android/GameEngine/billing/util/Purchase;

    iget-object v1, p0, Lklb/android/GameEngine/billing/util/IabHelper$7$1;->val$results:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lklb/android/GameEngine/billing/util/IabResult;

    invoke-interface {v2, v0, v1}, Lklb/android/GameEngine/billing/util/IabHelper$OnConsumeFinishedListener;->onConsumeFinished(Lklb/android/GameEngine/billing/util/Purchase;Lklb/android/GameEngine/billing/util/IabResult;)V

    .line 1001
    return-void
.end method
