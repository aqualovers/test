.class Ljp/appAdForce/android/corona/CoronaLtvManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/appAdForce/android/corona/CoronaLtvManager;->invoke(Lcom/naef/jnlua/LuaState;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ansca/corona/CoronaActivity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Ljp/appAdForce/android/corona/CoronaLtvManager;


# direct methods
.method constructor <init>(Ljp/appAdForce/android/corona/CoronaLtvManager;Lcom/ansca/corona/CoronaActivity;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Ljp/appAdForce/android/corona/CoronaLtvManager$1;->d:Ljp/appAdForce/android/corona/CoronaLtvManager;

    iput-object p2, p0, Ljp/appAdForce/android/corona/CoronaLtvManager$1;->a:Lcom/ansca/corona/CoronaActivity;

    iput-object p3, p0, Ljp/appAdForce/android/corona/CoronaLtvManager$1;->b:Ljava/lang/String;

    iput p4, p0, Ljp/appAdForce/android/corona/CoronaLtvManager$1;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Ljp/appAdForce/android/AdManager;

    iget-object v1, p0, Ljp/appAdForce/android/corona/CoronaLtvManager$1;->a:Lcom/ansca/corona/CoronaActivity;

    invoke-direct {v0, v1}, Ljp/appAdForce/android/AdManager;-><init>(Landroid/content/Context;)V

    new-instance v2, Ljp/appAdForce/android/LtvManager;

    invoke-direct {v2, v0}, Ljp/appAdForce/android/LtvManager;-><init>(Ljp/appAdForce/android/AdManager;)V

    invoke-static {}, Ljp/appAdForce/android/corona/CoronaLtvManager;->a()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljp/appAdForce/android/corona/CoronaLtvManager;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Ljp/appAdForce/android/corona/CoronaLtvManager;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Ljp/appAdForce/android/LtvManager;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ljp/appAdForce/android/corona/CoronaLtvManager$1;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, ""

    iget-object v1, p0, Ljp/appAdForce/android/corona/CoronaLtvManager$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget v0, p0, Ljp/appAdForce/android/corona/CoronaLtvManager$1;->c:I

    invoke-virtual {v2, v0}, Ljp/appAdForce/android/LtvManager;->sendLtvConversion(I)V

    :goto_1
    invoke-virtual {v2}, Ljp/appAdForce/android/LtvManager;->clearParam()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljp/appAdForce/android/corona/CoronaLtvManager;->a(Ljava/util/Map;)Ljava/util/Map;

    return-void

    :cond_2
    iget v0, p0, Ljp/appAdForce/android/corona/CoronaLtvManager$1;->c:I

    iget-object v1, p0, Ljp/appAdForce/android/corona/CoronaLtvManager$1;->b:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljp/appAdForce/android/LtvManager;->sendLtvConversion(ILjava/lang/String;)V

    goto :goto_1
.end method
