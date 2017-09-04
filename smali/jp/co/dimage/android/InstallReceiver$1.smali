.class Ljp/co/dimage/android/InstallReceiver$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljp/co/dimage/android/InstallReceiver$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/co/dimage/android/InstallReceiver;->a(Ljp/co/dimage/android/c;Ljp/co/dimage/android/f;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljp/co/dimage/android/f;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljp/co/dimage/android/InstallReceiver;


# direct methods
.method constructor <init>(Ljp/co/dimage/android/InstallReceiver;Ljp/co/dimage/android/f;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljp/co/dimage/android/InstallReceiver$1;->c:Ljp/co/dimage/android/InstallReceiver;

    iput-object p2, p0, Ljp/co/dimage/android/InstallReceiver$1;->a:Ljp/co/dimage/android/f;

    iput-object p3, p0, Ljp/co/dimage/android/InstallReceiver$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Ljp/co/dimage/android/InstallReceiver$1;->a:Ljp/co/dimage/android/f;

    iget-object v1, p0, Ljp/co/dimage/android/InstallReceiver$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljp/co/dimage/android/f;->d(Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Ljp/co/dimage/android/InstallReceiver$1;->a:Ljp/co/dimage/android/f;

    iget-object v1, p0, Ljp/co/dimage/android/InstallReceiver$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljp/co/dimage/android/f;->c(Ljava/lang/String;)V

    return-void
.end method
