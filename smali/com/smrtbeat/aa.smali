.class Lcom/smrtbeat/aa;
.super Ljava/lang/Object;


# static fields
.field static final a:Ljava/lang/String; = "no permission"

.field private static final b:Ljava/lang/String; = "unknown"

.field private static final c:Ljava/lang/String; = "com.smrtbeat.pref1"

.field private static final d:Ljava/lang/String; = "com.smrtbeat.pref3"

.field private static final e:Ljava/lang/String; = "com.smrtbeat.pref4"

.field private static final f:Ljava/lang/String; = "com.smrtbeat.pref5"

.field private static final g:Ljava/lang/String; = "com.smrtbeat.pref6"

.field private static final h:J = 0x5265c00L

.field private static synthetic i:[I

.field private static synthetic j:[I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/SharedPreferences;Ljava/lang/String;J)J
    .locals 2

    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    :goto_0
    return-wide p2

    :catch_0
    move-exception v0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/smrtbeat/aa;->d(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0
.end method

.method static a()Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    invoke-static {}, Lcom/smrtbeat/K;->a()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-gt v2, p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    aget-object v0, v1, p0

    goto :goto_0

    :cond_1
    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {}, Lcom/smrtbeat/N;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/smrtbeat/N;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v1, "unknown"

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v2, "android.os.SystemProperties"

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const-string v3, "get"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method static a(Ljava/io/File;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const-string v2, "."

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v2

    if-ltz v1, :cond_0

    if-ltz v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static a(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 9

    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    :try_start_1
    new-instance v0, Ljava/io/InputStreamReader;

    const-string v1, "UTF-8"

    invoke-direct {v0, v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v1, Ljava/io/BufferedReader;

    const/16 v4, 0x400

    invoke-direct {v1, v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v0

    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    :try_start_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v3

    :goto_2
    :try_start_5
    sget-object v3, Lcom/smrtbeat/ad;->a:Lcom/smrtbeat/ad;

    const-string v4, "readResponse :%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/smrtbeat/aa;->a(Lcom/smrtbeat/ad;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_2
    :goto_3
    const-string v0, ""

    goto :goto_1

    :catch_1
    move-exception v1

    sget-object v2, Lcom/smrtbeat/ad;->a:Lcom/smrtbeat/ad;

    const-string v3, "readResponse :%s"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/smrtbeat/aa;->a(Lcom/smrtbeat/ad;Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception v0

    sget-object v1, Lcom/smrtbeat/ad;->a:Lcom/smrtbeat/ad;

    const-string v2, "readResponse :%s"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/smrtbeat/aa;->a(Lcom/smrtbeat/ad;Ljava/lang/String;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_4
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_3
    :goto_5
    throw v0

    :catch_3
    move-exception v1

    sget-object v2, Lcom/smrtbeat/ad;->a:Lcom/smrtbeat/ad;

    const-string v3, "readResponse :%s"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/smrtbeat/aa;->a(Lcom/smrtbeat/ad;Ljava/lang/String;)V

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v3, v2

    goto :goto_4

    :catch_4
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :catch_5
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_2
.end method

.method static a(Landroid/app/Activity;)V
    .locals 1

    sget-object v0, Lcom/smrtbeat/g;->Q:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/smrtbeat/aa;->b(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method private static declared-synchronized a(Landroid/app/Activity;Z)V
    .locals 3

    const-class v1, Lcom/smrtbeat/aa;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_1

    sput-object v0, Lcom/smrtbeat/g;->Q:Ljava/lang/String;

    invoke-static {}, Lcom/smrtbeat/aa;->r()V

    :cond_0
    :goto_0
    invoke-static {}, Lcom/smrtbeat/aa;->i()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    sget-object v2, Lcom/smrtbeat/g;->Q:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    sput-object v0, Lcom/smrtbeat/g;->Q:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    :try_start_2
    sget-object v0, Lcom/smrtbeat/g;->K:Lcom/smrtbeat/e;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/smrtbeat/g;->L:Ljava/lang/Thread;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/smrtbeat/g;->L:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v2, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-ne v0, v2, :cond_4

    :cond_3
    new-instance v0, Lcom/smrtbeat/e;

    invoke-direct {v0}, Lcom/smrtbeat/e;-><init>()V

    sput-object v0, Lcom/smrtbeat/g;->K:Lcom/smrtbeat/e;

    new-instance v0, Ljava/lang/Thread;

    sget-object v2, Lcom/smrtbeat/g;->K:Lcom/smrtbeat/e;

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/smrtbeat/g;->L:Ljava/lang/Thread;

    sget-object v0, Lcom/smrtbeat/g;->L:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_4
    if-eqz p1, :cond_5

    sget-object v0, Lcom/smrtbeat/g;->K:Lcom/smrtbeat/e;

    invoke-virtual {v0, p0}, Lcom/smrtbeat/e;->a(Landroid/app/Activity;)V

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/smrtbeat/g;->K:Lcom/smrtbeat/e;

    invoke-virtual {v0, p0}, Lcom/smrtbeat/e;->b(Landroid/app/Activity;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method static a(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/smrtbeat/g;->l:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/smrtbeat/g;->o:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sput-object v0, Lcom/smrtbeat/g;->n:Ljava/lang/String;

    invoke-static {}, Lcom/smrtbeat/aa;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/smrtbeat/g;->z:Ljava/lang/String;

    const-string v0, "unknown"

    sput-object v0, Lcom/smrtbeat/g;->m:Ljava/lang/String;

    const-string v0, "unknown"

    sput-object v0, Lcom/smrtbeat/g;->r:Ljava/lang/String;

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/smrtbeat/g;->l:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v1, Lcom/smrtbeat/g;->m:Ljava/lang/String;

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/smrtbeat/g;->r:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v0, Lcom/smrtbeat/g;->s:Ljava/lang/String;

    invoke-static {}, Lcom/smrtbeat/aa;->q()Z

    move-result v0

    sput-boolean v0, Lcom/smrtbeat/g;->t:Z

    invoke-static {p0}, Lcom/smrtbeat/aa;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/smrtbeat/g;->p:Ljava/lang/String;

    invoke-static {p0}, Lcom/smrtbeat/aa;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/smrtbeat/g;->q:Ljava/lang/String;

    invoke-static {p0}, Lcom/smrtbeat/aa;->h(Landroid/content/Context;)V

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v0, Lcom/smrtbeat/g;->u:I

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v0, Lcom/smrtbeat/g;->v:I

    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v0, Lcom/smrtbeat/g;->w:I

    invoke-static {p0}, Lcom/smrtbeat/aa;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/smrtbeat/g;->y:Ljava/lang/String;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static a(Landroid/content/SharedPreferences$Editor;)V
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "com.smrtbeat.pref3"

    invoke-interface {p0, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method static a(Landroid/content/SharedPreferences$Editor;Z)V
    .locals 1

    const-string v0, "com.smrtbeat.pref1"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    sput-boolean p1, Lcom/smrtbeat/g;->ab:Z

    return-void
.end method

.method static a(Landroid/content/SharedPreferences;)V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "com.smrtbeat.pref1"

    invoke-static {p0, v0, v1}, Lcom/smrtbeat/aa;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/smrtbeat/g;->ab:Z

    const-string v0, "com.smrtbeat.pref5"

    invoke-static {p0, v0, v1}, Lcom/smrtbeat/aa;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/smrtbeat/g;->ac:Z

    return-void
.end method

.method static a(Lcom/smrtbeat/ad;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/smrtbeat/g;->F:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smrtbeat/g;->F:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/smrtbeat/aa;->o()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/smrtbeat/ad;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object v0, Lcom/smrtbeat/g;->F:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/smrtbeat/g;->F:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/smrtbeat/g;->F:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/smrtbeat/g;->F:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/smrtbeat/g;->F:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method static a(Lcom/smrtbeat/ad;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    sget-object v0, Lcom/smrtbeat/g;->F:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smrtbeat/g;->F:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/smrtbeat/aa;->o()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/smrtbeat/ad;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object v0, Lcom/smrtbeat/g;->F:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/smrtbeat/g;->F:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/smrtbeat/g;->F:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/smrtbeat/g;->F:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/smrtbeat/g;->F:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method static a(Lcom/smrtbeat/h;Landroid/graphics/Bitmap;)V
    .locals 2

    invoke-static {}, Lcom/smrtbeat/aa;->p()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/smrtbeat/h;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    sget-object v0, Lcom/smrtbeat/g;->S:Landroid/graphics/Bitmap;

    if-eq v0, p1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/smrtbeat/g;->R:Landroid/graphics/Bitmap;

    if-eq v0, p1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static declared-synchronized a(Lcom/smrtbeat/h;Landroid/graphics/Bitmap;J)V
    .locals 4

    const-class v1, Lcom/smrtbeat/aa;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/smrtbeat/g;->Z:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    if-eqz p1, :cond_0

    :try_start_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/smrtbeat/aa;->p()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/smrtbeat/h;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    :goto_1
    sput-object p0, Lcom/smrtbeat/g;->U:Lcom/smrtbeat/h;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :pswitch_0
    :try_start_2
    sget-object v0, Lcom/smrtbeat/g;->S:Landroid/graphics/Bitmap;

    if-eq v0, p1, :cond_3

    sget-object v0, Lcom/smrtbeat/g;->S:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/smrtbeat/g;->S:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    sput-object p1, Lcom/smrtbeat/g;->S:Landroid/graphics/Bitmap;

    :cond_3
    sput-wide p2, Lcom/smrtbeat/g;->T:J

    sget-object v0, Lcom/smrtbeat/ad;->d:Lcom/smrtbeat/ad;

    const-string v2, "save screen capture (gl)"

    invoke-static {v0, v2}, Lcom/smrtbeat/aa;->a(Lcom/smrtbeat/ad;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    sget-object v0, Lcom/smrtbeat/g;->R:Landroid/graphics/Bitmap;

    if-eq v0, p1, :cond_5

    sget-object v0, Lcom/smrtbeat/g;->R:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/smrtbeat/g;->R:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    sput-object p1, Lcom/smrtbeat/g;->R:Landroid/graphics/Bitmap;

    :cond_5
    sput-wide p2, Lcom/smrtbeat/g;->T:J

    sget-object v0, Lcom/smrtbeat/ad;->d:Lcom/smrtbeat/ad;

    const-string v2, "save screen capture"

    invoke-static {v0, v2}, Lcom/smrtbeat/aa;->a(Lcom/smrtbeat/ad;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static declared-synchronized a(Ljava/lang/String;)V
    .locals 3

    const-class v1, Lcom/smrtbeat/aa;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/smrtbeat/g;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0x10

    if-lt v0, v2, :cond_0

    sget-object v0, Lcom/smrtbeat/g;->D:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    sget-object v0, Lcom/smrtbeat/g;->D:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-class v1, Lcom/smrtbeat/aa;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/smrtbeat/g;->E:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/smrtbeat/g;->E:Ljava/util/HashMap;

    :cond_0
    sget-object v0, Lcom/smrtbeat/g;->E:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static a(Z)V
    .locals 0

    sput-boolean p0, Lcom/smrtbeat/g;->aa:Z

    return-void
.end method

.method private static a(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z
    .locals 1

    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    :goto_0
    return p2

    :catch_0
    move-exception v0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/smrtbeat/aa;->d(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0
.end method

.method static a(Ljava/io/File;Ljava/io/File;)Z
    .locals 9

    const/4 v2, 0x0

    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v7}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_16
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_12
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    :try_start_2
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_17
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_13
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_18
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_14
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-object v6

    const-wide/16 v2, 0x0

    :try_start_4
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_19
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_15
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-eqz v1, :cond_0

    :try_start_5
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_e

    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    :try_start_6
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_f

    :cond_1
    :goto_1
    if-eqz v7, :cond_2

    :try_start_7
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_10

    :cond_2
    :goto_2
    if-eqz v0, :cond_3

    :try_start_8
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_11

    :cond_3
    :goto_3
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_4
    return v0

    :catch_0
    move-exception v0

    move-object v0, v2

    move-object v6, v2

    move-object v1, v2

    :goto_4
    if-eqz v1, :cond_5

    :try_start_9
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    :cond_5
    :goto_5
    if-eqz v6, :cond_6

    :try_start_a
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    :cond_6
    :goto_6
    if-eqz v2, :cond_7

    :try_start_b
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    :cond_7
    :goto_7
    if-eqz v0, :cond_3

    :try_start_c
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v7, v2

    move-object v6, v2

    move-object v1, v2

    :goto_8
    if-eqz v1, :cond_8

    :try_start_d
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    :cond_8
    :goto_9
    if-eqz v6, :cond_9

    :try_start_e
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    :cond_9
    :goto_a
    if-eqz v7, :cond_a

    :try_start_f
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    :cond_a
    :goto_b
    if-eqz v2, :cond_3

    :try_start_10
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v7, v2

    move-object v6, v2

    move-object v1, v2

    :goto_c
    if-eqz v1, :cond_b

    :try_start_11
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_a

    :cond_b
    :goto_d
    if-eqz v6, :cond_c

    :try_start_12
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_b

    :cond_c
    :goto_e
    if-eqz v7, :cond_d

    :try_start_13
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_c

    :cond_d
    :goto_f
    if-eqz v2, :cond_e

    :try_start_14
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_d

    :cond_e
    :goto_10
    throw v0

    :catch_4
    move-exception v1

    goto :goto_5

    :catch_5
    move-exception v1

    goto :goto_6

    :catch_6
    move-exception v1

    goto :goto_7

    :catch_7
    move-exception v0

    goto :goto_9

    :catch_8
    move-exception v0

    goto :goto_a

    :catch_9
    move-exception v0

    goto :goto_b

    :catch_a
    move-exception v1

    goto :goto_d

    :catch_b
    move-exception v1

    goto :goto_e

    :catch_c
    move-exception v1

    goto :goto_f

    :catch_d
    move-exception v1

    goto :goto_10

    :catch_e
    move-exception v1

    goto :goto_0

    :catch_f
    move-exception v1

    goto :goto_1

    :catch_10
    move-exception v1

    goto :goto_2

    :catch_11
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v6, v2

    move-object v1, v2

    goto :goto_c

    :catchall_2
    move-exception v0

    move-object v6, v2

    goto :goto_c

    :catchall_3
    move-exception v3

    move-object v6, v2

    move-object v2, v0

    move-object v0, v3

    goto :goto_c

    :catchall_4
    move-exception v2

    move-object v8, v2

    move-object v2, v0

    move-object v0, v8

    goto :goto_c

    :catch_12
    move-exception v0

    move-object v6, v2

    move-object v1, v2

    goto :goto_8

    :catch_13
    move-exception v0

    move-object v6, v2

    goto :goto_8

    :catch_14
    move-exception v3

    move-object v6, v2

    move-object v2, v0

    goto :goto_8

    :catch_15
    move-exception v2

    move-object v2, v0

    goto :goto_8

    :catch_16
    move-exception v0

    move-object v0, v2

    move-object v6, v2

    move-object v1, v2

    move-object v2, v7

    goto/16 :goto_4

    :catch_17
    move-exception v0

    move-object v0, v2

    move-object v6, v2

    move-object v2, v7

    goto/16 :goto_4

    :catch_18
    move-exception v3

    move-object v6, v2

    move-object v2, v7

    goto/16 :goto_4

    :catch_19
    move-exception v2

    move-object v2, v7

    goto/16 :goto_4
.end method

.method static b(Landroid/content/SharedPreferences;)J
    .locals 4

    const-string v0, "com.smrtbeat.pref3"

    const-wide/16 v2, 0x0

    invoke-static {p0, v0, v2, v3}, Lcom/smrtbeat/aa;->a(Landroid/content/SharedPreferences;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static b()Ljava/lang/String;
    .locals 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    invoke-static {p0}, Lcom/smrtbeat/ProxyClassApiLess23;->getMobileNetworkStatus(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/smrtbeat/L;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static b(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/smrtbeat/aa;->a(Landroid/app/Activity;Z)V

    invoke-static {}, Lcom/smrtbeat/i;->a()V

    invoke-static {}, Lcom/smrtbeat/i;->c()V

    invoke-static {}, Lcom/smrtbeat/i;->b()V

    return-void
.end method

.method static b(Landroid/content/SharedPreferences$Editor;)V
    .locals 3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-string v2, "com.smrtbeat.pref6"

    invoke-interface {p0, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method static b(Landroid/content/SharedPreferences$Editor;Z)V
    .locals 1

    const-string v0, "com.smrtbeat.pref5"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    sput-boolean p1, Lcom/smrtbeat/g;->ac:Z

    return-void
.end method

.method static c(Landroid/content/SharedPreferences;)J
    .locals 4

    const-string v0, "com.smrtbeat.pref6"

    const-wide/16 v2, 0x0

    invoke-static {p0, v0, v2, v3}, Lcom/smrtbeat/aa;->a(Landroid/content/SharedPreferences;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static c()Ljava/lang/String;
    .locals 8

    const/4 v2, 0x0

    sget-object v0, Lcom/smrtbeat/g;->H:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "logcat -d "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v0, 0x2000

    invoke-direct {v1, v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {v6}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "no permission (android.permission.READ_LOGS)"

    :goto_1
    return-object v0

    :cond_0
    :try_start_1
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "error to read logcat(%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit16 v0, v0, -0x1f4

    if-gez v0, :cond_4

    move v1, v2

    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    move v4, v2

    :goto_3
    if-ltz v3, :cond_2

    if-ge v3, v1, :cond_3

    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    array-length v7, v7

    add-int/lit8 v7, v7, 0x2

    add-int/2addr v4, v7

    const v7, 0x8000

    if-gt v4, v7, :cond_2

    const-string v7, "\n"

    invoke-virtual {v5, v2, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_3

    :cond_4
    move v1, v0

    goto :goto_2
.end method

.method static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    invoke-static {p0}, Lcom/smrtbeat/ProxyClassApiLess23;->getWifiStatus(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/smrtbeat/L;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static c(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/smrtbeat/aa;->a(Landroid/app/Activity;Z)V

    return-void
.end method

.method static c(Landroid/content/SharedPreferences$Editor;)V
    .locals 4

    const-string v0, "com.smrtbeat.pref4"

    const-wide/32 v2, 0x5265c00

    invoke-interface {p0, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method static d(Landroid/content/SharedPreferences;)J
    .locals 7

    const-wide/32 v0, 0x2932e000

    const-wide/32 v2, 0x5265c00

    const-string v4, "com.smrtbeat.pref4"

    invoke-static {p0, v4, v2, v3}, Lcom/smrtbeat/aa;->a(Landroid/content/SharedPreferences;Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-gez v6, :cond_1

    :goto_0
    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    :goto_1
    return-wide v0

    :cond_0
    move-wide v0, v2

    goto :goto_1

    :cond_1
    move-wide v2, v4

    goto :goto_0
.end method

.method static d()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/smrtbeat/g;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ro.board.platform"

    invoke-static {v0, v1}, Lcom/smrtbeat/aa;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unknown:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "ROTATION_0"

    goto :goto_0

    :pswitch_1
    const-string v0, "ROTATION_90"

    goto :goto_0

    :pswitch_2
    const-string v0, "ROTATION_180"

    goto :goto_0

    :pswitch_3
    const-string v0, "ROTATION_270"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static d(Landroid/content/SharedPreferences$Editor;)V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Lcom/smrtbeat/M;->a(Landroid/content/SharedPreferences$Editor;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/smrtbeat/ac;

    invoke-direct {v1}, Lcom/smrtbeat/ac;-><init>()V

    invoke-virtual {v1, p0}, Lcom/smrtbeat/ac;->a(Landroid/content/SharedPreferences$Editor;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-virtual {v0, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static e(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    const-string v0, "com.smrtbeat"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static e()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    return-object v0
.end method

.method static e(Landroid/content/SharedPreferences;)V
    .locals 8

    const-wide/32 v0, 0x2932e000

    const-wide/32 v2, 0x5265c00

    invoke-static {p0}, Lcom/smrtbeat/aa;->d(Landroid/content/SharedPreferences;)J

    move-result-wide v4

    const-wide/16 v6, 0x2

    mul-long/2addr v4, v6

    cmp-long v6, v4, v2

    if-gez v6, :cond_1

    :goto_0
    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    :goto_1
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "com.smrtbeat.pref4"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-static {v2}, Lcom/smrtbeat/aa;->d(Landroid/content/SharedPreferences$Editor;)V

    return-void

    :cond_0
    move-wide v0, v2

    goto :goto_1

    :cond_1
    move-wide v2, v4

    goto :goto_0
.end method

.method static f()Ljava/lang/String;
    .locals 6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_4

    invoke-static {}, Lcom/smrtbeat/K;->a()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_1

    :cond_0
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_2

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_3

    const-string v5, " / "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/smrtbeat/N;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/smrtbeat/N;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "SmartBeat"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v0, "uuid"

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "uuid"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {v1}, Lcom/smrtbeat/aa;->d(Landroid/content/SharedPreferences$Editor;)V

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "android:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/smrtbeat/g;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static g(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "SmartBeat"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "idv2"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method static g()Z
    .locals 1

    sget-boolean v0, Lcom/smrtbeat/g;->aa:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/smrtbeat/g;->ab:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static h(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/smrtbeat/ab;

    invoke-direct {v1, p0}, Lcom/smrtbeat/ab;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static h()Z
    .locals 1

    sget-boolean v0, Lcom/smrtbeat/g;->ab:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static i(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "SmartBeat"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static i()Z
    .locals 1

    invoke-static {}, Lcom/smrtbeat/aa;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/smrtbeat/g;->ac:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/smrtbeat/g;->M:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static j()Z
    .locals 1

    invoke-static {}, Lcom/smrtbeat/aa;->k()Z

    move-result v0

    return v0
.end method

.method static k()Z
    .locals 1

    invoke-static {}, Lcom/smrtbeat/aa;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/smrtbeat/g;->ac:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static l()Ljava/io/File;
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/smrtbeat/aa;->p()[I

    move-result-object v1

    sget-object v2, Lcom/smrtbeat/g;->U:Lcom/smrtbeat/h;

    invoke-virtual {v2}, Lcom/smrtbeat/h;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-object v0

    :pswitch_0
    sget-object v1, Lcom/smrtbeat/g;->S:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    sget-object v0, Lcom/smrtbeat/g;->z:Ljava/lang/String;

    sget-wide v2, Lcom/smrtbeat/g;->T:J

    const-string v1, ".jpg"

    invoke-static {v0, v2, v3, v1}, Lcom/smrtbeat/R;->b(Ljava/lang/String;JLjava/lang/String;)Ljava/io/File;

    move-result-object v0

    sget-object v1, Lcom/smrtbeat/g;->S:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/smrtbeat/R;->a(Ljava/io/File;Landroid/graphics/Bitmap;)Z

    goto :goto_0

    :pswitch_1
    sget-object v1, Lcom/smrtbeat/g;->R:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    sget-object v0, Lcom/smrtbeat/g;->z:Ljava/lang/String;

    sget-wide v2, Lcom/smrtbeat/g;->T:J

    const-string v1, ".jpg"

    invoke-static {v0, v2, v3, v1}, Lcom/smrtbeat/R;->b(Ljava/lang/String;JLjava/lang/String;)Ljava/io/File;

    move-result-object v0

    sget-object v1, Lcom/smrtbeat/g;->R:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/smrtbeat/R;->a(Ljava/io/File;Landroid/graphics/Bitmap;)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static m()Z
    .locals 1

    sget-object v0, Lcom/smrtbeat/g;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static n()Z
    .locals 3

    const/4 v0, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    invoke-static {}, Lcom/smrtbeat/L;->a()I

    move-result v1

    :goto_0
    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method static synthetic o()[I
    .locals 3

    sget-object v0, Lcom/smrtbeat/aa;->i:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/smrtbeat/ad;->values()[Lcom/smrtbeat/ad;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/smrtbeat/ad;->d:Lcom/smrtbeat/ad;

    invoke-virtual {v1}, Lcom/smrtbeat/ad;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lcom/smrtbeat/ad;->a:Lcom/smrtbeat/ad;

    invoke-virtual {v1}, Lcom/smrtbeat/ad;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lcom/smrtbeat/ad;->c:Lcom/smrtbeat/ad;

    invoke-virtual {v1}, Lcom/smrtbeat/ad;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lcom/smrtbeat/ad;->e:Lcom/smrtbeat/ad;

    invoke-virtual {v1}, Lcom/smrtbeat/ad;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lcom/smrtbeat/ad;->b:Lcom/smrtbeat/ad;

    invoke-virtual {v1}, Lcom/smrtbeat/ad;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lcom/smrtbeat/aa;->i:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method static synthetic p()[I
    .locals 3

    sget-object v0, Lcom/smrtbeat/aa;->j:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/smrtbeat/h;->values()[Lcom/smrtbeat/h;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/smrtbeat/h;->c:Lcom/smrtbeat/h;

    invoke-virtual {v1}, Lcom/smrtbeat/h;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/smrtbeat/h;->b:Lcom/smrtbeat/h;

    invoke-virtual {v1}, Lcom/smrtbeat/h;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/smrtbeat/h;->a:Lcom/smrtbeat/h;

    invoke-virtual {v1}, Lcom/smrtbeat/h;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/smrtbeat/aa;->j:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method private static q()Z
    .locals 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/16 v0, 0x8

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "/sbin/"

    aput-object v0, v3, v1

    const-string v0, "/system/bin/"

    aput-object v0, v3, v2

    const/4 v0, 0x2

    const-string v4, "/system/xbin/"

    aput-object v4, v3, v0

    const/4 v0, 0x3

    const-string v4, "/data/local/xbin/"

    aput-object v4, v3, v0

    const/4 v0, 0x4

    const-string v4, "/data/local/bin/"

    aput-object v4, v3, v0

    const/4 v0, 0x5

    const-string v4, "/system/sd/xbin/"

    aput-object v4, v3, v0

    const/4 v0, 0x6

    const-string v4, "/system/bin/failsafe/"

    aput-object v4, v3, v0

    const/4 v0, 0x7

    const-string v4, "/data/local/"

    aput-object v4, v3, v0

    move v0, v1

    :goto_0
    array-length v4, v3

    if-lt v0, v4, :cond_0

    :goto_1
    return v1

    :cond_0
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v3, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "su"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static r()V
    .locals 3

    sget-object v1, Lcom/smrtbeat/g;->Q:Ljava/lang/String;

    sget-object v0, Lcom/smrtbeat/g;->O:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/smrtbeat/g;->V:Z

    :goto_0
    return-void

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/smrtbeat/g;->V:Z

    goto :goto_0
.end method
