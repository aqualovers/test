.class public Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;
.super Ljava/lang/Object;
.source "BsmoRequestDownloader.java"


# instance fields
.field continueDownload:Z

.field countFile:I

.field countFileComplete:I

.field protected curSaveFile:Ljava/lang/String;

.field public downloaders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;",
            ">;"
        }
    .end annotation
.end field

.field isNotify:Z

.field public notifyAction:Ljava/lang/reflect/Method;

.field public notifyErrorAction:Ljava/lang/reflect/Method;

.field public notifyTarget:Ljava/lang/Object;

.field restList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public saveFile:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;->downloaders:Ljava/util/ArrayList;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;->restList:Ljava/util/ArrayList;

    .line 50
    const-string v0, "BushimoSDK"

    const-string v1, "MultiFileDownloader.constract"

    invoke-static {v0, v1}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-void
.end method

.method private addItem(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, "item":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;->restList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v0, p0, Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;->restList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;->countFile:I

    .line 112
    return-void
.end method

.method private downloadingInformation()Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 63
    iget-object v2, p0, Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;->curSaveFile:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 64
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;->curSaveFile:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 66
    .local v0, "fsiz":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%.03fMbytes"

    new-array v4, v11, [Ljava/lang/Object;

    long-to-double v6, v0

    const-wide/high16 v8, 0x4130000000000000L    # 1048576.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " downloading...(%d/%d)"

    new-array v4, v12, [Ljava/lang/Object;

    iget v5, p0, Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;->countFileComplete:I

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v10

    iget v5, p0, Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;->countFile:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v11

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 70
    .end local v0    # "fsiz":J
    :goto_0
    return-object v2

    :cond_0
    const-string v2, "downloading...(%d/%d)"

    new-array v3, v12, [Ljava/lang/Object;

    iget v4, p0, Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;->countFileComplete:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v10

    iget v4, p0, Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;->countFile:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v11

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private isUsing()Z
    .locals 1

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;->removeUnUsedDownloader()V

    .line 158
    iget-object v0, p0, Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;->downloaders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onFinishDownload(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "patg"    # Ljava/lang/String;
    .param p2, "aContentInfo"    # Ljava/lang/Object;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;->restList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;->restList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 188
    :cond_0
    iget v0, p0, Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;->countFileComplete:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;->countFileComplete:I

    .line 191
    iget-object v0, p0, Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;->restList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 197
    :goto_0
    return-void

    .line 195
    :cond_1
    invoke-direct {p0}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;->startDownload()V

    goto :goto_0
.end method

.method private removeUnUsedDownloader()V
    .locals 4

    .prologue
    .line 167
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;>;"
    iget-object v3, p0, Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;->downloaders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;

    .line 169
    .local v2, "obj":Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;
    invoke-virtual {v2}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->isUsing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 170
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 173
    .end local v2    # "obj":Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;

    .line 174
    .restart local v2    # "obj":Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;
    iget-object v3, p0, Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;->downloaders:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 176
    .end local v2    # "obj":Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;
    :cond_2
    return-void
.end method

.method private startDownload()V
    .locals 6

    .prologue
    .line 90
    iget-object v4, p0, Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;->restList:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 93
    .local v2, "item":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "contents"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 94
    .local v0, "contents":Ljava/lang/Object;
    const-string v4, "contentsSize"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 96
    .local v1, "fsize":Ljava/lang/Long;
    const-string v4, "url"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 98
    .local v3, "url1":Ljava/lang/String;
    const-string v4, "saveFile"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;->saveFile:Ljava/lang/String;

    .line 101
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;->isNotify:Z

    .line 104
    invoke-direct {p0, v3, v0, v1}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;->startDownloadWithUrl(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Long;)V

    .line 105
    return-void
.end method

.method private startDownloadWithUrl(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Long;)V
    .locals 2
    .param p1, "aurl"    # Ljava/lang/String;
    .param p2, "acontents"    # Ljava/lang/Object;
    .param p3, "afsize"    # Ljava/lang/Long;

    .prologue
    .line 122
    new-instance v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;

    invoke-direct {v0}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;-><init>()V

    .line 125
    .local v0, "downloader":Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;
    invoke-direct {p0}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;->removeUnUsedDownloader()V

    .line 126
    iget-object v1, p0, Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;->downloaders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v1, p0, Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;->saveFile:Ljava/lang/String;

    iput-object v1, v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->saveFile:Ljava/lang/String;

    .line 130
    iget-boolean v1, p0, Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;->isNotify:Z

    iput-boolean v1, v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->isNotify:Z

    .line 135
    iget-boolean v1, p0, Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;->continueDownload:Z

    iput-boolean v1, v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->continueDownload:Z

    .line 136
    iget-object v1, p0, Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;->notifyTarget:Ljava/lang/Object;

    iput-object v1, v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->callbackTarget:Ljava/lang/Object;

    .line 137
    iget-object v1, p0, Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;->notifyAction:Ljava/lang/reflect/Method;

    iput-object v1, v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->callbackAction:Ljava/lang/reflect/Method;

    .line 138
    iget-object v1, p0, Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;->notifyErrorAction:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;->notifyErrorAction:Ljava/lang/reflect/Method;

    iput-object v1, v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->callbackErrorAction:Ljava/lang/reflect/Method;

    .line 142
    :cond_0
    iget-object v1, p0, Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;->saveFile:Ljava/lang/String;

    iput-object v1, p0, Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;->curSaveFile:Ljava/lang/String;

    .line 143
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;->saveFile:Ljava/lang/String;

    .line 144
    invoke-virtual {v0, p1, p2}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->startDownloadWithUrl(Ljava/lang/String;Ljava/lang/Object;)V

    .line 145
    return-void
.end method

.method private startProcess()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;->restList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;->countFile:I

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;->countFileComplete:I

    .line 82
    invoke-direct {p0}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;->startDownload()V

    .line 83
    return-void
.end method

.method private startRequestImpl(Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;Ljava/lang/String;Ljava/util/HashMap;Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;)V
    .locals 3
    .param p1, "downloader"    # Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;
    .param p2, "url"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 322
    .local p3, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->isNotify:Z

    .line 330
    const-string v1, "http://"

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "https://"

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 333
    :cond_0
    move-object v0, p2

    .line 340
    .local v0, "fullurl":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1, v0, p2, p3}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->postAndDownloadWithUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 341
    return-void

    .line 336
    .end local v0    # "fullurl":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://api.bushimo.jp/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "fullurl":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public startRequestResponseBodyJson(Ljava/lang/String;Ljava/util/HashMap;Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener",
            "<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 255
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "listener":Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;, "Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener<Lorg/json/JSONObject;>;"
    new-instance v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;

    invoke-direct {v0}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;-><init>()V

    .line 256
    .local v0, "downloader":Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;
    iput-object p3, v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->callbackListenerJson:Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;

    .line 259
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;->startRequestImpl(Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;Ljava/lang/String;Ljava/util/HashMap;Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;)V

    .line 260
    return-void
.end method

.method public startRequestResponseBodyJsonNoNotification(Ljava/lang/String;Ljava/util/HashMap;Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener",
            "<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 288
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "listener":Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;, "Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener<Lorg/json/JSONObject;>;"
    new-instance v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;

    invoke-direct {v0}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;-><init>()V

    .line 289
    .local v0, "downloader":Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;
    iput-object p3, v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->callbackListenerJson:Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;

    .line 290
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->isNotificationFlg:Z

    .line 293
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;->startRequestImpl(Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;Ljava/lang/String;Ljava/util/HashMap;Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;)V

    .line 294
    return-void
.end method

.method public startRequestResponseBoolean(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "responseKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 239
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "listener":Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;, "Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener<Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;

    invoke-direct {v0}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;-><init>()V

    .line 240
    .local v0, "downloader":Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;
    iput-object p4, v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->callbackListenerBoolean:Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;

    .line 241
    iput-object p3, v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->responsekey:Ljava/lang/String;

    .line 244
    invoke-direct {p0, v0, p1, p2, p4}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;->startRequestImpl(Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;Ljava/lang/String;Ljava/util/HashMap;Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;)V

    .line 245
    return-void
.end method

.method public startRequestResponseFile(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 304
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "listener":Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;, "Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener<Ljava/lang/String;>;"
    new-instance v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;

    invoke-direct {v0}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;-><init>()V

    .line 305
    .local v0, "downloader":Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;
    iput-object p4, v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->callbackListenerFile:Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;

    .line 308
    iput-object p3, p0, Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;->saveFile:Ljava/lang/String;

    .line 309
    iput-object p3, v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->saveFile:Ljava/lang/String;

    .line 310
    invoke-direct {p0, v0, p1, p2, p4}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;->startRequestImpl(Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;Ljava/lang/String;Ljava/util/HashMap;Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;)V

    .line 311
    return-void
.end method

.method public startRequestResponseItem(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "responseKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
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
    .line 207
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "listener":Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;, "Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;

    invoke-direct {v0}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;-><init>()V

    .line 208
    .local v0, "downloader":Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;
    iput-object p4, v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->callbackListenerItem:Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;

    .line 209
    iput-object p3, v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->responsekey:Ljava/lang/String;

    .line 212
    invoke-direct {p0, v0, p1, p2, p4}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;->startRequestImpl(Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;Ljava/lang/String;Ljava/util/HashMap;Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;)V

    .line 213
    return-void
.end method

.method public startRequestResponseList(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "responseKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener",
            "<",
            "Lcom/bushiroad/bushimo/sdk/android/api/BsmoResponseListObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 223
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "listener":Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;, "Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener<Lcom/bushiroad/bushimo/sdk/android/api/BsmoResponseListObject;>;"
    new-instance v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;

    invoke-direct {v0}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;-><init>()V

    .line 224
    .local v0, "downloader":Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;
    iput-object p4, v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->callbackListenerList:Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;

    .line 225
    iput-object p3, v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->responsekey:Ljava/lang/String;

    .line 228
    invoke-direct {p0, v0, p1, p2, p4}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;->startRequestImpl(Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;Ljava/lang/String;Ljava/util/HashMap;Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;)V

    .line 229
    return-void
.end method

.method public startRequestResponseMapAndEntrylist(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "responseKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener",
            "<",
            "Lcom/bushiroad/bushimo/sdk/android/api/BsmoResponseMapAndEntrylistObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 270
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "listener":Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;, "Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener<Lcom/bushiroad/bushimo/sdk/android/api/BsmoResponseMapAndEntrylistObject;>;"
    new-instance v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;

    invoke-direct {v0}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;-><init>()V

    .line 271
    .local v0, "downloader":Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;
    iput-object p4, v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->callbackListenerMapAndEntrylist:Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;

    .line 272
    iput-object p3, v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->responsekey:Ljava/lang/String;

    .line 275
    invoke-direct {p0, v0, p1, p2, p4}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoRequestDownloader;->startRequestImpl(Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;Ljava/lang/String;Ljava/util/HashMap;Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;)V

    .line 276
    return-void
.end method
