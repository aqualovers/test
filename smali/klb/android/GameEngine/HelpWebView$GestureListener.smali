.class Lklb/android/GameEngine/HelpWebView$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "WebViewItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lklb/android/GameEngine/HelpWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lklb/android/GameEngine/HelpWebView;


# direct methods
.method private constructor <init>(Lklb/android/GameEngine/HelpWebView;)V
    .locals 0

    .prologue
    .line 463
    iput-object p1, p0, Lklb/android/GameEngine/HelpWebView$GestureListener;->this$0:Lklb/android/GameEngine/HelpWebView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lklb/android/GameEngine/HelpWebView;Lklb/android/GameEngine/HelpWebView$1;)V
    .locals 0
    .param p1, "x0"    # Lklb/android/GameEngine/HelpWebView;
    .param p2, "x1"    # Lklb/android/GameEngine/HelpWebView$1;

    .prologue
    .line 463
    invoke-direct {p0, p1}, Lklb/android/GameEngine/HelpWebView$GestureListener;-><init>(Lklb/android/GameEngine/HelpWebView;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 468
    const/4 v0, 0x1

    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 472
    iget-object v0, p0, Lklb/android/GameEngine/HelpWebView$GestureListener;->this$0:Lklb/android/GameEngine/HelpWebView;

    # setter for: Lklb/android/GameEngine/HelpWebView;->mDoubleTouch:Z
    invoke-static {v0, v1}, Lklb/android/GameEngine/HelpWebView;->access$102(Lklb/android/GameEngine/HelpWebView;Z)Z

    .line 475
    return v1
.end method
