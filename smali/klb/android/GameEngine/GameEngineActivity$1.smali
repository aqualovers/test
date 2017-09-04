.class Lklb/android/GameEngine/GameEngineActivity$1;
.super Ljava/lang/Object;
.source "GameEngineActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lklb/android/GameEngine/GameEngineActivity;->startActivity(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lklb/android/GameEngine/GameEngineActivity;

.field final synthetic val$ctx:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lklb/android/GameEngine/GameEngineActivity;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lklb/android/GameEngine/GameEngineActivity$1;->this$0:Lklb/android/GameEngine/GameEngineActivity;

    iput-object p2, p0, Lklb/android/GameEngine/GameEngineActivity$1;->val$ctx:Landroid/content/Context;

    iput-object p3, p0, Lklb/android/GameEngine/GameEngineActivity$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 163
    :try_start_0
    iget-object v1, p0, Lklb/android/GameEngine/GameEngineActivity$1;->this$0:Lklb/android/GameEngine/GameEngineActivity;

    # getter for: Lklb/android/GameEngine/GameEngineActivity;->installThread:Ljava/lang/Thread;
    invoke-static {v1}, Lklb/android/GameEngine/GameEngineActivity;->access$000(Lklb/android/GameEngine/GameEngineActivity;)Ljava/lang/Thread;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 164
    iget-object v1, p0, Lklb/android/GameEngine/GameEngineActivity$1;->this$0:Lklb/android/GameEngine/GameEngineActivity;

    # getter for: Lklb/android/GameEngine/GameEngineActivity;->installThread:Ljava/lang/Thread;
    invoke-static {v1}, Lklb/android/GameEngine/GameEngineActivity;->access$000(Lklb/android/GameEngine/GameEngineActivity;)Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 166
    :cond_0
    const-wide/16 v4, 0x3e8

    invoke-static {}, Lklb/android/GameEngine/PFInterface;->nanotime()J

    move-result-wide v6

    iget-object v1, p0, Lklb/android/GameEngine/GameEngineActivity$1;->this$0:Lklb/android/GameEngine/GameEngineActivity;

    # getter for: Lklb/android/GameEngine/GameEngineActivity;->activityCreatedAt:J
    invoke-static {v1}, Lklb/android/GameEngine/GameEngineActivity;->access$100(Lklb/android/GameEngine/GameEngineActivity;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/32 v8, 0xf4240

    div-long/2addr v6, v8

    sub-long v2, v4, v6

    .line 167
    .local v2, "sleepRemaining":J
    const-wide/16 v4, 0x0

    cmp-long v1, v4, v2

    if-gez v1, :cond_1

    .line 168
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :cond_1
    iget-object v1, p0, Lklb/android/GameEngine/GameEngineActivity$1;->val$ctx:Landroid/content/Context;

    iget-object v4, p0, Lklb/android/GameEngine/GameEngineActivity$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 174
    .end local v2    # "sleepRemaining":J
    :goto_0
    return-void

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0
.end method
