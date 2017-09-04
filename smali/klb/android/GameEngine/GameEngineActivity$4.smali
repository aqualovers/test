.class Lklb/android/GameEngine/GameEngineActivity$4;
.super Ljava/lang/Object;
.source "GameEngineActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lklb/android/GameEngine/GameEngineActivity;->startAlertDialog(Ljava/lang/String;Ljava/lang/String;)V
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
    .line 940
    iput-object p1, p0, Lklb/android/GameEngine/GameEngineActivity$4;->this$0:Lklb/android/GameEngine/GameEngineActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 945
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lklb/android/GameEngine/GameEngineActivity$4;->this$0:Lklb/android/GameEngine/GameEngineActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 947
    .local v1, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lklb/android/GameEngine/GameEngineActivity$4;->this$0:Lklb/android/GameEngine/GameEngineActivity;

    # getter for: Lklb/android/GameEngine/GameEngineActivity;->m_alertTitle:Ljava/lang/String;
    invoke-static {v2}, Lklb/android/GameEngine/GameEngineActivity;->access$900(Lklb/android/GameEngine/GameEngineActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 949
    iget-object v2, p0, Lklb/android/GameEngine/GameEngineActivity$4;->this$0:Lklb/android/GameEngine/GameEngineActivity;

    # getter for: Lklb/android/GameEngine/GameEngineActivity;->m_alertMessage:Ljava/lang/String;
    invoke-static {v2}, Lklb/android/GameEngine/GameEngineActivity;->access$1000(Lklb/android/GameEngine/GameEngineActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 951
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v2

    const-string v3, "ENG_AND_OK"

    const-string v4, "OK"

    invoke-virtual {v2, v3, v4}, Lklb/android/GameEngine/PFInterface;->getLocalizedMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lklb/android/GameEngine/GameEngineActivity$4$1;

    invoke-direct {v3, p0}, Lklb/android/GameEngine/GameEngineActivity$4$1;-><init>(Lklb/android/GameEngine/GameEngineActivity$4;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 958
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 959
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 961
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 962
    return-void
.end method
