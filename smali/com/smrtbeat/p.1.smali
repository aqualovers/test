.class Lcom/smrtbeat/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Ljava/lang/String;

.field b:Lorg/json/JSONObject;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/smrtbeat/p;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/smrtbeat/p;->b:Lorg/json/JSONObject;

    return-object p0
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/smrtbeat/p;->b:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/smrtbeat/p;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/smrtbeat/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method
