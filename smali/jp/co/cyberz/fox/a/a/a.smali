.class public Ljp/co/cyberz/fox/a/a/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/co/cyberz/fox/a/a/a$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:D

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Ljp/co/cyberz/fox/a/a/a$a;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:I

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Lorg/json/JSONObject;

.field private x:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Ljp/co/cyberz/fox/a/a/a;->a:I

    const-string v0, ""

    iput-object v0, p0, Ljp/co/cyberz/fox/a/a/a;->b:Ljava/lang/String;

    iput-object v1, p0, Ljp/co/cyberz/fox/a/a/a;->c:Ljava/lang/String;

    iput-object v1, p0, Ljp/co/cyberz/fox/a/a/a;->d:Ljava/lang/String;

    iput v2, p0, Ljp/co/cyberz/fox/a/a/a;->e:I

    iput-object v1, p0, Ljp/co/cyberz/fox/a/a/a;->f:Ljava/lang/String;

    iput-object v1, p0, Ljp/co/cyberz/fox/a/a/a;->g:Ljava/lang/String;

    iput-object v1, p0, Ljp/co/cyberz/fox/a/a/a;->h:Ljava/lang/String;

    iput-object v1, p0, Ljp/co/cyberz/fox/a/a/a;->k:Ljava/lang/String;

    iput-object v1, p0, Ljp/co/cyberz/fox/a/a/a;->l:Ljp/co/cyberz/fox/a/a/a$a;

    iput-object v1, p0, Ljp/co/cyberz/fox/a/a/a;->m:Ljava/lang/String;

    iput-object v1, p0, Ljp/co/cyberz/fox/a/a/a;->n:Ljava/lang/String;

    iput-object v1, p0, Ljp/co/cyberz/fox/a/a/a;->o:Ljava/lang/String;

    iput v2, p0, Ljp/co/cyberz/fox/a/a/a;->p:I

    iput-object v1, p0, Ljp/co/cyberz/fox/a/a/a;->q:Ljava/lang/String;

    iput-object v1, p0, Ljp/co/cyberz/fox/a/a/a;->t:Ljava/lang/String;

    iput-object v1, p0, Ljp/co/cyberz/fox/a/a/a;->u:Ljava/lang/String;

    iput-object v1, p0, Ljp/co/cyberz/fox/a/a/a;->v:Ljava/lang/String;

    iput-object v1, p0, Ljp/co/cyberz/fox/a/a/a;->w:Lorg/json/JSONObject;

    iput-object v1, p0, Ljp/co/cyberz/fox/a/a/a;->x:Lorg/json/JSONObject;

    return-void
.end method

