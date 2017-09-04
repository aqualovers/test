.class Lcom/smrtbeat/E;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Ljava/nio/ByteBuffer;

.field final synthetic b:Lcom/smrtbeat/D;


# direct methods
.method constructor <init>(Lcom/smrtbeat/D;)V
    .locals 0

    iput-object p1, p0, Lcom/smrtbeat/E;->b:Lcom/smrtbeat/D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Ljava/nio/ByteBuffer;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/smrtbeat/E;->a:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public run()V
    .locals 6

    const/4 v5, 0x0

    :try_start_0
    sget-object v0, Lcom/smrtbeat/g;->Q:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/smrtbeat/E;->a:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/smrtbeat/E;->a:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/smrtbeat/SmartBeatJni;->copyTextureBuffer(Ljava/nio/ByteBuffer;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smrtbeat/E;->b:Lcom/smrtbeat/D;

    invoke-static {v0}, Lcom/smrtbeat/D;->a(Lcom/smrtbeat/D;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/smrtbeat/E;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smrtbeat/E;->a:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/smrtbeat/E;->b:Lcom/smrtbeat/D;

    invoke-static {v0}, Lcom/smrtbeat/D;->b(Lcom/smrtbeat/D;)Landroid/graphics/Canvas;

    move-result-object v0

    iget-object v1, p0, Lcom/smrtbeat/E;->b:Lcom/smrtbeat/D;

    invoke-static {v1}, Lcom/smrtbeat/D;->a(Lcom/smrtbeat/D;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    sget-object v0, Lcom/smrtbeat/h;->c:Lcom/smrtbeat/h;

    iget-object v1, p0, Lcom/smrtbeat/E;->b:Lcom/smrtbeat/D;

    invoke-static {v1}, Lcom/smrtbeat/D;->c(Lcom/smrtbeat/D;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/smrtbeat/aa;->a(Lcom/smrtbeat/h;Landroid/graphics/Bitmap;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lcom/smrtbeat/E;->b:Lcom/smrtbeat/D;

    invoke-static {v0, v5}, Lcom/smrtbeat/D;->a(Lcom/smrtbeat/D;Ljava/lang/Thread;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/smrtbeat/E;->b:Lcom/smrtbeat/D;

    invoke-static {v0, v5}, Lcom/smrtbeat/D;->a(Lcom/smrtbeat/D;Ljava/lang/Thread;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/smrtbeat/E;->b:Lcom/smrtbeat/D;

    invoke-static {v1, v5}, Lcom/smrtbeat/D;->a(Lcom/smrtbeat/D;Ljava/lang/Thread;)V

    throw v0
.end method
