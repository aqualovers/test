.class public Lcom/bushiroad/bushimo/sdk/android/api/BsmoUser;
.super Lcom/bushiroad/bushimo/sdk/android/api/BsmoPerson;
.source "BsmoUser.java"


# direct methods
.method public constructor <init>(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p1, "attrs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoPerson;-><init>(Ljava/util/HashMap;)V

    .line 19
    return-void
.end method


# virtual methods
.method public getMyAdditional(Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p1, "listener":Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;, "Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v0, "rest/wapi/person/@me/@additional/"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoUser;->getPersonInfo(Ljava/lang/String;Ljava/lang/String;Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;)V

    .line 71
    return-void
.end method

.method public getMyAdditional(Ljava/lang/String;Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;)V
    .locals 1
    .param p1, "fields"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p2, "listener":Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;, "Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v0, "rest/wapi/person/@me/@additional/"

    invoke-virtual {p0, v0, p1, p2}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoUser;->getPersonInfo(Ljava/lang/String;Ljava/lang/String;Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;)V

    .line 82
    return-void
.end method

.method public getMyBasic(Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "listener":Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;, "Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v0, "rest/wapi/person/@me/@basic/"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoUser;->getPersonInfo(Ljava/lang/String;Ljava/lang/String;Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;)V

    .line 50
    return-void
.end method

.method public getMyBasic(Ljava/lang/String;Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;)V
    .locals 1
    .param p1, "fields"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p2, "listener":Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;, "Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v0, "rest/wapi/person/@me/@basic/"

    invoke-virtual {p0, v0, p1, p2}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoUser;->getPersonInfo(Ljava/lang/String;Ljava/lang/String;Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;)V

    .line 61
    return-void
.end method

.method public getMySelf(Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, "listener":Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;, "Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v0, "rest/wapi/person/@me/@self/"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoUser;->getPersonInfo(Ljava/lang/String;Ljava/lang/String;Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;)V

    .line 29
    return-void
.end method

.method public getMySelf(Ljava/lang/String;Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;)V
    .locals 1
    .param p1, "fields"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p2, "listener":Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;, "Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v0, "rest/wapi/person/@me/@self/"

    invoke-virtual {p0, v0, p1, p2}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoUser;->getPersonInfo(Ljava/lang/String;Ljava/lang/String;Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;)V

    .line 40
    return-void
.end method
