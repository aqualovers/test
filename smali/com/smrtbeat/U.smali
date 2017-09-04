.class Lcom/smrtbeat/U;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Ljava/io/File;

.field final synthetic b:Lcom/smrtbeat/T;


# direct methods
.method constructor <init>(Lcom/smrtbeat/T;)V
    .locals 0

    iput-object p1, p0, Lcom/smrtbeat/U;->b:Lcom/smrtbeat/T;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Ljava/io/File;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/smrtbeat/U;->a:Ljava/io/File;

    return-object p0
.end method

.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/smrtbeat/U;->a:Ljava/io/File;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/smrtbeat/i;->a(Ljava/io/File;J)Lcom/smrtbeat/O;

    iget-object v0, p0, Lcom/smrtbeat/U;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method
