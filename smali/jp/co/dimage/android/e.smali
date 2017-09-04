.class public interface abstract Ljp/co/dimage/android/e;
.super Ljava/lang/Object;


# static fields
.field public static final n:[Ljava/lang/String;

.field public static final o:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_app"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "_xuid"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "_xtid"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "_xuniq"

    aput-object v2, v0, v1

    sput-object v0, Ljp/co/dimage/android/e;->n:[Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Ljp/co/dimage/android/e;->o:Ljava/lang/Boolean;

    return-void
.end method
