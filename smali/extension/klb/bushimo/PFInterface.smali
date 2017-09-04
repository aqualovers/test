.class public Lextension/klb/bushimo/PFInterface;
.super Ljava/lang/Object;
.source "PFInterface.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bushimoAuthorize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "userName"    # Ljava/lang/String;
    .param p1, "inviteCode"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .prologue
    .line 22
    :try_start_0
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v2

    .line 26
    .local v2, "instance":Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;
    new-instance v0, Lcom/bushiroad/bushimo/sdk/android/api/BsmoContactAppObject;

    invoke-direct {v0}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoContactAppObject;-><init>()V

    .line 27
    .local v0, "contactAppObject":Lcom/bushiroad/bushimo/sdk/android/api/BsmoContactAppObject;
    iput-object p0, v0, Lcom/bushiroad/bushimo/sdk/android/api/BsmoContactAppObject;->nickname:Ljava/lang/String;

    .line 28
    iput-object p1, v0, Lcom/bushiroad/bushimo/sdk/android/api/BsmoContactAppObject;->gameUid:Ljava/lang/String;

    .line 29
    iput-object p2, v0, Lcom/bushiroad/bushimo/sdk/android/api/BsmoContactAppObject;->gameVersion:Ljava/lang/String;

    .line 30
    iget-object v3, v0, Lcom/bushiroad/bushimo/sdk/android/api/BsmoContactAppObject;->questionType:Ljava/util/ArrayList;

    const-string v4, "\u30d6\u30b7\u30e2\u306b\u3064\u3044\u3066\u306e\u8cea\u554f"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    invoke-virtual {v2, v0}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->setContactAppParam(Lcom/bushiroad/bushimo/sdk/android/api/BsmoContactAppObject;)V

    .line 33
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getActivity()Lklb/android/GameEngine/GameEngineActivity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->authorization(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    const/4 v3, 0x1

    .line 36
    .end local v0    # "contactAppObject":Lcom/bushiroad/bushimo/sdk/android/api/BsmoContactAppObject;
    .end local v2    # "instance":Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;
    :goto_0
    return v3

    .line 35
    :catch_0
    move-exception v1

    .line 36
    .local v1, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static bushimoGetAccessToken()Ljava/lang/String;
    .locals 3

    .prologue
    .line 52
    :try_start_0
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v2

    .line 53
    .local v2, "instance":Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;
    invoke-virtual {v2}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getAccessToken()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 56
    :goto_0
    return-object v0

    .line 55
    :catch_0
    move-exception v1

    .line 56
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static bushimoGetUserId()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 62
    :try_start_0
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v1

    .line 63
    .local v1, "instance":Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;
    invoke-virtual {v1}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getCurrentUser()Lcom/bushiroad/bushimo/sdk/android/api/BsmoUser;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoUser;->getUserId()Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, "user":Ljava/lang/String;
    if-nez v2, :cond_0

    move-object v2, v3

    .line 68
    .end local v2    # "user":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 65
    .restart local v2    # "user":Ljava/lang/String;
    :cond_0
    const-string v4, "Bushimo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "userId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 67
    .end local v2    # "user":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move-object v2, v3

    .line 68
    goto :goto_0
.end method

.method public static bushimoIsAuthorized()Z
    .locals 6

    .prologue
    .line 11
    :try_start_0
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v2

    .line 12
    .local v2, "instance":Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;
    invoke-virtual {v2}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->isAuthorized()Z

    move-result v0

    .line 13
    .local v0, "authorized":Z
    const-string v3, "Bushimo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "authorized:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .end local v0    # "authorized":Z
    :goto_0
    return v0

    .line 15
    :catch_0
    move-exception v1

    .line 16
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static bushimoRemoveUser()Z
    .locals 3

    .prologue
    .line 42
    :try_start_0
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v1

    .line 43
    .local v1, "instance":Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;
    invoke-virtual {v1}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->removeUserInfo()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    const/4 v2, 0x1

    .line 46
    :goto_0
    return v2

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method
