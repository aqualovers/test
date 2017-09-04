.class Lcom/bushiroad/bushimo/sdk/android/api/Bushimo$1;
.super Ljava/lang/Object;
.source "Bushimo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;


# direct methods
.method constructor <init>(Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo$1;->this$0:Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 137
    const-string v0, "BushimoSDK"

    const-string v1, "Auth error \u30a2\u30af\u30bb\u30b9\u30c8\u30fc\u30af\u30f3\u524a\u9664"

    invoke-static {v0, v1}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->logout()V

    .line 141
    const/4 v0, 0x0

    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v2

    const v3, 0x7f060041

    const-string v4, "string"

    const-string v5, "bsmo_error_invalid_accesstoken"

    invoke-virtual {v2, v3, v4, v5}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getResourceId(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo$1$1;

    invoke-direct {v2, p0}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo$1$1;-><init>(Lcom/bushiroad/bushimo/sdk/android/api/Bushimo$1;)V

    invoke-static {v0, v1, v2}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->alert(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 150
    return-void
.end method
