.class public final enum Ljp/co/dimage/android/c$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/co/dimage/android/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field public static final enum a:Ljp/co/dimage/android/c$a;

.field public static final enum b:Ljp/co/dimage/android/c$a;

.field public static final enum c:Ljp/co/dimage/android/c$a;

.field private static final synthetic d:[Ljp/co/dimage/android/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljp/co/dimage/android/c$a;

    const-string v1, "IMEI"

    invoke-direct {v0, v1, v2}, Ljp/co/dimage/android/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljp/co/dimage/android/c$a;->a:Ljp/co/dimage/android/c$a;

    new-instance v0, Ljp/co/dimage/android/c$a;

    const-string v1, "UUID"

    invoke-direct {v0, v1, v3}, Ljp/co/dimage/android/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljp/co/dimage/android/c$a;->b:Ljp/co/dimage/android/c$a;

    new-instance v0, Ljp/co/dimage/android/c$a;

    const-string v1, "ADID"

    invoke-direct {v0, v1, v4}, Ljp/co/dimage/android/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljp/co/dimage/android/c$a;->c:Ljp/co/dimage/android/c$a;

    const/4 v0, 0x3

    new-array v0, v0, [Ljp/co/dimage/android/c$a;

    sget-object v1, Ljp/co/dimage/android/c$a;->a:Ljp/co/dimage/android/c$a;

    aput-object v1, v0, v2

    sget-object v1, Ljp/co/dimage/android/c$a;->b:Ljp/co/dimage/android/c$a;

    aput-object v1, v0, v3

    sget-object v1, Ljp/co/dimage/android/c$a;->c:Ljp/co/dimage/android/c$a;

    aput-object v1, v0, v4

    sput-object v0, Ljp/co/dimage/android/c$a;->d:[Ljp/co/dimage/android/c$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljp/co/dimage/android/c$a;
    .locals 1

    const-class v0, Ljp/co/dimage/android/c$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljp/co/dimage/android/c$a;

    return-object v0
.end method

.method public static values()[Ljp/co/dimage/android/c$a;
    .locals 1

    sget-object v0, Ljp/co/dimage/android/c$a;->d:[Ljp/co/dimage/android/c$a;

    invoke-virtual {v0}, [Ljp/co/dimage/android/c$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljp/co/dimage/android/c$a;

    return-object v0
.end method
