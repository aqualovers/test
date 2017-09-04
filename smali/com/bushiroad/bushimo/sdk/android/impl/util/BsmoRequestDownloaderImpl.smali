.class public Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;
.super Ljava/lang/Object;
.source "BsmoRequestDownloaderImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static CONNECTION_TIMEOUT_LONG:I

.field public static CONNECTION_TIMEOUT_SHORT:I

.field public static countDownloading:I


# instance fields
.field public basicAuthPasswd:Ljava/lang/String;

.field public basicAuthUser:Ljava/lang/String;

.field public callbackAction:Ljava/lang/reflect/Method;

.field public callbackErrorAction:Ljava/lang/reflect/Method;

.field public callbackListenerBoolean:Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public callbackListenerFile:Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public callbackListenerItem:Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public callbackListenerJson:Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field public callbackListenerList:Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener",
            "<",
            "Lcom/bushiroad/bushimo/sdk/android/api/BsmoResponseListObject;",
            ">;"
        }
    .end annotation
.end field

.field public callbackListenerMapAndEntrylist:Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener",
            "<",
            "Lcom/bushiroad/bushimo/sdk/android/api/BsmoResponseMapAndEntrylistObject;",
            ">;"
        }
    .end annotation
.end field

.field public callbackTarget:Ljava/lang/Object;

.field cancel:Z

.field public collectContentLegnth:Z

.field public contentLength:Ljava/lang/String;

.field public continueDownload:Z

.field debugWait:I

.field public downloadedLength:J

.field public downloadingNotifyKey:Ljava/lang/String;

.field public encode:Ljava/lang/String;

.field inThread:Z

.field public isNotificationFlg:Z

.field public isNotify:Z

.field protected isSSLHandshakeError:Z

.field mContents:Ljava/lang/Object;

.field protected mPostParams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field mStatuscode:I

.field mUrl:Ljava/lang/String;

.field post:Z

.field public responsekey:Ljava/lang/String;

.field public saveFile:Ljava/lang/String;

.field public shortTimeout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 135
    const/16 v0, 0x7530

    sput v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->CONNECTION_TIMEOUT_LONG:I

    .line 138
    const/16 v0, 0x3a98

    sput v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->CONNECTION_TIMEOUT_SHORT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->encode:Ljava/lang/String;

    .line 132
    iput v1, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->debugWait:I

    .line 141
    iput-boolean v1, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->isSSLHandshakeError:Z

    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->isNotificationFlg:Z

    return-void
.end method

