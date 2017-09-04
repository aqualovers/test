.class public Ljp/appAdForce/android/LtvManager;
.super Ljava/lang/Object;

# interfaces
.implements Ljp/co/dimage/android/e;


# static fields
.field public static final URL_PARAM_CURRENCY:Ljava/lang/String; = "_currency"

.field public static final URL_PARAM_OUT:Ljava/lang/String; = "_out"

.field public static final URL_PARAM_PRICE:Ljava/lang/String; = "_price"

.field public static final URL_PARAM_SKU:Ljava/lang/String; = "_sku"


# instance fields
.field private a:Ljp/co/dimage/android/c;

.field private b:Ljp/co/dimage/android/a/a;

.field private c:Ljp/appAdForce/android/AdManager;


# direct methods
.method public constructor <init>(Ljp/appAdForce/android/AdManager;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljp/appAdForce/android/LtvManager;->a:Ljp/co/dimage/android/c;

    iput-object v0, p0, Ljp/appAdForce/android/LtvManager;->b:Ljp/co/dimage/android/a/a;

    iput-object v0, p0, Ljp/appAdForce/android/LtvManager;->c:Ljp/appAdForce/android/AdManager;

    iput-object p1, p0, Ljp/appAdForce/android/LtvManager;->c:Ljp/appAdForce/android/AdManager;

    iget-object v0, p0, Ljp/appAdForce/android/LtvManager;->c:Ljp/appAdForce/android/AdManager;

    invoke-virtual {v0}, Ljp/appAdForce/android/AdManager;->a()Ljp/co/dimage/android/c;

    move-result-object v0

    iput-object v0, p0, Ljp/appAdForce/android/LtvManager;->a:Ljp/co/dimage/android/c;

    new-instance v0, Ljp/co/dimage/android/a/a;

    iget-object v1, p0, Ljp/appAdForce/android/LtvManager;->a:Ljp/co/dimage/android/c;

    invoke-direct {v0, v1}, Ljp/co/dimage/android/a/a;-><init>(Ljp/co/dimage/android/c;)V

    iput-object v0, p0, Ljp/appAdForce/android/LtvManager;->b:Ljp/co/dimage/android/a/a;

    return-void
.end method


# virtual methods
.method public addParam(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Ljp/appAdForce/android/LtvManager;->b:Ljp/co/dimage/android/a/a;

    invoke-virtual {v0, p1, p2}, Ljp/co/dimage/android/a/a;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public addParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Ljp/appAdForce/android/LtvManager;->b:Ljp/co/dimage/android/a/a;

    invoke-virtual {v0, p1, p2}, Ljp/co/dimage/android/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public clearParam()V
    .locals 1

    iget-object v0, p0, Ljp/appAdForce/android/LtvManager;->b:Ljp/co/dimage/android/a/a;

    invoke-virtual {v0}, Ljp/co/dimage/android/a/a;->d()V

    return-void
.end method

.method public ltvOpenBrowser(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Ljp/appAdForce/android/LtvManager;->b:Ljp/co/dimage/android/a/a;

    invoke-virtual {v0, p1}, Ljp/co/dimage/android/a/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public sendLtvConversion(I)V
    .locals 3

    iget-object v0, p0, Ljp/appAdForce/android/LtvManager;->b:Ljp/co/dimage/android/a/a;

    const-string v1, "_cvpoint"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljp/co/dimage/android/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Ljp/appAdForce/android/LtvManager;->b:Ljp/co/dimage/android/a/a;

    invoke-virtual {v0}, Ljp/co/dimage/android/a/a;->a()V

    return-void
.end method

.method public sendLtvConversion(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Ljp/appAdForce/android/LtvManager;->b:Ljp/co/dimage/android/a/a;

    const-string v1, "_cvpoint"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljp/co/dimage/android/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Ljp/appAdForce/android/LtvManager;->b:Ljp/co/dimage/android/a/a;

    const-string v1, "_buid"

    invoke-virtual {v0, v1, p2}, Ljp/co/dimage/android/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Ljp/appAdForce/android/LtvManager;->b:Ljp/co/dimage/android/a/a;

    invoke-virtual {v0}, Ljp/co/dimage/android/a/a;->a()V

    return-void
.end method

.method public setLtvCookie(Landroid/webkit/WebView;)V
    .locals 1

    iget-object v0, p0, Ljp/appAdForce/android/LtvManager;->b:Ljp/co/dimage/android/a/a;

    invoke-virtual {v0, p1}, Ljp/co/dimage/android/a/a;->a(Landroid/webkit/WebView;)V

    iget-object v0, p0, Ljp/appAdForce/android/LtvManager;->b:Ljp/co/dimage/android/a/a;

    invoke-virtual {v0}, Ljp/co/dimage/android/a/a;->b()V

    iget-object v0, p0, Ljp/appAdForce/android/LtvManager;->b:Ljp/co/dimage/android/a/a;

    invoke-virtual {v0}, Ljp/co/dimage/android/a/a;->c()V

    return-void
.end method
