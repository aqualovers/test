.class public Ljp/co/dimage/android/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljp/co/dimage/android/e;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/util/HashMap;

.field private j:Landroid/content/Context;

.field private k:Ljp/co/dimage/android/c;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljp/co/dimage/android/c;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Ljp/co/dimage/android/a/a;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Ljp/co/dimage/android/a/a;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Ljp/co/dimage/android/a/a;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Ljp/co/dimage/android/a/a;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Ljp/co/dimage/android/a/a;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Ljp/co/dimage/android/a/a;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Ljp/co/dimage/android/a/a;->g:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Ljp/co/dimage/android/a/a;->h:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljp/co/dimage/android/a/a;->i:Ljava/util/HashMap;

    iput-object v1, p0, Ljp/co/dimage/android/a/a;->j:Landroid/content/Context;

    iput-object v1, p0, Ljp/co/dimage/android/a/a;->k:Ljp/co/dimage/android/c;

    const-string v0, ""

    iput-object v0, p0, Ljp/co/dimage/android/a/a;->l:Ljava/lang/String;

    const-string v0, "1"

    iput-object v0, p0, Ljp/co/dimage/android/a/a;->m:Ljava/lang/String;

    iput-object p1, p0, Ljp/co/dimage/android/a/a;->k:Ljp/co/dimage/android/c;

    invoke-direct {p0}, Ljp/co/dimage/android/a/a;->h()V

    return-void
.end method