.method private c()Ljava/lang/String;
    .locals 2

    const-string v0, ""

    iget-object v1, p0, Ljp/co/cyberz/fox/a/a/a;->w:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    iget-object v0, p0, Ljp/co/cyberz/fox/a/a/a;->w:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljp/co/cyberz/fox/a/a/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 3

    const-string v0, ""

    iget-object v1, p0, Ljp/co/cyberz/fox/a/a/a;->x:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Ljp/co/cyberz/fox/a/a/a;->x:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljp/co/cyberz/fox/a/a/e$a;->a:Ljp/co/cyberz/fox/a/a/e$a;

    invoke-static {v1, v2}, Ljp/co/cyberz/fox/a/a/e;->a(Ljava/lang/String;Ljp/co/cyberz/fox/a/a/e$a;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private m(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    :try_start_0
    invoke-static {p1}, Ljp/co/cyberz/fox/a/a/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private n(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    :try_start_0
    invoke-static {p1}, Ljp/co/cyberz/fox/a/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget v0, p0, Ljp/co/cyberz/fox/a/a/a;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljp/co/cyberz/fox/a/a/a;->p:I

    return-void
.end method

.method public a(D)V
    .locals 1

    iput-wide p1, p0, Ljp/co/cyberz/fox/a/a/a;->i:D

    return-void
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Ljp/co/cyberz/fox/a/a/a;->a:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljp/co/cyberz/fox/a/a/a;->b:Ljava/lang/String;

    return-void
.end method

.method public a(Ljp/co/cyberz/fox/a/a/a$a;)V
    .locals 0

    iput-object p1, p0, Ljp/co/cyberz/fox/a/a/a;->l:Ljp/co/cyberz/fox/a/a/a$a;

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Ljp/co/cyberz/fox/a/a/a;->w:Lorg/json/JSONObject;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "Z"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :try_start_0
    iget v2, p0, Ljp/co/cyberz/fox/a/a/a;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljp/co/cyberz/fox/a/a/f;->a(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Ljp/co/cyberz/fox/a/a/a;->l:Ljp/co/cyberz/fox/a/a/a$a;

    invoke-virtual {v3}, Ljp/co/cyberz/fox/a/a/a$a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljp/co/cyberz/fox/a/a/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Ljp/co/cyberz/fox/a/a/a;->b:Ljava/lang/String;

    invoke-static {v3}, Ljp/co/cyberz/fox/a/a/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljp/co/cyberz/fox/a/a/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Ljp/co/cyberz/fox/a/a/a;->n:Ljava/lang/String;

    invoke-static {v3}, Ljp/co/cyberz/fox/a/a/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    sget-object v3, Ljp/co/cyberz/fox/a/a/d;->c:Ljava/lang/String;

    invoke-static {v3}, Ljp/co/cyberz/fox/a/a/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    sget-object v3, Ljp/co/cyberz/fox/a/a/d;->d:Ljava/lang/String;

    invoke-static {v3}, Ljp/co/cyberz/fox/a/a/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Ljp/co/cyberz/fox/a/a/a;->q:Ljava/lang/String;

    sget-object v4, Ljp/co/cyberz/fox/a/a/d;->b:Ljava/lang/String;

    invoke-static {v3, v4}, Ljp/co/cyberz/fox/a/a/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Ljp/co/cyberz/fox/a/a/a;->m:Ljava/lang/String;

    invoke-static {v3}, Ljp/co/cyberz/fox/a/a/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    sget-object v3, Ljp/co/cyberz/fox/a/a/d;->e:Ljava/lang/String;

    invoke-static {v3}, Ljp/co/cyberz/fox/a/a/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    sget-object v3, Ljp/co/cyberz/fox/a/a/d;->f:Ljava/lang/String;

    invoke-static {v3}, Ljp/co/cyberz/fox/a/a/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    sget-object v3, Ljp/co/cyberz/fox/a/a/d;->g:Ljava/lang/String;

    invoke-static {v3}, Ljp/co/cyberz/fox/a/a/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Ljp/co/cyberz/fox/a/a/a;->c:Ljava/lang/String;

    invoke-static {v3}, Ljp/co/cyberz/fox/a/a/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljp/co/cyberz/fox/a/a/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Ljp/co/cyberz/fox/a/a/a;->d:Ljava/lang/String;

    invoke-static {v3}, Ljp/co/cyberz/fox/a/a/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljp/co/cyberz/fox/a/a/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Ljp/co/cyberz/fox/a/a/a;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Ljp/co/cyberz/fox/a/a/f;->a(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Ljp/co/cyberz/fox/a/a/a;->f:Ljava/lang/String;

    invoke-static {v3}, Ljp/co/cyberz/fox/a/a/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljp/co/cyberz/fox/a/a/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Ljp/co/cyberz/fox/a/a/a;->g:Ljava/lang/String;

    invoke-static {v3}, Ljp/co/cyberz/fox/a/a/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljp/co/cyberz/fox/a/a/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Ljp/co/cyberz/fox/a/a/a;->h:Ljava/lang/String;

    invoke-static {v3}, Ljp/co/cyberz/fox/a/a/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljp/co/cyberz/fox/a/a/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-wide v4, p0, Ljp/co/cyberz/fox/a/a/a;->i:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v3}, Ljp/co/cyberz/fox/a/a/f;->a(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Ljp/co/cyberz/fox/a/a/a;->j:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Ljp/co/cyberz/fox/a/a/f;->a(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Ljp/co/cyberz/fox/a/a/a;->k:Ljava/lang/String;

    invoke-static {v3}, Ljp/co/cyberz/fox/a/a/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    sget-object v3, Ljp/co/cyberz/fox/a/a/d;->l:Ljava/lang/String;

    invoke-static {v3}, Ljp/co/cyberz/fox/a/a/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljp/co/cyberz/fox/a/a/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    sget-object v3, Ljp/co/cyberz/fox/a/a/d;->h:Ljava/lang/String;

    invoke-static {v3}, Ljp/co/cyberz/fox/a/a/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Ljp/co/cyberz/fox/a/a/a;->p:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Ljp/co/cyberz/fox/a/a/f;->a(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v3}, Ljp/co/cyberz/fox/a/a/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljp/co/cyberz/fox/a/a/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v3}, Ljp/co/cyberz/fox/a/a/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljp/co/cyberz/fox/a/a/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {v0}, Ljp/co/cyberz/fox/a/a/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "2"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Ljp/co/cyberz/fox/a/a/a;->r:Ljava/lang/String;

    invoke-static {v2}, Ljp/co/cyberz/fox/a/a/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljp/co/cyberz/fox/a/a/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Ljp/co/cyberz/fox/a/a/a;->s:Ljava/lang/String;

    invoke-static {v2}, Ljp/co/cyberz/fox/a/a/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljp/co/cyberz/fox/a/a/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {}, Ljp/co/dimage/android/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljp/co/cyberz/fox/a/a/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {}, Ljp/co/dimage/android/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljp/co/cyberz/fox/a/a/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {}, Ljp/co/dimage/android/l;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljp/co/cyberz/fox/a/a/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-direct {p0}, Ljp/co/cyberz/fox/a/a/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-direct {p0}, Ljp/co/cyberz/fox/a/a/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {}, Ljp/co/dimage/android/l;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljp/co/cyberz/fox/a/a/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {}, Ljp/co/dimage/android/l;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljp/co/cyberz/fox/a/a/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Ljp/co/cyberz/fox/a/a/a;->e:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljp/co/cyberz/fox/a/a/a;->c:Ljava/lang/String;

    return-void
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Ljp/co/cyberz/fox/a/a/a;->x:Lorg/json/JSONObject;

    return-void
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Ljp/co/cyberz/fox/a/a/a;->j:I

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljp/co/cyberz/fox/a/a/a;->d:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljp/co/cyberz/fox/a/a/a;->f:Ljava/lang/String;

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljp/co/cyberz/fox/a/a/a;->g:Ljava/lang/String;

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljp/co/cyberz/fox/a/a/a;->h:Ljava/lang/String;

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljp/co/cyberz/fox/a/a/a;->k:Ljava/lang/String;

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljp/co/cyberz/fox/a/a/a;->m:Ljava/lang/String;

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljp/co/cyberz/fox/a/a/a;->n:Ljava/lang/String;

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljp/co/cyberz/fox/a/a/a;->r:Ljava/lang/String;

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljp/co/cyberz/fox/a/a/a;->s:Ljava/lang/String;

    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Ljp/co/cyberz/fox/a/a/a;->a:I

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-static {v0}, Ljp/co/cyberz/fox/a/a/a$a;->a(Ljava/lang/String;)Ljp/co/cyberz/fox/a/a/a$a;

    move-result-object v0

    iput-object v0, p0, Ljp/co/cyberz/fox/a/a/a;->l:Ljp/co/cyberz/fox/a/a/a$a;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-static {v0}, Ljp/co/cyberz/fox/a/a/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljp/co/cyberz/fox/a/a/a;->b:Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    iput-object v0, p0, Ljp/co/cyberz/fox/a/a/a;->n:Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-static {v0}, Ljp/co/cyberz/fox/a/a/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Ljp/co/cyberz/fox/a/a/a;->q:Ljava/lang/String;

    const/16 v0, 0xb

    aget-object v0, v1, v0

    invoke-static {v0}, Ljp/co/cyberz/fox/a/a/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljp/co/cyberz/fox/a/a/a;->c:Ljava/lang/String;

    const/16 v0, 0xc

    aget-object v0, v1, v0

    invoke-static {v0}, Ljp/co/cyberz/fox/a/a/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljp/co/cyberz/fox/a/a/a;->d:Ljava/lang/String;

    const/16 v0, 0xd

    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Ljp/co/cyberz/fox/a/a/a;->e:I

    const/16 v0, 0xe

    aget-object v0, v1, v0

    invoke-static {v0}, Ljp/co/cyberz/fox/a/a/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljp/co/cyberz/fox/a/a/a;->f:Ljava/lang/String;

    const/16 v0, 0xf

    aget-object v0, v1, v0

    invoke-static {v0}, Ljp/co/cyberz/fox/a/a/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljp/co/cyberz/fox/a/a/a;->g:Ljava/lang/String;

    const/16 v0, 0x10

    aget-object v0, v1, v0

    invoke-static {v0}, Ljp/co/cyberz/fox/a/a/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljp/co/cyberz/fox/a/a/a;->h:Ljava/lang/String;

    const/16 v0, 0x11

    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iput-wide v2, p0, Ljp/co/cyberz/fox/a/a/a;->i:D

    const/16 v0, 0x12

    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Ljp/co/cyberz/fox/a/a/a;->j:I

    const/16 v0, 0x13

    aget-object v0, v1, v0

    iput-object v0, p0, Ljp/co/cyberz/fox/a/a/a;->k:Ljava/lang/String;

    const/16 v0, 0x1d

    aget-object v0, v1, v0

    invoke-static {v0}, Ljp/co/cyberz/fox/a/a/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljp/co/cyberz/fox/a/a/a;->r:Ljava/lang/String;

    const/16 v0, 0x1e

    aget-object v0, v1, v0

    invoke-static {v0}, Ljp/co/cyberz/fox/a/a/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljp/co/cyberz/fox/a/a/a;->s:Ljava/lang/String;

    const/16 v0, 0x1f

    aget-object v0, v1, v0

    invoke-static {v0}, Ljp/co/cyberz/fox/a/a/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljp/co/cyberz/fox/a/a/a;->t:Ljava/lang/String;

    const/16 v0, 0x20

    aget-object v0, v1, v0

    invoke-static {v0}, Ljp/co/cyberz/fox/a/a/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljp/co/cyberz/fox/a/a/a;->u:Ljava/lang/String;

    const/16 v0, 0x21

    aget-object v0, v1, v0

    invoke-static {v0}, Ljp/co/cyberz/fox/a/a/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljp/co/cyberz/fox/a/a/a;->v:Ljava/lang/String;

    const/16 v0, 0x22

    aget-object v0, v1, v0

    invoke-direct {p0, v0}, Ljp/co/cyberz/fox/a/a/a;->m(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Ljp/co/cyberz/fox/a/a/a;->w:Lorg/json/JSONObject;

    const/16 v0, 0x23

    aget-object v0, v1, v0

    invoke-direct {p0, v0}, Ljp/co/cyberz/fox/a/a/a;->n(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Ljp/co/cyberz/fox/a/a/a;->x:Lorg/json/JSONObject;

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x6

    aget-object v0, v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
