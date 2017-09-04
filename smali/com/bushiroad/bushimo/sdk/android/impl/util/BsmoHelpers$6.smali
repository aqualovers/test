.class final Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers$6;
.super Ljava/lang/Object;
.source "BsmoHelpers.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->dismissProgressDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 350
    sget-object v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 351
    sget-object v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 352
    const/4 v0, 0x0

    sput-object v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->progressDialog:Landroid/app/ProgressDialog;

    .line 354
    :cond_0
    return-void
.end method
