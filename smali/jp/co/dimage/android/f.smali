.class public Ljp/co/dimage/android/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljp/co/dimage/android/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/co/dimage/android/f$a;
    }
.end annotation


# static fields
.field private static G:Ljava/lang/String;


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:Ljava/lang/Integer;

.field private H:Ljava/lang/Boolean;

.field private I:Ljp/co/dimage/android/c;

.field private J:Ljava/lang/String;

.field private K:Ljava/lang/String;

.field private L:Ljava/lang/String;

.field private M:Ljava/lang/String;

.field private N:Ljava/lang/String;

.field private O:Ljava/lang/String;

.field private P:Ljava/lang/String;

.field private Q:Ljava/lang/String;

.field private R:Ljava/lang/String;

.field private S:Ljava/lang/String;

.field private T:Ljava/lang/String;

.field private U:Z

.field private V:Ljava/lang/String;

.field private W:Ljp/co/dimage/android/Fingerprint;

.field private X:Ljava/lang/String;

.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Ljp/co/dimage/android/f;->G:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljp/co/dimage/android/c;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Ljp/co/dimage/android/f;->a:Landroid/content/Context;

    const-string v0, ""

    iput-object v0, p0, Ljp/co/dimage/android/f;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Ljp/co/dimage/android/f;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Ljp/co/dimage/android/f;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Ljp/co/dimage/android/f;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Ljp/co/dimage/android/f;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Ljp/co/dimage/android/f;->g:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Ljp/co/dimage/android/f;->h:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Ljp/co/dimage/android/f;->i:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Ljp/co/dimage/android/f;->j:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Ljp/co/dimage/android/f;->k:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Ljp/co/dimage/android/f;->l:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Ljp/co/dimage/android/f;->m:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Ljp/co/dimage/android/f;->p:Ljava/lang/String;

    iput-boolean v1, p0, Ljp/co/dimage/android/f;->q:Z

    iput-boolean v1, p0, Ljp/co/dimage/android/f;->r:Z

    iput-boolean v1, p0, Ljp/co/dimage/android/f;->s:Z

    iput-boolean v1, p0, Ljp/co/dimage/android/f;->t:Z

    iput-boolean v1, p0, Ljp/co/dimage/android/f;->u:Z

    iput-boolean v1, p0, Ljp/co/dimage/android/f;->v:Z

    iput-boolean v1, p0, Ljp/co/dimage/android/f;->w:Z

    iput-boolean v1, p0, Ljp/co/dimage/android/f;->x:Z

    iput-boolean v1, p0, Ljp/co/dimage/android/f;->y:Z

    iput-boolean v1, p0, Ljp/co/dimage/android/f;->z:Z

    iput-boolean v1, p0, Ljp/co/dimage/android/f;->A:Z

    iput-boolean v1, p0, Ljp/co/dimage/android/f;->B:Z

    iput-boolean v1, p0, Ljp/co/dimage/android/f;->C:Z

    iput-boolean v1, p0, Ljp/co/dimage/android/f;->D:Z

    iput-boolean v1, p0, Ljp/co/dimage/android/f;->E:Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljp/co/dimage/android/f;->F:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljp/co/dimage/android/f;->H:Ljava/lang/Boolean;

    iput-object v2, p0, Ljp/co/dimage/android/f;->I:Ljp/co/dimage/android/c;

    const-string v0, ""

    iput-object v0, p0, Ljp/co/dimage/android/f;->J:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Ljp/co/dimage/android/f;->K:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Ljp/co/dimage/android/f;->L:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Ljp/co/dimage/android/f;->M:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Ljp/co/dimage/android/f;->N:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Ljp/co/dimage/android/f;->O:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Ljp/co/dimage/android/f;->P:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Ljp/co/dimage/android/f;->Q:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Ljp/co/dimage/android/f;->R:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Ljp/co/dimage/android/f;->S:Ljava/lang/String;

    iput-object v2, p0, Ljp/co/dimage/android/f;->T:Ljava/lang/String;

    iput-boolean v1, p0, Ljp/co/dimage/android/f;->U:Z

    const-string v0, ""

    iput-object v0, p0, Ljp/co/dimage/android/f;->V:Ljava/lang/String;

    iput-object v2, p0, Ljp/co/dimage/android/f;->W:Ljp/co/dimage/android/Fingerprint;

    const-string v0, ""

    iput-object v0, p0, Ljp/co/dimage/android/f;->X:Ljava/lang/String;

    iput-object p1, p0, Ljp/co/dimage/android/f;->I:Ljp/co/dimage/android/c;

    invoke-direct {p0}, Ljp/co/dimage/android/f;->s()V

    return-void
.end method

