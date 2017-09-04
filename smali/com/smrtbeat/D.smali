.class Lcom/smrtbeat/D;
.super Ljava/lang/Object;


# static fields
.field private static A:Lcom/smrtbeat/D; = null

.field private static final a:I = 0x4

.field private static final b:I = 0x8


# instance fields
.field private final B:Ljava/lang/String;

.field private final C:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Z

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:Ljava/nio/ByteBuffer;

.field private p:Landroid/graphics/Bitmap;

.field private q:Landroid/graphics/Bitmap;

.field private r:Landroid/graphics/Canvas;

.field private s:Ljava/lang/Thread;

.field private t:Z

.field private u:Z

.field private v:J

.field private w:Z

.field private x:Ljava/nio/FloatBuffer;

.field private y:Ljava/nio/FloatBuffer;

.field private z:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/smrtbeat/D;->A:Lcom/smrtbeat/D;

    return-void
.end method

.method constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/smrtbeat/D;->f:I

    iput-boolean v2, p0, Lcom/smrtbeat/D;->g:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/smrtbeat/D;->h:I

    iput v2, p0, Lcom/smrtbeat/D;->i:I

    iput v2, p0, Lcom/smrtbeat/D;->j:I

    iput v2, p0, Lcom/smrtbeat/D;->k:I

    iput v2, p0, Lcom/smrtbeat/D;->l:I

    iput v2, p0, Lcom/smrtbeat/D;->m:I

    iput v2, p0, Lcom/smrtbeat/D;->n:I

    iput-object v3, p0, Lcom/smrtbeat/D;->o:Ljava/nio/ByteBuffer;

    iput-object v3, p0, Lcom/smrtbeat/D;->p:Landroid/graphics/Bitmap;

    iput-object v3, p0, Lcom/smrtbeat/D;->q:Landroid/graphics/Bitmap;

    iput-object v3, p0, Lcom/smrtbeat/D;->r:Landroid/graphics/Canvas;

    iput-object v3, p0, Lcom/smrtbeat/D;->s:Ljava/lang/Thread;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smrtbeat/D;->t:Z

    iput-boolean v2, p0, Lcom/smrtbeat/D;->u:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/smrtbeat/D;->v:J

    iput-boolean v2, p0, Lcom/smrtbeat/D;->w:Z

    iput-object v3, p0, Lcom/smrtbeat/D;->x:Ljava/nio/FloatBuffer;

    iput-object v3, p0, Lcom/smrtbeat/D;->y:Ljava/nio/FloatBuffer;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smrtbeat/D;->z:Ljava/util/List;

    const-string v0, "attribute vec2 aPosition;\nattribute vec2 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = vec4(aPosition, 0.0, 1.0);\n  vTextureCoord = aTextureCoord;\n}\n"

    iput-object v0, p0, Lcom/smrtbeat/D;->B:Ljava/lang/String;

    const-string v0, "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    iput-object v0, p0, Lcom/smrtbeat/D;->C:Ljava/lang/String;

    return-void
.end method

