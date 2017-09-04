.class Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$1;
.super Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$DefaultWebViewClient;
.source "BsmoWebActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;


# direct methods
.method constructor <init>(Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$1;->this$0:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;

    invoke-direct {p0, p1}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$DefaultWebViewClient;-><init>(Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;)V

    return-void
.end method


# virtual methods
.method public onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "dontResend"    # Landroid/os/Message;
    .param p3, "resend"    # Landroid/os/Message;

    .prologue
    .line 140
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 141
    return-void
.end method
