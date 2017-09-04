.class public abstract Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseNativeActivity;
.super Landroid/app/NativeActivity;
.source "BsmoBaseNativeActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/NativeActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseNativeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseNativeActivity;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseNativeActivity;->callIssueInstall()V

    return-void
.end method

.method private callIssueInstall()V
    .locals 2

    .prologue
    .line 77
    new-instance v0, Lcom/bushiroad/bushimo/sdk/android/api/BsmoIssueInstall;

    invoke-direct {v0}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoIssueInstall;-><init>()V

    new-instance v1, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseNativeActivity$1;

    invoke-direct {v1, p0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseNativeActivity$1;-><init>(Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseNativeActivity;)V

    invoke-virtual {v0, v1}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoIssueInstall;->issueInstall(Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;)V

    .line 109
    return-void
.end method

.method private checkOpenDashBoard()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 118
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->needDashboardAppTop:Z

    if-eqz v0, :cond_1

    .line 119
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v0

    iput-boolean v1, v0, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->needDashboardAppTop:Z

    .line 121
    const-string v0, "apptop"

    invoke-static {p0, v0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoDashboard;->go(Landroid/content/Context;Ljava/lang/String;)V

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->needDashboardLogin:Z

    if-eqz v0, :cond_0

    .line 123
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v0

    iput-boolean v1, v0, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->needDashboardLogin:Z

    .line 125
    const-string v0, "login"

    invoke-static {p0, v0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoDashboard;->go(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public bushimoCurrentUserChanged()V
    .locals 1

    .prologue
    .line 203
    const-string v0, "bushimoCurrentUserChanged()"

    invoke-static {v0}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoLogUtil;->d(Ljava/lang/String;)I

    .line 205
    return-void
.end method

.method public bushimoDashBoardClosed()V
    .locals 1

    .prologue
    .line 212
    const-string v0, "bushimoDashBoardClosed()"

    invoke-static {v0}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoLogUtil;->d(Ljava/lang/String;)I

    .line 214
    return-void
.end method

.method public bushimoDidAuthorized()V
    .locals 1

    .prologue
    .line 262
    const-string v0, "bushimoDidAuthorized()"

    invoke-static {v0}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoLogUtil;->d(Ljava/lang/String;)I

    .line 264
    return-void
.end method

.method public bushimoPFVersionUpRequest()V
    .locals 4

    .prologue
    .line 221
    const-string v1, "[PFApp]bushimoPFVersionUpRequest()"

    invoke-static {v1}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoLogUtil;->d(Ljava/lang/String;)I

    .line 223
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->isSDK()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    const-string v1, "for Bushimo Platform App only."

    invoke-static {v1}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoLogUtil;->d(Ljava/lang/String;)I

    .line 256
    :goto_0
    return-void

    .line 230
    :cond_0
    invoke-virtual {p0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseNativeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f060048

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f060047

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseNativeActivity$2;

    invoke-direct {v3, p0, v0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseNativeActivity$2;-><init>(Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseNativeActivity;Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->alert(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 268
    const/16 v0, 0x270f

    if-ne p1, v0, :cond_0

    .line 269
    invoke-virtual {p0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseNativeActivity;->finish()V

    .line 271
    :cond_0
    return-void
.end method

.method public onClickBsmoFooterLeft(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 186
    return-void
.end method

.method public onClickBsmoFooterRight(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 194
    return-void
.end method

.method public onClickBsmoHeaderLeft(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseNativeActivity;->finish()V

    .line 170
    return-void
.end method

.method public onClickBsmoHeaderRight(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 178
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    const/4 v1, 0x1

    sput-boolean v1, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->isUseNativeActivity:Z

    .line 36
    invoke-static {p0}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->setCurrentActivity(Landroid/app/Activity;)V

    .line 37
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->initialize(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseNativeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "BSMO_CALLBACK_EVENT_NOTIFY_KEY"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 41
    .local v0, "callbackRequestId":I
    if-eqz v0, :cond_0

    .line 43
    packed-switch v0, :pswitch_data_0

    .line 64
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/NativeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-direct {p0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseNativeActivity;->checkOpenDashBoard()V

    .line 68
    return-void

    .line 46
    :pswitch_0
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter;

    move-result-object v1

    const-string v2, "completeAuth"

    invoke-virtual {v1, v2}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter;->postNotification(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :pswitch_1
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter;

    move-result-object v1

    const-string v2, "PFversionError"

    invoke-virtual {v1, v2}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter;->postNotification(Ljava/lang/String;)V

    goto :goto_0

    .line 43
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onRestart()V
    .locals 2

    .prologue
    .line 132
    const-string v0, "onRestart"

    invoke-static {v0}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoLogUtil;->d(Ljava/lang/String;)I

    .line 135
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->initialize(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 137
    invoke-super {p0}, Landroid/app/NativeActivity;->onRestart()V

    .line 140
    invoke-direct {p0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseNativeActivity;->checkOpenDashBoard()V

    .line 141
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 157
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->restore(Landroid/os/Bundle;)V

    .line 159
    invoke-super {p0, p1}, Landroid/app/NativeActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 160
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 147
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->save(Landroid/os/Bundle;)V

    .line 149
    invoke-super {p0, p1}, Landroid/app/NativeActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 151
    return-void
.end method