.method static synthetic a(Ljp/co/dimage/android/a/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljp/co/dimage/android/a/a;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Ljp/co/dimage/android/a/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Ljp/co/dimage/android/a/a;->l:Ljava/lang/String;

    return-object p1
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "/p/ls?_app={0}&_xuid={1}&_xuniq={2}"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Ljp/co/dimage/android/a/a;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Ljp/co/dimage/android/a/a;->e:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Ljp/co/dimage/android/a/a;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljp/co/dimage/android/l;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljp/co/dimage/android/a/a;->f:Ljava/lang/String;

    invoke-static {v1}, Ljp/co/dimage/android/l;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&_xtid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljp/co/dimage/android/a/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-direct {p0}, Ljp/co/dimage/android/a/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljp/co/dimage/android/l;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Ljp/co/dimage/android/a/a;->g:Ljava/lang/String;

    invoke-static {v1}, Ljp/co/dimage/android/l;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&_xroute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljp/co/dimage/android/a/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    const-string v1, "default"

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&_rurl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljp/co/cyberz/fox/a/a/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljp/co/dimage/android/a/a;->h:Ljava/lang/String;

    invoke-static {v1}, Ljp/co/dimage/android/l;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&_model="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljp/co/dimage/android/a/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ljp/co/dimage/android/a/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    move-object p1, v1

    goto :goto_0
.end method

.method static synthetic b(Ljp/co/dimage/android/a/a;)Ljp/co/dimage/android/c;
    .locals 1

    iget-object v0, p0, Ljp/co/dimage/android/a/a;->k:Ljp/co/dimage/android/c;

    return-object v0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    sget-object v2, Ljp/co/dimage/android/e;->n:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    sget-object v2, Ljp/co/dimage/android/e;->n:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private e()V
    .locals 7

    const/4 v2, 0x0

    new-instance v0, Ljp/co/dimage/android/k;

    iget-object v1, p0, Ljp/co/dimage/android/a/a;->j:Landroid/content/Context;

    invoke-direct {v0, v1}, Ljp/co/dimage/android/k;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    const/4 v4, 0x1

    new-instance v6, Ljp/co/dimage/android/a/a$1;

    invoke-direct {v6, p0}, Ljp/co/dimage/android/a/a$1;-><init>(Ljp/co/dimage/android/a/a;)V

    move v3, v2

    move v5, v2

    invoke-virtual/range {v0 .. v6}, Ljp/co/dimage/android/k;->a(Ljava/lang/Integer;ZZZZLjp/co/dimage/android/k$c;)V

    return-void
.end method

.method private f()Ljava/lang/String;
    .locals 4

    const-string v0, "/p/cv?_app={0}&_xuid={1}&_xuniq={2}"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Ljp/co/dimage/android/a/a;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Ljp/co/dimage/android/a/a;->e:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Ljp/co/dimage/android/a/a;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljp/co/dimage/android/l;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljp/co/dimage/android/a/a;->f:Ljava/lang/String;

    invoke-static {v1}, Ljp/co/dimage/android/l;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&_xtid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljp/co/dimage/android/a/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-direct {p0}, Ljp/co/dimage/android/a/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljp/co/dimage/android/l;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Ljp/co/dimage/android/a/a;->h:Ljava/lang/String;

    invoke-static {v1}, Ljp/co/dimage/android/l;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&_model="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljp/co/dimage/android/a/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-object v1, p0, Ljp/co/dimage/android/a/a;->g:Ljava/lang/String;

    invoke-static {v1}, Ljp/co/dimage/android/l;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&_xroute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljp/co/dimage/android/a/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ljp/co/dimage/android/a/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private g()Ljava/lang/String;
    .locals 6

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    iget-object v1, p0, Ljp/co/dimage/android/a/a;->i:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Ljp/co/dimage/android/a/a;->i:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljp/co/dimage/android/a/a;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Ljp/co/dimage/android/a/a;->i:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Ljp/co/cyberz/fox/a/a/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v2, :cond_1

    const-string v1, "&"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private h()V
    .locals 2

    iget-object v0, p0, Ljp/co/dimage/android/a/a;->k:Ljp/co/dimage/android/c;

    invoke-virtual {v0}, Ljp/co/dimage/android/c;->o()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljp/co/dimage/android/a/a;->b:Ljava/lang/String;

    iget-object v0, p0, Ljp/co/dimage/android/a/a;->k:Ljp/co/dimage/android/c;

    invoke-virtual {v0}, Ljp/co/dimage/android/c;->n()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljp/co/dimage/android/a/a;->a:Ljava/lang/String;

    iget-object v0, p0, Ljp/co/dimage/android/a/a;->k:Ljp/co/dimage/android/c;

    invoke-virtual {v0}, Ljp/co/dimage/android/c;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljp/co/dimage/android/a/a;->e:Ljava/lang/String;

    iget-object v0, p0, Ljp/co/dimage/android/a/a;->k:Ljp/co/dimage/android/c;

    invoke-virtual {v0}, Ljp/co/dimage/android/c;->s()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljp/co/dimage/android/a/a;->c:Ljava/lang/String;

    iget-object v0, p0, Ljp/co/dimage/android/a/a;->k:Ljp/co/dimage/android/c;

    invoke-virtual {v0}, Ljp/co/dimage/android/c;->k()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Ljp/co/dimage/android/a/a;->j:Landroid/content/Context;

    iget-object v0, p0, Ljp/co/dimage/android/a/a;->k:Ljp/co/dimage/android/c;

    invoke-virtual {v0}, Ljp/co/dimage/android/c;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljp/co/dimage/android/a/a;->d:Ljava/lang/String;

    iget-object v0, p0, Ljp/co/dimage/android/a/a;->k:Ljp/co/dimage/android/c;

    invoke-virtual {v0}, Ljp/co/dimage/android/c;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljp/co/dimage/android/a/a;->f:Ljava/lang/String;

    iget-object v0, p0, Ljp/co/dimage/android/a/a;->k:Ljp/co/dimage/android/c;

    invoke-virtual {v0}, Ljp/co/dimage/android/c;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljp/co/dimage/android/a/a;->g:Ljava/lang/String;

    iget-object v0, p0, Ljp/co/dimage/android/a/a;->k:Ljp/co/dimage/android/c;

    invoke-virtual {v0}, Ljp/co/dimage/android/c;->G()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljp/co/dimage/android/a/a;->h:Ljava/lang/String;

    sget-object v0, Ljp/co/dimage/android/c$a;->c:Ljp/co/dimage/android/c$a;

    iget-object v1, p0, Ljp/co/dimage/android/a/a;->k:Ljp/co/dimage/android/c;

    invoke-virtual {v1}, Ljp/co/dimage/android/c;->w()Ljp/co/dimage/android/c$a;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ljp/co/dimage/android/a/a;->j:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljp/co/dimage/android/b;->a(Landroid/content/Context;Ljp/co/dimage/android/b$a;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Ljp/co/dimage/android/a/a;->k:Ljp/co/dimage/android/c;

    invoke-virtual {v0}, Ljp/co/dimage/android/c;->f()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Ljp/co/dimage/android/a/a;->f()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljp/co/dimage/android/c$a;->c:Ljp/co/dimage/android/c$a;

    iget-object v2, p0, Ljp/co/dimage/android/a/a;->k:Ljp/co/dimage/android/c;

    invoke-virtual {v2}, Ljp/co/dimage/android/c;->w()Ljp/co/dimage/android/c$a;

    move-result-object v2

    if-ne v1, v2, :cond_1

    iput-object v0, p0, Ljp/co/dimage/android/a/a;->l:Ljava/lang/String;

    invoke-direct {p0}, Ljp/co/dimage/android/a/a;->e()V

    goto :goto_0

    :cond_1
    new-instance v1, Ljp/co/dimage/android/g;

    iget-object v2, p0, Ljp/co/dimage/android/a/a;->k:Ljp/co/dimage/android/c;

    invoke-direct {v1, v2}, Ljp/co/dimage/android/g;-><init>(Ljp/co/dimage/android/c;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Ljp/co/dimage/android/g;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public a(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Ljp/co/dimage/android/a/a;->j:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public a(Landroid/webkit/WebView;)V
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Ljp/co/dimage/android/a/a;->j:Landroid/content/Context;

    invoke-static {v1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieSyncManager;->startSync()V

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeExpiredCookie()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p1, v3}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Ljp/co/dimage/android/a/a;->k:Ljp/co/dimage/android/c;

    invoke-virtual {v0}, Ljp/co/dimage/android/c;->f()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Ljp/co/dimage/android/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Ljp/co/dimage/android/a/a;->a(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;I)V
    .locals 1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljp/co/dimage/android/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Ljp/co/dimage/android/l;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ljp/co/dimage/android/a/a;->i:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Ljp/co/dimage/android/a/a;->c:Ljava/lang/String;

    invoke-static {v0}, Ljp/co/dimage/android/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_app_xuid"

    iget-object v2, p0, Ljp/co/dimage/android/a/a;->e:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Ljp/co/dimage/android/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_sdk"

    iget-object v2, p0, Ljp/co/dimage/android/a/a;->d:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Ljp/co/dimage/android/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_app"

    iget-object v2, p0, Ljp/co/dimage/android/a/a;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Ljp/co/dimage/android/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_xuniq"

    iget-object v2, p0, Ljp/co/dimage/android/a/a;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Ljp/co/dimage/android/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_app_inner"

    iget-object v2, p0, Ljp/co/dimage/android/a/a;->m:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Ljp/co/dimage/android/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_xtid"

    iget-object v2, p0, Ljp/co/dimage/android/a/a;->f:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Ljp/co/dimage/android/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_xroute"

    iget-object v2, p0, Ljp/co/dimage/android/a/a;->g:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Ljp/co/dimage/android/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_model"

    iget-object v2, p0, Ljp/co/dimage/android/a/a;->h:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Ljp/co/dimage/android/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->flush()V

    goto :goto_0
.end method

.method public d()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljp/co/dimage/android/a/a;->i:Ljava/util/HashMap;

    return-void
.end method