.method private createInputStream(Ljava/io/InputStream;Z)Ljava/io/InputStream;
    .locals 2
    .param p1, "result"    # Ljava/io/InputStream;
    .param p2, "gzip"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 496
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 498
    .local v0, "bis":Ljava/io/BufferedInputStream;
    if-nez p2, :cond_0

    .line 502
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    :goto_0
    return-object v0

    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    :cond_0
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private responseCallbackBytes([BLjava/lang/Object;)V
    .locals 5
    .param p1, "res"    # [B
    .param p2, "contentsId"    # Ljava/lang/Object;

    .prologue
    .line 521
    iget-object v1, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->callbackAction:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 523
    :try_start_0
    iget-object v1, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->callbackAction:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->callbackTarget:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 532
    :cond_0
    :goto_0
    return-void

    .line 524
    :catch_0
    move-exception v0

    .line 525
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 526
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 527
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 528
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 529
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method private responseCallbackFile(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .param p1, "aSaveFile"    # Ljava/lang/String;
    .param p2, "contentsId"    # Ljava/lang/Object;

    .prologue
    .line 607
    iget-object v1, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->callbackListenerFile:Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;

    if-eqz v1, :cond_1

    .line 608
    iget-object v1, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->callbackListenerFile:Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;

    iget v2, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->mStatuscode:I

    invoke-interface {v1, v2, p1}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;->onResponse(ILjava/lang/Object;)V

    .line 622
    :cond_0
    :goto_0
    return-void

    .line 611
    :cond_1
    iget-object v1, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->callbackAction:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 613
    :try_start_0
    iget-object v1, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->callbackAction:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->callbackTarget:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 614
    :catch_0
    move-exception v0

    .line 615
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 616
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 617
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 618
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 619
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method private responseCallbackString(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8
    .param p1, "retStr"    # Ljava/lang/String;
    .param p2, "contentsId"    # Ljava/lang/Object;

    .prologue
    .line 541
    const-string v4, "BushimoSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "downloader response dump "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    iget-object v4, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->callbackAction:Ljava/lang/reflect/Method;

    if-nez v4, :cond_5

    .line 548
    const/4 v1, 0x0

    .line 550
    .local v1, "listener":Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;
    :try_start_0
    iget-object v4, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->callbackListenerItem:Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;

    if-eqz v4, :cond_1

    .line 551
    iget-object v1, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->callbackListenerItem:Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;

    .line 552
    iget-object v4, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->responsekey:Ljava/lang/String;

    invoke-static {p1, v4}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoResponseParser;->parseBodyItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    .line 553
    .local v3, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->callbackListenerItem:Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;

    iget v5, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->mStatuscode:I

    invoke-interface {v4, v5, v3}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;->onResponse(ILjava/lang/Object;)V

    .line 597
    .end local v1    # "listener":Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;
    .end local v3    # "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 555
    .restart local v1    # "listener":Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;
    :cond_1
    iget-object v4, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->callbackListenerList:Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;

    if-eqz v4, :cond_2

    .line 556
    iget-object v1, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->callbackListenerList:Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;

    .line 557
    iget-object v4, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->responsekey:Ljava/lang/String;

    invoke-static {p1, v4}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoResponseParser;->parseBodyList(Ljava/lang/String;Ljava/lang/String;)Lcom/bushiroad/bushimo/sdk/android/api/BsmoResponseListObject;

    move-result-object v2

    .line 558
    .local v2, "res":Lcom/bushiroad/bushimo/sdk/android/api/BsmoResponseListObject;
    iget-object v4, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->callbackListenerList:Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;

    iget v5, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->mStatuscode:I

    invoke-interface {v4, v5, v2}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;->onResponse(ILjava/lang/Object;)V
    :try_end_0
    .catch Lcom/bushiroad/bushimo/sdk/android/exception/BsmoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 579
    .end local v2    # "res":Lcom/bushiroad/bushimo/sdk/android/api/BsmoResponseListObject;
    :catch_0
    move-exception v0

    .line 580
    .local v0, "e":Lcom/bushiroad/bushimo/sdk/android/exception/BsmoException;
    invoke-virtual {v0}, Lcom/bushiroad/bushimo/sdk/android/exception/BsmoException;->printStackTrace()V

    .line 583
    iget v4, v0, Lcom/bushiroad/bushimo/sdk/android/exception/BsmoException;->code1:I

    iget v5, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->mStatuscode:I

    invoke-interface {v1, v4, v5}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;->onError(II)V

    goto :goto_0

    .line 560
    .end local v0    # "e":Lcom/bushiroad/bushimo/sdk/android/exception/BsmoException;
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->callbackListenerBoolean:Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;

    if-eqz v4, :cond_3

    .line 561
    iget-object v1, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->callbackListenerBoolean:Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;

    .line 562
    iget-object v4, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->responsekey:Ljava/lang/String;

    invoke-static {p1, v4}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoResponseParser;->parseBodyBoolean(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    .line 563
    .local v2, "res":Ljava/lang/Boolean;
    iget-object v4, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->callbackListenerBoolean:Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;

    iget v5, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->mStatuscode:I

    invoke-interface {v4, v5, v2}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;->onResponse(ILjava/lang/Object;)V

    goto :goto_0

    .line 565
    .end local v2    # "res":Ljava/lang/Boolean;
    :cond_3
    iget-object v4, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->callbackListenerJson:Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;

    if-eqz v4, :cond_4

    .line 566
    iget-object v1, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->callbackListenerJson:Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;

    .line 567
    invoke-static {p1}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoResponseParser;->parseBodyJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 568
    .local v2, "res":Lorg/json/JSONObject;
    iget-object v4, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->callbackListenerJson:Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;

    iget v5, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->mStatuscode:I

    invoke-interface {v4, v5, v2}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;->onResponse(ILjava/lang/Object;)V

    goto :goto_0

    .line 570
    .end local v2    # "res":Lorg/json/JSONObject;
    :cond_4
    iget-object v4, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->callbackListenerMapAndEntrylist:Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;

    if-eqz v4, :cond_0

    .line 571
    iget-object v1, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->callbackListenerMapAndEntrylist:Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;

    .line 572
    iget-object v4, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->responsekey:Ljava/lang/String;

    invoke-static {p1, v4}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoResponseParser;->parseBodyMapAndEntrylist(Ljava/lang/String;Ljava/lang/String;)Lcom/bushiroad/bushimo/sdk/android/api/BsmoResponseMapAndEntrylistObject;

    move-result-object v2

    .line 573
    .local v2, "res":Lcom/bushiroad/bushimo/sdk/android/api/BsmoResponseMapAndEntrylistObject;
    iget-object v4, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->callbackListenerMapAndEntrylist:Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;

    iget v5, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->mStatuscode:I

    invoke-interface {v4, v5, v2}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;->onResponse(ILjava/lang/Object;)V
    :try_end_1
    .catch Lcom/bushiroad/bushimo/sdk/android/exception/BsmoException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 586
    .end local v1    # "listener":Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;
    .end local v2    # "res":Lcom/bushiroad/bushimo/sdk/android/api/BsmoResponseMapAndEntrylistObject;
    :cond_5
    iget-object v4, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->callbackAction:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_0

    .line 588
    :try_start_2
    iget-object v4, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->callbackAction:Ljava/lang/reflect/Method;

    iget-object v5, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->callbackTarget:Ljava/lang/Object;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 589
    :catch_1
    move-exception v0

    .line 590
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 591
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 592
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 593
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 594
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public cancelDownload()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 729
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->cancel:Z

    .line 730
    iput-object v1, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->callbackTarget:Ljava/lang/Object;

    .line 731
    iput-object v1, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->callbackAction:Ljava/lang/reflect/Method;

    .line 733
    return-void
.end method

.method protected createRangeContinue(JJ)Ljava/lang/String;
    .locals 7
    .param p1, "locate"    # J
    .param p3, "size"    # J

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 182
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_0

    .line 183
    const-string v0, "bytes=%d-%d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v3

    add-long v2, p1, p3

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 185
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "bytes=%d-"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected errorEvent(ILjava/lang/Exception;)V
    .locals 10
    .param p1, "statusCode"    # I
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v5, -0x1

    .line 632
    iget-boolean v2, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->cancel:Z

    if-eqz v2, :cond_1

    .line 702
    :cond_0
    :goto_0
    return-void

    .line 636
    :cond_1
    if-eqz p1, :cond_2

    const-string v2, "\u30ec\u30b9\u30dd\u30f3\u30b9\u30b3\u30fc\u30c9\u30a8\u30e9\u30fc %d"

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 642
    .local v1, "error":Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->callbackListenerBoolean:Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;

    if-eqz v2, :cond_3

    .line 644
    iget-object v2, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->callbackListenerBoolean:Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;

    iget v3, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->mStatuscode:I

    invoke-interface {v2, v5, v3}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;->onError(II)V

    .line 688
    :goto_2
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter;

    move-result-object v2

    const-string v3, "downloadError"

    invoke-virtual {v2, v3, v1}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter;->postNotification(Ljava/lang/String;Ljava/lang/Object;)V

    .line 689
    iget-boolean v2, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->isNotificationFlg:Z

    if-eqz v2, :cond_0

    .line 690
    const/16 v2, 0x191

    if-ne p1, v2, :cond_b

    .line 692
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter;

    move-result-object v2

    const-string v3, "authError"

    invoke-virtual {v2, v3, v1}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter;->postNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 636
    .end local v1    # "error":Ljava/lang/String;
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 646
    .restart local v1    # "error":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->callbackListenerItem:Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;

    if-eqz v2, :cond_4

    .line 648
    iget-object v2, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->callbackListenerItem:Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;

    iget v3, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->mStatuscode:I

    invoke-interface {v2, v5, v3}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;->onError(II)V

    goto :goto_2

    .line 650
    :cond_4
    iget-object v2, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->callbackListenerList:Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;

    if-eqz v2, :cond_5

    .line 652
    iget-object v2, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->callbackListenerList:Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;

    iget v3, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->mStatuscode:I

    invoke-interface {v2, v5, v3}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;->onError(II)V

    goto :goto_2

    .line 654
    :cond_5
    iget-object v2, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->callbackListenerFile:Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;

    if-eqz v2, :cond_6

    .line 656
    iget-object v2, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->callbackListenerFile:Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;

    iget v3, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->mStatuscode:I

    invoke-interface {v2, v5, v3}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;->onError(II)V

    goto :goto_2

    .line 658
    :cond_6
    iget-object v2, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->callbackListenerJson:Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;

    if-eqz v2, :cond_7

    .line 660
    iget-object v2, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->callbackListenerJson:Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;

    iget v3, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->mStatuscode:I

    invoke-interface {v2, v5, v3}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;->onError(II)V

    goto :goto_2

    .line 662
    :cond_7
    iget-object v2, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->callbackListenerMapAndEntrylist:Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;

    if-eqz v2, :cond_8

    .line 664
    iget-object v2, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->callbackListenerMapAndEntrylist:Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;

    iget v3, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->mStatuscode:I

    invoke-interface {v2, v5, v3}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoOnRequestResultListener;->onError(II)V

    goto :goto_2

    .line 666
    :cond_8
    iget-object v2, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->callbackErrorAction:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->callbackTarget:Ljava/lang/Object;

    if-eqz v2, :cond_a

    .line 668
    :try_start_0
    iget-object v2, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->mContents:Ljava/lang/Object;

    if-nez v2, :cond_9

    .line 669
    const-string v2, "BushimoSDK"

    const-string v3, "mContents==null"

    invoke-static {v2, v3}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    :cond_9
    iget-object v2, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->callbackErrorAction:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->callbackTarget:Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->mContents:Ljava/lang/Object;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_2

    .line 672
    :catch_0
    move-exception v0

    .line 673
    .local v0, "e1":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_2

    .line 674
    .end local v0    # "e1":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 675
    .local v0, "e1":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_2

    .line 676
    .end local v0    # "e1":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 677
    .local v0, "e1":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto/16 :goto_2

    .line 683
    .end local v0    # "e1":Ljava/lang/reflect/InvocationTargetException;
    :cond_a
    const/4 v2, 0x0

    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v4

    const v5, 0x7f06003f

    const-string v6, "string"

    const-string v7, "bsmo_error_communication"

    invoke-virtual {v4, v5, v6, v7}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getResourceId(ILjava/lang/String;Ljava/lang/String;)I

    move-result v4

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v1, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->alert(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 695
    :cond_b
    const/16 v2, 0x19c

    if-ne p1, v2, :cond_0

    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->isSDK()Z

    move-result v2

    if-nez v2, :cond_0

    .line 697
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter;

    move-result-object v2

    const-string v3, "PFversionError"

    invoke-virtual {v2, v3, v1}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter;->postNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method protected getBasicAuthString()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v4, 0x2

    .line 711
    const-string v3, "%s:%s"

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->basicAuthUser:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->basicAuthPasswd:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 716
    .local v2, "str":Ljava/lang/String;
    :try_start_0
    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 717
    .local v1, "ret":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BASIC "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 720
    .end local v1    # "ret":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 718
    :catch_0
    move-exception v0

    .line 719
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 720
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isUsing()Z
    .locals 1

    .prologue
    .line 741
    iget-boolean v0, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->inThread:Z

    return v0
.end method

.method public postAndDownloadWithUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 13
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "contents"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 751
    .local p3, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 754
    .local v2, "isSetToken":Z
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->mPostParams:Ljava/util/ArrayList;

    .line 755
    if-eqz p3, :cond_1

    invoke-virtual/range {p3 .. p3}, Ljava/util/HashMap;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 756
    invoke-virtual/range {p3 .. p3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 757
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 758
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 760
    .local v6, "value":Ljava/lang/String;
    if-nez v2, :cond_0

    const-string v7, "accessToken"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 761
    const/4 v2, 0x1

    .line 764
    :cond_0
    iget-object v7, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->mPostParams:Ljava/util/ArrayList;

    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v8, v3, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 769
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :cond_1
    iget-object v7, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->mPostParams:Ljava/util/ArrayList;

    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string v9, "consumerKey"

    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v10

    invoke-virtual {v10}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getConsumerKey()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 772
    const-string v7, "https://"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    if-nez v2, :cond_2

    .line 773
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getAccessToken()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_3

    const-string v5, ""

    .line 775
    .local v5, "token":Ljava/lang/String;
    :goto_1
    const-string v7, "rest/wapi_extension/inspection/"

    invoke-virtual {p1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, ""

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 783
    .end local v5    # "token":Ljava/lang/String;
    :cond_2
    :goto_2
    iget-object v7, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->mPostParams:Ljava/util/ArrayList;

    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string v9, "version"

    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->getSdkVersion()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 785
    const-string v7, "BushimoSDK"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "WAPI request. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "url=%s,params=%s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->mPostParams:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    iput-object p1, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->mUrl:Ljava/lang/String;

    .line 788
    iput-object p2, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->mContents:Ljava/lang/Object;

    .line 789
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->cancel:Z

    .line 790
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->post:Z

    .line 792
    new-instance v4, Ljava/lang/Thread;

    invoke-direct {v4, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 793
    .local v4, "t":Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 794
    return-void

    .line 773
    .end local v4    # "t":Ljava/lang/Thread;
    :cond_3
    invoke-static {}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/bushiroad/bushimo/sdk/android/api/Bushimo;->getAccessToken()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 778
    .restart local v5    # "token":Ljava/lang/String;
    :cond_4
    iget-object v7, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->mPostParams:Ljava/util/ArrayList;

    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string v9, "accessToken"

    invoke-direct {v8, v9, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method protected requestAndDownload(Ljava/lang/String;)Z
    .locals 38
    .param p1, "rangeValue"    # Ljava/lang/String;

    .prologue
    .line 211
    const/16 v18, 0x0

    .line 214
    .local v18, "method":Lorg/apache/http/client/methods/HttpUriRequest;
    :try_start_0
    const-string v32, "BushimoSDK"

    const-string v33, "download thread start %s -> %s,%s"

    const/16 v34, 0x3

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->mUrl:Ljava/lang/String;

    move-object/from16 v36, v0

    aput-object v36, v34, v35

    const/16 v35, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->saveFile:Ljava/lang/String;

    move-object/from16 v36, v0

    aput-object v36, v34, v35

    const/16 v35, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->basicAuthUser:Ljava/lang/String;

    move-object/from16 v36, v0

    aput-object v36, v34, v35

    invoke-static/range {v33 .. v34}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    sget v9, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->CONNECTION_TIMEOUT_LONG:I

    .line 220
    .local v9, "connection_Timeout":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->shortTimeout:Z

    move/from16 v32, v0

    if-eqz v32, :cond_0

    .line 221
    sget v9, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->CONNECTION_TIMEOUT_SHORT:I

    .line 223
    :cond_0
    new-instance v19, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct/range {v19 .. v19}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 224
    .local v19, "my_httpParams":Lorg/apache/http/params/HttpParams;
    move-object/from16 v0, v19

    invoke-static {v0, v9}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 226
    move-object/from16 v0, v19

    invoke-static {v0, v9}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 228
    new-instance v8, Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object/from16 v0, v19

    invoke-direct {v8, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 229
    .local v8, "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->post:Z

    move/from16 v32, v0

    if-nez v32, :cond_8

    .line 230
    new-instance v13, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->mUrl:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-direct {v13, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 231
    .local v13, "get":Lorg/apache/http/client/methods/HttpGet;
    move-object/from16 v18, v13

    .line 246
    .end local v13    # "get":Lorg/apache/http/client/methods/HttpGet;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->basicAuthUser:Ljava/lang/String;

    move-object/from16 v32, v0

    if-eqz v32, :cond_1

    .line 247
    const-string v32, "Authorization"

    invoke-virtual/range {p0 .. p0}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->getBasicAuthString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v18

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->continueDownload:Z

    move/from16 v32, v0

    if-eqz v32, :cond_2

    .line 252
    new-instance v32, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->saveFile:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-direct/range {v32 .. v33}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->length()J

    move-result-wide v30

    .line 253
    .local v30, "siz":J
    const-wide/16 v32, 0x0

    cmp-long v32, v30, v32

    if-lez v32, :cond_2

    .line 255
    const-string v32, "range"

    const-wide/16 v34, -0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    move-wide/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->createRangeContinue(JJ)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v18

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    .end local v30    # "siz":J
    :cond_2
    const-string v32, "Accept-Encoding"

    const-string v33, "gzip"

    move-object/from16 v0, v18

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string v27, ""

    .line 263
    .local v27, "retStr":Ljava/lang/String;
    const/16 v32, -0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->mStatuscode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    const/4 v11, 0x0

    .line 266
    .local v11, "entity":Lorg/apache/http/HttpEntity;
    const/4 v6, 0x0

    .line 267
    .local v6, "bis":Ljava/io/InputStream;
    const/16 v25, 0x0

    .line 270
    .local v25, "result":Ljava/io/InputStream;
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->cancel:Z

    move/from16 v32, v0
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1e
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v32, :cond_a

    .line 271
    const/16 v26, 0x0

    .line 449
    if-eqz v6, :cond_3

    .line 451
    :try_start_2
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 457
    :cond_3
    :goto_1
    if-eqz v25, :cond_4

    .line 459
    :try_start_3
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 465
    :cond_4
    :goto_2
    if-eqz v11, :cond_5

    .line 467
    :try_start_4
    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 472
    :cond_5
    :goto_3
    if-eqz v8, :cond_6

    .line 473
    :try_start_5
    invoke-virtual {v8}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 481
    :cond_6
    if-eqz v18, :cond_7

    .line 482
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    :cond_7
    :goto_4
    return v26

    .line 235
    .end local v6    # "bis":Ljava/io/InputStream;
    .end local v11    # "entity":Lorg/apache/http/HttpEntity;
    .end local v25    # "result":Ljava/io/InputStream;
    .end local v27    # "retStr":Ljava/lang/String;
    :cond_8
    :try_start_6
    new-instance v21, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->mUrl:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 237
    .local v21, "post":Lorg/apache/http/client/methods/HttpPost;
    :try_start_7
    new-instance v32, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->mPostParams:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    const-string v34, "UTF-8"

    invoke-direct/range {v32 .. v34}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 242
    :goto_5
    move-object/from16 v18, v21

    goto/16 :goto_0

    .line 238
    :catch_0
    move-exception v10

    .line 240
    .local v10, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_8
    invoke-virtual {v10}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_5

    .line 481
    .end local v8    # "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v9    # "connection_Timeout":I
    .end local v10    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v19    # "my_httpParams":Lorg/apache/http/params/HttpParams;
    .end local v21    # "post":Lorg/apache/http/client/methods/HttpPost;
    :catchall_0
    move-exception v32

    if-eqz v18, :cond_9

    .line 482
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    :cond_9
    throw v32

    .line 452
    .restart local v6    # "bis":Ljava/io/InputStream;
    .restart local v8    # "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v9    # "connection_Timeout":I
    .restart local v11    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v19    # "my_httpParams":Lorg/apache/http/params/HttpParams;
    .restart local v25    # "result":Ljava/io/InputStream;
    .restart local v27    # "retStr":Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 453
    .local v10, "e":Ljava/io/IOException;
    :try_start_9
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 460
    .end local v10    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v10

    .line 461
    .restart local v10    # "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 468
    .end local v10    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v10

    .line 469
    .restart local v10    # "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_3

    .line 272
    .end local v10    # "e":Ljava/io/IOException;
    :cond_a
    :try_start_a
    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v24

    .line 273
    .local v24, "response":Lorg/apache/http/HttpResponse;
    invoke-interface/range {v24 .. v24}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v32

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->mStatuscode:I

    .line 274
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->cancel:Z

    move/from16 v32, v0
    :try_end_a
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_a .. :try_end_a} :catch_e
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1e
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    if-eqz v32, :cond_f

    .line 275
    const/16 v26, 0x0

    .line 449
    if-eqz v6, :cond_b

    .line 451
    :try_start_b
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 457
    :cond_b
    :goto_6
    if-eqz v25, :cond_c

    .line 459
    :try_start_c
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 465
    :cond_c
    :goto_7
    if-eqz v11, :cond_d

    .line 467
    :try_start_d
    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 472
    :cond_d
    :goto_8
    if-eqz v8, :cond_e

    .line 473
    :try_start_e
    invoke-virtual {v8}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 481
    :cond_e
    if-eqz v18, :cond_7

    .line 482
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    goto :goto_4

    .line 452
    :catch_4
    move-exception v10

    .line 453
    .restart local v10    # "e":Ljava/io/IOException;
    :try_start_f
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 460
    .end local v10    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v10

    .line 461
    .restart local v10    # "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 468
    .end local v10    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v10

    .line 469
    .restart local v10    # "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_8

    .line 279
    .end local v10    # "e":Ljava/io/IOException;
    :cond_f
    :try_start_10
    const-string v32, "BushimoSDK"

    const-string v33, "HTTP STATUS  %d"

    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->mStatuscode:I

    move/from16 v36, v0

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    aput-object v36, v34, v35

    invoke-static/range {v33 .. v34}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    move-object/from16 v0, p0

    iget v0, v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->mStatuscode:I

    move/from16 v32, v0

    const/16 v33, 0xc8

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->mStatuscode:I

    move/from16 v32, v0

    const/16 v33, 0xc9

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->mStatuscode:I

    move/from16 v32, v0

    const/16 v33, 0xce

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_5f

    .line 283
    :cond_10
    const-string v32, "BushimoSDK"

    const-string v33, "download OK"

    invoke-static/range {v32 .. v33}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const-string v32, "Content-Length"

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v15

    .line 287
    .local v15, "header":Lorg/apache/http/Header;
    if-eqz v15, :cond_11

    .line 288
    invoke-interface {v15}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->contentLength:Ljava/lang/String;

    .line 304
    :cond_11
    invoke-interface/range {v24 .. v24}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v11

    .line 305
    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v25

    .line 308
    const-string v32, "Content-Encoding"

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v16

    .line 309
    .local v16, "headerE":Lorg/apache/http/Header;
    if-eqz v16, :cond_17

    const-string v32, "gzip"

    invoke-interface/range {v16 .. v16}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_17

    const/4 v14, 0x1

    .line 312
    .local v14, "gzip":Z
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->saveFile:Ljava/lang/String;

    move-object/from16 v32, v0

    if-eqz v32, :cond_31

    .line 314
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v14}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->createInputStream(Ljava/io/InputStream;Z)Ljava/io/InputStream;

    move-result-object v6

    .line 315
    const/16 v32, 0x400

    move/from16 v0, v32

    new-array v7, v0, [B

    .line 316
    .local v7, "buf":[B
    const/16 v17, 0x0

    .local v17, "len":I
    const/16 v29, 0x0

    .line 317
    .local v29, "total":I
    new-instance v12, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->saveFile:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->continueDownload:Z

    move/from16 v33, v0

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-direct {v12, v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 318
    .local v12, "fos":Ljava/io/FileOutputStream;
    new-instance v20, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, v20

    invoke-direct {v0, v12}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 321
    .local v20, "os":Ljava/io/OutputStream;
    :cond_12
    invoke-virtual {v6, v7}, Ljava/io/InputStream;->read([B)I

    move-result v17

    .line 322
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->cancel:Z

    move/from16 v32, v0
    :try_end_10
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_10 .. :try_end_10} :catch_e
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_1e
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    if-eqz v32, :cond_18

    .line 323
    const/16 v26, 0x0

    .line 449
    if-eqz v6, :cond_13

    .line 451
    :try_start_11
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_7
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 457
    :cond_13
    :goto_a
    if-eqz v25, :cond_14

    .line 459
    :try_start_12
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_8
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 465
    :cond_14
    :goto_b
    if-eqz v11, :cond_15

    .line 467
    :try_start_13
    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_9
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 472
    :cond_15
    :goto_c
    if-eqz v8, :cond_16

    .line 473
    :try_start_14
    invoke-virtual {v8}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 481
    :cond_16
    if-eqz v18, :cond_7

    .line 482
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    goto/16 :goto_4

    .line 309
    .end local v7    # "buf":[B
    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .end local v14    # "gzip":Z
    .end local v17    # "len":I
    .end local v20    # "os":Ljava/io/OutputStream;
    .end local v29    # "total":I
    :cond_17
    const/4 v14, 0x0

    goto :goto_9

    .line 452
    .restart local v7    # "buf":[B
    .restart local v12    # "fos":Ljava/io/FileOutputStream;
    .restart local v14    # "gzip":Z
    .restart local v17    # "len":I
    .restart local v20    # "os":Ljava/io/OutputStream;
    .restart local v29    # "total":I
    :catch_7
    move-exception v10

    .line 453
    .restart local v10    # "e":Ljava/io/IOException;
    :try_start_15
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 460
    .end local v10    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v10

    .line 461
    .restart local v10    # "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 468
    .end local v10    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v10

    .line 469
    .restart local v10    # "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    goto :goto_c

    .line 324
    .end local v10    # "e":Ljava/io/IOException;
    :cond_18
    if-lez v17, :cond_19

    .line 325
    add-int v29, v29, v17

    .line 326
    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v32, v0

    :try_start_16
    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->downloadedLength:J

    .line 327
    const/16 v32, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v32

    move/from16 v2, v17

    invoke-virtual {v0, v7, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 328
    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->flush()V

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->downloadingNotifyKey:Ljava/lang/String;

    move-object/from16 v32, v0

    if-eqz v32, :cond_19

    .line 338
    :cond_19
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->cancel:Z

    move/from16 v32, v0
    :try_end_16
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_16 .. :try_end_16} :catch_e
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_1e
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    if-eqz v32, :cond_1e

    .line 339
    const/16 v26, 0x0

    .line 449
    if-eqz v6, :cond_1a

    .line 451
    :try_start_17
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_a
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 457
    :cond_1a
    :goto_d
    if-eqz v25, :cond_1b

    .line 459
    :try_start_18
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_b
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 465
    :cond_1b
    :goto_e
    if-eqz v11, :cond_1c

    .line 467
    :try_start_19
    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_c
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    .line 472
    :cond_1c
    :goto_f
    if-eqz v8, :cond_1d

    .line 473
    :try_start_1a
    invoke-virtual {v8}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    .line 481
    :cond_1d
    if-eqz v18, :cond_7

    .line 482
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    goto/16 :goto_4

    .line 452
    :catch_a
    move-exception v10

    .line 453
    .restart local v10    # "e":Ljava/io/IOException;
    :try_start_1b
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 460
    .end local v10    # "e":Ljava/io/IOException;
    :catch_b
    move-exception v10

    .line 461
    .restart local v10    # "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e

    .line 468
    .end local v10    # "e":Ljava/io/IOException;
    :catch_c
    move-exception v10

    .line 469
    .restart local v10    # "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    goto :goto_f

    .line 341
    .end local v10    # "e":Ljava/io/IOException;
    :cond_1e
    :try_start_1c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->debugWait:I

    move/from16 v32, v0

    if-lez v32, :cond_27

    .line 342
    monitor-enter p0
    :try_end_1c
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1c .. :try_end_1c} :catch_e
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_1e
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2

    .line 344
    :try_start_1d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->debugWait:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-long v0, v0

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_1d
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_1d} :catch_d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1

    .line 348
    :goto_10
    :try_start_1e
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1

    .line 349
    :try_start_1f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->cancel:Z

    move/from16 v32, v0
    :try_end_1f
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1f .. :try_end_1f} :catch_e
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_1e
    .catchall {:try_start_1f .. :try_end_1f} :catchall_2

    if-eqz v32, :cond_27

    .line 350
    const/16 v26, 0x0

    .line 449
    if-eqz v6, :cond_1f

    .line 451
    :try_start_20
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_f
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    .line 457
    :cond_1f
    :goto_11
    if-eqz v25, :cond_20

    .line 459
    :try_start_21
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_10
    .catchall {:try_start_21 .. :try_end_21} :catchall_0

    .line 465
    :cond_20
    :goto_12
    if-eqz v11, :cond_21

    .line 467
    :try_start_22
    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_11
    .catchall {:try_start_22 .. :try_end_22} :catchall_0

    .line 472
    :cond_21
    :goto_13
    if-eqz v8, :cond_22

    .line 473
    :try_start_23
    invoke-virtual {v8}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_0

    .line 481
    :cond_22
    if-eqz v18, :cond_7

    .line 482
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    goto/16 :goto_4

    .line 345
    :catch_d
    move-exception v10

    .line 346
    .local v10, "e":Ljava/lang/InterruptedException;
    :try_start_24
    invoke-virtual {v10}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_10

    .line 348
    .end local v10    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v32

    monitor-exit p0
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_1

    :try_start_25
    throw v32
    :try_end_25
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_25 .. :try_end_25} :catch_e
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_1e
    .catchall {:try_start_25 .. :try_end_25} :catchall_2

    .line 430
    .end local v7    # "buf":[B
    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .end local v14    # "gzip":Z
    .end local v15    # "header":Lorg/apache/http/Header;
    .end local v16    # "headerE":Lorg/apache/http/Header;
    .end local v17    # "len":I
    .end local v20    # "os":Ljava/io/OutputStream;
    .end local v24    # "response":Lorg/apache/http/HttpResponse;
    .end local v29    # "total":I
    :catch_e
    move-exception v10

    .line 431
    .local v10, "e":Lorg/apache/http/client/ClientProtocolException;
    :try_start_26
    invoke-virtual {v10}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 432
    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1, v10}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->errorEvent(ILjava/lang/Exception;)V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_2

    .line 433
    const/16 v26, 0x0

    .line 449
    if-eqz v6, :cond_23

    .line 451
    :try_start_27
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_2e
    .catchall {:try_start_27 .. :try_end_27} :catchall_0

    .line 457
    .end local v10    # "e":Lorg/apache/http/client/ClientProtocolException;
    :cond_23
    :goto_14
    if-eqz v25, :cond_24

    .line 459
    :try_start_28
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_28} :catch_2f
    .catchall {:try_start_28 .. :try_end_28} :catchall_0

    .line 465
    :cond_24
    :goto_15
    if-eqz v11, :cond_25

    .line 467
    :try_start_29
    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_29} :catch_30
    .catchall {:try_start_29 .. :try_end_29} :catchall_0

    .line 472
    :cond_25
    :goto_16
    if-eqz v8, :cond_26

    .line 473
    :try_start_2a
    invoke-virtual {v8}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_0

    .line 481
    :cond_26
    if-eqz v18, :cond_7

    .line 482
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    goto/16 :goto_4

    .line 452
    .restart local v7    # "buf":[B
    .restart local v12    # "fos":Ljava/io/FileOutputStream;
    .restart local v14    # "gzip":Z
    .restart local v15    # "header":Lorg/apache/http/Header;
    .restart local v16    # "headerE":Lorg/apache/http/Header;
    .restart local v17    # "len":I
    .restart local v20    # "os":Ljava/io/OutputStream;
    .restart local v24    # "response":Lorg/apache/http/HttpResponse;
    .restart local v29    # "total":I
    :catch_f
    move-exception v10

    .line 453
    .local v10, "e":Ljava/io/IOException;
    :try_start_2b
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_11

    .line 460
    .end local v10    # "e":Ljava/io/IOException;
    :catch_10
    move-exception v10

    .line 461
    .restart local v10    # "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_12

    .line 468
    .end local v10    # "e":Ljava/io/IOException;
    :catch_11
    move-exception v10

    .line 469
    .restart local v10    # "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_0

    goto :goto_13

    .line 353
    .end local v10    # "e":Ljava/io/IOException;
    :cond_27
    if-gtz v17, :cond_12

    .line 355
    :try_start_2c
    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->close()V

    .line 357
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->cancel:Z

    move/from16 v32, v0
    :try_end_2c
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2c .. :try_end_2c} :catch_e
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2c} :catch_1e
    .catchall {:try_start_2c .. :try_end_2c} :catchall_2

    if-eqz v32, :cond_2c

    .line 358
    const/16 v26, 0x0

    .line 449
    if-eqz v6, :cond_28

    .line 451
    :try_start_2d
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_2d} :catch_12
    .catchall {:try_start_2d .. :try_end_2d} :catchall_0

    .line 457
    :cond_28
    :goto_17
    if-eqz v25, :cond_29

    .line 459
    :try_start_2e
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_2e} :catch_13
    .catchall {:try_start_2e .. :try_end_2e} :catchall_0

    .line 465
    :cond_29
    :goto_18
    if-eqz v11, :cond_2a

    .line 467
    :try_start_2f
    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_2f} :catch_14
    .catchall {:try_start_2f .. :try_end_2f} :catchall_0

    .line 472
    :cond_2a
    :goto_19
    if-eqz v8, :cond_2b

    .line 473
    :try_start_30
    invoke-virtual {v8}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_0

    .line 481
    :cond_2b
    if-eqz v18, :cond_7

    .line 482
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    goto/16 :goto_4

    .line 452
    :catch_12
    move-exception v10

    .line 453
    .restart local v10    # "e":Ljava/io/IOException;
    :try_start_31
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_17

    .line 460
    .end local v10    # "e":Ljava/io/IOException;
    :catch_13
    move-exception v10

    .line 461
    .restart local v10    # "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_18

    .line 468
    .end local v10    # "e":Ljava/io/IOException;
    :catch_14
    move-exception v10

    .line 469
    .restart local v10    # "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_0

    goto :goto_19

    .line 360
    .end local v10    # "e":Ljava/io/IOException;
    :cond_2c
    :try_start_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->saveFile:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->mContents:Ljava/lang/Object;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->responseCallbackFile(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_32
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_32 .. :try_end_32} :catch_e
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_32} :catch_1e
    .catchall {:try_start_32 .. :try_end_32} :catchall_2

    .line 449
    .end local v7    # "buf":[B
    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .end local v20    # "os":Ljava/io/OutputStream;
    .end local v29    # "total":I
    :goto_1a
    if-eqz v6, :cond_2d

    .line 451
    :try_start_33
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_33} :catch_2b
    .catchall {:try_start_33 .. :try_end_33} :catchall_0

    .line 457
    :cond_2d
    :goto_1b
    if-eqz v25, :cond_2e

    .line 459
    :try_start_34
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_34} :catch_2c
    .catchall {:try_start_34 .. :try_end_34} :catchall_0

    .line 465
    :cond_2e
    :goto_1c
    if-eqz v11, :cond_2f

    .line 467
    :try_start_35
    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_35} :catch_2d
    .catchall {:try_start_35 .. :try_end_35} :catchall_0

    .line 472
    :cond_2f
    :goto_1d
    if-eqz v8, :cond_30

    .line 473
    :try_start_36
    invoke-virtual {v8}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 477
    :cond_30
    const-string v32, "BushimoSDK"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, " download thread end. "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "sts=%d length=%d"

    const/16 v35, 0x2

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->mStatuscode:I

    move/from16 v37, v0

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    aput-object v37, v35, v36

    const/16 v36, 0x1

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v37

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    aput-object v37, v35, v36

    invoke-static/range {v34 .. v35}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_0

    .line 478
    const/16 v26, 0x1

    .line 481
    if-eqz v18, :cond_7

    .line 482
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    goto/16 :goto_4

    .line 362
    .end local v17    # "len":I
    :cond_31
    :try_start_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->encode:Ljava/lang/String;

    move-object/from16 v32, v0

    if-eqz v32, :cond_49

    .line 364
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v14}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->createInputStream(Ljava/io/InputStream;Z)Ljava/io/InputStream;

    move-result-object v6

    .line 365
    new-instance v22, Ljava/io/InputStreamReader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->encode:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-direct {v0, v6, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 366
    .local v22, "reader":Ljava/io/Reader;
    const/16 v32, 0x1000

    move/from16 v0, v32

    new-array v7, v0, [C

    .line 367
    .local v7, "buf":[C
    const/16 v17, 0x0

    .line 368
    .restart local v17    # "len":I
    new-instance v28, Ljava/lang/StringBuffer;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuffer;-><init>()V

    .line 370
    .local v28, "sb":Ljava/lang/StringBuffer;
    :cond_32
    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/io/Reader;->read([C)I

    move-result v17

    .line 371
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->cancel:Z

    move/from16 v32, v0
    :try_end_37
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_37 .. :try_end_37} :catch_e
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_37} :catch_1e
    .catchall {:try_start_37 .. :try_end_37} :catchall_2

    if-eqz v32, :cond_37

    .line 372
    const/16 v26, 0x0

    .line 449
    if-eqz v6, :cond_33

    .line 451
    :try_start_38
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_38} :catch_15
    .catchall {:try_start_38 .. :try_end_38} :catchall_0

    .line 457
    :cond_33
    :goto_1e
    if-eqz v25, :cond_34

    .line 459
    :try_start_39
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_39} :catch_16
    .catchall {:try_start_39 .. :try_end_39} :catchall_0

    .line 465
    :cond_34
    :goto_1f
    if-eqz v11, :cond_35

    .line 467
    :try_start_3a
    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3a} :catch_17
    .catchall {:try_start_3a .. :try_end_3a} :catchall_0

    .line 472
    :cond_35
    :goto_20
    if-eqz v8, :cond_36

    .line 473
    :try_start_3b
    invoke-virtual {v8}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_0

    .line 481
    :cond_36
    if-eqz v18, :cond_7

    .line 482
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    goto/16 :goto_4

    .line 452
    :catch_15
    move-exception v10

    .line 453
    .restart local v10    # "e":Ljava/io/IOException;
    :try_start_3c
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1e

    .line 460
    .end local v10    # "e":Ljava/io/IOException;
    :catch_16
    move-exception v10

    .line 461
    .restart local v10    # "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1f

    .line 468
    .end local v10    # "e":Ljava/io/IOException;
    :catch_17
    move-exception v10

    .line 469
    .restart local v10    # "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_0

    goto :goto_20

    .line 373
    .end local v10    # "e":Ljava/io/IOException;
    :cond_37
    if-lez v17, :cond_38

    .line 376
    const/16 v32, 0x0

    :try_start_3d
    move-object/from16 v0, v28

    move/from16 v1, v32

    move/from16 v2, v17

    invoke-virtual {v0, v7, v1, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 378
    :cond_38
    const-string v32, "BushimoSDK"

    const-string v33, "size..%d"

    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuffer;->length()I

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    aput-object v36, v34, v35

    invoke-static/range {v33 .. v34}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->cancel:Z

    move/from16 v32, v0
    :try_end_3d
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3d .. :try_end_3d} :catch_e
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_3d} :catch_1e
    .catchall {:try_start_3d .. :try_end_3d} :catchall_2

    if-eqz v32, :cond_3d

    .line 380
    const/16 v26, 0x0

    .line 449
    if-eqz v6, :cond_39

    .line 451
    :try_start_3e
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_3e} :catch_18
    .catchall {:try_start_3e .. :try_end_3e} :catchall_0

    .line 457
    :cond_39
    :goto_21
    if-eqz v25, :cond_3a

    .line 459
    :try_start_3f
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_3f} :catch_19
    .catchall {:try_start_3f .. :try_end_3f} :catchall_0

    .line 465
    :cond_3a
    :goto_22
    if-eqz v11, :cond_3b

    .line 467
    :try_start_40
    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_40} :catch_1a
    .catchall {:try_start_40 .. :try_end_40} :catchall_0

    .line 472
    :cond_3b
    :goto_23
    if-eqz v8, :cond_3c

    .line 473
    :try_start_41
    invoke-virtual {v8}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_0

    .line 481
    :cond_3c
    if-eqz v18, :cond_7

    .line 482
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    goto/16 :goto_4

    .line 452
    :catch_18
    move-exception v10

    .line 453
    .restart local v10    # "e":Ljava/io/IOException;
    :try_start_42
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_21

    .line 460
    .end local v10    # "e":Ljava/io/IOException;
    :catch_19
    move-exception v10

    .line 461
    .restart local v10    # "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_22

    .line 468
    .end local v10    # "e":Ljava/io/IOException;
    :catch_1a
    move-exception v10

    .line 469
    .restart local v10    # "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_0

    goto :goto_23

    .line 381
    .end local v10    # "e":Ljava/io/IOException;
    :cond_3d
    if-gtz v17, :cond_32

    .line 383
    :try_start_43
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v27

    .line 384
    const-string v32, "BushimoSDK"

    move-object/from16 v0, v32

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->cancel:Z

    move/from16 v32, v0
    :try_end_43
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_43 .. :try_end_43} :catch_e
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_43} :catch_1e
    .catchall {:try_start_43 .. :try_end_43} :catchall_2

    if-eqz v32, :cond_42

    .line 387
    const/16 v26, 0x0

    .line 449
    if-eqz v6, :cond_3e

    .line 451
    :try_start_44
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_44} :catch_1b
    .catchall {:try_start_44 .. :try_end_44} :catchall_0

    .line 457
    :cond_3e
    :goto_24
    if-eqz v25, :cond_3f

    .line 459
    :try_start_45
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_45} :catch_1c
    .catchall {:try_start_45 .. :try_end_45} :catchall_0

    .line 465
    :cond_3f
    :goto_25
    if-eqz v11, :cond_40

    .line 467
    :try_start_46
    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_46} :catch_1d
    .catchall {:try_start_46 .. :try_end_46} :catchall_0

    .line 472
    :cond_40
    :goto_26
    if-eqz v8, :cond_41

    .line 473
    :try_start_47
    invoke-virtual {v8}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_0

    .line 481
    :cond_41
    if-eqz v18, :cond_7

    .line 482
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    goto/16 :goto_4

    .line 452
    :catch_1b
    move-exception v10

    .line 453
    .restart local v10    # "e":Ljava/io/IOException;
    :try_start_48
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_24

    .line 460
    .end local v10    # "e":Ljava/io/IOException;
    :catch_1c
    move-exception v10

    .line 461
    .restart local v10    # "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_25

    .line 468
    .end local v10    # "e":Ljava/io/IOException;
    :catch_1d
    move-exception v10

    .line 469
    .restart local v10    # "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_0

    goto :goto_26

    .line 389
    .end local v10    # "e":Ljava/io/IOException;
    :cond_42
    :try_start_49
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->mContents:Ljava/lang/Object;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->responseCallbackString(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_49
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_49 .. :try_end_49} :catch_e
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_49} :catch_1e
    .catchall {:try_start_49 .. :try_end_49} :catchall_2

    goto/16 :goto_1a

    .line 434
    .end local v7    # "buf":[C
    .end local v14    # "gzip":Z
    .end local v15    # "header":Lorg/apache/http/Header;
    .end local v16    # "headerE":Lorg/apache/http/Header;
    .end local v17    # "len":I
    .end local v22    # "reader":Ljava/io/Reader;
    .end local v24    # "response":Lorg/apache/http/HttpResponse;
    .end local v28    # "sb":Ljava/lang/StringBuffer;
    :catch_1e
    move-exception v10

    .line 437
    .restart local v10    # "e":Ljava/io/IOException;
    const/16 v26, 0x0

    .line 438
    .local v26, "ret":Z
    :try_start_4a
    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v32

    const-string v33, "SSL handshake"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v32

    const/16 v33, -0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-le v0, v1, :cond_43

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->isSSLHandshakeError:Z

    move/from16 v32, v0

    if-nez v32, :cond_43

    .line 439
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->isSSLHandshakeError:Z

    .line 440
    invoke-virtual/range {p0 .. p1}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->requestAndDownload(Ljava/lang/String;)Z

    move-result v26

    .line 443
    :cond_43
    if-nez v26, :cond_44

    .line 444
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    .line 445
    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1, v10}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->errorEvent(ILjava/lang/Exception;)V
    :try_end_4a
    .catchall {:try_start_4a .. :try_end_4a} :catchall_2

    .line 449
    :cond_44
    if-eqz v6, :cond_45

    .line 451
    :try_start_4b
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4b} :catch_31
    .catchall {:try_start_4b .. :try_end_4b} :catchall_0

    .line 457
    :cond_45
    :goto_27
    if-eqz v25, :cond_46

    .line 459
    :try_start_4c
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4c} :catch_32
    .catchall {:try_start_4c .. :try_end_4c} :catchall_0

    .line 465
    :cond_46
    :goto_28
    if-eqz v11, :cond_47

    .line 467
    :try_start_4d
    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_4d} :catch_33
    .catchall {:try_start_4d .. :try_end_4d} :catchall_0

    .line 472
    :cond_47
    :goto_29
    if-eqz v8, :cond_48

    .line 473
    :try_start_4e
    invoke-virtual {v8}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_4e
    .catchall {:try_start_4e .. :try_end_4e} :catchall_0

    .line 481
    :cond_48
    if-eqz v18, :cond_7

    .line 482
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    goto/16 :goto_4

    .line 392
    .end local v10    # "e":Ljava/io/IOException;
    .end local v26    # "ret":Z
    .restart local v14    # "gzip":Z
    .restart local v15    # "header":Lorg/apache/http/Header;
    .restart local v16    # "headerE":Lorg/apache/http/Header;
    .restart local v24    # "response":Lorg/apache/http/HttpResponse;
    :cond_49
    :try_start_4f
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v14}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->createInputStream(Ljava/io/InputStream;Z)Ljava/io/InputStream;

    move-result-object v6

    .line 394
    const/16 v32, 0x400

    move/from16 v0, v32

    new-array v7, v0, [B

    .line 395
    .local v7, "buf":[B
    const/16 v17, 0x0

    .restart local v17    # "len":I
    const/16 v29, 0x0

    .line 396
    .restart local v29    # "total":I
    new-instance v20, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v20 .. v20}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 398
    .local v20, "os":Ljava/io/ByteArrayOutputStream;
    :cond_4a
    invoke-virtual {v6, v7}, Ljava/io/InputStream;->read([B)I

    move-result v17

    .line 399
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->cancel:Z

    move/from16 v32, v0
    :try_end_4f
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_4f .. :try_end_4f} :catch_e
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_4f} :catch_1e
    .catchall {:try_start_4f .. :try_end_4f} :catchall_2

    if-eqz v32, :cond_4f

    .line 400
    const/16 v26, 0x0

    .line 449
    if-eqz v6, :cond_4b

    .line 451
    :try_start_50
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_50} :catch_1f
    .catchall {:try_start_50 .. :try_end_50} :catchall_0

    .line 457
    :cond_4b
    :goto_2a
    if-eqz v25, :cond_4c

    .line 459
    :try_start_51
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_51} :catch_20
    .catchall {:try_start_51 .. :try_end_51} :catchall_0

    .line 465
    :cond_4c
    :goto_2b
    if-eqz v11, :cond_4d

    .line 467
    :try_start_52
    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_52} :catch_21
    .catchall {:try_start_52 .. :try_end_52} :catchall_0

    .line 472
    :cond_4d
    :goto_2c
    if-eqz v8, :cond_4e

    .line 473
    :try_start_53
    invoke-virtual {v8}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_53
    .catchall {:try_start_53 .. :try_end_53} :catchall_0

    .line 481
    :cond_4e
    if-eqz v18, :cond_7

    .line 482
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    goto/16 :goto_4

    .line 452
    :catch_1f
    move-exception v10

    .line 453
    .restart local v10    # "e":Ljava/io/IOException;
    :try_start_54
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2a

    .line 460
    .end local v10    # "e":Ljava/io/IOException;
    :catch_20
    move-exception v10

    .line 461
    .restart local v10    # "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2b

    .line 468
    .end local v10    # "e":Ljava/io/IOException;
    :catch_21
    move-exception v10

    .line 469
    .restart local v10    # "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V
    :try_end_54
    .catchall {:try_start_54 .. :try_end_54} :catchall_0

    goto :goto_2c

    .line 401
    .end local v10    # "e":Ljava/io/IOException;
    :cond_4f
    if-lez v17, :cond_50

    .line 402
    add-int v29, v29, v17

    .line 403
    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v32, v0

    :try_start_55
    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->downloadedLength:J

    .line 404
    const/16 v32, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v32

    move/from16 v2, v17

    invoke-virtual {v0, v7, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->downloadingNotifyKey:Ljava/lang/String;

    move-object/from16 v32, v0

    if-eqz v32, :cond_50

    .line 412
    :cond_50
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->cancel:Z

    move/from16 v32, v0
    :try_end_55
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_55 .. :try_end_55} :catch_e
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_55} :catch_1e
    .catchall {:try_start_55 .. :try_end_55} :catchall_2

    if-eqz v32, :cond_55

    .line 413
    const/16 v26, 0x0

    .line 449
    if-eqz v6, :cond_51

    .line 451
    :try_start_56
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_56} :catch_22
    .catchall {:try_start_56 .. :try_end_56} :catchall_0

    .line 457
    :cond_51
    :goto_2d
    if-eqz v25, :cond_52

    .line 459
    :try_start_57
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_57} :catch_23
    .catchall {:try_start_57 .. :try_end_57} :catchall_0

    .line 465
    :cond_52
    :goto_2e
    if-eqz v11, :cond_53

    .line 467
    :try_start_58
    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_58} :catch_24
    .catchall {:try_start_58 .. :try_end_58} :catchall_0

    .line 472
    :cond_53
    :goto_2f
    if-eqz v8, :cond_54

    .line 473
    :try_start_59
    invoke-virtual {v8}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_59
    .catchall {:try_start_59 .. :try_end_59} :catchall_0

    .line 481
    :cond_54
    if-eqz v18, :cond_7

    .line 482
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    goto/16 :goto_4

    .line 452
    :catch_22
    move-exception v10

    .line 453
    .restart local v10    # "e":Ljava/io/IOException;
    :try_start_5a
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2d

    .line 460
    .end local v10    # "e":Ljava/io/IOException;
    :catch_23
    move-exception v10

    .line 461
    .restart local v10    # "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2e

    .line 468
    .end local v10    # "e":Ljava/io/IOException;
    :catch_24
    move-exception v10

    .line 469
    .restart local v10    # "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5a
    .catchall {:try_start_5a .. :try_end_5a} :catchall_0

    goto :goto_2f

    .line 414
    .end local v10    # "e":Ljava/io/IOException;
    :cond_55
    if-gtz v17, :cond_4a

    .line 416
    :try_start_5b
    invoke-virtual/range {v20 .. v20}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v23

    .line 417
    .local v23, "receive":[B
    invoke-virtual/range {v20 .. v20}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 419
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->cancel:Z

    move/from16 v32, v0
    :try_end_5b
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_5b .. :try_end_5b} :catch_e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5b} :catch_1e
    .catchall {:try_start_5b .. :try_end_5b} :catchall_2

    if-eqz v32, :cond_5a

    .line 420
    const/16 v26, 0x0

    .line 449
    if-eqz v6, :cond_56

    .line 451
    :try_start_5c
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5c} :catch_25
    .catchall {:try_start_5c .. :try_end_5c} :catchall_0

    .line 457
    :cond_56
    :goto_30
    if-eqz v25, :cond_57

    .line 459
    :try_start_5d
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_5d} :catch_26
    .catchall {:try_start_5d .. :try_end_5d} :catchall_0

    .line 465
    :cond_57
    :goto_31
    if-eqz v11, :cond_58

    .line 467
    :try_start_5e
    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_5e} :catch_27
    .catchall {:try_start_5e .. :try_end_5e} :catchall_0

    .line 472
    :cond_58
    :goto_32
    if-eqz v8, :cond_59

    .line 473
    :try_start_5f
    invoke-virtual {v8}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_5f
    .catchall {:try_start_5f .. :try_end_5f} :catchall_0

    .line 481
    :cond_59
    if-eqz v18, :cond_7

    .line 482
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    goto/16 :goto_4

    .line 452
    :catch_25
    move-exception v10

    .line 453
    .restart local v10    # "e":Ljava/io/IOException;
    :try_start_60
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_30

    .line 460
    .end local v10    # "e":Ljava/io/IOException;
    :catch_26
    move-exception v10

    .line 461
    .restart local v10    # "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_31

    .line 468
    .end local v10    # "e":Ljava/io/IOException;
    :catch_27
    move-exception v10

    .line 469
    .restart local v10    # "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V
    :try_end_60
    .catchall {:try_start_60 .. :try_end_60} :catchall_0

    goto :goto_32

    .line 422
    .end local v10    # "e":Ljava/io/IOException;
    :cond_5a
    :try_start_61
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->mContents:Ljava/lang/Object;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->responseCallbackBytes([BLjava/lang/Object;)V
    :try_end_61
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_61 .. :try_end_61} :catch_e
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_61} :catch_1e
    .catchall {:try_start_61 .. :try_end_61} :catchall_2

    goto/16 :goto_1a

    .line 449
    .end local v7    # "buf":[B
    .end local v14    # "gzip":Z
    .end local v15    # "header":Lorg/apache/http/Header;
    .end local v16    # "headerE":Lorg/apache/http/Header;
    .end local v17    # "len":I
    .end local v20    # "os":Ljava/io/ByteArrayOutputStream;
    .end local v23    # "receive":[B
    .end local v24    # "response":Lorg/apache/http/HttpResponse;
    .end local v29    # "total":I
    :catchall_2
    move-exception v32

    if-eqz v6, :cond_5b

    .line 451
    :try_start_62
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_62} :catch_34
    .catchall {:try_start_62 .. :try_end_62} :catchall_0

    .line 457
    :cond_5b
    :goto_33
    if-eqz v25, :cond_5c

    .line 459
    :try_start_63
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_63} :catch_35
    .catchall {:try_start_63 .. :try_end_63} :catchall_0

    .line 465
    :cond_5c
    :goto_34
    if-eqz v11, :cond_5d

    .line 467
    :try_start_64
    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_64} :catch_36
    .catchall {:try_start_64 .. :try_end_64} :catchall_0

    .line 472
    :cond_5d
    :goto_35
    if-eqz v8, :cond_5e

    .line 473
    :try_start_65
    invoke-virtual {v8}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_5e
    throw v32
    :try_end_65
    .catchall {:try_start_65 .. :try_end_65} :catchall_0

    .line 427
    .restart local v24    # "response":Lorg/apache/http/HttpResponse;
    :cond_5f
    :try_start_66
    move-object/from16 v0, p0

    iget v0, v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->mStatuscode:I

    move/from16 v32, v0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->errorEvent(ILjava/lang/Exception;)V
    :try_end_66
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_66 .. :try_end_66} :catch_e
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_66} :catch_1e
    .catchall {:try_start_66 .. :try_end_66} :catchall_2

    .line 428
    const/16 v26, 0x0

    .line 449
    if-eqz v6, :cond_60

    .line 451
    :try_start_67
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_67} :catch_28
    .catchall {:try_start_67 .. :try_end_67} :catchall_0

    .line 457
    :cond_60
    :goto_36
    if-eqz v25, :cond_61

    .line 459
    :try_start_68
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_68} :catch_29
    .catchall {:try_start_68 .. :try_end_68} :catchall_0

    .line 465
    :cond_61
    :goto_37
    if-eqz v11, :cond_62

    .line 467
    :try_start_69
    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_69} :catch_2a
    .catchall {:try_start_69 .. :try_end_69} :catchall_0

    .line 472
    :cond_62
    :goto_38
    if-eqz v8, :cond_63

    .line 473
    :try_start_6a
    invoke-virtual {v8}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_6a
    .catchall {:try_start_6a .. :try_end_6a} :catchall_0

    .line 481
    :cond_63
    if-eqz v18, :cond_7

    .line 482
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    goto/16 :goto_4

    .line 452
    :catch_28
    move-exception v10

    .line 453
    .restart local v10    # "e":Ljava/io/IOException;
    :try_start_6b
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_36

    .line 460
    .end local v10    # "e":Ljava/io/IOException;
    :catch_29
    move-exception v10

    .line 461
    .restart local v10    # "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_37

    .line 468
    .end local v10    # "e":Ljava/io/IOException;
    :catch_2a
    move-exception v10

    .line 469
    .restart local v10    # "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_38

    .line 452
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v14    # "gzip":Z
    .restart local v15    # "header":Lorg/apache/http/Header;
    .restart local v16    # "headerE":Lorg/apache/http/Header;
    .restart local v17    # "len":I
    :catch_2b
    move-exception v10

    .line 453
    .restart local v10    # "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1b

    .line 460
    .end local v10    # "e":Ljava/io/IOException;
    :catch_2c
    move-exception v10

    .line 461
    .restart local v10    # "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1c

    .line 468
    .end local v10    # "e":Ljava/io/IOException;
    :catch_2d
    move-exception v10

    .line 469
    .restart local v10    # "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1d

    .line 452
    .end local v14    # "gzip":Z
    .end local v15    # "header":Lorg/apache/http/Header;
    .end local v16    # "headerE":Lorg/apache/http/Header;
    .end local v17    # "len":I
    .end local v24    # "response":Lorg/apache/http/HttpResponse;
    .local v10, "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_2e
    move-exception v10

    .line 453
    .local v10, "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_14

    .line 460
    .end local v10    # "e":Ljava/io/IOException;
    :catch_2f
    move-exception v10

    .line 461
    .restart local v10    # "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_15

    .line 468
    .end local v10    # "e":Ljava/io/IOException;
    :catch_30
    move-exception v10

    .line 469
    .restart local v10    # "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_16

    .line 452
    .restart local v26    # "ret":Z
    :catch_31
    move-exception v10

    .line 453
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_27

    .line 460
    :catch_32
    move-exception v10

    .line 461
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_28

    .line 468
    :catch_33
    move-exception v10

    .line 469
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_29

    .line 452
    .end local v10    # "e":Ljava/io/IOException;
    .end local v26    # "ret":Z
    :catch_34
    move-exception v10

    .line 453
    .restart local v10    # "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_33

    .line 460
    .end local v10    # "e":Ljava/io/IOException;
    :catch_35
    move-exception v10

    .line 461
    .restart local v10    # "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_34

    .line 468
    .end local v10    # "e":Ljava/io/IOException;
    :catch_36
    move-exception v10

    .line 469
    .restart local v10    # "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6b
    .catchall {:try_start_6b .. :try_end_6b} :catchall_0

    goto/16 :goto_35
.end method

.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->inThread:Z

    .line 198
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->requestAndDownload(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    sget v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->countDownloading:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->countDownloading:I

    .line 202
    iput-boolean v2, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->inThread:Z

    .line 204
    return-void

    .line 201
    :catchall_0
    move-exception v0

    sget v1, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->countDownloading:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->countDownloading:I

    .line 202
    iput-boolean v2, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->inThread:Z

    throw v0
.end method

.method public startDownloadWithUrl(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "sUrl"    # Ljava/lang/String;
    .param p2, "aContents"    # Ljava/lang/Object;

    .prologue
    .line 154
    iget-object v1, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->saveFile:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 156
    sget v1, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->countDownloading:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->countDownloading:I

    .line 161
    :cond_0
    iput-object p1, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->mUrl:Ljava/lang/String;

    .line 162
    iput-object p2, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->mContents:Ljava/lang/Object;

    .line 163
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoRequestDownloaderImpl;->cancel:Z

    .line 165
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 166
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 168
    return-void
.end method
