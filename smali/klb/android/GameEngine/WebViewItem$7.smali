.class Lklb/android/GameEngine/WebViewItem$7;
.super Ljava/lang/Object;
.source "WebViewItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lklb/android/GameEngine/WebViewItem;->setColor(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lklb/android/GameEngine/WebViewItem;


# direct methods
.method constructor <init>(Lklb/android/GameEngine/WebViewItem;)V
    .locals 0

    .prologue
    .line 373
    iput-object p1, p0, Lklb/android/GameEngine/WebViewItem$7;->this$0:Lklb/android/GameEngine/WebViewItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 377
    iget-object v1, p0, Lklb/android/GameEngine/WebViewItem$7;->this$0:Lklb/android/GameEngine/WebViewItem;

    iget v1, v1, Lklb/android/GameEngine/WebViewItem;->m_alpha:I

    shl-int/lit8 v1, v1, 0x18

    iget-object v2, p0, Lklb/android/GameEngine/WebViewItem$7;->this$0:Lklb/android/GameEngine/WebViewItem;

    iget v2, v2, Lklb/android/GameEngine/WebViewItem;->m_color:I

    or-int v0, v1, v2

    .line 378
    .local v0, "col":I
    iget-object v1, p0, Lklb/android/GameEngine/WebViewItem$7;->this$0:Lklb/android/GameEngine/WebViewItem;

    # getter for: Lklb/android/GameEngine/WebViewItem;->m_web:Lklb/android/GameEngine/HelpWebView;
    invoke-static {v1}, Lklb/android/GameEngine/WebViewItem;->access$100(Lklb/android/GameEngine/WebViewItem;)Lklb/android/GameEngine/HelpWebView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lklb/android/GameEngine/HelpWebView;->setBackgroundColor(I)V

    .line 379
    return-void
.end method
