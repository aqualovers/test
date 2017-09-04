.class Lcom/smrtbeat/F;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/smrtbeat/D;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:[I


# direct methods
.method constructor <init>(Lcom/smrtbeat/D;)V
    .locals 1

    iput-object p1, p0, Lcom/smrtbeat/F;->a:Lcom/smrtbeat/D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/smrtbeat/F;->p:[I

    return-void
.end method


# virtual methods
.method a(IZ)V
    .locals 7

    const/16 v6, 0x201

    const v5, 0x812f

    const/16 v4, 0x2600

    const/16 v3, 0xde1

    const/4 v2, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x84e0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    aget v1, v0, v2

    iput v1, p0, Lcom/smrtbeat/F;->b:I

    const v1, 0x84c0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const v1, 0x8069

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    aget v1, v0, v2

    iput v1, p0, Lcom/smrtbeat/F;->c:I

    const v1, 0x8b8d

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    aget v1, v0, v2

    iput v1, p0, Lcom/smrtbeat/F;->d:I

    const v1, 0x8895

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    aget v1, v0, v2

    iput v1, p0, Lcom/smrtbeat/F;->e:I

    const v1, 0x8894

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    aget v1, v0, v2

    iput v1, p0, Lcom/smrtbeat/F;->f:I

    const/16 v1, 0xbe2

    invoke-static {v1}, Landroid/opengl/GLES20;->glIsEnabled(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/smrtbeat/F;->g:Z

    iget-boolean v1, p0, Lcom/smrtbeat/F;->g:Z

    if-eqz v1, :cond_0

    const/16 v1, 0xbe2

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    :cond_0
    const/16 v1, 0xb44

    invoke-static {v1}, Landroid/opengl/GLES20;->glIsEnabled(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/smrtbeat/F;->h:Z

    iget-boolean v1, p0, Lcom/smrtbeat/F;->h:Z

    if-eqz v1, :cond_1

    const/16 v1, 0xb44

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    :cond_1
    const/16 v1, 0xb71

    invoke-static {v1}, Landroid/opengl/GLES20;->glIsEnabled(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/smrtbeat/F;->i:Z

    iget-boolean v1, p0, Lcom/smrtbeat/F;->i:Z

    if-eqz v1, :cond_2

    const/16 v1, 0xb71

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    :cond_2
    const/16 v1, 0xb74

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    aget v1, v0, v2

    iput v1, p0, Lcom/smrtbeat/F;->j:I

    iget v1, p0, Lcom/smrtbeat/F;->j:I

    if-eq v1, v6, :cond_3

    invoke-static {v6}, Landroid/opengl/GLES20;->glDepthFunc(I)V

    :cond_3
    if-lez p1, :cond_4

    invoke-static {v3, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    :cond_4
    if-eqz p2, :cond_8

    const/16 v1, 0x2800

    invoke-static {v3, v1, v0, v2}, Landroid/opengl/GLES20;->glGetTexParameteriv(II[II)V

    aget v1, v0, v2

    iput v1, p0, Lcom/smrtbeat/F;->k:I

    iget v1, p0, Lcom/smrtbeat/F;->k:I

    if-eq v1, v4, :cond_5

    const/16 v1, 0x2800

    invoke-static {v3, v1, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    :cond_5
    const/16 v1, 0x2801

    invoke-static {v3, v1, v0, v2}, Landroid/opengl/GLES20;->glGetTexParameteriv(II[II)V

    aget v1, v0, v2

    iput v1, p0, Lcom/smrtbeat/F;->l:I

    iget v1, p0, Lcom/smrtbeat/F;->l:I

    if-eq v1, v4, :cond_6

    const/16 v1, 0x2801

    invoke-static {v3, v1, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    :cond_6
    const/16 v1, 0x2802

    invoke-static {v3, v1, v0, v2}, Landroid/opengl/GLES20;->glGetTexParameteriv(II[II)V

    aget v1, v0, v2

    iput v1, p0, Lcom/smrtbeat/F;->m:I

    iget v1, p0, Lcom/smrtbeat/F;->m:I

    if-eq v1, v5, :cond_7

    const/16 v1, 0x2802

    invoke-static {v3, v1, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    :cond_7
    const/16 v1, 0x2803

    invoke-static {v3, v1, v0, v2}, Landroid/opengl/GLES20;->glGetTexParameteriv(II[II)V

    aget v1, v0, v2

    iput v1, p0, Lcom/smrtbeat/F;->n:I

    iget v1, p0, Lcom/smrtbeat/F;->n:I

    if-eq v1, v5, :cond_8

    const/16 v1, 0x2803

    invoke-static {v3, v1, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    :cond_8
    const v1, 0x8ca6

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    aget v0, v0, v2

    iput v0, p0, Lcom/smrtbeat/F;->o:I

    const/16 v0, 0xba2

    iget-object v1, p0, Lcom/smrtbeat/F;->p:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    return-void
.end method

.method a(ZZ)V
    .locals 8

    const v7, 0x812f

    const/16 v6, 0x2600

    const/16 v5, 0xde1

    if-eqz p2, :cond_0

    const v0, 0x8d40

    iget v1, p0, Lcom/smrtbeat/F;->o:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const/16 v0, 0x4100

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    :cond_0
    iget-object v0, p0, Lcom/smrtbeat/F;->p:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/smrtbeat/F;->p:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/smrtbeat/F;->p:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    iget-object v3, p0, Lcom/smrtbeat/F;->p:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    if-eqz p1, :cond_4

    iget v0, p0, Lcom/smrtbeat/F;->k:I

    if-eq v0, v6, :cond_1

    const/16 v0, 0x2800

    iget v1, p0, Lcom/smrtbeat/F;->k:I

    invoke-static {v5, v0, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    :cond_1
    iget v0, p0, Lcom/smrtbeat/F;->l:I

    if-eq v0, v6, :cond_2

    const/16 v0, 0x2801

    iget v1, p0, Lcom/smrtbeat/F;->l:I

    invoke-static {v5, v0, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    :cond_2
    iget v0, p0, Lcom/smrtbeat/F;->m:I

    if-eq v0, v7, :cond_3

    const/16 v0, 0x2802

    iget v1, p0, Lcom/smrtbeat/F;->m:I

    invoke-static {v5, v0, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    :cond_3
    iget v0, p0, Lcom/smrtbeat/F;->n:I

    if-eq v0, v7, :cond_4

    const/16 v0, 0x2803

    iget v1, p0, Lcom/smrtbeat/F;->n:I

    invoke-static {v5, v0, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    :cond_4
    iget v0, p0, Lcom/smrtbeat/F;->j:I

    const/16 v1, 0x201

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/smrtbeat/F;->j:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDepthFunc(I)V

    :cond_5
    iget-boolean v0, p0, Lcom/smrtbeat/F;->i:Z

    if-eqz v0, :cond_6

    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    :cond_6
    iget-boolean v0, p0, Lcom/smrtbeat/F;->h:Z

    if-eqz v0, :cond_7

    const/16 v0, 0xb44

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    :cond_7
    iget-boolean v0, p0, Lcom/smrtbeat/F;->g:Z

    if-eqz v0, :cond_8

    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    :cond_8
    iget v0, p0, Lcom/smrtbeat/F;->d:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const v0, 0x8893

    iget v1, p0, Lcom/smrtbeat/F;->e:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    const v0, 0x8892

    iget v1, p0, Lcom/smrtbeat/F;->f:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    iget v0, p0, Lcom/smrtbeat/F;->c:I

    invoke-static {v5, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v0, p0, Lcom/smrtbeat/F;->b:I

    const v1, 0x84c0

    if-eq v0, v1, :cond_9

    iget v0, p0, Lcom/smrtbeat/F;->b:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    :cond_9
    const-string v0, "restoreParams"

    invoke-static {v0}, Lcom/smrtbeat/D;->c(Ljava/lang/String;)V

    return-void
.end method
