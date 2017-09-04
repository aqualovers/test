.class Ljp/co/dimage/android/k$a;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/co/dimage/android/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Ljp/co/dimage/android/k;

.field private b:I

.field private c:Ljp/co/dimage/android/k$b;

.field private d:Ljp/co/dimage/android/k$c;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z


# direct methods
.method public constructor <init>(Ljp/co/dimage/android/k;I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-object p1, p0, Ljp/co/dimage/android/k$a;->a:Ljp/co/dimage/android/k;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Ljp/co/dimage/android/k$a;->b:I

    iput-object v2, p0, Ljp/co/dimage/android/k$a;->c:Ljp/co/dimage/android/k$b;

    iput-object v2, p0, Ljp/co/dimage/android/k$a;->d:Ljp/co/dimage/android/k$c;

    iput-boolean v1, p0, Ljp/co/dimage/android/k$a;->e:Z

    iput-boolean v1, p0, Ljp/co/dimage/android/k$a;->f:Z

    iput-boolean v1, p0, Ljp/co/dimage/android/k$a;->g:Z

    iput-boolean v1, p0, Ljp/co/dimage/android/k$a;->h:Z

    iput-boolean v1, p0, Ljp/co/dimage/android/k$a;->i:Z

    iput-boolean v1, p0, Ljp/co/dimage/android/k$a;->j:Z

    iput-boolean v1, p0, Ljp/co/dimage/android/k$a;->k:Z

    iput-boolean v1, p0, Ljp/co/dimage/android/k$a;->l:Z

    if-lez p2, :cond_0

    iput p2, p0, Ljp/co/dimage/android/k$a;->b:I

    :cond_0
    return-void
.end method

.method private a()Z
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p0, Ljp/co/dimage/android/k$a;->e:Z

    if-nez v1, :cond_0

    iput-boolean v0, p0, Ljp/co/dimage/android/k$a;->i:Z

    :cond_0
    iget-boolean v1, p0, Ljp/co/dimage/android/k$a;->f:Z

    if-nez v1, :cond_1

    iput-boolean v0, p0, Ljp/co/dimage/android/k$a;->j:Z

    :cond_1
    iget-boolean v1, p0, Ljp/co/dimage/android/k$a;->g:Z

    if-eqz v1, :cond_2

    invoke-static {}, Ljp/co/dimage/android/b;->b()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    iput-boolean v0, p0, Ljp/co/dimage/android/k$a;->k:Z

    :cond_3
    iget-boolean v1, p0, Ljp/co/dimage/android/k$a;->h:Z

    if-nez v1, :cond_4

    iput-boolean v0, p0, Ljp/co/dimage/android/k$a;->l:Z

    :cond_4
    iget-boolean v1, p0, Ljp/co/dimage/android/k$a;->i:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Ljp/co/dimage/android/k$a;->a:Ljp/co/dimage/android/k;

    invoke-static {v1}, Ljp/co/dimage/android/k;->a(Ljp/co/dimage/android/k;)Z

    move-result v1

    iput-boolean v1, p0, Ljp/co/dimage/android/k$a;->i:Z

    :cond_5
    iget-boolean v1, p0, Ljp/co/dimage/android/k$a;->j:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Ljp/co/dimage/android/k$a;->a:Ljp/co/dimage/android/k;

    invoke-static {v1}, Ljp/co/dimage/android/k;->b(Ljp/co/dimage/android/k;)Z

    move-result v1

    iput-boolean v1, p0, Ljp/co/dimage/android/k$a;->j:Z

    :cond_6
    iget-boolean v1, p0, Ljp/co/dimage/android/k$a;->k:Z

    if-nez v1, :cond_7

    iget-object v1, p0, Ljp/co/dimage/android/k$a;->a:Ljp/co/dimage/android/k;

    invoke-static {v1}, Ljp/co/dimage/android/k;->c(Ljp/co/dimage/android/k;)Z

    move-result v1

    iput-boolean v1, p0, Ljp/co/dimage/android/k$a;->k:Z

    :cond_7
    iget-boolean v1, p0, Ljp/co/dimage/android/k$a;->l:Z

    if-nez v1, :cond_8

    iget-object v1, p0, Ljp/co/dimage/android/k$a;->a:Ljp/co/dimage/android/k;

    invoke-static {v1}, Ljp/co/dimage/android/k;->d(Ljp/co/dimage/android/k;)Z

    move-result v1

    iput-boolean v1, p0, Ljp/co/dimage/android/k$a;->l:Z

    :cond_8
    iget-boolean v1, p0, Ljp/co/dimage/android/k$a;->i:Z

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Ljp/co/dimage/android/k$a;->j:Z

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Ljp/co/dimage/android/k$a;->k:Z

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Ljp/co/dimage/android/k$a;->l:Z

    if-eqz v1, :cond_9

    :goto_0
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    const/4 v4, 0x0

    iget v0, p0, Ljp/co/dimage/android/k$a;->b:I

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Ljp/co/dimage/android/k$a;->b:I

    if-ge v0, v1, :cond_0

    :try_start_0
    invoke-direct {p0}, Ljp/co/dimage/android/k$a;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catchall_0
    move-exception v1

    add-int/lit8 v0, v0, 0x1

    throw v1
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Ljp/co/dimage/android/k$a;->c:Ljp/co/dimage/android/k$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/co/dimage/android/k$a;->c:Ljp/co/dimage/android/k$b;

    iget-object v1, p0, Ljp/co/dimage/android/k$a;->a:Ljp/co/dimage/android/k;

    invoke-static {v1}, Ljp/co/dimage/android/k;->e(Ljp/co/dimage/android/k;)Ljp/co/dimage/android/f$a;

    move-result-object v1

    invoke-interface {v0, v1}, Ljp/co/dimage/android/k$b;->a(Ljp/co/dimage/android/f$a;)V

    :cond_0
    iget-object v0, p0, Ljp/co/dimage/android/k$a;->d:Ljp/co/dimage/android/k$c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljp/co/dimage/android/k$a;->d:Ljp/co/dimage/android/k$c;

    invoke-interface {v0}, Ljp/co/dimage/android/k$c;->a()V

    :cond_1
    return-void
.end method

.method public a(Ljp/co/dimage/android/k$b;)V
    .locals 0

    iput-object p1, p0, Ljp/co/dimage/android/k$a;->c:Ljp/co/dimage/android/k$b;

    return-void
.end method

.method public a(Ljp/co/dimage/android/k$c;)V
    .locals 0

    iput-object p1, p0, Ljp/co/dimage/android/k$a;->d:Ljp/co/dimage/android/k$c;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Ljp/co/dimage/android/k$a;->e:Z

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Ljp/co/dimage/android/k$a;->f:Z

    return-void
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Ljp/co/dimage/android/k$a;->g:Z

    return-void
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Ljp/co/dimage/android/k$a;->h:Z

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Ljp/co/dimage/android/k$a;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Ljp/co/dimage/android/k$a;->a(Ljava/lang/Void;)V

    return-void
.end method
