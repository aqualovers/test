.class public Lextension/klb/SmartBeat/PFInterface;
.super Ljava/lang/Object;
.source "PFInterface.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static afterOnApplicationCreate(Landroid/app/Application;)V
    .locals 3
    .param p0, "app"    # Landroid/app/Application;

    .prologue
    .line 16
    invoke-static {}, Lklb/android/GameEngine/RClassReference;->getSmrtBeatTokenString()Ljava/lang/String;

    move-result-object v0

    .line 17
    .local v0, "smrtbeat_token":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 18
    invoke-static {p0, v0}, Lcom/smrtbeat/SmartBeat;->initAndStartSession(Landroid/app/Application;Ljava/lang/String;)V

    .line 20
    :cond_0
    const/16 v1, 0x10

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v1, v2, :cond_1

    .line 21
    invoke-static {}, Lcom/smrtbeat/SmartBeat;->enableLogCat()V

    .line 25
    :cond_1
    :try_start_0
    const-string v1, "lua_path"

    const-string v2, "before_set_lua_path"

    invoke-static {v1, v2}, Lcom/smrtbeat/SmartBeat;->addExtraData(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :goto_0
    return-void

    .line 27
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static afterOnPause(Landroid/app/Activity;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 63
    invoke-static {p0}, Lcom/smrtbeat/SmartBeat;->notifyOnPause(Landroid/app/Activity;)V

    .line 64
    return-void
.end method

.method public static afterOnResume(Landroid/app/Activity;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 67
    invoke-static {p0}, Lcom/smrtbeat/SmartBeat;->notifyOnResume(Landroid/app/Activity;)V

    .line 68
    return-void
.end method

.method public static beforeAssertFunction(Ljava/lang/String;)V
    .locals 4
    .param p0, "errMsg"    # Ljava/lang/String;

    .prologue
    .line 46
    :try_start_0
    const-string v2, "ErrMsg"

    invoke-static {v2, p0}, Lcom/smrtbeat/SmartBeat;->addExtraData(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 48
    .local v0, "calendar":Ljava/util/Calendar;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, "tombStone":Ljava/lang/String;
    const-string v2, "tomb_stone"

    invoke-static {v2, v1}, Lcom/smrtbeat/SmartBeat;->addExtraData(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v1    # "tombStone":Ljava/lang/String;
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static sendLuaDump(Ljava/lang/String;)V
    .locals 1
    .param p0, "luaDump"    # Ljava/lang/String;

    .prologue
    .line 35
    :try_start_0
    const-string v0, "luaDump"

    invoke-static {v0, p0}, Lcom/smrtbeat/SmartBeat;->addExtraData(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :goto_0
    return-void

    .line 37
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static stockAdditionalInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-static {p0, p1}, Lcom/smrtbeat/SmartBeat;->addExtraData(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method
