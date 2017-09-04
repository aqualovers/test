.class public Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter;
.super Ljava/lang/Object;
.source "BsmoNotificationCenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter$Receiver;
    }
.end annotation


# static fields
.field static mInstance:Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter;


# instance fields
.field receiverMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter$Receiver;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter;

    invoke-direct {v0}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter;-><init>()V

    sput-object v0, Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter;->mInstance:Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter;->receiverMap:Ljava/util/HashMap;

    return-void
.end method

.method private exec(Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter$Receiver;Ljava/lang/Object;)V
    .locals 2
    .param p1, "item"    # Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter$Receiver;
    .param p2, "param"    # Ljava/lang/Object;

    .prologue
    .line 91
    iget-object v1, p1, Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter$Receiver;->action:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    .line 92
    iget-object v1, p1, Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter$Receiver;->action:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    iget-object v1, p1, Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter$Receiver;->action:Ljava/lang/Object;

    instance-of v1, v1, Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 97
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 98
    .local v0, "msg":Landroid/os/Message;
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 99
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 100
    iget-object v1, p1, Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter$Receiver;->action:Ljava/lang/Object;

    check-cast v1, Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public static getSharedInstance()Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter;->mInstance:Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter;

    return-object v0
.end method


# virtual methods
.method public addObserver(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 7
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "action"    # Landroid/os/Handler;

    .prologue
    .line 170
    new-instance v1, Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter$Receiver;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter$Receiver;-><init>(Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter$1;)V

    .line 171
    .local v1, "r":Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter$Receiver;
    iput-object p1, v1, Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter$Receiver;->target:Ljava/lang/Object;

    .line 172
    iput-object p3, v1, Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter$Receiver;->action:Ljava/lang/Object;

    .line 174
    iget-object v2, p0, Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter;->receiverMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 175
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter$Receiver;>;"
    if-nez v0, :cond_0

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter$Receiver;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .restart local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter$Receiver;>;"
    iget-object v2, p0, Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter;->receiverMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    const-string v2, "BushimoSDK"

    const-string v3, "key=%s,receiverCount=%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    return-void
.end method

.method public addObserver(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 7
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 147
    new-instance v1, Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter$Receiver;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter$Receiver;-><init>(Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter$1;)V

    .line 148
    .local v1, "r":Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter$Receiver;
    iput-object p1, v1, Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter$Receiver;->target:Ljava/lang/Object;

    .line 149
    iput-object p3, v1, Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter$Receiver;->action:Ljava/lang/Object;

    .line 151
    iget-object v2, p0, Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter;->receiverMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 152
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter$Receiver;>;"
    if-nez v0, :cond_0

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter$Receiver;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .restart local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter$Receiver;>;"
    iget-object v2, p0, Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter;->receiverMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    const-string v2, "BushimoSDK"

    const-string v3, "key=%s,receiverCount=%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    return-void
.end method

.method public postNotification(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter;->postNotification(Ljava/lang/String;Ljava/lang/Object;)V

    .line 58
    return-void
.end method

.method public postNotification(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 68
    iget-object v3, p0, Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter;->receiverMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 69
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter$Receiver;>;"
    if-eqz v2, :cond_0

    .line 71
    const-string v3, "BushimoSDK"

    const-string v4, "key=%s,receiverCount=%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v7

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter$Receiver;

    .line 77
    .local v1, "item":Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter$Receiver;
    const-string v3, "BushimoSDK"

    const-string v4, "key=%s"

    new-array v5, v8, [Ljava/lang/Object;

    aput-object p1, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-direct {p0, v1, p2}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter;->exec(Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter$Receiver;Ljava/lang/Object;)V

    goto :goto_0

    .line 81
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "item":Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter$Receiver;
    :cond_0
    return-void
.end method

.method public postNotificationDelay(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/Object;
    .param p3, "delay"    # I

    .prologue
    .line 112
    sget-object v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter$1;-><init>(Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter;Ljava/lang/String;Ljava/lang/Object;)V

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 119
    return-void
.end method

.method public postNotificationOnUIThread(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/Object;

    .prologue
    .line 129
    sget-object v0, Lcom/bushiroad/bushimo/sdk/android/impl/util/BsmoHelpers;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter$2;-><init>(Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 136
    return-void
.end method

.method public removeObserver(Ljava/lang/Object;)V
    .locals 7
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 190
    iget-object v6, p0, Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter;->receiverMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    .line 191
    .local v4, "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/ArrayList<Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter$Receiver;>;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 192
    .local v5, "removeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter$Receiver;>;"
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 194
    .local v3, "item0":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter$Receiver;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter$Receiver;

    .line 195
    .local v2, "item":Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter$Receiver;
    iget-object v6, v2, Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter$Receiver;->target:Ljava/lang/Object;

    if-ne v6, p1, :cond_0

    .line 197
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 200
    .end local v2    # "item":Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter$Receiver;
    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter$Receiver;

    .line 201
    .restart local v2    # "item":Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter$Receiver;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 203
    .end local v2    # "item":Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter$Receiver;
    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 205
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "item0":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter$Receiver;>;"
    :cond_3
    return-void
.end method

.method public removeObserver(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 212
    iget-object v4, p0, Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter;->receiverMap:Ljava/util/HashMap;

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 213
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter$Receiver;>;"
    if-eqz v2, :cond_2

    .line 214
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .local v3, "removeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter$Receiver;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter$Receiver;

    .line 216
    .local v1, "item":Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter$Receiver;
    iget-object v4, v1, Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter$Receiver;->target:Ljava/lang/Object;

    if-ne v4, p1, :cond_0

    .line 218
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 221
    .end local v1    # "item":Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter$Receiver;
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter$Receiver;

    .line 222
    .restart local v1    # "item":Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter$Receiver;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 225
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "item":Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter$Receiver;
    .end local v3    # "removeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bushiroad/bushimo/sdk/android/api/BsmoNotificationCenter$Receiver;>;"
    :cond_2
    return-void
.end method
