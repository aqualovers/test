.class Lklb/android/GameEngine/GameEngineActivity$InstallationPostProcessHandler;
.super Landroid/os/Handler;
.source "GameEngineActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lklb/android/GameEngine/GameEngineActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstallationPostProcessHandler"
.end annotation


# instance fields
.field private final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lklb/android/GameEngine/GameEngineActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lklb/android/GameEngine/GameEngineActivity;)V
    .locals 1
    .param p1, "activity"    # Lklb/android/GameEngine/GameEngineActivity;

    .prologue
    .line 733
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 734
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lklb/android/GameEngine/GameEngineActivity$InstallationPostProcessHandler;->mActivity:Ljava/lang/ref/WeakReference;

    .line 735
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 739
    iget-object v2, p0, Lklb/android/GameEngine/GameEngineActivity$InstallationPostProcessHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lklb/android/GameEngine/GameEngineActivity;

    .line 740
    .local v1, "self":Lklb/android/GameEngine/GameEngineActivity;
    if-nez v1, :cond_1

    .line 757
    :cond_0
    :goto_0
    return-void

    .line 743
    :cond_1
    invoke-virtual {v1}, Lklb/android/GameEngine/GameEngineActivity;->getProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    .line 744
    .local v0, "m_progressDialog":Landroid/app/ProgressDialog;
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v4, :cond_2

    .line 745
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ltz v2, :cond_0

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-lt v2, v3, :cond_0

    .line 746
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 747
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 748
    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMax(I)V

    goto :goto_0

    .line 751
    :cond_2
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 752
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 753
    const/4 v0, 0x0

    .line 754
    invoke-virtual {v1, v4}, Lklb/android/GameEngine/GameEngineActivity;->setInstallStatus(Z)V

    .line 755
    const-string v2, "Cpp"

    const-string v3, "InstallEnd"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
