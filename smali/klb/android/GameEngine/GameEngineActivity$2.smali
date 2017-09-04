.class Lklb/android/GameEngine/GameEngineActivity$2;
.super Landroid/view/OrientationEventListener;
.source "GameEngineActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lklb/android/GameEngine/GameEngineActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lklb/android/GameEngine/GameEngineActivity;


# direct methods
.method constructor <init>(Lklb/android/GameEngine/GameEngineActivity;Landroid/content/Context;I)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # I

    .prologue
    .line 286
    iput-object p1, p0, Lklb/android/GameEngine/GameEngineActivity$2;->this$0:Lklb/android/GameEngine/GameEngineActivity;

    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 289
    add-int/lit16 v2, p1, 0x195

    rem-int/lit16 v2, v2, 0x168

    div-int/lit8 v1, v2, 0x5a

    .line 290
    .local v1, "ori":I
    iget-object v2, p0, Lklb/android/GameEngine/GameEngineActivity$2;->this$0:Lklb/android/GameEngine/GameEngineActivity;

    # getter for: Lklb/android/GameEngine/GameEngineActivity;->m_prev_orientation:I
    invoke-static {v2}, Lklb/android/GameEngine/GameEngineActivity;->access$200(Lklb/android/GameEngine/GameEngineActivity;)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 292
    iget-object v2, p0, Lklb/android/GameEngine/GameEngineActivity$2;->this$0:Lklb/android/GameEngine/GameEngineActivity;

    invoke-virtual {v2}, Lklb/android/GameEngine/GameEngineActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 293
    .local v0, "config":Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    packed-switch v2, :pswitch_data_0

    .line 304
    :goto_0
    iget-object v2, p0, Lklb/android/GameEngine/GameEngineActivity$2;->this$0:Lklb/android/GameEngine/GameEngineActivity;

    # setter for: Lklb/android/GameEngine/GameEngineActivity;->m_prev_orientation:I
    invoke-static {v2, v1}, Lklb/android/GameEngine/GameEngineActivity;->access$202(Lklb/android/GameEngine/GameEngineActivity;I)I

    .line 305
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v2

    invoke-virtual {v2, v1}, Lklb/android/GameEngine/PFInterface;->screenRotation(I)V

    .line 307
    .end local v0    # "config":Landroid/content/res/Configuration;
    :cond_0
    return-void

    .line 296
    .restart local v0    # "config":Landroid/content/res/Configuration;
    :pswitch_0
    const/4 v1, 0x1

    .line 297
    goto :goto_0

    .line 299
    :pswitch_1
    const/4 v1, 0x0

    .line 300
    goto :goto_0

    .line 293
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
