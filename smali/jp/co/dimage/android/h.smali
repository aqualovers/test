.class public Ljp/co/dimage/android/h;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/co/dimage/android/h$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljp/co/dimage/android/c;


# direct methods
.method public constructor <init>(Ljp/co/dimage/android/c;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object v0, p0, Ljp/co/dimage/android/h;->a:Ljava/lang/String;

    iput-object v0, p0, Ljp/co/dimage/android/h;->b:Ljp/co/dimage/android/c;

    iput-object p1, p0, Ljp/co/dimage/android/h;->b:Ljp/co/dimage/android/c;

    iput-object p2, p0, Ljp/co/dimage/android/h;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljp/co/dimage/android/h$a;
    .locals 6

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljp/co/dimage/android/h$a;

    invoke-direct {v0, p0}, Ljp/co/dimage/android/h$a;-><init>(Ljp/co/dimage/android/h;)V

    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    :try_start_0
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    const/16 v4, 0x1388

    invoke-static {v3, v4}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    const-string v4, "http.useragent"

    const-string v5, "ADMAGESMPHSDK/Android/3.1.0/CZ/{0}/{1}/{2}/GL"

    invoke-interface {v3, v4, v5}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    invoke-interface {v2, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    invoke-static {v0, v1}, Ljp/co/dimage/android/h$a;->a(Ljp/co/dimage/android/h$a;I)I

    invoke-static {v0}, Ljp/co/dimage/android/h$a;->a(Ljp/co/dimage/android/h$a;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    const/16 v3, 0xc8

    if-eq v1, v3, :cond_2

    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_0

    :catch_0
    move-exception v1

    const/16 v1, 0x1f7

    :try_start_1
    invoke-virtual {v0, v1}, Ljp/co/dimage/android/h$a;->a(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    throw v0
.end method

.method protected a(Ljp/co/dimage/android/h$a;)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0xc8

    invoke-virtual {p1}, Ljp/co/dimage/android/h$a;->a()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ljp/co/dimage/android/h;->b:Ljp/co/dimage/android/c;

    iget-object v1, p0, Ljp/co/dimage/android/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljp/co/dimage/android/c;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljp/co/dimage/android/h;->a([Ljava/lang/String;)Ljp/co/dimage/android/h$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljp/co/dimage/android/h$a;

    invoke-virtual {p0, p1}, Ljp/co/dimage/android/h;->a(Ljp/co/dimage/android/h$a;)V

    return-void
.end method
