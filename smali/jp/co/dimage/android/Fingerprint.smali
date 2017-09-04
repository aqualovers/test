.class public Ljp/co/dimage/android/Fingerprint;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljp/co/dimage/android/f;

.field private e:Ljp/co/dimage/android/f$a;

.field private f:Landroid/content/Context;

.field private g:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Ljp/co/dimage/android/Fingerprint;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Ljp/co/dimage/android/Fingerprint;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Ljp/co/dimage/android/Fingerprint;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    iput-object p1, p0, Ljp/co/dimage/android/Fingerprint;->f:Landroid/content/Context;

    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ljp/co/dimage/android/Fingerprint;->g:Landroid/webkit/WebView;

    iget-object v0, p0, Ljp/co/dimage/android/Fingerprint;->g:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Ljp/co/dimage/android/Fingerprint;->g:Landroid/webkit/WebView;

    const-string v1, "droid"

    invoke-virtual {v0, p0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ljp/co/dimage/android/Fingerprint;->c:Ljava/lang/String;

    invoke-static {v0}, Ljp/co/dimage/android/l;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ljp/co/dimage/android/Fingerprint;->g:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ljp/co/dimage/android/Fingerprint;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/view/collect.html"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljp/co/dimage/android/Fingerprint;->c:Ljava/lang/String;

    return-void
.end method

.method public a(Ljp/co/dimage/android/f$a;)V
    .locals 0

    iput-object p1, p0, Ljp/co/dimage/android/Fingerprint;->e:Ljp/co/dimage/android/f$a;

    return-void
.end method

.method public a(Ljp/co/dimage/android/f;)V
    .locals 0

    iput-object p1, p0, Ljp/co/dimage/android/Fingerprint;->d:Ljp/co/dimage/android/f;

    return-void
.end method

.method public setFingerprintId(Ljava/lang/String;J)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iput-object p1, p0, Ljp/co/dimage/android/Fingerprint;->a:Ljava/lang/String;

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljp/co/dimage/android/Fingerprint;->b:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Ljp/co/dimage/android/Fingerprint;->d:Ljp/co/dimage/android/f;

    iget-object v1, p0, Ljp/co/dimage/android/Fingerprint;->a:Ljava/lang/String;

    iget-object v2, p0, Ljp/co/dimage/android/Fingerprint;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljp/co/dimage/android/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
