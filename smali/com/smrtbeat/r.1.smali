.class Lcom/smrtbeat/r;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/smrtbeat/Q;


# instance fields
.field a:Lcom/smrtbeat/O;

.field b:Ljava/io/File;


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/smrtbeat/r;->a:Lcom/smrtbeat/O;

    iput-object v0, p0, Lcom/smrtbeat/r;->b:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public a()Lcom/smrtbeat/O;
    .locals 1

    iget-object v0, p0, Lcom/smrtbeat/r;->a:Lcom/smrtbeat/O;

    return-object v0
.end method

.method a(Ljava/io/File;)Lcom/smrtbeat/Q;
    .locals 0

    iput-object p1, p0, Lcom/smrtbeat/r;->b:Ljava/io/File;

    return-object p0
.end method

.method public run()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Lcom/smrtbeat/A;

    const-string v2, "screenshot"

    iget-object v3, p0, Lcom/smrtbeat/r;->b:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/smrtbeat/r;->b:Ljava/io/File;

    invoke-direct {v1, v2, v3, v4}, Lcom/smrtbeat/A;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/smrtbeat/z;

    const-string v2, "https://images.smbeat.jp/api/upload"

    invoke-direct {v1, v2, v0}, Lcom/smrtbeat/z;-><init>(Ljava/lang/String;Ljava/util/List;)V

    const/16 v0, 0x2710

    invoke-virtual {v1, v0}, Lcom/smrtbeat/z;->a(I)Lcom/smrtbeat/O;

    move-result-object v0

    iput-object v0, p0, Lcom/smrtbeat/r;->a:Lcom/smrtbeat/O;

    return-void
.end method
