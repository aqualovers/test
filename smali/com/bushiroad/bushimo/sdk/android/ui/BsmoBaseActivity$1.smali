.class Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseActivity$1;
.super Ljava/lang/Object;
.source "BsmoBaseActivity.java"

# interfaces
.implements Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseActivity;->callIssueInstall()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener",
        "<",
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseActivity;


# direct methods
.method constructor <init>(Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseActivity;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseActivity$1;->this$0:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(II)V
    .locals 6
    .param p1, "errorCode"    # I
    .param p2, "statusCode"    # I

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v2

    const v3, 0x7f06003f

    const-string v4, "string"

    const-string v5, "bsmo_error_communication"

    invoke-virtual {v2, v3, v4, v5}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getResourceId(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, ""

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseActivity$1$1;

    invoke-direct {v2, p0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseActivity$1$1;-><init>(Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseActivity$1;)V

    invoke-static {v0, v1, v2}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->alert(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 96
    return-void
.end method

.method public bridge synthetic onResponse(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 84
    check-cast p2, Ljava/util/HashMap;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseActivity$1;->onResponse(ILjava/util/HashMap;)V

    return-void
.end method

.method public onResponse(ILjava/util/HashMap;)V
    .locals 4
    .param p1, "statusCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p2, "response":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    const-string v3, "installKey"

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 104
    const-string v3, "installKey"

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 105
    .local v1, "installKey":Ljava/lang/String;
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->getSharedPreferencesPrivate()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 106
    .local v2, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 107
    .local v0, "e":Landroid/content/SharedPreferences$Editor;
    const-string v3, "PREF_INSTALL_KEY"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 108
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 112
    .end local v0    # "e":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "installKey":Ljava/lang/String;
    .end local v2    # "pref":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method
