.class public Lcom/bushiroad/bushimo/sdk/android/api/BsmoPerson;
.super Ljava/lang/Object;
.source "BsmoPerson.java"


# static fields
.field public static final KEY_ID:Ljava/lang/String; = "id"

.field public static final KEY_NICKNAME:Ljava/lang/String; = "nickname"

.field public static final KEY_THUMBNAIL_URL:Ljava/lang/String; = "thumbnailUrl"


# instance fields
.field protected mAttrs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


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
    .line 29
    .local p1, "attrs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/bushiroad/bushimo/sdk/android/api/BsmoPerson;->mAttrs:Ljava/util/HashMap;

    .line 31
    return-void
.end method


# virtual methods
.method public getAdditional(Ljava/lang/String;Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;)V
    .locals 3
    .param p1, "userId"    # Ljava/lang/String;
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
    .line 177
    .local p2, "listener":Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;, "Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v0, "rest/wapi/person/%s/@additional/"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoPerson;->getPersonInfo(Ljava/lang/String;Ljava/lang/String;Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;)V

    .line 178
    return-void
.end method

.method public getAdditional(Ljava/lang/String;Ljava/lang/String;Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;)V
    .locals 3
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "fields"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
    .line 189
    .local p3, "listener":Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;, "Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v0, "rest/wapi/person/%s/@additional/"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoPerson;->getPersonInfo(Ljava/lang/String;Ljava/lang/String;Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;)V

    .line 190
    return-void
.end method

.method public getBasic(Ljava/lang/String;Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;)V
    .locals 3
    .param p1, "userId"    # Ljava/lang/String;
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
    .line 154
    .local p2, "listener":Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;, "Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v0, "rest/wapi/person/%s/@basic/"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoPerson;->getPersonInfo(Ljava/lang/String;Ljava/lang/String;Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;)V

    .line 155
    return-void
.end method

.method public getBasic(Ljava/lang/String;Ljava/lang/String;Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;)V
    .locals 3
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "fields"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
    .line 166
    .local p3, "listener":Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;, "Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v0, "rest/wapi/person/%s/@basic/"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoPerson;->getPersonInfo(Ljava/lang/String;Ljava/lang/String;Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;)V

    .line 167
    return-void
.end method

.method protected getFriendList(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "fields"    # Ljava/lang/String;
    .param p3, "startIndex"    # I
    .param p4, "count"    # I
    .param p5, "sortBy"    # Ljava/lang/String;
    .param p6, "sortOrder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener",
            "<",
            "Lcom/bushiroad/bushimo/sdk/android/api/BsmoResponseListObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p7, "listener":Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;, "Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener<Lcom/bushiroad/bushimo/sdk/android/api/BsmoResponseListObject;>;"
    new-instance v1, Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;

    invoke-direct {v1}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;-><init>()V

    .line 92
    .local v1, "request":Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 95
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 96
    const-string v2, "fields"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :cond_0
    const-string v2, "startIndex"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const/16 v2, 0x3e8

    if-le p4, v2, :cond_1

    .line 102
    const/16 p4, 0x3e8

    .line 104
    :cond_1
    const/4 v2, 0x1

    if-ge p4, v2, :cond_4

    .line 105
    const-string v2, "count"

    const/16 v3, 0x14

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :goto_0
    const-string v2, "format"

    const-string v3, "json"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    if-eqz p5, :cond_2

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 112
    const-string v2, "sortBy"

    invoke-virtual {v0, v2, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    :cond_2
    if-eqz p6, :cond_3

    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 116
    const-string v2, "sortOrder"

    invoke-virtual {v0, v2, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :cond_3
    const-string v2, "entry"

    invoke-virtual {v1, p1, v0, v2, p7}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;->startRequestResponseList(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;)V

    .line 121
    return-void

    .line 107
    :cond_4
    const-string v2, "count"

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/bushiroad/bushimo/sdk/android/api/BsmoPerson;->mAttrs:Ljava/util/HashMap;

    const-string v1, "nickname"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected getPersonInfo(Ljava/lang/String;Ljava/lang/String;Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "fields"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
    .line 202
    .local p3, "listener":Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;, "Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v1, Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;

    invoke-direct {v1}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;-><init>()V

    .line 203
    .local v1, "request":Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 204
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 205
    const-string v2, "fields"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    :cond_0
    const-string v2, "format"

    const-string v3, "json"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const-string v2, "entry"

    invoke-virtual {v1, p1, v0, v2, p3}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;->startRequestResponseItem(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;)V

    .line 209
    return-void
.end method

.method public getSelf(Ljava/lang/String;Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;)V
    .locals 3
    .param p1, "userId"    # Ljava/lang/String;
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
    .line 131
    .local p2, "listener":Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;, "Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v0, "rest/wapi/person/%s/@self/"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoPerson;->getPersonInfo(Ljava/lang/String;Ljava/lang/String;Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;)V

    .line 132
    return-void
.end method

.method public getSelf(Ljava/lang/String;Ljava/lang/String;Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;)V
    .locals 3
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "fields"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
    .line 143
    .local p3, "listener":Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;, "Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v0, "rest/wapi/person/%s/@self/"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoPerson;->getPersonInfo(Ljava/lang/String;Ljava/lang/String;Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;)V

    .line 144
    return-void
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoPerson;->getThumbnailUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "thumbnailSize"    # Ljava/lang/String;

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 63
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    const-string v1, "imgup.bushimo.jp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "/image/get_avatar/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoPerson;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getUserId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/bushiroad/bushimo/sdk/android/api/BsmoPerson;->mAttrs:Ljava/util/HashMap;

    const-string v1, "id"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