.method private a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p1, p2}, Ljp/co/dimage/android/l;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ljp/co/dimage/android/f;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljp/co/dimage/android/f$a;I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Ljp/co/dimage/android/f;->a(Ljp/co/dimage/android/f$a;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljp/co/dimage/android/f$a;Ljava/lang/String;I)Ljava/lang/String;
    .locals 8

    const/4 v6, 0x5

    const/4 v1, 0x1

    const/4 v4, 0x0

    const-string v0, "/p/cv?_app={0}&_xuid={1}&_xuniq={2}&_xevent={3}"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Ljp/co/dimage/android/f;->d:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Ljp/co/dimage/android/f;->h:Ljava/lang/String;

    aput-object v3, v2, v1

    const/4 v3, 0x2

    iget-object v5, p0, Ljp/co/dimage/android/f;->b:Ljava/lang/String;

    aput-object v5, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p1}, Ljp/co/dimage/android/f$a;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-direct {p0, v0, v2}, Ljp/co/dimage/android/f;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Ljp/co/dimage/android/f;->c:Ljava/lang/String;

    invoke-static {v2}, Ljp/co/dimage/android/l;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&_buid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ljp/co/dimage/android/f;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v2, p0, Ljp/co/dimage/android/f;->e:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ljp/co/dimage/android/f;->e:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&appinfo="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ljp/co/dimage/android/f;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v2, p0, Ljp/co/dimage/android/f;->j:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Ljp/co/dimage/android/f;->j:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&_sdktest=1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-object v2, p0, Ljp/co/dimage/android/f;->H:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&_isrand=1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    const-string v2, "default"

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    invoke-static {p2}, Ljp/co/cyberz/fox/a/a/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_4
    if-eqz v2, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&_rurl="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5
    iget-object v2, p0, Ljp/co/dimage/android/f;->J:Ljava/lang/String;

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&_bundle_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ljp/co/dimage/android/f;->J:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_6
    iget-object v2, p0, Ljp/co/dimage/android/f;->L:Ljava/lang/String;

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&_model="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ljp/co/dimage/android/f;->L:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_7
    iget-object v2, p0, Ljp/co/dimage/android/f;->M:Ljava/lang/String;

    if-eqz v2, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&_os_ver="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ljp/co/dimage/android/f;->M:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&_sdk_ver=3.3.0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Ljp/co/dimage/android/f;->k:Ljava/lang/String;

    invoke-static {v2}, Ljp/co/dimage/android/l;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&_hash="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ljp/co/dimage/android/f;->d:Ljava/lang/String;

    iget-object v3, p0, Ljp/co/dimage/android/f;->h:Ljava/lang/String;

    iget-object v5, p0, Ljp/co/dimage/android/f;->b:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v5}, Ljp/co/dimage/android/f;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_9
    iget-object v2, p0, Ljp/co/dimage/android/f;->I:Ljp/co/dimage/android/c;

    invoke-virtual {v2}, Ljp/co/dimage/android/c;->L()Z

    move-result v2

    if-eqz v2, :cond_20

    iget-boolean v2, p0, Ljp/co/dimage/android/f;->A:Z

    if-nez v2, :cond_20

    move v3, v1

    :goto_0
    if-eqz v3, :cond_21

    const-string v1, "true"

    :goto_1
    const-string v2, "true"

    if-nez p3, :cond_a

    if-eqz v3, :cond_a

    const-string v2, "false"

    :cond_a
    iget-object v3, p0, Ljp/co/dimage/android/f;->h:Ljava/lang/String;

    invoke-static {v3}, Ljp/co/dimage/android/l;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    if-nez p3, :cond_22

    const-string v2, "true"

    const-string v1, "false"

    :cond_b
    :goto_2
    iget-object v3, p0, Ljp/co/dimage/android/f;->g:Ljava/lang/String;

    invoke-static {v3}, Ljp/co/dimage/android/l;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Ljp/co/dimage/android/f;->I:Ljp/co/dimage/android/c;

    invoke-virtual {v3}, Ljp/co/dimage/android/c;->b()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljp/co/dimage/android/f;->g:Ljava/lang/String;

    :cond_c
    iget-object v3, p0, Ljp/co/dimage/android/f;->g:Ljava/lang/String;

    invoke-static {v3}, Ljp/co/dimage/android/l;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    iget-object v3, p0, Ljp/co/dimage/android/f;->g:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v6, :cond_d

    const-string v3, "LINE_"

    iget-object v5, p0, Ljp/co/dimage/android/f;->g:Ljava/lang/String;

    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    if-nez p3, :cond_23

    const-string v1, "true"

    const-string v2, "false"

    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&_referrer_hash="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Ljp/co/dimage/android/f;->g:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljp/co/dimage/android/f;->k:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljp/co/dimage/android/l;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v7, v1

    move-object v1, v2

    move-object v2, v7

    :cond_d
    iget-object v3, p0, Ljp/co/dimage/android/f;->g:Ljava/lang/String;

    invoke-static {v3}, Ljp/co/dimage/android/l;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    iget-object v3, p0, Ljp/co/dimage/android/f;->g:Ljava/lang/String;

    invoke-static {v3}, Ljp/co/cyberz/fox/a/a/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljp/co/dimage/android/f;->g:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&_referrer="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Ljp/co/dimage/android/f;->g:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_e
    const-string v3, "2"

    iget-object v4, p0, Ljp/co/dimage/android/f;->m:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    if-nez p3, :cond_24

    const-string v2, "true"

    const-string v1, "false"

    :cond_f
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&_use_bw="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&_cv_target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljp/co/dimage/android/f;->I:Ljp/co/dimage/android/c;

    invoke-virtual {v1}, Ljp/co/dimage/android/c;->w()Ljp/co/dimage/android/c$a;

    move-result-object v1

    sget-object v2, Ljp/co/dimage/android/c$a;->a:Ljp/co/dimage/android/c$a;

    if-ne v1, v2, :cond_10

    const-string v1, "1"

    iput-object v1, p0, Ljp/co/dimage/android/f;->p:Ljava/lang/String;

    :cond_10
    iget-object v1, p0, Ljp/co/dimage/android/f;->I:Ljp/co/dimage/android/c;

    invoke-virtual {v1}, Ljp/co/dimage/android/c;->w()Ljp/co/dimage/android/c$a;

    move-result-object v1

    sget-object v2, Ljp/co/dimage/android/c$a;->b:Ljp/co/dimage/android/c$a;

    if-ne v1, v2, :cond_11

    const-string v1, "2"

    iput-object v1, p0, Ljp/co/dimage/android/f;->p:Ljava/lang/String;

    :cond_11
    iget-object v1, p0, Ljp/co/dimage/android/f;->I:Ljp/co/dimage/android/c;

    invoke-virtual {v1}, Ljp/co/dimage/android/c;->w()Ljp/co/dimage/android/c$a;

    move-result-object v1

    sget-object v2, Ljp/co/dimage/android/c$a;->c:Ljp/co/dimage/android/c$a;

    if-ne v1, v2, :cond_12

    const-string v1, "4"

    iput-object v1, p0, Ljp/co/dimage/android/f;->p:Ljava/lang/String;

    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&_xuniq_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljp/co/dimage/android/f;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljp/co/dimage/android/f;->O:Ljava/lang/String;

    invoke-static {v1}, Ljp/co/dimage/android/l;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&_pfapp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljp/co/dimage/android/f;->O:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&_pf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljp/co/dimage/android/f;->N:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_13
    iget-object v1, p0, Ljp/co/dimage/android/f;->I:Ljp/co/dimage/android/c;

    invoke-virtual {v1}, Ljp/co/dimage/android/c;->g()Z

    move-result v1

    if-eqz v1, :cond_14

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&_jb=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_14
    iget-boolean v1, p0, Ljp/co/dimage/android/f;->U:Z

    if-nez v1, :cond_15

    iget-object v1, p0, Ljp/co/dimage/android/f;->a:Landroid/content/Context;

    invoke-static {v1}, Ljp/co/dimage/android/m;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_16

    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&_dd=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_16
    iget-object v1, p0, Ljp/co/dimage/android/f;->V:Ljava/lang/String;

    invoke-static {v1}, Ljp/co/dimage/android/l;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&_dd_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljp/co/dimage/android/f;->V:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_17
    iget-boolean v1, p0, Ljp/co/dimage/android/f;->x:Z

    if-eqz v1, :cond_19

    iget-object v1, p0, Ljp/co/dimage/android/f;->l:Ljava/lang/String;

    invoke-static {v1}, Ljp/co/dimage/android/l;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-static {}, Ljp/co/dimage/android/l;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljp/co/dimage/android/f;->l:Ljava/lang/String;

    :cond_18
    iget-object v1, p0, Ljp/co/dimage/android/f;->l:Ljava/lang/String;

    invoke-static {v1}, Ljp/co/dimage/android/l;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_19

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&_fbid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljp/co/dimage/android/f;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_19
    iget-object v1, p0, Ljp/co/dimage/android/f;->P:Ljava/lang/String;

    invoke-static {v1}, Ljp/co/dimage/android/l;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&_fpid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljp/co/dimage/android/f;->P:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1a
    iget-object v1, p0, Ljp/co/dimage/android/f;->Q:Ljava/lang/String;

    invoke-static {v1}, Ljp/co/dimage/android/l;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&_fptdl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljp/co/dimage/android/f;->Q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1b
    iget-boolean v1, p0, Ljp/co/dimage/android/f;->y:Z

    if-eqz v1, :cond_1c

    iget-object v1, p0, Ljp/co/dimage/android/f;->R:Ljava/lang/String;

    invoke-static {v1}, Ljp/co/dimage/android/l;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "1"

    iget-object v2, p0, Ljp/co/dimage/android/f;->p:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&_adid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljp/co/dimage/android/f;->R:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&_adte="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljp/co/dimage/android/f;->S:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1c
    iget-boolean v1, p0, Ljp/co/dimage/android/f;->q:Z

    if-eqz v1, :cond_1d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&_optout=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1d
    iget-object v1, p0, Ljp/co/dimage/android/f;->m:Ljava/lang/String;

    invoke-static {v1}, Ljp/co/dimage/android/l;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&_xroute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljp/co/dimage/android/f;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1e
    iget-object v1, p0, Ljp/co/dimage/android/f;->X:Ljava/lang/String;

    invoke-static {v1}, Ljp/co/dimage/android/l;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljp/co/dimage/android/f;->X:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1f
    return-object v0

    :cond_20
    move v3, v4

    goto/16 :goto_0

    :cond_21
    const-string v1, "false"

    goto/16 :goto_1

    :cond_22
    const-string v2, "false"

    const-string v1, "false"

    goto/16 :goto_2

    :cond_23
    const-string v1, "false"

    const-string v2, "false"

    goto/16 :goto_3

    :cond_24
    const-string v2, "false"

    const-string v1, "false"

    goto/16 :goto_4
