.class Lklb/android/GameEngine/EditBoxItem$1;
.super Ljava/lang/Object;
.source "EditBoxItem.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lklb/android/GameEngine/EditBoxItem;->create()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lklb/android/GameEngine/EditBoxItem;


# direct methods
.method constructor <init>(Lklb/android/GameEngine/EditBoxItem;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lklb/android/GameEngine/EditBoxItem$1;->this$0:Lklb/android/GameEngine/EditBoxItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 164
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x42

    if-ne p2, v2, :cond_0

    .line 165
    iget-object v2, p0, Lklb/android/GameEngine/EditBoxItem$1;->this$0:Lklb/android/GameEngine/EditBoxItem;

    # getter for: Lklb/android/GameEngine/EditBoxItem;->m_context:Lklb/android/GameEngine/GameEngineActivity;
    invoke-static {v2}, Lklb/android/GameEngine/EditBoxItem;->access$000(Lklb/android/GameEngine/EditBoxItem;)Lklb/android/GameEngine/GameEngineActivity;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Lklb/android/GameEngine/GameEngineActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 166
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 167
    const/4 v1, 0x1

    .line 169
    .end local v0    # "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return v1
.end method
