.class Lklb/android/GameEngine/GameEngineActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "GameEngineActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lklb/android/GameEngine/GameEngineActivity;->instanciateEarphoneChecker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lklb/android/GameEngine/GameEngineActivity;


# direct methods
.method constructor <init>(Lklb/android/GameEngine/GameEngineActivity;)V
    .locals 0

    .prologue
    .line 855
    iput-object p1, p0, Lklb/android/GameEngine/GameEngineActivity$3;->this$0:Lklb/android/GameEngine/GameEngineActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 858
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 859
    iget-object v2, p0, Lklb/android/GameEngine/GameEngineActivity$3;->this$0:Lklb/android/GameEngine/GameEngineActivity;

    const-string v3, "state"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_1

    :goto_0
    # setter for: Lklb/android/GameEngine/GameEngineActivity;->headsetEquipped:Z
    invoke-static {v2, v0}, Lklb/android/GameEngine/GameEngineActivity;->access$802(Lklb/android/GameEngine/GameEngineActivity;Z)Z

    .line 862
    iget-object v0, p0, Lklb/android/GameEngine/GameEngineActivity$3;->this$0:Lklb/android/GameEngine/GameEngineActivity;

    invoke-virtual {v0}, Lklb/android/GameEngine/GameEngineActivity;->setMannerMode()V

    .line 864
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 859
    goto :goto_0
.end method
