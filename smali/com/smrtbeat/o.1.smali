.class Lcom/smrtbeat/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/smrtbeat/Q;


# instance fields
.field a:Lcom/smrtbeat/O;

.field b:Ljava/io/File;

.field c:Ljava/io/File;

.field d:Ljava/io/File;


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/smrtbeat/o;->a:Lcom/smrtbeat/O;

    iput-object v0, p0, Lcom/smrtbeat/o;->b:Ljava/io/File;

    iput-object v0, p0, Lcom/smrtbeat/o;->c:Ljava/io/File;

    iput-object v0, p0, Lcom/smrtbeat/o;->d:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public a()Lcom/smrtbeat/O;
    .locals 1

    iget-object v0, p0, Lcom/smrtbeat/o;->a:Lcom/smrtbeat/O;

    return-object v0
.end method

.method a(Ljava/io/File;Ljava/io/File;Ljava/io/File;)Lcom/smrtbeat/Q;
    .locals 0

    iput-object p1, p0, Lcom/smrtbeat/o;->b:Ljava/io/File;

    iput-object p2, p0, Lcom/smrtbeat/o;->c:Ljava/io/File;

    iput-object p3, p0, Lcom/smrtbeat/o;->d:Ljava/io/File;

    return-object p0
.end method

.method public run()V
    .locals 5

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Lcom/smrtbeat/A;

    const-string v2, "errors"

    const-string v3, "json.txt"

    iget-object v4, p0, Lcom/smrtbeat/o;->b:Ljava/io/File;

    invoke-direct {v1, v2, v3, v4}, Lcom/smrtbeat/A;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/smrtbeat/A;

    const-string v2, "minidump"

    iget-object v3, p0, Lcom/smrtbeat/o;->d:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/smrtbeat/o;->c:Ljava/io/File;

    invoke-direct {v1, v2, v3, v4}, Lcom/smrtbeat/A;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/smrtbeat/z;

    const-string v2, "https://minidumps.smbeat.jp/api/errors/multi"

    invoke-direct {v1, v2, v0}, Lcom/smrtbeat/z;-><init>(Ljava/lang/String;Ljava/util/List;)V

    const/16 v0, 0x7d0

    invoke-virtual {v1, v0}, Lcom/smrtbeat/z;->a(I)Lcom/smrtbeat/O;

    move-result-object v0

    iput-object v0, p0, Lcom/smrtbeat/o;->a:Lcom/smrtbeat/O;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
