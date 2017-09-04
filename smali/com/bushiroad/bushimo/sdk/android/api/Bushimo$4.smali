.class Lcom/bushiroad/bushimo/sdk/android/api/Bushimo$4;
.super Ljava/lang/Object;
.source "Bushimo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;


# direct methods
.method constructor <init>(Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo$4;->this$0:Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 192
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 194
    sget-boolean v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->isUseNativeActivity:Z

    if-eqz v0, :cond_1

    .line 195
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseNativeActivity;

    invoke-virtual {v0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseNativeActivity;->bushimoDashBoardClosed()V

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseActivity;

    invoke-virtual {v0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseActivity;->bushimoDashBoardClosed()V

    goto :goto_0
.end method
