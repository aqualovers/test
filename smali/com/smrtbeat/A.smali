.class Lcom/smrtbeat/A;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smrtbeat/A;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/smrtbeat/A;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/smrtbeat/A;->c:Ljava/io/File;

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smrtbeat/A;->a:Ljava/lang/String;

    return-object v0
.end method

.method b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smrtbeat/A;->b:Ljava/lang/String;

    return-object v0
.end method

.method c()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/smrtbeat/A;->c:Ljava/io/File;

    return-object v0
.end method
