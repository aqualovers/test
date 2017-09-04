.class Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseNativeActivity$1$1;
.super Ljava/lang/Object;
.source "BsmoBaseNativeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseNativeActivity$1;->onError(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseNativeActivity$1;


# direct methods
.method constructor <init>(Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseNativeActivity$1;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseNativeActivity$1$1;->this$1:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseNativeActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 85
    iget-object v0, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseNativeActivity$1$1;->this$1:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseNativeActivity$1;

    iget-object v0, v0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseNativeActivity$1;->this$0:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseNativeActivity;

    # invokes: Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseNativeActivity;->callIssueInstall()V
    invoke-static {v0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseNativeActivity;->access$000(Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseNativeActivity;)V

    .line 86
    return-void
.end method
