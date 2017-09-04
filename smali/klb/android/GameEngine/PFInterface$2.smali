.class final Lklb/android/GameEngine/PFInterface$2;
.super Ljava/lang/Object;
.source "PFInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lklb/android/GameEngine/PFInterface;->webview_setText(ILjava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$control:Lklb/android/GameEngine/WebViewItem;

.field final synthetic val$inner_text:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lklb/android/GameEngine/WebViewItem;)V
    .locals 0

    .prologue
    .line 481
    iput-object p1, p0, Lklb/android/GameEngine/PFInterface$2;->val$inner_text:Ljava/lang/String;

    iput-object p2, p0, Lklb/android/GameEngine/PFInterface$2;->val$control:Lklb/android/GameEngine/WebViewItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 483
    const-string v0, "javascript:"

    .line 484
    .local v0, "js":Ljava/lang/String;
    iget-object v1, p0, Lklb/android/GameEngine/PFInterface$2;->val$inner_text:Ljava/lang/String;

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 485
    iget-object v1, p0, Lklb/android/GameEngine/PFInterface$2;->val$control:Lklb/android/GameEngine/WebViewItem;

    iget-object v2, p0, Lklb/android/GameEngine/PFInterface$2;->val$inner_text:Ljava/lang/String;

    const-string v3, "javascript:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lklb/android/GameEngine/WebViewItem;->evaluateJavascript(Ljava/lang/String;)V

    .line 489
    :goto_0
    return-void

    .line 487
    :cond_0
    iget-object v1, p0, Lklb/android/GameEngine/PFInterface$2;->val$control:Lklb/android/GameEngine/WebViewItem;

    iget-object v2, p0, Lklb/android/GameEngine/PFInterface$2;->val$inner_text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lklb/android/GameEngine/WebViewItem;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method
