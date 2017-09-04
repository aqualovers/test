.class Lcom/smrtbeat/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/smrtbeat/Q;


# instance fields
.field a:Lcom/smrtbeat/O;

.field b:Lorg/json/JSONObject;


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/smrtbeat/n;->a:Lcom/smrtbeat/O;

    iput-object v0, p0, Lcom/smrtbeat/n;->b:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public a()Lcom/smrtbeat/O;
    .locals 1

    iget-object v0, p0, Lcom/smrtbeat/n;->a:Lcom/smrtbeat/O;

    return-object v0
.end method

.method a(Lorg/json/JSONObject;)Lcom/smrtbeat/Q;
    .locals 0

    iput-object p1, p0, Lcom/smrtbeat/n;->b:Lorg/json/JSONObject;

    return-object p0
.end method

.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/smrtbeat/n;->b:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/smrtbeat/i;->b(Lorg/json/JSONObject;)Lcom/smrtbeat/O;

    move-result-object v0

    iput-object v0, p0, Lcom/smrtbeat/n;->a:Lcom/smrtbeat/O;

    return-void
.end method
