.class public Lcom/bushiroad/bushimo/sdk/android/api/BsmoAppserial;
.super Ljava/lang/Object;
.source "BsmoAppserial.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public issueAppserial(Ljava/lang/String;Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;)V
    .locals 4
    .param p1, "campKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener",
            "<",
            "Lcom/bushiroad/bushimo/sdk/android/api/BsmoResponseMapAndEntrylistObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p2, "listener":Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;, "Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener<Lcom/bushiroad/bushimo/sdk/android/api/BsmoResponseMapAndEntrylistObject;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 25
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 26
    const-string v2, "campKey"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    :cond_0
    new-instance v1, Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;

    invoke-direct {v1}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;-><init>()V

    .line 30
    .local v1, "request":Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;
    const-string v2, "rest/wapi_appext/appserial/@issue/"

    const-string v3, "entry"

    invoke-virtual {v1, v2, v0, v3, p2}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;->startRequestResponseMapAndEntrylist(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;)V

    .line 32
    return-void
.end method

.method public refAppserial(Ljava/lang/String;Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;)V
    .locals 4
    .param p1, "campKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener",
            "<",
            "Lcom/bushiroad/bushimo/sdk/android/api/BsmoResponseMapAndEntrylistObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p2, "listener":Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;, "Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener<Lcom/bushiroad/bushimo/sdk/android/api/BsmoResponseMapAndEntrylistObject;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 71
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 72
    const-string v2, "campKey"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    :cond_0
    new-instance v1, Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;

    invoke-direct {v1}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;-><init>()V

    .line 76
    .local v1, "request":Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;
    const-string v2, "rest/wapi_appext/appserial/@ref/"

    const-string v3, "entry"

    invoke-virtual {v1, v2, v0, v3, p2}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;->startRequestResponseMapAndEntrylist(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;)V

    .line 78
    return-void
.end method

.method public refAppserial(Ljava/lang/String;Ljava/lang/String;Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;)V
    .locals 4
    .param p1, "campKey"    # Ljava/lang/String;
    .param p2, "serial"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener",
            "<",
            "Lcom/bushiroad/bushimo/sdk/android/api/BsmoResponseMapAndEntrylistObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p3, "listener":Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;, "Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener<Lcom/bushiroad/bushimo/sdk/android/api/BsmoResponseMapAndEntrylistObject;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 92
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 93
    const-string v2, "campKey"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :cond_0
    if-eqz p2, :cond_1

    .line 98
    const-string v2, "serial"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    :cond_1
    new-instance v1, Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;

    invoke-direct {v1}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;-><init>()V

    .line 102
    .local v1, "request":Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;
    const-string v2, "rest/wapi_appext/appserial/@ref/"

    const-string v3, "entry"

    invoke-virtual {v1, v2, v0, v3, p3}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;->startRequestResponseMapAndEntrylist(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;)V

    .line 104
    return-void
.end method

.method public useAppserial(Ljava/lang/String;Ljava/lang/String;Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;)V
    .locals 4
    .param p1, "campKey"    # Ljava/lang/String;
    .param p2, "serial"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener",
            "<",
            "Lcom/bushiroad/bushimo/sdk/android/api/BsmoResponseMapAndEntrylistObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p3, "listener":Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;, "Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener<Lcom/bushiroad/bushimo/sdk/android/api/BsmoResponseMapAndEntrylistObject;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 46
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 47
    const-string v2, "campKey"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :cond_0
    if-eqz p2, :cond_1

    .line 52
    const-string v2, "serial"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :cond_1
    new-instance v1, Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;

    invoke-direct {v1}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;-><init>()V

    .line 56
    .local v1, "request":Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;
    const-string v2, "rest/wapi_appext/appserial/@use/"

    const-string v3, "entry"

    invoke-virtual {v1, v2, v0, v3, p3}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;->startRequestResponseMapAndEntrylist(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;)V

    .line 58
    return-void
.end method
