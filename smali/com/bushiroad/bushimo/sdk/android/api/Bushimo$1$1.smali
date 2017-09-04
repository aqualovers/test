.class Lcom/bushiroad/bushimo/sdk/android/api/Bushimo$1$1;
.super Ljava/lang/Object;
.source "Bushimo.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bushiroad/bushimo/sdk/android/api/Bushimo$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bushiroad/bushimo/sdk/android/api/Bushimo$1;


# direct methods
.method constructor <init>(Lcom/bushiroad/bushimo/sdk/android/api/Bushimo$1;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo$1$1;->this$1:Lcom/bushiroad/bushimo/sdk/android/api/Bushimo$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 146
    iget-object v0, p0, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo$1$1;->this$1:Lcom/bushiroad/bushimo/sdk/android/api/Bushimo$1;

    iget-object v0, v0, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo$1;->this$0:Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "requiredLogin"

    invoke-virtual {v0, v1, v2}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->authorization(Landroid/app/Activity;Ljava/lang/String;)V

    .line 147
    return-void
.end method
