.class public Lcom/bushiroad/bushimo/sdk/android/ui/BsmoDashboard;
.super Ljava/lang/Object;
.source "BsmoDashboard.java"


# static fields
.field public static final ACTION_APP_TOP:Ljava/lang/String; = "apptop"

.field public static final ACTION_CONTACT_APP:Ljava/lang/String; = "contactapp"

.field public static final ACTION_DASHBOARD_TOP:Ljava/lang/String; = "dashboardtop"

.field public static final ACTION_GAME:Ljava/lang/String; = "game"

.field public static final ACTION_INAPPLOGIN:Ljava/lang/String; = "inapplogin"

.field public static final ACTION_LOGIN:Ljava/lang/String; = "login"

.field public static final ACTION_MYAPPS:Ljava/lang/String; = "myapps"

.field public static final ACTION_MYPAGE:Ljava/lang/String; = "mypage"

.field public static final ACTION_REGISTER:Ljava/lang/String; = "register"

.field public static final ACTION_SNS_LOGIN:Ljava/lang/String; = "sns_login"

.field public static final ACTION_TOP:Ljava/lang/String; = "top"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method protected static action2Url(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "action"    # Ljava/lang/String;

    .prologue
    .line 168
    const-string v0, "top"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    const-string v0, "https://www.bushimo.jp/m/"

    .line 199
    :goto_0
    return-object v0

    .line 171
    :cond_0
    const-string v0, "myapps"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    const-string v0, "https://www.bushimo.jp/m/apps/my_apps.htm"

    goto :goto_0

    .line 174
    :cond_1
    const-string v0, "mypage"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 175
    const-string v0, "https://www.bushimo.jp/m/dashboard/?to=mypage"

    goto :goto_0

    .line 177
    :cond_2
    const-string v0, "login"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 178
    sget-object v0, Lcom/bushiroad/bushimo/sdk/android/impl/common/BsmoInternalConstant;->URL_LOGIN:Ljava/lang/String;

    goto :goto_0

    .line 180
    :cond_3
    const-string v0, "inapplogin"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 181
    const-string v0, "https://www.bushimo.jp/m/login/"

    goto :goto_0

    .line 183
    :cond_4
    const-string v0, "apptop"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 184
    const-string v0, "https://www.bushimo.jp/m/apps/detail.htm?key=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v4

    const v5, 0x7f060034

    const-string v6, "string"

    const-string v7, "bsmo_app_id"

    invoke-virtual {v4, v5, v6, v7}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getResourceId(ILjava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 186
    :cond_5
    const-string v0, "dashboardtop"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 187
    const-string v0, "file:///android_asset/bsmo_html/index_nochat.html"

    goto :goto_0

    .line 189
    :cond_6
    const-string v0, "game"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 190
    const-string v0, "https://www.bushimo.jp/m/dashboard/?to=apps"

    goto :goto_0

    .line 192
    :cond_7
    const-string v0, "contactapp"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 193
    const-string v0, "https://www.bushimo.jp/m/contact_app/input.htm"

    goto :goto_0

    .line 195
    :cond_8
    const-string v0, "sns_login"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 196
    const-string v0, "https://www.bushimo.jp/m/dashboard/?to=sns_login"

    goto/16 :goto_0

    .line 199
    :cond_9
    const-string v0, "https://www.bushimo.jp/m/"

    goto/16 :goto_0
.end method

.method public static go(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getCurrentUser()Lcom/bushiroad/bushimo/sdk/android/api/BsmoUser;

    move-result-object v0

    .line 47
    .local v0, "user":Lcom/bushiroad/bushimo/sdk/android/api/BsmoUser;
    if-nez v0, :cond_0

    .line 49
    const-string v1, "login"

    invoke-static {p0, v1}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoDashboard;->go(Landroid/content/Context;Ljava/lang/String;)V

    .line 57
    :goto_0
    return-void

    .line 53
    :cond_0
    const-string v1, "dashboardtop"

    invoke-static {p0, v1}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoDashboard;->go(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static go(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 65
    const-string v3, "BushimoSDK BsmoDashboard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gogo dashboard "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-static {p1}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoDashboard;->action2Url(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, "url":Ljava/lang/String;
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->isSDK()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 72
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoLoginActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "url"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    const-string v3, "login"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 77
    const-string v3, "cantClose"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 80
    :cond_0
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 89
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 84
    .restart local p0    # "context":Landroid/content/Context;
    :cond_2
    sget-object v0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoLoginActivity;->sharedInstance:Lcom/bushiroad/bushimo/sdk/android/ui/BsmoLoginActivity;

    .line 85
    .local v0, "act":Lcom/bushiroad/bushimo/sdk/android/ui/BsmoLoginActivity;
    if-eqz v0, :cond_1

    .line 86
    invoke-virtual {v0, v2}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoLoginActivity;->go(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static go(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "isModal"    # Z

    .prologue
    .line 99
    const-string v3, "BushimoSDK BsmoDashboard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "go dashboard "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-static {p1}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoDashboard;->action2Url(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, "url":Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 106
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoLoginActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 107
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "url"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    const-string v3, "login"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 111
    const-string v3, "cantClose"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 114
    :cond_0
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    const/16 v3, 0x270f

    invoke-virtual {p0, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 143
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 118
    .restart local p0    # "context":Landroid/content/Context;
    :cond_2
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->isSDK()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 120
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 122
    .local v0, "current":Landroid/app/Activity;
    if-eqz v0, :cond_1

    instance-of v3, v0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;

    if-eqz v3, :cond_1

    .line 123
    check-cast v0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;

    .end local v0    # "current":Landroid/app/Activity;
    invoke-virtual {v0, v2}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->go(Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :cond_3
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 129
    .restart local v0    # "current":Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 133
    instance-of v3, v0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;

    if-eqz v3, :cond_4

    .line 134
    check-cast v0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;

    .end local v0    # "current":Landroid/app/Activity;
    invoke-virtual {v0, v2}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoWebActivity;->go(Ljava/lang/String;)V

    goto :goto_0

    .line 135
    .restart local v0    # "current":Landroid/app/Activity;
    :cond_4
    instance-of v3, v0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoLoginActivity;

    if-eqz v3, :cond_1

    .line 136
    check-cast v0, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoLoginActivity;

    .end local v0    # "current":Landroid/app/Activity;
    invoke-virtual {v0, v2}, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoLoginActivity;->go(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static openUrl(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 152
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bushiroad/bushimo/sdk/android/ui/BsmoLoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 153
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    const/16 v1, 0x270f

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 158
    return-void
.end method
