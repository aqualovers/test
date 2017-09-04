.class public final Ljp/co/cyberz/fox/a/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljp/co/dimage/android/e;


# static fields
.field public static a:Ljava/util/List;

.field protected static b:Ljava/lang/String;

.field protected static c:Ljava/lang/String;

.field protected static d:Ljava/lang/String;

.field protected static e:Ljava/lang/String;

.field protected static f:Ljava/lang/String;

.field protected static g:Ljava/lang/String;

.field protected static h:Ljava/lang/String;

.field protected static i:Ljava/lang/String;

.field protected static j:Ljava/lang/String;

.field protected static k:Ljava/lang/String;

.field public static l:Ljava/lang/String;

.field public static m:J

.field private static p:Ljp/co/cyberz/fox/a/a/d;

.field private static q:I

.field private static u:Ljava/io/File;

.field private static v:Z

.field private static w:Lorg/json/JSONObject;


# instance fields
.field private r:I

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    sput-object v3, Ljp/co/cyberz/fox/a/a/d;->p:Ljp/co/cyberz/fox/a/a/d;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Ljp/co/cyberz/fox/a/a/d;->a:Ljava/util/List;

    sput v2, Ljp/co/cyberz/fox/a/a/d;->q:I

    const-string v0, ""

    sput-object v0, Ljp/co/cyberz/fox/a/a/d;->c:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Ljp/co/cyberz/fox/a/a/d;->d:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Ljp/co/cyberz/fox/a/a/d;->e:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Ljp/co/cyberz/fox/a/a/d;->f:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Ljp/co/cyberz/fox/a/a/d;->g:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Ljp/co/cyberz/fox/a/a/d;->h:Ljava/lang/String;

    const-string v0, "http://analytics.app-adforce.jp/fax/analytics"

    sput-object v0, Ljp/co/cyberz/fox/a/a/d;->i:Ljava/lang/String;

    const-string v0, "1"

    sput-object v0, Ljp/co/cyberz/fox/a/a/d;->j:Ljava/lang/String;

    const-string v0, "0"

    sput-object v0, Ljp/co/cyberz/fox/a/a/d;->k:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Ljp/co/cyberz/fox/a/a/d;->l:Ljava/lang/String;

    const-wide/16 v0, 0x0

    sput-wide v0, Ljp/co/cyberz/fox/a/a/d;->m:J

    sput-boolean v2, Ljp/co/cyberz/fox/a/a/d;->v:Z

    sput-object v3, Ljp/co/cyberz/fox/a/a/d;->w:Lorg/json/JSONObject;

    return-void
.end method

