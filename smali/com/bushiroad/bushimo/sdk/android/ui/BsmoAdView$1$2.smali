.class Lcom/bushiroad/bushimo/sdk/android/ui/BsmoAdView$1$2;
.super Ljava/lang/Object;
.source "BsmoAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bushiroad/bushimo/sdk/android/ui/BsmoAdView$1;->onError(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoAdView$1;

.field final synthetic val$errorCode:I

.field final synthetic val$statusCode:I


# direct methods
.method constructor <init>(Lcom/bushiroad/bushimo/sdk/android/ui/BsmoAdView$1;II)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoAdView$1$2;->this$1:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoAdView$1;

    iput p2, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoAdView$1$2;->val$errorCode:I

    iput p3, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoAdView$1$2;->val$statusCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 119
    iget-object v0, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoAdView$1$2;->this$1:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoAdView$1;

    iget-object v0, v0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoAdView$1;->val$listener:Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;

    iget v1, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoAdView$1$2;->val$errorCode:I

    iget v2, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoAdView$1$2;->val$statusCode:I

    invoke-interface {v0, v1, v2}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;->onError(II)V

    .line 121
    return-void
.end method
