.class Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers$ConfirmListener;
.super Ljava/lang/Object;
.source "BsmoHelpers.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConfirmListener"
.end annotation


# instance fields
.field public mAction:Ljava/lang/reflect/Method;

.field public mCancelAction:Ljava/lang/reflect/Method;

.field public mParam:Ljava/lang/Object;

.field public mTarget:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers$1;

    .prologue
    .line 240
    invoke-direct {p0}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers$ConfirmListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialoginterface"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 251
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 253
    iget-object v0, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers$ConfirmListener;->mTarget:Ljava/lang/Object;

    iget-object v1, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers$ConfirmListener;->mAction:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers$ConfirmListener;->mParam:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/Object;)Z

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers$ConfirmListener;->mCancelAction:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers$ConfirmListener;->mTarget:Ljava/lang/Object;

    iget-object v1, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers$ConfirmListener;->mCancelAction:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers$ConfirmListener;->mParam:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/Object;)Z

    goto :goto_0
.end method
