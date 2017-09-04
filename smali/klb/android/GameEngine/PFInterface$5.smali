.class final Lklb/android/GameEngine/PFInterface$5;
.super Ljava/lang/Object;
.source "PFInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lklb/android/GameEngine/PFInterface;->copyToClipBoard(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Lklb/android/GameEngine/GameEngineActivity;

.field final synthetic val$str:Ljava/lang/String;


# direct methods
.method constructor <init>(Lklb/android/GameEngine/GameEngineActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1242
    iput-object p1, p0, Lklb/android/GameEngine/PFInterface$5;->val$context:Lklb/android/GameEngine/GameEngineActivity;

    iput-object p2, p0, Lklb/android/GameEngine/PFInterface$5;->val$str:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1245
    iget-object v1, p0, Lklb/android/GameEngine/PFInterface$5;->val$context:Lklb/android/GameEngine/GameEngineActivity;

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Lklb/android/GameEngine/GameEngineActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 1246
    .local v0, "cbMgr":Landroid/text/ClipboardManager;
    iget-object v1, p0, Lklb/android/GameEngine/PFInterface$5;->val$str:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 1247
    return-void
.end method
