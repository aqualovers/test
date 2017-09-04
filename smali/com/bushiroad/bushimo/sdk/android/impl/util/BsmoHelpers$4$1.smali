.class Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers$4$1;
.super Ljava/lang/Object;
.source "BsmoHelpers.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers$4;


# direct methods
.method constructor <init>(Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers$4;)V
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers$4$1;->this$0:Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 308
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers$4$1;->this$0:Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers$4;

    iget-object v1, v1, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers$4;->val$exec:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 309
    return-void
.end method
