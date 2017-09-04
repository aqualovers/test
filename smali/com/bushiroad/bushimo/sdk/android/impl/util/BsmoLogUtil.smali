.class public Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoLogUtil;
.super Ljava/lang/Object;
.source "BsmoLogUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)I
    .locals 1
    .param p0, "aLog"    # Ljava/lang/String;

    .prologue
    .line 19
    const-string v0, "BushimoSDK"

    invoke-static {v0, p0}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "aTag"    # Ljava/lang/String;
    .param p1, "aLog"    # Ljava/lang/String;

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "aTag"    # Ljava/lang/String;
    .param p1, "aLog"    # Ljava/lang/String;

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "aTag"    # Ljava/lang/String;
    .param p1, "aLog"    # Ljava/lang/String;
    .param p2, "aThrowable"    # Ljava/lang/Throwable;

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "aLog"    # Ljava/lang/String;
    .param p1, "aThrowable"    # Ljava/lang/Throwable;

    .prologue
    .line 60
    const-string v0, "BushimoSDK"

    invoke-static {v0, p0, p1}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoLogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "aTag"    # Ljava/lang/String;
    .param p1, "aLog"    # Ljava/lang/String;

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public static v(Ljava/lang/String;)I
    .locals 1
    .param p0, "aLog"    # Ljava/lang/String;

    .prologue
    .line 117
    const-string v0, "BushimoSDK"

    invoke-static {v0, p0}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoLogUtil;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "aTag"    # Ljava/lang/String;
    .param p1, "aLog"    # Ljava/lang/String;

    .prologue
    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "aTag"    # Ljava/lang/String;
    .param p1, "aLog"    # Ljava/lang/String;

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method
