.class Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseActivity$2;
.super Ljava/lang/Object;
.source "BsmoBaseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseActivity;->bushimoPFVersionUpRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseActivity;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseActivity$2;->this$0:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseActivity;

    iput-object p2, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseActivity$2;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 246
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://play.google.com/store/apps/details?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseActivity$2;->val$packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 247
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 248
    .local v0, "it":Landroid/content/Intent;
    iget-object v2, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseActivity$2;->this$0:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseActivity;

    invoke-virtual {v2, v0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 251
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 252
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->removeCookie()V

    .line 256
    :cond_0
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 257
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 260
    :cond_1
    return-void
.end method
