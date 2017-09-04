.class Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$2;
.super Ljava/lang/Object;
.source "BsmoWebActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 183
    iput-object p1, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity$2;->this$0:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    .line 187
    const/4 v0, 0x1

    return v0
.end method