.method private constructor <init>(Ljp/appAdForce/android/AdManager;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ljp/co/cyberz/fox/a/a/d;->r:I

    invoke-virtual {p1}, Ljp/appAdForce/android/AdManager;->a()Ljp/co/dimage/android/c;

    move-result-object v0

    invoke-virtual {v0}, Ljp/co/dimage/android/c;->o()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Ljp/co/cyberz/fox/a/a/d;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljp/co/dimage/android/c;->n()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Ljp/co/cyberz/fox/a/a/d;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljp/co/dimage/android/c;->v()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Ljp/co/cyberz/fox/a/a/d;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljp/co/dimage/android/c;->l()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Ljp/co/cyberz/fox/a/a/d;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljp/co/dimage/android/c;->j()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Ljp/co/cyberz/fox/a/a/d;->l:Ljava/lang/String;

    invoke-virtual {v0}, Ljp/co/dimage/android/c;->k()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    sput-object v2, Ljp/co/cyberz/fox/a/a/d;->u:Ljava/io/File;

    const-string v2, "3.3.0"

    sput-object v2, Ljp/co/cyberz/fox/a/a/d;->h:Ljava/lang/String;

    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-nez v2, :cond_0

    const-string v3, "F.O.X-ANALYTICS"

    const-string v4, "ApplicationInfo is null."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v3, "APPADFORCE_APP_ID"

    invoke-static {v2, v3}, Ljp/co/cyberz/fox/a/a/d;->a(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Ljp/co/cyberz/fox/a/a/d;->c:Ljava/lang/String;

    const-string v3, "ANALYTICS_APP_KEY"

    invoke-static {v2, v3}, Ljp/co/cyberz/fox/a/a/d;->a(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Ljp/co/cyberz/fox/a/a/d;->d:Ljava/lang/String;

    const-string v3, "ANALYTICS_SERVER_URL"

    invoke-static {v2, v3}, Ljp/co/cyberz/fox/a/a/d;->a(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    sput-object v3, Ljp/co/cyberz/fox/a/a/d;->i:Ljava/lang/String;

    :try_start_1
    sget-object v3, Ljp/co/cyberz/fox/a/a/d;->i:Ljava/lang/String;

    invoke-static {v3}, Ljp/co/cyberz/fox/a/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Ljp/co/cyberz/fox/a/a/d;->i:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_0
    :try_start_2
    const-string v3, "ANALYTICS_QUEUE_INTERVAL"

    invoke-static {v2, v3}, Ljp/co/cyberz/fox/a/a/d;->a(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Ljp/co/cyberz/fox/a/a/d;->r:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    const-string v3, "ANALYTICS_ENCRYPT"

    invoke-static {v2, v3}, Ljp/co/cyberz/fox/a/a/d;->a(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    sput-object v3, Ljp/co/cyberz/fox/a/a/d;->j:Ljava/lang/String;

    :cond_2
    const-string v3, "ANALYTICS_DEBUG"

    invoke-static {v2, v3}, Ljp/co/cyberz/fox/a/a/d;->a(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    sput-object v2, Ljp/co/cyberz/fox/a/a/d;->k:Ljava/lang/String;

    :cond_3
    const-string v2, "F.O.X-ANALYTICS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "APP ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljp/co/cyberz/fox/a/a/d;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "F.O.X-ANALYTICS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "debug mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljp/co/cyberz/fox/a/a/d;->k:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Ljp/co/dimage/android/l;->a(Landroid/content/Context;)Ljava/lang/String;

    sget-object v2, Ljp/co/dimage/android/c$a;->c:Ljp/co/dimage/android/c$a;

    invoke-virtual {v0}, Ljp/co/dimage/android/c;->w()Ljp/co/dimage/android/c$a;

    move-result-object v0

    if-ne v2, v0, :cond_4

    const/4 v0, 0x0

    invoke-static {v1, v0}, Ljp/co/dimage/android/b;->a(Landroid/content/Context;Ljp/co/dimage/android/b$a;)V

    :cond_4
    invoke-static {}, Ljp/co/cyberz/fox/a/a/d;->k()V

    :goto_2
    return-void

    :catch_0
    move-exception v0

    const-string v1, "F.O.X-ANALYTICS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadApplicationInfo faild. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_1
    move-exception v3

    const-string v3, "F.O.X-ANALYTICS"

    const-string v4, "server url is broken"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_2
    move-exception v3

    goto/16 :goto_1
.end method

.method private static a(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Ljp/co/cyberz/fox/a/a/d;Ljava/util/List;)Ljava/util/List;
    .locals 1

    invoke-direct {p0, p1}, Ljp/co/cyberz/fox/a/a/d;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljp/co/cyberz/fox/a/a/a;
    .locals 1

    new-instance v0, Ljp/co/cyberz/fox/a/a/a;

    invoke-direct {v0}, Ljp/co/cyberz/fox/a/a/a;-><init>()V

    invoke-virtual {v0, p0}, Ljp/co/cyberz/fox/a/a/a;->l(Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Ljp/appAdForce/android/AdManager;)Ljp/co/cyberz/fox/a/a/d;
    .locals 1

    sget-object v0, Ljp/co/cyberz/fox/a/a/d;->p:Ljp/co/cyberz/fox/a/a/d;

    if-nez v0, :cond_0

    new-instance v0, Ljp/co/cyberz/fox/a/a/d;

    invoke-direct {v0, p0}, Ljp/co/cyberz/fox/a/a/d;-><init>(Ljp/appAdForce/android/AdManager;)V

    sput-object v0, Ljp/co/cyberz/fox/a/a/d;->p:Ljp/co/cyberz/fox/a/a/d;

    :cond_0
    sget-object v0, Ljp/co/cyberz/fox/a/a/d;->p:Ljp/co/cyberz/fox/a/a/d;

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljp/co/cyberz/fox/a/a/a;)V
    .locals 7

    const/4 v4, 0x1

    const/4 v2, 0x0

    const-string v0, "4"

    invoke-static {p1}, Ljp/co/cyberz/fox/a/a/d;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljp/co/dimage/android/k;

    invoke-direct {v0, p1}, Ljp/co/dimage/android/k;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    new-instance v6, Ljp/co/cyberz/fox/a/a/d$1;

    invoke-direct {v6, p0, p2}, Ljp/co/cyberz/fox/a/a/d$1;-><init>(Ljp/co/cyberz/fox/a/a/d;Ljp/co/cyberz/fox/a/a/a;)V

    move v3, v2

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Ljp/co/dimage/android/k;->a(Ljava/lang/Integer;ZZZZLjp/co/dimage/android/k$c;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p2}, Ljp/co/cyberz/fox/a/a/d;->a(Ljp/co/cyberz/fox/a/a/a;)V

    goto :goto_0
.end method

.method public static a(Ljava/util/List;)V
    .locals 3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/co/cyberz/fox/a/a/a;

    invoke-virtual {v0}, Ljp/co/cyberz/fox/a/a/a;->a()V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object v0, Ljp/co/cyberz/fox/a/a/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/co/cyberz/fox/a/a/a;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    sput-object v1, Ljp/co/cyberz/fox/a/a/d;->a:Ljava/util/List;

    invoke-static {}, Ljp/co/cyberz/fox/a/a/d;->d()V

    return-void
.end method

.method private a(Ljp/co/cyberz/fox/a/a/a;)V
    .locals 2

    sget v0, Ljp/co/cyberz/fox/a/a/d;->q:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Ljp/co/cyberz/fox/a/a/d;->q:I

    sget v0, Ljp/co/cyberz/fox/a/a/d;->q:I

    invoke-virtual {p1, v0}, Ljp/co/cyberz/fox/a/a/a;->a(I)V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljp/co/cyberz/fox/a/a/a;->i(Ljava/lang/String;)V

    sget-object v0, Ljp/co/cyberz/fox/a/a/d;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p0, Ljp/co/cyberz/fox/a/a/d;->r:I

    if-gtz v0, :cond_0

    invoke-direct {p0}, Ljp/co/cyberz/fox/a/a/d;->j()V

    :goto_0
    invoke-static {}, Ljp/co/cyberz/fox/a/a/d;->d()V

    return-void

    :cond_0
    invoke-direct {p0}, Ljp/co/cyberz/fox/a/a/d;->j()V

    goto :goto_0
.end method

.method static synthetic a(Ljp/co/cyberz/fox/a/a/d;Ljp/co/cyberz/fox/a/a/a;)V
    .locals 0

    invoke-direct {p0, p1}, Ljp/co/cyberz/fox/a/a/d;->a(Ljp/co/cyberz/fox/a/a/a;)V

    return-void
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 7

    const-class v2, Ljp/co/cyberz/fox/a/a/d;

    monitor-enter v2

    :try_start_0
    const-string v1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    :try_start_1
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    const-string v4, "__ADMAGE_RANDOM_DEVICE_ID__"

    invoke-virtual {p0, v4}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :try_start_2
    invoke-virtual {v3, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string v4, "random_device_id"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v1

    if-eqz v0, :cond_0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    :try_start_4
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v0

    :goto_1
    monitor-exit v2

    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v3

    if-eqz v0, :cond_2

    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_2
    move-object v0, v1

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_3
    move-exception v3

    if-eqz v0, :cond_3

    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_3
    move-object v0, v1

    goto :goto_0

    :catch_4
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_2
    if-eqz v1, :cond_4

    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_4
    :goto_3
    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_5
    const/4 v0, 0x1

    :try_start_9
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-result-object v0

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_3

    :catchall_2
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_2
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {p1}, Ljp/co/cyberz/fox/a/a/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljp/co/cyberz/fox/a/a/d;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljp/co/cyberz/fox/a/a/e$a;->a:Ljp/co/cyberz/fox/a/a/e$a;

    invoke-static {p1, v0}, Ljp/co/cyberz/fox/a/a/e;->a(Ljava/lang/String;Ljp/co/cyberz/fox/a/a/e$a;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    :cond_0
    :goto_0
    return-object p1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private b(Ljava/util/List;)Ljava/util/List;
    .locals 5

    invoke-direct {p0, p1}, Ljp/co/cyberz/fox/a/a/d;->c(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljp/co/cyberz/fox/a/a/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "v"

    sget-object v4, Ljp/co/cyberz/fox/a/a/d;->h:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "p"

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "e"

    sget-object v3, Ljp/co/cyberz/fox/a/a/d;->j:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "d"

    sget-object v3, Ljp/co/cyberz/fox/a/a/d;->k:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "o"

    const-string v3, "2"

    invoke-direct {v0, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public static b()V
    .locals 0

    invoke-static {}, Ljp/co/cyberz/fox/a/a/d;->d()V

    return-void
.end method

.method public static c()Ljava/lang/String;
    .locals 4

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v0, Ljp/co/cyberz/fox/a/a/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    sget-object v0, Ljp/co/cyberz/fox/a/a/d;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/co/cyberz/fox/a/a/a;

    invoke-virtual {v0}, Ljp/co/cyberz/fox/a/a/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized c(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    const-class v2, Ljp/co/cyberz/fox/a/a/d;

    monitor-enter v2

    :try_start_0
    const-string v1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    :try_start_1
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    const-string v4, "__ADMAGE_RANDOM_DEVICE_ID__"

    invoke-virtual {p0, v4}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :try_start_2
    invoke-virtual {v3, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string v4, "random_device_id_type"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v1

    if-eqz v0, :cond_0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    :try_start_4
    const-string v0, ""
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_1
    monitor-exit v2

    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v3

    if-eqz v0, :cond_2

    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_2
    move-object v0, v1

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_3
    move-exception v3

    if-eqz v0, :cond_3

    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_3
    move-object v0, v1

    goto :goto_0

    :catch_4
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_1
    if-eqz v1, :cond_4

    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_4
    :goto_2
    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0

    :catch_5
    move-exception v1

    goto :goto_2

    :catchall_2
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_1
.end method

.method private c(Ljava/util/List;)Ljava/lang/String;
    .locals 4

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/co/cyberz/fox/a/a/a;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljp/co/cyberz/fox/a/a/a;->h(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {v0}, Ljp/co/cyberz/fox/a/a/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-static {}, Ljp/co/cyberz/fox/a/a/d;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "F.O.X-ANALYTICS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QUE is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d()V
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    sget-object v0, Ljp/co/cyberz/fox/a/a/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    sget-object v3, Ljp/co/cyberz/fox/a/a/d;->u:Ljava/io/File;

    const-string v4, "__e.fox"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Ljp/co/cyberz/fox/a/a/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    move-object v0, v1

    :try_start_3
    invoke-static {}, Ljp/co/cyberz/fox/a/a/d;->e()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_2
    :try_start_4
    const-string v1, "F.O.X-ANALYTICS"

    const-string v2, "Queue save failed. file \'__e.fox\' not found."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v0, :cond_0

    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v0

    :goto_3
    :try_start_6
    const-string v0, "F.O.X-ANALYTICS"

    const-string v2, "Queue save failed. IOException"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v1, :cond_0

    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_1

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v1, :cond_2

    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :cond_2
    :goto_5
    throw v0

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_4

    :catch_6
    move-exception v1

    move-object v1, v0

    goto :goto_3

    :catch_7
    move-exception v1

    goto :goto_2
.end method

.method public static e()V
    .locals 3

    new-instance v0, Ljava/io/File;

    sget-object v1, Ljp/co/cyberz/fox/a/a/d;->u:Ljava/io/File;

    const-string v2, "__e.fox"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method public static f()Z
    .locals 2

    const-string v0, "1"

    sget-object v1, Ljp/co/cyberz/fox/a/a/d;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static g()Z
    .locals 2

    const-string v0, "1"

    sget-object v1, Ljp/co/cyberz/fox/a/a/d;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static h()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Ljp/co/cyberz/fox/a/a/d;->v:Z

    return-void
.end method

.method public static i()Z
    .locals 1

    sget-boolean v0, Ljp/co/cyberz/fox/a/a/d;->v:Z

    return v0
.end method

.method private j()V
    .locals 5

    sget-object v0, Ljp/co/cyberz/fox/a/a/d;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    sget-object v0, Ljp/co/cyberz/fox/a/a/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Ljp/co/cyberz/fox/a/a/d;->w:Lorg/json/JSONObject;

    if-eqz v0, :cond_2

    :cond_1
    sget-object v0, Ljp/co/cyberz/fox/a/a/d;->a:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Ljp/co/cyberz/fox/a/a/d;->a:Ljava/util/List;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-gt v1, v2, :cond_3

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Ljp/co/cyberz/fox/a/a/d$2;

    invoke-direct {v2, p0, v0}, Ljp/co/cyberz/fox/a/a/d$2;-><init>(Ljp/co/cyberz/fox/a/a/d;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    new-instance v1, Ljp/co/cyberz/fox/a/a/b;

    invoke-direct {p0, v0}, Ljp/co/cyberz/fox/a/a/d;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljp/co/cyberz/fox/a/a/b;-><init>(Ljava/util/List;Ljava/util/List;)V

    new-instance v0, Ljp/co/cyberz/fox/a/a/c;

    invoke-direct {v0}, Ljp/co/cyberz/fox/a/a/c;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    sget-object v4, Ljp/co/cyberz/fox/a/a/d;->i:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljp/co/cyberz/fox/a/a/c;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static k()V
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v2, Ljp/co/cyberz/fox/a/a/d;->u:Ljava/io/File;

    const-string v3, "__e.fox"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v2, Ljava/io/FileReader;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {v3}, Ljp/co/cyberz/fox/a/a/d;->a(Ljava/lang/String;)Ljp/co/cyberz/fox/a/a/a;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Ljp/co/cyberz/fox/a/a/d;->a:Ljava/util/List;

    sget-object v0, Ljp/co/cyberz/fox/a/a/d;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 1

    sget-object v0, Ljp/co/cyberz/fox/a/a/d;->w:Lorg/json/JSONObject;

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Ljp/co/cyberz/fox/a/a/d;->m:J

    new-instance v0, Ljp/co/cyberz/fox/a/a/a;

    invoke-direct {v0}, Ljp/co/cyberz/fox/a/a/a;-><init>()V

    sget-object v1, Ljp/co/cyberz/fox/a/a/a$a;->b:Ljp/co/cyberz/fox/a/a/a$a;

    invoke-virtual {v0, v1}, Ljp/co/cyberz/fox/a/a/a;->a(Ljp/co/cyberz/fox/a/a/a$a;)V

    iget-object v1, p0, Ljp/co/cyberz/fox/a/a/d;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljp/co/cyberz/fox/a/a/a;->j(Ljava/lang/String;)V

    iget-object v1, p0, Ljp/co/cyberz/fox/a/a/d;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljp/co/cyberz/fox/a/a/a;->k(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljp/co/cyberz/fox/a/a/d;->a()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljp/co/cyberz/fox/a/a/a;->b(Lorg/json/JSONObject;)V

    invoke-direct {p0, p1, v0}, Ljp/co/cyberz/fox/a/a/d;->a(Landroid/content/Context;Ljp/co/cyberz/fox/a/a/a;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, p1, p2, v0, p3}, Ljp/co/cyberz/fox/a/a/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    const-string v4, ""

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Ljp/co/cyberz/fox/a/a/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;)V
    .locals 2

    new-instance v0, Ljp/co/cyberz/fox/a/a/a;

    invoke-direct {v0}, Ljp/co/cyberz/fox/a/a/a;-><init>()V

    sget-object v1, Ljp/co/cyberz/fox/a/a/a$a;->d:Ljp/co/cyberz/fox/a/a/a$a;

    invoke-virtual {v0, v1}, Ljp/co/cyberz/fox/a/a/a;->a(Ljp/co/cyberz/fox/a/a/a$a;)V

    invoke-virtual {v0, p2}, Ljp/co/cyberz/fox/a/a/a;->a(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljp/co/cyberz/fox/a/a/a;->b(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljp/co/cyberz/fox/a/a/a;->c(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Ljp/co/cyberz/fox/a/a/a;->b(I)V

    iget-object v1, p0, Ljp/co/cyberz/fox/a/a/d;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljp/co/cyberz/fox/a/a/a;->j(Ljava/lang/String;)V

    iget-object v1, p0, Ljp/co/cyberz/fox/a/a/d;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljp/co/cyberz/fox/a/a/a;->k(Ljava/lang/String;)V

    invoke-virtual {v0, p6}, Ljp/co/cyberz/fox/a/a/a;->a(Lorg/json/JSONObject;)V

    invoke-virtual {p0}, Ljp/co/cyberz/fox/a/a/d;->a()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljp/co/cyberz/fox/a/a/a;->b(Lorg/json/JSONObject;)V

    invoke-direct {p0, p1, v0}, Ljp/co/cyberz/fox/a/a/d;->a(Landroid/content/Context;Ljp/co/cyberz/fox/a/a/a;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DI)V
    .locals 14

    const-string v3, ""

    const-string v4, ""

    const-string v11, "JPY"

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-wide/from16 v8, p6

    move/from16 v10, p8

    invoke-virtual/range {v0 .. v12}, Ljp/co/cyberz/fox/a/a/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DILjava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DILjava/lang/String;)V
    .locals 14

    const-string v3, ""

    const-string v4, ""

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-wide/from16 v8, p6

    move/from16 v10, p8

    move-object/from16 v11, p9

    invoke-virtual/range {v0 .. v12}, Ljp/co/cyberz/fox/a/a/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DILjava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DI)V
    .locals 13

    const-string v4, ""

    const-string v11, "JPY"

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    move/from16 v10, p9

    invoke-virtual/range {v0 .. v12}, Ljp/co/cyberz/fox/a/a/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DILjava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DILjava/lang/String;)V
    .locals 13

    const-string v4, ""

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    move/from16 v10, p9

    move-object/from16 v11, p10

    invoke-virtual/range {v0 .. v12}, Ljp/co/cyberz/fox/a/a/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DILjava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DI)V
    .locals 14

    const-string v11, "JPY"

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-wide/from16 v8, p8

    move/from16 v10, p10

    invoke-virtual/range {v0 .. v12}, Ljp/co/cyberz/fox/a/a/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DILjava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DILjava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    new-instance v0, Ljp/co/cyberz/fox/a/a/a;

    invoke-direct {v0}, Ljp/co/cyberz/fox/a/a/a;-><init>()V

    sget-object v1, Ljp/co/cyberz/fox/a/a/a$a;->e:Ljp/co/cyberz/fox/a/a/a$a;

    invoke-virtual {v0, v1}, Ljp/co/cyberz/fox/a/a/a;->a(Ljp/co/cyberz/fox/a/a/a$a;)V

    invoke-virtual {v0, p2}, Ljp/co/cyberz/fox/a/a/a;->a(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljp/co/cyberz/fox/a/a/a;->b(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljp/co/cyberz/fox/a/a/a;->c(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Ljp/co/cyberz/fox/a/a/a;->d(Ljava/lang/String;)V

    invoke-virtual {v0, p6}, Ljp/co/cyberz/fox/a/a/a;->e(Ljava/lang/String;)V

    invoke-virtual {v0, p7}, Ljp/co/cyberz/fox/a/a/a;->f(Ljava/lang/String;)V

    invoke-virtual {v0, p8, p9}, Ljp/co/cyberz/fox/a/a/a;->a(D)V

    invoke-virtual {v0, p10}, Ljp/co/cyberz/fox/a/a/a;->c(I)V

    invoke-virtual {v0, p11}, Ljp/co/cyberz/fox/a/a/a;->g(Ljava/lang/String;)V

    iget-object v1, p0, Ljp/co/cyberz/fox/a/a/d;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljp/co/cyberz/fox/a/a/a;->j(Ljava/lang/String;)V

    iget-object v1, p0, Ljp/co/cyberz/fox/a/a/d;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljp/co/cyberz/fox/a/a/a;->k(Ljava/lang/String;)V

    invoke-virtual {v0, p12}, Ljp/co/cyberz/fox/a/a/a;->a(Lorg/json/JSONObject;)V

    invoke-virtual {p0}, Ljp/co/cyberz/fox/a/a/d;->a()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljp/co/cyberz/fox/a/a/a;->b(Lorg/json/JSONObject;)V

    invoke-direct {p0, p1, v0}, Ljp/co/cyberz/fox/a/a/d;->a(Landroid/content/Context;Ljp/co/cyberz/fox/a/a/a;)V

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/content/Context;)V
    .locals 4

    sget-object v0, Ljp/co/cyberz/fox/a/a/d;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljp/co/cyberz/fox/a/a/d;->b:Ljava/lang/String;

    :cond_0
    :goto_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljp/co/cyberz/fox/a/a/d;->s:Ljava/lang/String;

    iput-object p1, p0, Ljp/co/cyberz/fox/a/a/d;->t:Ljava/lang/String;

    new-instance v0, Ljp/co/cyberz/fox/a/a/a;

    invoke-direct {v0}, Ljp/co/cyberz/fox/a/a/a;-><init>()V

    sget-object v1, Ljp/co/cyberz/fox/a/a/a$a;->a:Ljp/co/cyberz/fox/a/a/a$a;

    invoke-virtual {v0, v1}, Ljp/co/cyberz/fox/a/a/a;->a(Ljp/co/cyberz/fox/a/a/a$a;)V

    iget-object v1, p0, Ljp/co/cyberz/fox/a/a/d;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljp/co/cyberz/fox/a/a/a;->j(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljp/co/cyberz/fox/a/a/a;->k(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljp/co/cyberz/fox/a/a/d;->a()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljp/co/cyberz/fox/a/a/a;->b(Lorg/json/JSONObject;)V

    invoke-direct {p0, p2, v0}, Ljp/co/cyberz/fox/a/a/d;->a(Landroid/content/Context;Ljp/co/cyberz/fox/a/a/a;)V

    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Ljp/co/cyberz/fox/a/a/d;->m:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljp/co/cyberz/fox/a/a/d;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 0

    sput-object p1, Ljp/co/cyberz/fox/a/a/d;->w:Lorg/json/JSONObject;

    return-void
.end method
