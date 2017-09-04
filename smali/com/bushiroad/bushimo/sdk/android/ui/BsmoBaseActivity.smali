.class public abstract Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseActivity;
.super Landroid/app/Activity;
.source "BsmoBaseActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseActivity;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseActivity;->callIssueInstall()V

    return-void
.end method

.method private callIssueInstall()V
    .locals 2

    .prologue
    .line 84
    new-instance v0, Lcom/bushiroad/bushimo/sdk/android/api/BsmoIssueInstall;

    invoke-direct {v0}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoIssueInstall;-><init>()V

    new-instance v1, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseActivity$1;

    invoke-direct {v1, p0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseActivity$1;-><init>(Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseActivity;)V

    invoke-virtual {v0, v1}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoIssueInstall;->issueInstall(Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;)V

    .line 116
    return-void
.end method

.method private checkOpenDashBoard()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 125
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->needDashboardAppTop:Z

    if-eqz v0, :cond_1

    .line 126
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v0

    iput-boolean v1, v0, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->needDashboardAppTop:Z

    .line 128
    const-string v0, "apptop"

    invoke-static {p0, v0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoDashboard;->go(Landroid/content/Context;Ljava/lang/String;)V

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->needDashboardLogin:Z

    if-eqz v0, :cond_0

    .line 130
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v0

    iput-boolean v1, v0, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->needDashboardLogin:Z

    .line 132
    const-string v0, "login"

    invoke-static {p0, v0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoDashboard;->go(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public bushimoCurrentUserChanged()V
    .locals 1

    .prologue
    .line 210
    const-string v0, "bushimoCurrentUserChanged()"

    invoke-static {v0}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoLogUtil;->d(Ljava/lang/String;)I

    .line 212
    return-void
.end method

.method public bushimoDashBoardClosed()V
    .locals 1

    .prologue
    .line 219
    const-string v0, "bushimoDashBoardClosed()"

    invoke-static {v0}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoLogUtil;->d(Ljava/lang/String;)I

    .line 221
    return-void
.end method

.method public bushimoDidAuthorized()V
    .locals 1

    .prologue
    .line 270
    const-string v0, "bushimoDidAuthorized()"

    invoke-static {v0}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoLogUtil;->d(Ljava/lang/String;)I

    .line 272
    return-void
.end method

.method public bushimoPFVersionUpRequest()V
    .locals 4

    .prologue
    .line 228
    const-string v1, "[PFApp]bushimoPFVersionUpRequest()"

    invoke-static {v1}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoLogUtil;->d(Ljava/lang/String;)I

    .line 230
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->isSDK()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    const-string v1, "for Bushimo Platform App only."

    invoke-static {v1}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoLogUtil;->d(Ljava/lang/String;)I

    .line 263
    :goto_0
    return-void

    .line 237
    :cond_0
    invoke-virtual {p0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 240
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

    new-instance v3, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseActivity$2;

    invoke-direct {v3, p0, v0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseActivity$2;-><init>(Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseActivity;Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->alert(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 276
    const/16 v0, 0x270f

    if-ne p1, v0, :cond_0

    .line 277
    invoke-virtual {p0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseActivity;->finish()V

    .line 279
    :cond_0
    return-void
.end method

.method public onClickBsmoFooterLeft(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 193
    return-void
.end method

.method public onClickBsmoFooterRight(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 201
    return-void
.end method

.method public onClickBsmoHeaderLeft(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseActivity;->finish()V

    .line 177
    return-void
.end method

.method public onClickBsmoHeaderRight(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 185
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-static {p0}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->setCurrentActivity(Landroid/app/Activity;)V

    .line 41
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->initialize(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "BSMO_CALLBACK_EVENT_NOTIFY_KEY"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 48
    .local v0, "callbackRequestId":I
    if-eqz v0, :cond_0

    .line 50
    packed-switch v0, :pswitch_data_0

    .line 71
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-direct {p0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseActivity;->checkOpenDashBoard()V

    .line 75
    return-void

    .line 53
    :pswitch_0
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter;

    move-result-object v1

    const-string v2, "completeAuth"

    invoke-virtual {v1, v2}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter;->postNotification(Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :pswitch_1
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter;

    move-result-object v1

    const-string v2, "PFversionError"

    invoke-virtual {v1, v2}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter;->postNotification(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onRestart()V
    .locals 2

    .prologue
    .line 139
    const-string v0, "onRestart"

    invoke-static {v0}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoLogUtil;->d(Ljava/lang/String;)I

    .line 142
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->initialize(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 144
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 147
    invoke-direct {p0}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoBaseActivity;->checkOpenDashBoard()V

    .line 148
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 164
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->restore(Landroid/os/Bundle;)V

    .line 166
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 167
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 154
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->save(Landroid/os/Bundle;)V

    .line 156
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 158
    return-void
.end method
