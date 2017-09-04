.class Lklb/android/GameEngine/EditBoxItem$2;
.super Ljava/lang/Object;
.source "EditBoxItem.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    .line 173
    iput-object p1, p0, Lklb/android/GameEngine/EditBoxItem$2;->this$0:Lklb/android/GameEngine/EditBoxItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 176
    iget-object v1, p0, Lklb/android/GameEngine/EditBoxItem$2;->this$0:Lklb/android/GameEngine/EditBoxItem;

    # getter for: Lklb/android/GameEngine/EditBoxItem;->m_context:Lklb/android/GameEngine/GameEngineActivity;
    invoke-static {v1}, Lklb/android/GameEngine/EditBoxItem;->access$000(Lklb/android/GameEngine/EditBoxItem;)Lklb/android/GameEngine/GameEngineActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lklb/android/GameEngine/GameEngineActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 177
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz p2, :cond_0

    .line 183
    :goto_0
    return-void

    .line 180
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method
