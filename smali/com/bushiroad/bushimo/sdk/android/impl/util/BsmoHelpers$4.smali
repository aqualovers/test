.class final Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers$4;
.super Ljava/lang/Object;
.source "BsmoHelpers.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->confirm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$exec:Ljava/lang/Runnable;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 298
    iput-object p1, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers$4;->val$title:Ljava/lang/String;

    iput-object p2, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers$4;->val$message:Ljava/lang/String;

    iput-object p3, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers$4;->val$exec:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 302
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 303
    .local v1, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers$4;->val$title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 304
    iget-object v2, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers$4;->val$message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 305
    const-string v2, "Yes"

    new-instance v3, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers$4$1;

    invoke-direct {v3, p0}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers$4$1;-><init>(Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers$4;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 311
    const-string v2, "No"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 312
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 313
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 314
    return-void
.end method
