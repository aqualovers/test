.class final Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers$5;
.super Ljava/lang/Object;
.source "BsmoHelpers.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->showProgressDialog(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cancelable:Z

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 327
    iput-object p1, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers$5;->val$message:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers$5;->val$cancelable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 330
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 331
    .local v0, "dialog":Landroid/app/ProgressDialog;
    iget-object v1, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers$5;->val$message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 332
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 333
    iget-boolean v1, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers$5;->val$cancelable:Z

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 334
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 335
    sput-object v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->progressDialog:Landroid/app/ProgressDialog;

    .line 336
    return-void
.end method