.method private a(ILjava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const v3, 0x8b81

    invoke-static {v1, v3, v2, v0}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    aget v2, v2, v0

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    const/4 v6, 0x1

    const/4 v0, 0x0

    const v1, 0x8b31

    invoke-direct {p0, v1, p1}, Lcom/smrtbeat/D;->a(ILjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const v1, 0x8b30

    invoke-direct {p0, v1, p2}, Lcom/smrtbeat/D;->a(ILjava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    const-string v4, "glAttachShader"

    invoke-static {v4}, Lcom/smrtbeat/D;->e(Ljava/lang/String;)V

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    const-string v4, "glAttachShader"

    invoke-static {v4}, Lcom/smrtbeat/D;->e(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    new-array v4, v6, [I

    const v5, 0x8b82

    invoke-static {v1, v5, v4, v0}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v4, v4, v0

    if-eq v4, v6, :cond_2

    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    invoke-static {v3}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/smrtbeat/D;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/smrtbeat/D;->p:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private a(IIIIIZFZ)V
    .locals 9

    const/16 v0, 0x8

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    iget v0, p0, Lcom/smrtbeat/D;->c:I

    iget v6, p0, Lcom/smrtbeat/D;->d:I

    iget v7, p0, Lcom/smrtbeat/D;->e:I

    int-to-float v2, p4

    int-to-float v3, p3

    div-float/2addr v2, v3

    div-float v2, v2, p7

    int-to-float v3, p5

    int-to-float v4, p3

    div-float/2addr v3, v4

    div-float v3, v3, p7

    const/16 v4, 0x8

    new-array v8, v4, [F

    if-eqz p8, :cond_0

    const/4 v2, 0x0

    const/4 v4, 0x0

    aput v4, v8, v2

    const/4 v2, 0x1

    aput v3, v8, v2

    const/4 v2, 0x2

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v8, v2

    const/4 v2, 0x3

    aput v3, v8, v2

    const/4 v2, 0x4

    const/4 v4, 0x0

    aput v4, v8, v2

    const/4 v2, 0x5

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v4, v3, v4

    aput v4, v8, v2

    const/4 v2, 0x6

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v8, v2

    const/4 v2, 0x7

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v3, v4

    aput v3, v8, v2

    :goto_0
    invoke-static {p2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget-object v2, p0, Lcom/smrtbeat/D;->x:Ljava/nio/FloatBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v2, p0, Lcom/smrtbeat/D;->x:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/smrtbeat/D;->x:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget-object v0, p0, Lcom/smrtbeat/D;->y:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/smrtbeat/D;->y:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v8}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    invoke-static {v6}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/smrtbeat/D;->y:Ljava/nio/FloatBuffer;

    move v0, v6

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v0, 0xde1

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/4 v0, 0x0

    invoke-static {v7, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const/16 v0, 0xde1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v8, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput v5, v8, v4

    const/4 v4, 0x2

    aput v2, v8, v4

    const/4 v4, 0x3

    const/4 v5, 0x0

    aput v5, v8, v4

    const/4 v4, 0x4

    const/4 v5, 0x0

    aput v5, v8, v4

    const/4 v4, 0x5

    aput v3, v8, v4

    const/4 v4, 0x6

    aput v2, v8, v4

    const/4 v2, 0x7

    aput v3, v8, v2

    goto :goto_0

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic a(Lcom/smrtbeat/D;Ljava/lang/Thread;)V
    .locals 0

    iput-object p1, p0, Lcom/smrtbeat/D;->s:Ljava/lang/Thread;

    return-void
.end method

.method static a(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/smrtbeat/D;->e()Lcom/smrtbeat/D;

    move-result-object v0

    iget-object v0, v0, Lcom/smrtbeat/D;->z:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static a(Z)V
    .locals 1

    invoke-static {}, Lcom/smrtbeat/D;->e()Lcom/smrtbeat/D;

    move-result-object v0

    invoke-direct {v0}, Lcom/smrtbeat/D;->g()V

    invoke-static {}, Lcom/smrtbeat/D;->e()Lcom/smrtbeat/D;

    move-result-object v0

    iput-boolean p0, v0, Lcom/smrtbeat/D;->w:Z

    return-void
.end method

.method static a()Z
    .locals 1

    invoke-static {}, Lcom/smrtbeat/D;->e()Lcom/smrtbeat/D;

    move-result-object v0

    invoke-direct {v0}, Lcom/smrtbeat/D;->h()V

    const-string v0, "beginOnDrawFrame"

    invoke-static {v0}, Lcom/smrtbeat/D;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/smrtbeat/D;->e()Lcom/smrtbeat/D;

    move-result-object v0

    iget-boolean v0, v0, Lcom/smrtbeat/D;->t:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/smrtbeat/D;->e()Lcom/smrtbeat/D;

    move-result-object v0

    iget-boolean v0, v0, Lcom/smrtbeat/D;->u:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(II)Z
    .locals 12

    const/16 v11, 0x2600

    const v10, 0x8d40

    const/16 v0, 0xde1

    const/4 v9, 0x1

    const/4 v1, 0x0

    new-array v4, v9, [I

    invoke-direct {p0, p1, p2}, Lcom/smrtbeat/D;->c(II)I

    move-result v3

    invoke-static {v9, v4, v1}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    aget v2, v4, v1

    iput v2, p0, Lcom/smrtbeat/D;->i:I

    iget v2, p0, Lcom/smrtbeat/D;->i:I

    invoke-static {v10, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x12

    if-lt v2, v5, :cond_5

    move v2, v9

    :goto_0
    iget v5, p0, Lcom/smrtbeat/D;->n:I

    invoke-static {p1, p2, v5, v2}, Lcom/smrtbeat/SmartBeatJni;->newImageTargetTexture(IIII)I

    move-result v2

    iput v2, p0, Lcom/smrtbeat/D;->k:I

    iget v2, p0, Lcom/smrtbeat/D;->k:I

    if-gtz v2, :cond_0

    invoke-static {v9, v4, v1}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    iput v1, p0, Lcom/smrtbeat/D;->i:I

    :goto_1
    return v1

    :cond_0
    iget v2, p0, Lcom/smrtbeat/D;->k:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v2, 0x2801

    invoke-static {v0, v2, v11}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0x2800

    invoke-static {v0, v2, v11}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const v2, 0x8ce0

    iget v5, p0, Lcom/smrtbeat/D;->k:I

    invoke-static {v10, v2, v0, v5, v1}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    invoke-static {v10}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result v2

    const v5, 0x8cd5

    if-eq v2, v5, :cond_1

    sget-object v0, Lcom/smrtbeat/ad;->a:Lcom/smrtbeat/ad;

    const-string v3, "failed to init fbo1 : %d"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/smrtbeat/aa;->a(Lcom/smrtbeat/ad;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-static {v9, v4, v1}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    aget v2, v4, v1

    iput v2, p0, Lcom/smrtbeat/D;->h:I

    iget v2, p0, Lcom/smrtbeat/D;->h:I

    invoke-static {v10, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    invoke-static {v9, v4, v1}, Landroid/opengl/GLES20;->glGenRenderbuffers(I[II)V

    const v2, 0x8d41

    aget v5, v4, v1

    invoke-static {v2, v5}, Landroid/opengl/GLES20;->glBindRenderbuffer(II)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x12

    if-lt v2, v5, :cond_2

    const v2, 0x8d41

    invoke-static {}, Lcom/smrtbeat/D;->k()I

    move-result v5

    invoke-static {v2, v5, v3, v3}, Landroid/opengl/GLES20;->glRenderbufferStorage(IIII)V

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v2

    if-eqz v2, :cond_3

    const v2, 0x8d41

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindRenderbuffer(II)V

    invoke-static {v9, v4, v1}, Landroid/opengl/GLES20;->glDeleteRenderbuffers(I[II)V

    :cond_2
    :goto_2
    invoke-static {v9, v4, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v2, v4, v1

    iput v2, p0, Lcom/smrtbeat/D;->j:I

    iget v2, p0, Lcom/smrtbeat/D;->j:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v2, 0x1908

    const/16 v6, 0x1908

    const/16 v7, 0x1401

    const/4 v8, 0x0

    move v4, v3

    move v5, v1

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const/16 v2, 0x2801

    invoke-static {v0, v2, v11}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0x2800

    invoke-static {v0, v2, v11}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0x2802

    const v3, 0x812f

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0x2803

    const v3, 0x812f

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const v2, 0x8ce0

    iget v3, p0, Lcom/smrtbeat/D;->j:I

    invoke-static {v10, v2, v0, v3, v1}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    invoke-static {v10}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result v0

    const v2, 0x8cd5

    if-eq v0, v2, :cond_4

    sget-object v2, Lcom/smrtbeat/ad;->a:Lcom/smrtbeat/ad;

    const-string v3, "failed to init fbo2 : %d"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/smrtbeat/aa;->a(Lcom/smrtbeat/ad;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    const v2, 0x8d20

    const v5, 0x8d41

    aget v6, v4, v1

    invoke-static {v10, v2, v5, v6}, Landroid/opengl/GLES20;->glFramebufferRenderbuffer(IIII)V

    goto :goto_2

    :cond_4
    const/16 v0, 0x20

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/smrtbeat/D;->x:Ljava/nio/FloatBuffer;

    const/16 v0, 0x20

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/smrtbeat/D;->y:Ljava/nio/FloatBuffer;

    move v1, v9

    goto/16 :goto_1

    :cond_5
    move v2, v1

    goto/16 :goto_0
.end method

.method private b(II)I
    .locals 5

    const/16 v0, 0x200

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/16 v1, 0x80

    mul-int v3, p1, p2

    :goto_0
    if-ge v1, v2, :cond_0

    if-lez v1, :cond_0

    mul-int v4, v1, v1

    if-le v4, v3, :cond_1

    :cond_0
    shr-int/lit8 v1, v1, 0x1

    if-le v1, v0, :cond_2

    :goto_1
    return v0

    :cond_1
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method static synthetic b(Lcom/smrtbeat/D;)Landroid/graphics/Canvas;
    .locals 1

    iget-object v0, p0, Lcom/smrtbeat/D;->r:Landroid/graphics/Canvas;

    return-object v0
.end method

.method static b()V
    .locals 1

    invoke-static {}, Lcom/smrtbeat/D;->e()Lcom/smrtbeat/D;

    move-result-object v0

    invoke-direct {v0}, Lcom/smrtbeat/D;->i()V

    const-string v0, "endOnDrawFrame"

    invoke-static {v0}, Lcom/smrtbeat/D;->e(Ljava/lang/String;)V

    return-void
.end method

.method static b(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/smrtbeat/u;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/smrtbeat/D;->e()Lcom/smrtbeat/D;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/smrtbeat/D;->d(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private c(II)I
    .locals 2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/16 v0, 0x100

    :goto_0
    if-ge v0, v1, :cond_0

    if-gtz v0, :cond_1

    :cond_0
    return v0

    :cond_1
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic c(Lcom/smrtbeat/D;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/smrtbeat/D;->q:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private c()V
    .locals 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/smrtbeat/D;->t:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/smrtbeat/D;->h:I

    if-gtz v0, :cond_0

    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    invoke-static {}, Lcom/smrtbeat/aa;->j()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/smrtbeat/D;->u:Z

    iget-boolean v1, p0, Lcom/smrtbeat/D;->u:Z

    if-nez v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-ge v1, v4, :cond_3

    sget-object v0, Lcom/smrtbeat/ad;->d:Lcom/smrtbeat/ad;

    const-string v1, "Not support ScreenCapture(GLES) (supports from Android 4.0)"

    invoke-static {v0, v1}, Lcom/smrtbeat/aa;->a(Lcom/smrtbeat/ad;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/smrtbeat/D;->t:Z

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    sget v1, Lcom/smrtbeat/g;->C:I

    const/4 v4, 0x2

    if-ge v1, v4, :cond_5

    sget v0, Lcom/smrtbeat/g;->C:I

    if-nez v0, :cond_4

    sget-object v0, Lcom/smrtbeat/ad;->b:Lcom/smrtbeat/ad;

    const-string v1, "OpenGLES version may not be set. Please set version!"

    invoke-static {v0, v1}, Lcom/smrtbeat/aa;->a(Lcom/smrtbeat/ad;Ljava/lang/String;)V

    :cond_4
    sget-object v0, Lcom/smrtbeat/ad;->d:Lcom/smrtbeat/ad;

    const-string v1, "Not support ScreenCapture(GLES) (supports from ES2.0)"

    invoke-static {v0, v1}, Lcom/smrtbeat/aa;->a(Lcom/smrtbeat/ad;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/smrtbeat/D;->t:Z

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/smrtbeat/D;->d()Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v0, Lcom/smrtbeat/ad;->d:Lcom/smrtbeat/ad;

    const-string v1, "Not supported ScreenCapture(GLES) (NDK load failed arch=%s)"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2}, Lcom/smrtbeat/aa;->a(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smrtbeat/aa;->a(Lcom/smrtbeat/ad;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/smrtbeat/D;->t:Z

    goto :goto_0

    :cond_6
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v1, :cond_7

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_8

    :cond_7
    sget-object v0, Lcom/smrtbeat/ad;->d:Lcom/smrtbeat/ad;

    const-string v1, "Not supported ScreenCapture(GLES) (model name is missing)"

    invoke-static {v0, v1}, Lcom/smrtbeat/aa;->a(Lcom/smrtbeat/ad;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/smrtbeat/D;->t:Z

    goto :goto_0

    :cond_8
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v1}, Lcom/smrtbeat/u;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/smrtbeat/D;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    iput-boolean v2, p0, Lcom/smrtbeat/D;->t:Z

    sget-object v0, Lcom/smrtbeat/ad;->d:Lcom/smrtbeat/ad;

    const-string v1, "Not support ScreenCapture(GLES) (unsupport model:%s)"

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smrtbeat/aa;->a(Lcom/smrtbeat/ad;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    iget-boolean v1, p0, Lcom/smrtbeat/D;->w:Z

    if-eqz v1, :cond_a

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-ge v1, v4, :cond_a

    sget-object v0, Lcom/smrtbeat/ad;->c:Lcom/smrtbeat/ad;

    const-string v1, "Android version must be JBMR2 or more for screen capture with Stencil Buffer."

    invoke-static {v0, v1}, Lcom/smrtbeat/aa;->a(Lcom/smrtbeat/ad;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/smrtbeat/D;->t:Z

    goto/16 :goto_0

    :cond_a
    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentDisplay()Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    const/16 v4, 0x3059

    invoke-interface {v0, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v4

    new-array v5, v3, [I

    const/16 v6, 0x3057

    invoke-interface {v0, v1, v4, v6, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglQuerySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;I[I)Z

    aget v6, v5, v2

    iput v6, p0, Lcom/smrtbeat/D;->l:I

    const/16 v6, 0x3056

    invoke-interface {v0, v1, v4, v6, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglQuerySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;I[I)Z

    aget v0, v5, v2

    iput v0, p0, Lcom/smrtbeat/D;->m:I

    iget v0, p0, Lcom/smrtbeat/D;->l:I

    if-lez v0, :cond_b

    iget v0, p0, Lcom/smrtbeat/D;->m:I

    if-gtz v0, :cond_e

    :cond_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_c

    invoke-static {}, Lcom/smrtbeat/J;->a()Landroid/graphics/Point;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Point;->x:I

    iput v1, p0, Lcom/smrtbeat/D;->l:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/smrtbeat/D;->m:I

    :cond_c
    iget v0, p0, Lcom/smrtbeat/D;->l:I

    if-lez v0, :cond_d

    iget v0, p0, Lcom/smrtbeat/D;->m:I

    if-gtz v0, :cond_e

    :cond_d
    iput-boolean v2, p0, Lcom/smrtbeat/D;->t:Z

    goto/16 :goto_0

    :cond_e
    iget v0, p0, Lcom/smrtbeat/D;->l:I

    iget v1, p0, Lcom/smrtbeat/D;->m:I

    invoke-direct {p0, v0, v1}, Lcom/smrtbeat/D;->b(II)I

    move-result v0

    iput v0, p0, Lcom/smrtbeat/D;->n:I

    const/16 v0, 0x1f00

    invoke-static {v0}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/smrtbeat/g;->W:Ljava/lang/String;

    const/16 v0, 0x1f01

    invoke-static {v0}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/smrtbeat/g;->X:Ljava/lang/String;

    const/16 v0, 0x1f02

    invoke-static {v0}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/smrtbeat/g;->Y:Ljava/lang/String;

    new-instance v0, Lcom/smrtbeat/F;

    invoke-direct {v0, p0}, Lcom/smrtbeat/F;-><init>(Lcom/smrtbeat/D;)V

    invoke-virtual {v0, v2, v3}, Lcom/smrtbeat/F;->a(IZ)V

    iget v1, p0, Lcom/smrtbeat/D;->l:I

    iget v4, p0, Lcom/smrtbeat/D;->m:I

    invoke-direct {p0, v1, v4}, Lcom/smrtbeat/D;->a(II)Z

    move-result v1

    iput-boolean v1, p0, Lcom/smrtbeat/D;->t:Z

    invoke-virtual {v0, v3, v3}, Lcom/smrtbeat/F;->a(ZZ)V

    iget-boolean v0, p0, Lcom/smrtbeat/D;->t:Z

    if-nez v0, :cond_f

    sget-object v0, Lcom/smrtbeat/ad;->d:Lcom/smrtbeat/ad;

    const-string v1, "Not support ScreenCapture(GLES) (failed to alloc memory)"

    invoke-static {v0, v1}, Lcom/smrtbeat/aa;->a(Lcom/smrtbeat/ad;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/smrtbeat/D;->g()V

    iput-boolean v2, p0, Lcom/smrtbeat/D;->t:Z

    goto/16 :goto_0

    :cond_f
    invoke-direct {p0}, Lcom/smrtbeat/D;->j()Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Lcom/smrtbeat/ad;->a:Lcom/smrtbeat/ad;

    const-string v1, "failed to init"

    invoke-static {v0, v1}, Lcom/smrtbeat/aa;->a(Lcom/smrtbeat/ad;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/smrtbeat/D;->g()V

    iput-boolean v2, p0, Lcom/smrtbeat/D;->t:Z

    goto/16 :goto_0

    :cond_10
    iget v0, p0, Lcom/smrtbeat/D;->n:I

    invoke-static {}, Lcom/smrtbeat/SmartBeatJni;->getTextureLongerSideLength()I

    move-result v0

    mul-int v1, v0, v0

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/smrtbeat/D;->o:Ljava/nio/ByteBuffer;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/smrtbeat/D;->p:Landroid/graphics/Bitmap;

    iget v0, p0, Lcom/smrtbeat/D;->l:I

    iget v1, p0, Lcom/smrtbeat/D;->m:I

    invoke-direct {p0, v0, v1}, Lcom/smrtbeat/D;->c(II)I

    move-result v0

    iget v1, p0, Lcom/smrtbeat/D;->n:I

    div-int/2addr v0, v1

    iget v1, p0, Lcom/smrtbeat/D;->l:I

    div-int/2addr v1, v0

    iget v2, p0, Lcom/smrtbeat/D;->m:I

    div-int v0, v2, v0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/smrtbeat/D;->q:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/smrtbeat/D;->q:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/smrtbeat/D;->r:Landroid/graphics/Canvas;

    goto/16 :goto_0
.end method

.method static synthetic c(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/smrtbeat/D;->e(Ljava/lang/String;)V

    return-void
.end method

.method private d()Z
    .locals 1

    sget-boolean v0, Lcom/smrtbeat/g;->B:Z

    return v0
.end method

.method private d(Ljava/lang/String;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/smrtbeat/D;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/smrtbeat/ad;->d:Lcom/smrtbeat/ad;

    const-string v3, "this model(%s) is allowd by custmer whitelist"

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smrtbeat/aa;->a(Lcom/smrtbeat/ad;Ljava/lang/String;)V

    move v0, v2

    goto :goto_0
.end method

.method private static e()Lcom/smrtbeat/D;
    .locals 2

    sget-object v0, Lcom/smrtbeat/D;->A:Lcom/smrtbeat/D;

    if-nez v0, :cond_1

    const-class v1, Lcom/smrtbeat/D;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/smrtbeat/D;->A:Lcom/smrtbeat/D;

    if-nez v0, :cond_0

    new-instance v0, Lcom/smrtbeat/D;

    invoke-direct {v0}, Lcom/smrtbeat/D;-><init>()V

    sput-object v0, Lcom/smrtbeat/D;->A:Lcom/smrtbeat/D;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/smrtbeat/D;->A:Lcom/smrtbeat/D;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static e(Ljava/lang/String;)V
    .locals 5

    :goto_0
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/smrtbeat/ad;->a:Lcom/smrtbeat/ad;

    const-string v2, "%s:glErrro %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/smrtbeat/aa;->a(Lcom/smrtbeat/ad;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private f()Z
    .locals 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/smrtbeat/D;->s:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/smrtbeat/D;->g:Z

    if-nez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/smrtbeat/D;->v:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3e8

    cmp-long v1, v4, v6

    if-ltz v1, :cond_0

    sget-boolean v1, Lcom/smrtbeat/g;->V:Z

    if-nez v1, :cond_0

    iput-wide v2, p0, Lcom/smrtbeat/D;->v:J

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private g()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string v0, "cleanup"

    invoke-static {v0}, Lcom/smrtbeat/D;->e(Ljava/lang/String;)V

    iput v1, p0, Lcom/smrtbeat/D;->f:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/smrtbeat/D;->h:I

    iput v1, p0, Lcom/smrtbeat/D;->i:I

    iput v1, p0, Lcom/smrtbeat/D;->l:I

    iput v1, p0, Lcom/smrtbeat/D;->m:I

    iget-object v0, p0, Lcom/smrtbeat/D;->p:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smrtbeat/D;->p:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/smrtbeat/D;->p:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/smrtbeat/D;->q:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/smrtbeat/h;->c:Lcom/smrtbeat/h;

    iget-object v1, p0, Lcom/smrtbeat/D;->q:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/smrtbeat/aa;->a(Lcom/smrtbeat/h;Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/smrtbeat/D;->q:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lcom/smrtbeat/D;->r:Landroid/graphics/Canvas;

    if-eqz v0, :cond_2

    iput-object v2, p0, Lcom/smrtbeat/D;->r:Landroid/graphics/Canvas;

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/smrtbeat/D;->v:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smrtbeat/D;->t:Z

    return-void
.end method

.method private h()V
    .locals 2

    invoke-direct {p0}, Lcom/smrtbeat/D;->c()V

    iget-boolean v0, p0, Lcom/smrtbeat/D;->t:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/smrtbeat/D;->u:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/smrtbeat/D;->h:I

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/smrtbeat/D;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x8d40

    iget v1, p0, Lcom/smrtbeat/D;->h:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const/16 v0, 0x4100

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smrtbeat/D;->g:Z

    goto :goto_0
.end method

.method private i()V
    .locals 10

    iget-boolean v0, p0, Lcom/smrtbeat/D;->t:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/smrtbeat/D;->u:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/smrtbeat/D;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x8ca6

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    const/4 v1, 0x0

    aget v0, v0, v1

    iget v1, p0, Lcom/smrtbeat/D;->h:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/smrtbeat/D;->l:I

    iget v1, p0, Lcom/smrtbeat/D;->m:I

    invoke-direct {p0, v0, v1}, Lcom/smrtbeat/D;->c(II)I

    move-result v3

    new-instance v9, Lcom/smrtbeat/F;

    invoke-direct {v9, p0}, Lcom/smrtbeat/F;-><init>(Lcom/smrtbeat/D;)V

    iget v0, p0, Lcom/smrtbeat/D;->j:I

    const/4 v1, 0x1

    invoke-virtual {v9, v0, v1}, Lcom/smrtbeat/F;->a(IZ)V

    const v0, 0x8d40

    iget v1, p0, Lcom/smrtbeat/D;->i:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const/16 v0, 0x4100

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v2, p0, Lcom/smrtbeat/D;->n:I

    iget v4, p0, Lcom/smrtbeat/D;->n:I

    invoke-static {v0, v1, v2, v4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    iget v1, p0, Lcom/smrtbeat/D;->j:I

    iget v2, p0, Lcom/smrtbeat/D;->f:I

    iget v4, p0, Lcom/smrtbeat/D;->l:I

    iget v5, p0, Lcom/smrtbeat/D;->m:I

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/smrtbeat/D;->a(IIIIIZFZ)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {v9, v0, v1}, Lcom/smrtbeat/F;->a(ZZ)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/smrtbeat/E;

    invoke-direct {v1, p0}, Lcom/smrtbeat/E;-><init>(Lcom/smrtbeat/D;)V

    iget-object v2, p0, Lcom/smrtbeat/D;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Lcom/smrtbeat/E;->a(Ljava/nio/ByteBuffer;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/smrtbeat/D;->s:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/smrtbeat/D;->s:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v9, Lcom/smrtbeat/F;

    invoke-direct {v9, p0}, Lcom/smrtbeat/F;-><init>(Lcom/smrtbeat/D;)V

    iget v0, p0, Lcom/smrtbeat/D;->j:I

    const/4 v1, 0x1

    invoke-virtual {v9, v0, v1}, Lcom/smrtbeat/F;->a(IZ)V

    const v0, 0x8d40

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const/16 v0, 0x4100

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v2, p0, Lcom/smrtbeat/D;->l:I

    iget v4, p0, Lcom/smrtbeat/D;->m:I

    invoke-static {v0, v1, v2, v4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    iget v1, p0, Lcom/smrtbeat/D;->j:I

    iget v2, p0, Lcom/smrtbeat/D;->f:I

    iget v4, p0, Lcom/smrtbeat/D;->l:I

    iget v5, p0, Lcom/smrtbeat/D;->m:I

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/smrtbeat/D;->a(IIIIIZFZ)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {v9, v0, v1}, Lcom/smrtbeat/F;->a(ZZ)V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smrtbeat/D;->g:Z

    goto/16 :goto_0
.end method

.method private j()Z
    .locals 4

    const/4 v0, 0x0

    const/4 v3, -0x1

    const-string v1, "attribute vec2 aPosition;\nattribute vec2 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = vec4(aPosition, 0.0, 1.0);\n  vTextureCoord = aTextureCoord;\n}\n"

    const-string v2, "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    invoke-direct {p0, v1, v2}, Lcom/smrtbeat/D;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/smrtbeat/D;->f:I

    iget v1, p0, Lcom/smrtbeat/D;->f:I

    const-string v2, "aPosition"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/smrtbeat/D;->c:I

    const-string v1, "glGetAttribLocation aPosition"

    invoke-static {v1}, Lcom/smrtbeat/D;->e(Ljava/lang/String;)V

    iget v1, p0, Lcom/smrtbeat/D;->c:I

    if-ne v1, v3, :cond_0

    sget-object v1, Lcom/smrtbeat/ad;->a:Lcom/smrtbeat/ad;

    const-string v2, "Could not get attrib location for aPosition"

    invoke-static {v1, v2}, Lcom/smrtbeat/aa;->a(Lcom/smrtbeat/ad;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcom/smrtbeat/D;->f:I

    const-string v2, "aTextureCoord"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/smrtbeat/D;->d:I

    const-string v1, "glGetAttribLocation aTextureCoord"

    invoke-static {v1}, Lcom/smrtbeat/D;->e(Ljava/lang/String;)V

    iget v1, p0, Lcom/smrtbeat/D;->d:I

    if-ne v1, v3, :cond_1

    sget-object v1, Lcom/smrtbeat/ad;->a:Lcom/smrtbeat/ad;

    const-string v2, "Could not get attrib location for aTextureCoord"

    invoke-static {v1, v2}, Lcom/smrtbeat/aa;->a(Lcom/smrtbeat/ad;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/smrtbeat/D;->f:I

    const-string v2, "sTexture"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/smrtbeat/D;->e:I

    const-string v1, "glGetAttribLocation sTexture"

    invoke-static {v1}, Lcom/smrtbeat/D;->e(Ljava/lang/String;)V

    iget v1, p0, Lcom/smrtbeat/D;->e:I

    if-ne v1, v3, :cond_2

    sget-object v1, Lcom/smrtbeat/ad;->a:Lcom/smrtbeat/ad;

    const-string v2, "Could not get attrib location for sTexture"

    invoke-static {v1, v2}, Lcom/smrtbeat/aa;->a(Lcom/smrtbeat/ad;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static k()I
    .locals 1

    const v0, 0x88f0

    return v0
.end method