.end method

.method static synthetic a(Ljp/co/dimage/android/f;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Ljp/co/dimage/android/f;->R:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Ljp/co/dimage/android/f;)Ljp/co/dimage/android/c;
    .locals 1

    iget-object v0, p0, Ljp/co/dimage/android/f;->I:Ljp/co/dimage/android/c;

    return-object v0
.end method

.method static synthetic a(Ljp/co/dimage/android/f;Ljp/co/dimage/android/f$a;)V
    .locals 0

    invoke-direct {p0, p1}, Ljp/co/dimage/android/f;->b(Ljp/co/dimage/android/f$a;)V

    return-void
.end method

.method static synthetic b(Ljp/co/dimage/android/f;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Ljp/co/dimage/android/f;->S:Ljava/lang/String;

    return-object p1
.end method

.method private b(Ljp/co/dimage/android/f$a;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Ljp/co/dimage/android/m;

    iget-object v1, p0, Ljp/co/dimage/android/f;->a:Landroid/content/Context;

    iget-object v2, p0, Ljp/co/dimage/android/f;->I:Ljp/co/dimage/android/c;

    invoke-virtual {v2}, Ljp/co/dimage/android/c;->M()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ljp/co/dimage/android/f;->I:Ljp/co/dimage/android/c;

    invoke-virtual {v3}, Ljp/co/dimage/android/c;->N()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Ljp/co/dimage/android/m;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Ljp/co/dimage/android/f;->y:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Ljp/co/dimage/android/f;->I:Ljp/co/dimage/android/c;

    sget-object v2, Ljp/co/dimage/android/c$a;->c:Ljp/co/dimage/android/c$a;

    invoke-virtual {v1, v2}, Ljp/co/dimage/android/c;->a(Ljp/co/dimage/android/c$a;)V

    :goto_0
    invoke-virtual {v0}, Ljp/co/dimage/android/m;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljp/co/dimage/android/f;->I:Ljp/co/dimage/android/c;

    invoke-virtual {v0}, Ljp/co/dimage/android/m;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljp/co/dimage/android/c;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Ljp/co/dimage/android/f;->I:Ljp/co/dimage/android/c;

    invoke-virtual {v0}, Ljp/co/dimage/android/c;->c()V

    iget-object v0, p0, Ljp/co/dimage/android/f;->I:Ljp/co/dimage/android/c;

    invoke-virtual {v0}, Ljp/co/dimage/android/c;->O()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljp/co/dimage/android/f;->I:Ljp/co/dimage/android/c;

    invoke-virtual {v0}, Ljp/co/dimage/android/c;->P()V

    :cond_1
    iget-object v0, p0, Ljp/co/dimage/android/f;->I:Ljp/co/dimage/android/c;

    invoke-virtual {v0}, Ljp/co/dimage/android/c;->n()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljp/co/dimage/android/f;->b:Ljava/lang/String;

    const-string v0, "F.O.X CV"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "xuniq: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljp/co/dimage/android/f;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Ljp/co/dimage/android/f;->I:Ljp/co/dimage/android/c;

    invoke-virtual {v0}, Ljp/co/dimage/android/c;->a()V

    iget-object v0, p0, Ljp/co/dimage/android/f;->I:Ljp/co/dimage/android/c;

    invoke-virtual {v0}, Ljp/co/dimage/android/c;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljp/co/dimage/android/f;->h:Ljava/lang/String;

    invoke-static {}, Ljp/co/cyberz/fox/a/a/d;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljp/co/dimage/android/f;->I:Ljp/co/dimage/android/c;

    invoke-virtual {v0}, Ljp/co/dimage/android/c;->h()V

    :cond_2
    invoke-static {}, Ljp/co/cyberz/fox/notify/a;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Ljp/co/dimage/android/f;->I:Ljp/co/dimage/android/c;

    invoke-virtual {v0}, Ljp/co/dimage/android/c;->i()V

    :cond_3
    invoke-direct {p0, p1, v4}, Ljp/co/dimage/android/f;->a(Ljp/co/dimage/android/f$a;I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljp/co/dimage/android/f;->o:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "F.O.X"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendConversion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljp/co/dimage/android/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-direct {p0}, Ljp/co/dimage/android/f;->p()Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v1, Ljp/co/dimage/android/g;

    iget-object v2, p0, Ljp/co/dimage/android/f;->I:Ljp/co/dimage/android/c;

    invoke-direct {v1, v2}, Ljp/co/dimage/android/g;-><init>(Ljp/co/dimage/android/c;)V

    new-instance v2, Ljp/co/cyberz/fox/a/a/c;

    invoke-direct {v2}, Ljp/co/cyberz/fox/a/a/c;-><init>()V

    new-array v3, v5, [Ljava/lang/String;

    aput-object v0, v3, v4

    invoke-virtual {v2, v1, v3}, Ljp/co/cyberz/fox/a/a/c;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    :cond_5
    iget-object v0, p0, Ljp/co/dimage/android/f;->T:Ljava/lang/String;

    invoke-static {v0}, Ljp/co/cyberz/fox/a/a/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Ljp/co/dimage/android/f;->b()V

    :cond_6
    :goto_1
    return-void

    :cond_7
    iget-object v1, p0, Ljp/co/dimage/android/f;->I:Ljp/co/dimage/android/c;

    sget-object v2, Ljp/co/dimage/android/c$a;->b:Ljp/co/dimage/android/c$a;

    invoke-virtual {v1, v2}, Ljp/co/dimage/android/c;->a(Ljp/co/dimage/android/c$a;)V

    goto/16 :goto_0

    :cond_8
    iget-boolean v0, p0, Ljp/co/dimage/android/f;->A:Z

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Ljp/co/dimage/android/f;->b()V

    goto :goto_1

    :cond_9
    invoke-direct {p0}, Ljp/co/dimage/android/f;->q()Z

    move-result v0

    if-nez v0, :cond_6

    iget-boolean v0, p0, Ljp/co/dimage/android/f;->z:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Ljp/co/dimage/android/f;->C:Z

    if-eqz v0, :cond_6

    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Ljp/co/dimage/android/f;->T:Ljava/lang/String;

    invoke-direct {p0}, Ljp/co/dimage/android/f;->o()Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "http://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "https://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_a
    sget-object v0, Ljp/co/dimage/android/f$a;->b:Ljp/co/dimage/android/f$a;

    iget-object v2, p0, Ljp/co/dimage/android/f;->T:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v5}, Ljp/co/dimage/android/f;->a(Ljp/co/dimage/android/f$a;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :cond_b
    :try_start_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Ljp/co/dimage/android/f;->b(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ljp/co/dimage/android/f;->b()V

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljp/co/dimage/android/f;->b()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljp/co/dimage/android/f;->b()V

    throw v0
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljp/co/dimage/android/f;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljp/co/dimage/android/l;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(Ljp/co/dimage/android/f$a;)V
    .locals 1

    iget-object v0, p0, Ljp/co/dimage/android/f;->I:Ljp/co/dimage/android/c;

    invoke-virtual {v0}, Ljp/co/dimage/android/c;->f()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Ljp/co/dimage/android/f;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Ljp/co/dimage/android/f;->o()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    invoke-direct {p0}, Ljp/co/dimage/android/f;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Ljp/co/dimage/android/f;->d(Ljp/co/dimage/android/f$a;)V

    goto :goto_0
.end method

.method private d(Ljp/co/dimage/android/f$a;)V
    .locals 5

    invoke-direct {p0}, Ljp/co/dimage/android/f;->m()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljp/co/dimage/android/d;

    iget-object v2, p0, Ljp/co/dimage/android/f;->I:Ljp/co/dimage/android/c;

    invoke-direct {v1, v2, p0, p1}, Ljp/co/dimage/android/d;-><init>(Ljp/co/dimage/android/c;Ljp/co/dimage/android/f;Ljp/co/dimage/android/f$a;)V

    new-instance v2, Ljp/co/cyberz/fox/a/a/c;

    invoke-direct {v2}, Ljp/co/cyberz/fox/a/a/c;-><init>()V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v2, v1, v3}, Ljp/co/cyberz/fox/a/a/c;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    return-void
.end method

.method private h(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Ljp/co/dimage/android/f;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_0
    :goto_0
    const-string v0, "__ADMAGE_APP_CONVERSION_COMPLETED__"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v3, p0, Ljp/co/dimage/android/f;->s:Z

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    const-string v0, "F.O.X"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createFile failed. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljp/co/dimage/android/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_2
    :goto_2
    throw v0

    :cond_3
    const-string v0, "__ADMAGE_WEB_CONVERSION_COMPLETED__"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean v3, p0, Ljp/co/dimage/android/f;->r:Z

    goto :goto_1

    :cond_4
    const-string v0, "__ADMAGE_LINE_FC_CONVERSION_COMPLETED__"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v3, p0, Ljp/co/dimage/android/f;->u:Z

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_2
.end method

.method private i()V
    .locals 7

    const/4 v2, 0x0

    const/4 v1, 0x1

    :try_start_0
    const-string v0, "jp.co.cyberagent.camp.tracking.CampCvTracking"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v3, "getUuid"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Ljp/co/dimage/android/f;->a:Landroid/content/Context;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljp/co/dimage/android/l;->a(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    if-eqz v0, :cond_0

    iput-boolean v1, p0, Ljp/co/dimage/android/f;->U:Z

    const-string v0, "camp"

    iput-object v0, p0, Ljp/co/dimage/android/f;->V:Ljava/lang/String;

    :cond_0
    return-void

    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private j()V
    .locals 2

    iget-object v0, p0, Ljp/co/dimage/android/f;->a:Landroid/content/Context;

    new-instance v1, Ljp/co/dimage/android/f$2;

    invoke-direct {v1, p0}, Ljp/co/dimage/android/f$2;-><init>(Ljp/co/dimage/android/f;)V

    invoke-static {v0, v1}, Ljp/co/dimage/android/b;->a(Landroid/content/Context;Ljp/co/dimage/android/b$a;)V

    return-void
.end method

.method private k()Z
    .locals 1

    iget-object v0, p0, Ljp/co/dimage/android/f;->a:Landroid/content/Context;

    invoke-static {v0}, Ljp/co/dimage/android/l;->b(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private l()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Ljp/co/dimage/android/f;->h:Ljava/lang/String;

    invoke-static {v0}, Ljp/co/dimage/android/l;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Ljp/co/dimage/android/f;->m:Ljava/lang/String;

    invoke-static {v0}, Ljp/co/dimage/android/l;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "2"

    iget-object v1, p0, Ljp/co/dimage/android/f;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/co/dimage/android/f;->h:Ljava/lang/String;

    sget-object v1, Ljp/co/dimage/android/f;->G:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ljp/co/dimage/android/f;->h:Ljava/lang/String;

    sput-object v0, Ljp/co/dimage/android/f;->G:Ljava/lang/String;

    iget-object v0, p0, Ljp/co/dimage/android/f;->I:Ljp/co/dimage/android/c;

    invoke-virtual {v0}, Ljp/co/dimage/android/c;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ljp/co/dimage/android/f;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "F.O.X REENGAGEMENT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "xuniq: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljp/co/dimage/android/f;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Ljp/co/dimage/android/f$a;->b:Ljp/co/dimage/android/f$a;

    invoke-direct {p0, v0, v3}, Ljp/co/dimage/android/f;->a(Ljp/co/dimage/android/f$a;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljp/co/dimage/android/g;

    iget-object v2, p0, Ljp/co/dimage/android/f;->I:Ljp/co/dimage/android/c;

    invoke-direct {v1, v2}, Ljp/co/dimage/android/g;-><init>(Ljp/co/dimage/android/c;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Ljp/co/dimage/android/g;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private m()Ljava/lang/String;
    .locals 4

    const-string v0, "/p/tmck?_app={0}&_bundle_id={1}&_bv={2}&_model={3}&_os_ver={4}&_sdk_ver={5}"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Ljp/co/dimage/android/f;->d:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Ljp/co/dimage/android/f;->J:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Ljp/co/dimage/android/f;->K:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Ljp/co/dimage/android/f;->L:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Ljp/co/dimage/android/f;->M:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "3.3.0"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Ljp/co/dimage/android/f;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljp/co/dimage/android/f;->O:Ljava/lang/String;

    invoke-static {v1}, Ljp/co/dimage/android/l;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&_pfapp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljp/co/dimage/android/f;->O:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&_pf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljp/co/dimage/android/f;->N:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private n()Ljava/lang/String;
    .locals 4

    const-string v0, "/p/cub?_app={0}&_buid={1}&_xuniq={2}&_bundle_id={3}&_bv={4}&_model={5}&_os_ver={6}&_sdk_ver={7}"

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Ljp/co/dimage/android/f;->d:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Ljp/co/dimage/android/f;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Ljp/co/dimage/android/f;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Ljp/co/dimage/android/f;->J:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Ljp/co/dimage/android/f;->K:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Ljp/co/dimage/android/f;->L:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Ljp/co/dimage/android/f;->M:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "3.3.0"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Ljp/co/dimage/android/f;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljp/co/dimage/android/f;->O:Ljava/lang/String;

    invoke-static {v1}, Ljp/co/dimage/android/l;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&_pfapp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljp/co/dimage/android/f;->O:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&_pf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljp/co/dimage/android/f;->N:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private o()Z
    .locals 1

    iget-boolean v0, p0, Ljp/co/dimage/android/f;->r:Z

    return v0
.end method

.method private p()Z
    .locals 1

    iget-boolean v0, p0, Ljp/co/dimage/android/f;->s:Z

    return v0
.end method

.method private q()Z
    .locals 1

    iget-boolean v0, p0, Ljp/co/dimage/android/f;->t:Z

    return v0
.end method

.method private r()Z
    .locals 1

    iget-boolean v0, p0, Ljp/co/dimage/android/f;->u:Z

    return v0
.end method

.method private s()V
    .locals 1

    iget-object v0, p0, Ljp/co/dimage/android/f;->I:Ljp/co/dimage/android/c;

    invoke-virtual {v0}, Ljp/co/dimage/android/c;->o()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljp/co/dimage/android/f;->d:Ljava/lang/String;

    iget-object v0, p0, Ljp/co/dimage/android/f;->I:Ljp/co/dimage/android/c;

    invoke-virtual {v0}, Ljp/co/dimage/android/c;->n()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljp/co/dimage/android/f;->b:Ljava/lang/String;

    iget-object v0, p0, Ljp/co/dimage/android/f;->I:Ljp/co/dimage/android/c;

    invoke-virtual {v0}, Ljp/co/dimage/android/c;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljp/co/dimage/android/f;->e:Ljava/lang/String;

    iget-object v0, p0, Ljp/co/dimage/android/f;->I:Ljp/co/dimage/android/c;

    invoke-virtual {v0}, Ljp/co/dimage/android/c;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljp/co/dimage/android/f;->h:Ljava/lang/String;

    iget-object v0, p0, Ljp/co/dimage/android/f;->I:Ljp/co/dimage/android/c;

    invoke-virtual {v0}, Ljp/co/dimage/android/c;->q()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljp/co/dimage/android/f;->g:Ljava/lang/String;

    iget-object v0, p0, Ljp/co/dimage/android/f;->I:Ljp/co/dimage/android/c;

    invoke-virtual {v0}, Ljp/co/dimage/android/c;->t()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljp/co/dimage/android/f;->j:Ljava/lang/String;

    iget-object v0, p0, Ljp/co/dimage/android/f;->I:Ljp/co/dimage/android/c;

    invoke-virtual {v0}, Ljp/co/dimage/android/c;->s()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljp/co/dimage/android/f;->f:Ljava/lang/String;

    iget-object v0, p0, Ljp/co/dimage/android/f;->I:Ljp/co/dimage/android/c;

    invoke-virtual {v0}, Ljp/co/dimage/android/c;->r()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljp/co/dimage/android/f;->i:Ljava/lang/String;

    iget-object v0, p0, Ljp/co/dimage/android/f;->I:Ljp/co/dimage/android/c;

    invoke-virtual {v0}, Ljp/co/dimage/android/c;->k()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Ljp/co/dimage/android/f;->a:Landroid/content/Context;

    iget-object v0, p0, Ljp/co/dimage/android/f;->I:Ljp/co/dimage/android/c;

    invoke-virtual {v0}, Ljp/co/dimage/android/c;->x()Z

    move-result v0

    iput-boolean v0, p0, Ljp/co/dimage/android/f;->r:Z

    iget-object v0, p0, Ljp/co/dimage/android/f;->I:Ljp/co/dimage/android/c;

    invoke-virtual {v0}, Ljp/co/dimage/android/c;->y()Z

    move-result v0

    iput-boolean v0, p0, Ljp/co/dimage/android/f;->s:Z

    iget-object v0, p0, Ljp/co/dimage/android/f;->I:Ljp/co/dimage/android/c;

    invoke-virtual {v0}, Ljp/co/dimage/android/c;->z()Z

    move-result v0

    iput-boolean v0, p0, Ljp/co/dimage/android/f;->t:Z

    iget-object v0, p0, Ljp/co/dimage/android/f;->I:Ljp/co/dimage/android/c;

    invoke-virtual {v0}, Ljp/co/dimage/android/c;->A()Z

    move-result v0

    iput-boolean v0, p0, Ljp/co/dimage/android/f;->u:Z

    iget-object v0, p0, Ljp/co/dimage/android/f;->I:Ljp/co/dimage/android/c;

    invoke-virtual {v0}, Ljp/co/dimage/android/c;->C()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljp/co/dimage/android/f;->J:Ljava/lang/String;

    iget-object v0, p0, Ljp/co/dimage/android/f;->I:Ljp/co/dimage/android/c;

    invoke-virtual {v0}, Ljp/co/dimage/android/c;->E()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljp/co/dimage/android/f;->K:Ljava/lang/String;

    iget-object v0, p0, Ljp/co/dimage/android/f;->I:Ljp/co/dimage/android/c;

    invoke-virtual {v0}, Ljp/co/dimage/android/c;->G()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljp/co/dimage/android/f;->L:Ljava/lang/String;

    iget-object v0, p0, Ljp/co/dimage/android/f;->I:Ljp/co/dimage/android/c;

    invoke-virtual {v0}, Ljp/co/dimage/android/c;->I()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljp/co/dimage/android/f;->M:Ljava/lang/String;

    iget-object v0, p0, Ljp/co/dimage/android/f;->I:Ljp/co/dimage/android/c;

    invoke-virtual {v0}, Ljp/co/dimage/android/c;->J()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljp/co/dimage/android/f;->k:Ljava/lang/String;

    iget-object v0, p0, Ljp/co/dimage/android/f;->I:Ljp/co/dimage/android/c;

    invoke-virtual {v0}, Ljp/co/dimage/android/c;->K()Z

    move-result v0

    iput-boolean v0, p0, Ljp/co/dimage/android/f;->q:Z

    iget-object v0, p0, Ljp/co/dimage/android/f;->J:Ljava/lang/String;

    invoke-static {v0}, Ljp/co/dimage/android/l;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Ljp/co/dimage/android/f;->J:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Ljp/co/dimage/android/f;->K:Ljava/lang/String;

    invoke-static {v0}, Ljp/co/dimage/android/l;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    iput-object v0, p0, Ljp/co/dimage/android/f;->K:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Ljp/co/dimage/android/f;->L:Ljava/lang/String;

    invoke-static {v0}, Ljp/co/dimage/android/l;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ""

    iput-object v0, p0, Ljp/co/dimage/android/f;->L:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Ljp/co/dimage/android/f;->M:Ljava/lang/String;

    invoke-static {v0}, Ljp/co/dimage/android/l;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, ""

    iput-object v0, p0, Ljp/co/dimage/android/f;->M:Ljava/lang/String;

    :cond_3
    invoke-direct {p0}, Ljp/co/dimage/android/f;->i()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/Uri;->isHierarchical()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Ljp/co/dimage/android/f;->a(Landroid/net/Uri;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Ljp/co/dimage/android/f;->I:Ljp/co/dimage/android/c;

    invoke-virtual {v1, v0}, Ljp/co/dimage/android/c;->a(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/co/dimage/android/f;->I:Ljp/co/dimage/android/c;

    invoke-virtual {v0}, Ljp/co/dimage/android/c;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljp/co/dimage/android/f;->h:Ljava/lang/String;

    iget-object v0, p0, Ljp/co/dimage/android/f;->I:Ljp/co/dimage/android/c;

    invoke-virtual {v0}, Ljp/co/dimage/android/c;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljp/co/dimage/android/f;->m:Ljava/lang/String;

    invoke-direct {p0}, Ljp/co/dimage/android/f;->l()V

    goto :goto_0
.end method

.method public a(Landroid/net/Uri;)V
    .locals 1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Ljp/co/dimage/android/f;->I:Ljp/co/dimage/android/c;

    invoke-virtual {v0, p1}, Ljp/co/dimage/android/c;->a(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/co/dimage/android/f;->I:Ljp/co/dimage/android/c;

    invoke-virtual {v0}, Ljp/co/dimage/android/c;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljp/co/dimage/android/f;->h:Ljava/lang/String;

    iget-object v0, p0, Ljp/co/dimage/android/f;->I:Ljp/co/dimage/android/c;

    invoke-virtual {v0}, Ljp/co/dimage/android/c;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljp/co/dimage/android/f;->m:Ljava/lang/String;

    iget-object v0, p0, Ljp/co/dimage/android/f;->I:Ljp/co/dimage/android/c;

    invoke-virtual {v0, p1}, Ljp/co/dimage/android/c;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljp/co/dimage/android/f;->X:Ljava/lang/String;

    invoke-direct {p0}, Ljp/co/dimage/android/f;->l()V

    goto :goto_0
.end method

.method public a(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Ljp/co/dimage/android/f;->F:Ljava/lang/Integer;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Ljp/co/dimage/android/f;->I:Ljp/co/dimage/android/c;

    invoke-virtual {v0}, Ljp/co/dimage/android/c;->f()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Ljp/co/dimage/android/f;->T:Ljava/lang/String;

    sget-object v0, Ljp/co/dimage/android/f$a;->b:Ljp/co/dimage/android/f$a;

    invoke-direct {p0, v0}, Ljp/co/dimage/android/f;->c(Ljp/co/dimage/android/f$a;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Ljp/co/dimage/android/f;->c:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljp/co/dimage/android/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput-object p3, p0, Ljp/co/dimage/android/f;->N:Ljava/lang/String;

    iput-object p2, p0, Ljp/co/dimage/android/f;->O:Ljava/lang/String;

    iget-object v0, p0, Ljp/co/dimage/android/f;->f:Ljava/lang/String;

    invoke-static {v0}, Ljp/co/dimage/android/l;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "http://app-adforce.jp/ad"

    iput-object v0, p0, Ljp/co/dimage/android/f;->f:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0, p1}, Ljp/co/dimage/android/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljp/co/dimage/android/f$a;)V
    .locals 3

    iget-boolean v0, p0, Ljp/co/dimage/android/f;->w:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ljp/co/dimage/android/f;->B:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Ljp/co/dimage/android/f;->y:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Ljp/co/dimage/android/f;->j()V

    :cond_2
    iget-boolean v0, p0, Ljp/co/dimage/android/f;->D:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljp/co/dimage/android/Fingerprint;

    invoke-direct {v0}, Ljp/co/dimage/android/Fingerprint;-><init>()V

    iput-object v0, p0, Ljp/co/dimage/android/f;->W:Ljp/co/dimage/android/Fingerprint;

    iget-object v0, p0, Ljp/co/dimage/android/f;->W:Ljp/co/dimage/android/Fingerprint;

    iget-object v1, p0, Ljp/co/dimage/android/f;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljp/co/dimage/android/Fingerprint;->a(Ljava/lang/String;)V

    iget-object v0, p0, Ljp/co/dimage/android/f;->W:Ljp/co/dimage/android/Fingerprint;

    invoke-virtual {v0, p0}, Ljp/co/dimage/android/Fingerprint;->a(Ljp/co/dimage/android/f;)V

    iget-object v0, p0, Ljp/co/dimage/android/f;->W:Ljp/co/dimage/android/Fingerprint;

    invoke-virtual {v0, p1}, Ljp/co/dimage/android/Fingerprint;->a(Ljp/co/dimage/android/f$a;)V

    iget-object v0, p0, Ljp/co/dimage/android/f;->W:Ljp/co/dimage/android/Fingerprint;

    iget-object v1, p0, Ljp/co/dimage/android/f;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljp/co/dimage/android/Fingerprint;->a(Landroid/content/Context;)V

    :cond_3
    iget-boolean v0, p0, Ljp/co/dimage/android/f;->D:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Ljp/co/dimage/android/f;->E:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Ljp/co/dimage/android/f;->y:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Ljp/co/dimage/android/f;->F:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_5

    :cond_4
    new-instance v0, Ljp/co/dimage/android/k;

    iget-object v1, p0, Ljp/co/dimage/android/f;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p1}, Ljp/co/dimage/android/k;-><init>(Landroid/content/Context;Ljp/co/dimage/android/f;Ljp/co/dimage/android/f$a;)V

    iget-object v1, p0, Ljp/co/dimage/android/f;->F:Ljava/lang/Integer;

    new-instance v2, Ljp/co/dimage/android/f$1;

    invoke-direct {v2, p0}, Ljp/co/dimage/android/f$1;-><init>(Ljp/co/dimage/android/f;)V

    invoke-virtual {v0, v1, v2}, Ljp/co/dimage/android/k;->a(Ljava/lang/Integer;Ljp/co/dimage/android/k$b;)V

    goto :goto_0

    :cond_5
    invoke-direct {p0, p1}, Ljp/co/dimage/android/f;->b(Ljp/co/dimage/android/f$a;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Ljp/co/dimage/android/f;->v:Z

    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Ljp/co/dimage/android/f;->P:Ljava/lang/String;

    invoke-static {v0}, Ljp/co/dimage/android/l;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 2

    const/4 v1, 0x1

    const-string v0, "__ADMAGE_WEB_CONVERSION_COMPLETED__"

    invoke-direct {p0, v0}, Ljp/co/dimage/android/f;->h(Ljava/lang/String;)V

    iput-boolean v1, p0, Ljp/co/dimage/android/f;->r:Z

    const-string v0, "__ADMAGE_CONVERSION_PAGE_OPENED__"

    invoke-direct {p0, v0}, Ljp/co/dimage/android/f;->h(Ljava/lang/String;)V

    iput-boolean v1, p0, Ljp/co/dimage/android/f;->t:Z

    return-void
.end method

.method public b(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Ljp/co/dimage/android/f;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Ljp/co/dimage/android/f$a;->c:Ljp/co/dimage/android/f$a;

    invoke-direct {p0, v0}, Ljp/co/dimage/android/f;->c(Ljp/co/dimage/android/f$a;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Ljp/co/dimage/android/f;->o()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Ljp/co/dimage/android/f;->I:Ljp/co/dimage/android/c;

    invoke-virtual {v1}, Ljp/co/dimage/android/c;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Ljp/co/dimage/android/f$a;->c:Ljp/co/dimage/android/f$a;

    const/4 v2, 0x1

    invoke-direct {p0, v1, p1, v2}, Ljp/co/dimage/android/f;->a(Ljp/co/dimage/android/f$a;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljp/co/dimage/android/f;->b()V

    :cond_0
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Ljp/co/dimage/android/f;->b(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljp/co/dimage/android/f;->P:Ljava/lang/String;

    iput-object p2, p0, Ljp/co/dimage/android/f;->Q:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-static {p3}, Ljp/co/dimage/android/l;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p2, p0, Ljp/co/dimage/android/f;->N:Ljava/lang/String;

    iput-object p1, p0, Ljp/co/dimage/android/f;->O:Ljava/lang/String;

    iput-object p3, p0, Ljp/co/dimage/android/f;->c:Ljava/lang/String;

    iget-object v0, p0, Ljp/co/dimage/android/f;->I:Ljp/co/dimage/android/c;

    invoke-virtual {v0}, Ljp/co/dimage/android/c;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljp/co/dimage/android/l;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    iget-object v0, p0, Ljp/co/dimage/android/f;->f:Ljava/lang/String;

    invoke-static {v0}, Ljp/co/dimage/android/l;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "http://app-adforce.jp/ad"

    iput-object v0, p0, Ljp/co/dimage/android/f;->f:Ljava/lang/String;

    :cond_3
    invoke-direct {p0}, Ljp/co/dimage/android/f;->n()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljp/co/dimage/android/h;

    iget-object v2, p0, Ljp/co/dimage/android/f;->I:Ljp/co/dimage/android/c;

    invoke-direct {v1, v2, p3}, Ljp/co/dimage/android/h;-><init>(Ljp/co/dimage/android/c;Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Ljp/co/dimage/android/h;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Ljp/co/dimage/android/f;->w:Z

    return-void
.end method

.method public c()V
    .locals 1

    const-string v0, "__ADMAGE_APP_CONVERSION_COMPLETED__"

    invoke-direct {p0, v0}, Ljp/co/dimage/android/f;->h(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljp/co/dimage/android/f;->s:Z

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Ljp/co/dimage/android/f;->I:Ljp/co/dimage/android/c;

    invoke-virtual {v0, p1}, Ljp/co/dimage/android/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Ljp/co/dimage/android/f;->I:Ljp/co/dimage/android/c;

    invoke-virtual {v0}, Ljp/co/dimage/android/c;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljp/co/dimage/android/f;->h:Ljava/lang/String;

    iget-object v0, p0, Ljp/co/dimage/android/f;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/co/dimage/android/f;->i:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljp/co/dimage/android/f$a;->a:Ljp/co/dimage/android/f$a;

    invoke-direct {p0, v0}, Ljp/co/dimage/android/f;->c(Ljp/co/dimage/android/f$a;)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "default"

    invoke-virtual {p0, v0, p1, p2}, Ljp/co/dimage/android/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Ljp/co/dimage/android/f;->x:Z

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Ljp/co/dimage/android/f;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Ljp/co/dimage/android/f;->I:Ljp/co/dimage/android/c;

    invoke-virtual {v0, p1}, Ljp/co/dimage/android/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Ljp/co/dimage/android/f;->I:Ljp/co/dimage/android/c;

    invoke-virtual {v0}, Ljp/co/dimage/android/c;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ljp/co/dimage/android/f;->s:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ljp/co/dimage/android/f;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljp/co/dimage/android/f$a;->b:Ljp/co/dimage/android/f$a;

    invoke-direct {p0, v0, v4}, Ljp/co/dimage/android/f;->a(Ljp/co/dimage/android/f$a;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljp/co/dimage/android/g;

    iget-object v2, p0, Ljp/co/dimage/android/f;->I:Ljp/co/dimage/android/c;

    const-string v3, "__ADMAGE_LINE_FC_CONVERSION_COMPLETED__"

    invoke-direct {v1, v2, v3}, Ljp/co/dimage/android/g;-><init>(Ljp/co/dimage/android/c;Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Ljp/co/dimage/android/g;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Ljp/co/dimage/android/f;->y:Z

    return-void
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Ljp/co/dimage/android/f;->v:Z

    return v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Ljp/co/dimage/android/l;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljp/co/dimage/android/f;->a(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public e(Z)V
    .locals 0

    iput-boolean p1, p0, Ljp/co/dimage/android/f;->z:Z

    return-void
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Ljp/co/dimage/android/f;->x:Z

    return v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljp/co/dimage/android/f;->h(Ljava/lang/String;)V

    return-void
.end method

.method public f(Z)V
    .locals 0

    iput-boolean p1, p0, Ljp/co/dimage/android/f;->A:Z

    return-void
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Ljp/co/dimage/android/f;->y:Z

    return v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljp/co/dimage/android/f;->f:Ljava/lang/String;

    return-void
.end method

.method public g(Z)V
    .locals 0

    iput-boolean p1, p0, Ljp/co/dimage/android/f;->B:Z

    return-void
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Ljp/co/dimage/android/f;->D:Z

    return v0
.end method

.method public h(Z)V
    .locals 0

    iput-boolean p1, p0, Ljp/co/dimage/android/f;->C:Z

    return-void
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Ljp/co/dimage/android/f;->E:Z

    return v0
.end method

.method public i(Z)V
    .locals 0

    iput-boolean p1, p0, Ljp/co/dimage/android/f;->D:Z

    return-void
.end method

.method public j(Z)V
    .locals 0

    iput-boolean p1, p0, Ljp/co/dimage/android/f;->E:Z

    return-void
.end method

.method public k(Z)V
    .locals 0

    iput-boolean p1, p0, Ljp/co/dimage/android/f;->q:Z

    return-void
.end method
