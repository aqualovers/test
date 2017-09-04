.class Lcom/smrtbeat/SmartBeatJni;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "SmartBeatNdk"

.field private static final b:Ljava/lang/String; = "SmartBeatOpenGLNdk"

.field private static final c:Ljava/lang/String; = "libSmartBeatNdk.so.bin"

.field private static final d:Ljava/lang/String; = "libSmartBeatOpenGLNdk.so.bin"

.field private static final e:Ljava/lang/String; = "com.smrtbeat"

.field private static final f:I = 0x2000


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()I
    .locals 1

    invoke-static {}, Lcom/smrtbeat/SmartBeatJni;->getVersion()I

    move-result v0

    return v0
.end method

.method private static a(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    new-instance v3, Lcom/smrtbeat/Y;

    invoke-direct {v3, p2}, Lcom/smrtbeat/Y;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_0

    array-length v4, v3

    move v0, v1

    :goto_0
    if-lt v0, v4, :cond_2

    :cond_0
    sget-object v0, Lcom/smrtbeat/ad;->d:Lcom/smrtbeat/ad;

    const-string v3, "Install NDK Library from assets"

    invoke-static {v0, v3}, Lcom/smrtbeat/aa;->a(Lcom/smrtbeat/ad;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/smrtbeat/aa;->a(I)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    move-object v3, v2

    :goto_2
    if-nez v3, :cond_4

    sget-object v0, Lcom/smrtbeat/ad;->b:Lcom/smrtbeat/ad;

    const-string v2, "Failed to install NDK Library SUPPORTED_ABIS:%s"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {}, Lcom/smrtbeat/aa;->f()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smrtbeat/aa;->a(Lcom/smrtbeat/ad;Ljava/lang/String;)V

    :cond_1
    :goto_3
    return-void

    :cond_2
    aget-object v5, v3, v0

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "com.smrtbeat/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v3, v0

    goto :goto_2

    :catch_0
    move-exception v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v0, 0x2000

    :try_start_2
    new-array v0, v0, [B

    :goto_4
    const/4 v2, -0x1

    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v4

    if-ne v2, v4, :cond_6

    if-eqz v3, :cond_5

    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_a

    :cond_5
    :goto_5
    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    :try_start_5
    invoke-virtual {v1, v0, v2, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_b
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_4

    :catch_2
    move-exception v0

    :goto_6
    :try_start_6
    sget-object v2, Lcom/smrtbeat/ad;->b:Lcom/smrtbeat/ad;

    const-string v4, "Failed to install NDK Library err:%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/smrtbeat/aa;->a(Lcom/smrtbeat/ad;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v3, :cond_7

    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    :cond_7
    :goto_7
    if-eqz v1, :cond_1

    :try_start_8
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    :goto_8
    :try_start_9
    sget-object v1, Lcom/smrtbeat/ad;->b:Lcom/smrtbeat/ad;

    const-string v4, "Failed to install NDK Library err:%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/smrtbeat/aa;->a(Lcom/smrtbeat/ad;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v3, :cond_8

    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    :cond_8
    :goto_9
    if-eqz v2, :cond_1

    :try_start_b
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    goto/16 :goto_3

    :catch_5
    move-exception v0

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    :goto_a
    if-eqz v3, :cond_9

    :try_start_c
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    :cond_9
    :goto_b
    if-eqz v2, :cond_a

    :try_start_d
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    :cond_a
    :goto_c
    throw v0

    :catch_6
    move-exception v0

    goto :goto_7

    :catch_7
    move-exception v0

    goto :goto_9

    :catch_8
    move-exception v1

    goto :goto_b

    :catch_9
    move-exception v1

    goto :goto_c

    :catch_a
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_a

    :catch_b
    move-exception v0

    move-object v2, v1

    goto :goto_8

    :catch_c
    move-exception v0

    move-object v1, v2

    goto :goto_6
.end method

.method public static a(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/smrtbeat/aa;->g()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/smrtbeat/V;

    invoke-direct {v2}, Lcom/smrtbeat/V;-><init>()V

    invoke-virtual {v2, v0}, Lcom/smrtbeat/V;->a(Ljava/io/File;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    const-wide/16 v2, 0x1388

    :try_start_0
    invoke-virtual {v1, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static a(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "SmartBeatNdk"

    const-string v1, "libSmartBeatNdk.so.bin"

    const/4 v2, 0x7

    new-instance v3, Lcom/smrtbeat/W;

    invoke-direct {v3}, Lcom/smrtbeat/W;-><init>()V

    invoke-static {p0, v0, v1, v2, v3}, Lcom/smrtbeat/SmartBeatJni;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/util/concurrent/Callable;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/smrtbeat/g;->y:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/dump_tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/smrtbeat/SmartBeatJni;->initNdk(Ljava/lang/String;)V

    sget-object v1, Lcom/smrtbeat/ad;->d:Lcom/smrtbeat/ad;

    const-string v2, "NDK is initialized"

    invoke-static {v1, v2}, Lcom/smrtbeat/aa;->a(Lcom/smrtbeat/ad;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/util/concurrent/Callable;)Z
    .locals 3

    invoke-static {p1, p3, p4}, Lcom/smrtbeat/SmartBeatJni;->a(Ljava/lang/String;ILjava/util/concurrent/Callable;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "com.smrtbeat"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p3, p4}, Lcom/smrtbeat/SmartBeatJni;->a(Ljava/io/File;ILjava/util/concurrent/Callable;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, v1, p2}, Lcom/smrtbeat/SmartBeatJni;->a(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1, p3, p4}, Lcom/smrtbeat/SmartBeatJni;->a(Ljava/io/File;ILjava/util/concurrent/Callable;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method private static a(Ljava/io/File;ILjava/util/concurrent/Callable;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v3, -0x1

    :try_start_1
    invoke-interface {p2}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    :goto_1
    if-eq v0, p1, :cond_2

    :try_start_2
    sget-object v2, Lcom/smrtbeat/ad;->b:Lcom/smrtbeat/ad;

    const-string v3, "Library might be old. The file shall be updated. Installed:%d, Current:%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/smrtbeat/aa;->a(Lcom/smrtbeat/ad;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_1

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v3

    goto :goto_1

    :catch_1
    move-exception v0

    sget-object v0, Lcom/smrtbeat/ad;->b:Lcom/smrtbeat/ad;

    const-string v2, "NDK Libarry(file) Link Error"

    invoke-static {v0, v2}, Lcom/smrtbeat/aa;->a(Lcom/smrtbeat/ad;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/smrtbeat/ad;->d:Lcom/smrtbeat/ad;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Success to load NDK Lib (file) ver = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smrtbeat/aa;->a(Lcom/smrtbeat/ad;Ljava/lang/String;)V

    move v0, v2

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;ILjava/util/concurrent/Callable;)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v3, -0x1

    :try_start_1
    invoke-interface {p2}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    :goto_0
    if-eq v0, p1, :cond_0

    :try_start_2
    sget-object v0, Lcom/smrtbeat/ad;->b:Lcom/smrtbeat/ad;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Loaded ndk from libs folder but incompatible version. version must be "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/smrtbeat/aa;->a(Lcom/smrtbeat/ad;Ljava/lang/String;)V

    move v0, v1

    :goto_1
    return v0

    :catch_0
    move-exception v0

    move v0, v3

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/smrtbeat/ad;->d:Lcom/smrtbeat/ad;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Success to load NDK Lib ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/smrtbeat/aa;->a(Lcom/smrtbeat/ad;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_1

    move v0, v2

    goto :goto_1

    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_1
.end method

.method static synthetic b()I
    .locals 1

    invoke-static {}, Lcom/smrtbeat/SmartBeatJni;->getGlLibVersion()I

    move-result v0

    return v0
.end method

.method static b(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-gt v1, v2, :cond_0

    invoke-static {}, Lcom/smrtbeat/aa;->n()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "SmartBeatOpenGLNdk"

    const-string v1, "libSmartBeatOpenGLNdk.so.bin"

    const/4 v2, 0x1

    new-instance v3, Lcom/smrtbeat/X;

    invoke-direct {v3}, Lcom/smrtbeat/X;-><init>()V

    invoke-static {p0, v0, v1, v2, v3}, Lcom/smrtbeat/SmartBeatJni;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/util/concurrent/Callable;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method static native copyTextureBuffer(Ljava/nio/ByteBuffer;)Z
.end method

.method private static native getGlLibVersion()I
.end method

.method static native getTextureLongerSideLength()I
.end method

.method private static native getVersion()I
.end method

.method private static native initNdk(Ljava/lang/String;)V
.end method

.method static native newImageTargetTexture(IIII)I
.end method
