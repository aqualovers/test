.class Lcom/smrtbeat/x;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Lorg/json/JSONObject;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lorg/json/JSONObject;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/smrtbeat/x;->a:Lorg/json/JSONObject;

    return-object p0
.end method

.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/smrtbeat/x;->a:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/smrtbeat/i;->a(Lorg/json/JSONObject;)V

    return-void
.end method
