.class Lcom/smrtbeat/g;
.super Ljava/lang/Object;


# static fields
.field static A:Z = false

.field static B:Z = false

.field static C:I = 0x0

.field static D:Ljava/util/List; = null

.field static E:Ljava/util/HashMap; = null

.field static F:Ljava/lang/String; = null

.field static G:Z = false

.field static H:Ljava/lang/String; = null

.field static I:Ljava/lang/String; = null

.field static J:Z = false

.field static K:Lcom/smrtbeat/e; = null

.field static L:Ljava/lang/Thread; = null

.field static M:Z = false

.field static N:Z = false

.field static O:Ljava/util/List; = null

.field static P:I = 0x0

.field static Q:Ljava/lang/String; = null

.field static R:Landroid/graphics/Bitmap; = null

.field static S:Landroid/graphics/Bitmap; = null

.field static T:J = 0x0L

.field static U:Lcom/smrtbeat/h; = null

.field static V:Z = false

.field static W:Ljava/lang/String; = null

.field static X:Ljava/lang/String; = null

.field static Y:Ljava/lang/String; = null

.field static Z:Z = false

.field static final a:Ljava/lang/String; = "https://api.smbeat.jp/api/errors"

.field static aa:Z = false

.field static ab:Z = false

.field static ac:Z = false

.field static ad:Ljava/lang/Thread; = null

.field private static ae:Ljava/lang/ref/WeakReference; = null

.field static final b:Ljava/lang/String; = "https://images.smbeat.jp/api/upload"

.field static final c:Ljava/lang/String; = "https://minidumps.smbeat.jp/api/errors/multi"

.field static final d:Ljava/lang/String; = "https://control.smbeat.jp/api/remote"

.field static final e:J = 0x1499700L

.field static final f:I = 0x20

.field static final g:I = 0x10

.field static final h:J = 0x1388L

.field static final i:I = 0x3

.field static final j:Ljava/lang/String; = "1.14"

.field static k:Ljava/lang/String;

.field static l:Ljava/lang/String;

.field static m:Ljava/lang/String;

.field static n:Ljava/lang/String;

.field static o:Ljava/lang/String;

.field static p:Ljava/lang/String;

.field static q:Ljava/lang/String;

.field static r:Ljava/lang/String;

.field static s:Ljava/lang/String;

.field static t:Z

.field static u:I

.field static v:I

.field static w:I

.field static x:J

.field static y:Ljava/lang/String;

.field static z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v0, ""

    sput-object v0, Lcom/smrtbeat/g;->k:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/smrtbeat/g;->l:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/smrtbeat/g;->m:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/smrtbeat/g;->n:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/smrtbeat/g;->o:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/smrtbeat/g;->p:Ljava/lang/String;

    sput-object v3, Lcom/smrtbeat/g;->q:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/smrtbeat/g;->r:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/smrtbeat/g;->s:Ljava/lang/String;

    sput-boolean v2, Lcom/smrtbeat/g;->t:Z

    sput v2, Lcom/smrtbeat/g;->u:I

    sput v2, Lcom/smrtbeat/g;->v:I

    sput v2, Lcom/smrtbeat/g;->w:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/smrtbeat/g;->x:J

    const-string v0, ""

    sput-object v0, Lcom/smrtbeat/g;->y:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/smrtbeat/g;->z:Ljava/lang/String;

    sput-boolean v2, Lcom/smrtbeat/g;->A:Z

    sput-boolean v2, Lcom/smrtbeat/g;->B:Z

    sput v2, Lcom/smrtbeat/g;->C:I

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/smrtbeat/g;->D:Ljava/util/List;

    sput-object v3, Lcom/smrtbeat/g;->E:Ljava/util/HashMap;

    const-string v0, ""

    sput-object v0, Lcom/smrtbeat/g;->F:Ljava/lang/String;

    sput-boolean v2, Lcom/smrtbeat/g;->G:Z

    const-string v0, ""

    sput-object v0, Lcom/smrtbeat/g;->H:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/smrtbeat/g;->I:Ljava/lang/String;

    sput-boolean v2, Lcom/smrtbeat/g;->J:Z

    sput-object v3, Lcom/smrtbeat/g;->K:Lcom/smrtbeat/e;

    sput-object v3, Lcom/smrtbeat/g;->L:Ljava/lang/Thread;

    sput-boolean v2, Lcom/smrtbeat/g;->M:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/smrtbeat/g;->N:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/smrtbeat/g;->O:Ljava/util/List;

    const/4 v0, 0x5

    sput v0, Lcom/smrtbeat/g;->P:I

    const-string v0, ""

    sput-object v0, Lcom/smrtbeat/g;->Q:Ljava/lang/String;

    sput-object v3, Lcom/smrtbeat/g;->R:Landroid/graphics/Bitmap;

    sput-object v3, Lcom/smrtbeat/g;->S:Landroid/graphics/Bitmap;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/smrtbeat/g;->T:J

    sget-object v0, Lcom/smrtbeat/h;->a:Lcom/smrtbeat/h;

    sput-object v0, Lcom/smrtbeat/g;->U:Lcom/smrtbeat/h;

    sput-boolean v2, Lcom/smrtbeat/g;->V:Z

    sput-object v3, Lcom/smrtbeat/g;->W:Ljava/lang/String;

    sput-object v3, Lcom/smrtbeat/g;->X:Ljava/lang/String;

    sput-object v3, Lcom/smrtbeat/g;->Y:Ljava/lang/String;

    sput-boolean v2, Lcom/smrtbeat/g;->Z:Z

    sput-boolean v2, Lcom/smrtbeat/g;->aa:Z

    sput-boolean v2, Lcom/smrtbeat/g;->ab:Z

    sput-boolean v2, Lcom/smrtbeat/g;->ac:Z

    sput-object v3, Lcom/smrtbeat/g;->ad:Ljava/lang/Thread;

    sput-object v3, Lcom/smrtbeat/g;->ae:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/smrtbeat/g;->ae:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/smrtbeat/g;->ae:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    goto :goto_0
.end method

.method static a(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/smrtbeat/g;->ae:Ljava/lang/ref/WeakReference;

    return-void
.end method
