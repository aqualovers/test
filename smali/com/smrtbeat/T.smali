.class Lcom/smrtbeat/T;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Ljava/io/File;

.field b:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Ljava/io/File;Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/smrtbeat/T;->a:Ljava/io/File;

    iput-object p2, p0, Lcom/smrtbeat/T;->b:Ljava/lang/String;

    return-object p0
.end method

.method public run()V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v0, 0x1e

    :goto_0
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/smrtbeat/T;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/smrtbeat/T;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/smrtbeat/aa;->g()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/smrtbeat/T;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :goto_1
    return-void

    :cond_1
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/smrtbeat/T;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/smrtbeat/T;->b:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3, v0}, Lcom/smrtbeat/R;->b(Ljava/lang/String;JLjava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    iget-object v1, p0, Lcom/smrtbeat/T;->a:Ljava/io/File;

    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/smrtbeat/T;->a:Ljava/io/File;

    invoke-static {v1, v0}, Lcom/smrtbeat/aa;->a(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/smrtbeat/ad;->a:Lcom/smrtbeat/ad;

    const-string v2, "failed to move file from %s to %s"

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/smrtbeat/T;->a:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/smrtbeat/aa;->a(Lcom/smrtbeat/ad;Ljava/lang/String;)V

    :cond_3
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/smrtbeat/U;

    invoke-direct {v2, p0}, Lcom/smrtbeat/U;-><init>(Lcom/smrtbeat/T;)V

    invoke-virtual {v2, v0}, Lcom/smrtbeat/U;->a(Ljava/io/File;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1, v7}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/smrtbeat/ad;->b:Lcom/smrtbeat/ad;

    const-string v1, "missing capture image file path=%s"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/smrtbeat/T;->a:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smrtbeat/aa;->a(Lcom/smrtbeat/ad;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_0
    move-exception v1

    goto/16 :goto_2
.end method
