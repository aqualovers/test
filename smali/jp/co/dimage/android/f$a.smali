.class final enum Ljp/co/dimage/android/f$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/co/dimage/android/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation


# static fields
.field public static final enum a:Ljp/co/dimage/android/f$a;

.field public static final enum b:Ljp/co/dimage/android/f$a;

.field public static final enum c:Ljp/co/dimage/android/f$a;

.field private static final synthetic e:[Ljp/co/dimage/android/f$a;


# instance fields
.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Ljp/co/dimage/android/f$a;

    const-string v1, "INSTALL"

    const-string v2, "0"

    invoke-direct {v0, v1, v3, v2}, Ljp/co/dimage/android/f$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ljp/co/dimage/android/f$a;->a:Ljp/co/dimage/android/f$a;

    new-instance v0, Ljp/co/dimage/android/f$a;

    const-string v1, "START"

    const-string v2, "1"

    invoke-direct {v0, v1, v4, v2}, Ljp/co/dimage/android/f$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ljp/co/dimage/android/f$a;->b:Ljp/co/dimage/android/f$a;

    new-instance v0, Ljp/co/dimage/android/f$a;

    const-string v1, "OTHERS"

    const-string v2, "2"

    invoke-direct {v0, v1, v5, v2}, Ljp/co/dimage/android/f$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ljp/co/dimage/android/f$a;->c:Ljp/co/dimage/android/f$a;

    const/4 v0, 0x3

    new-array v0, v0, [Ljp/co/dimage/android/f$a;

    sget-object v1, Ljp/co/dimage/android/f$a;->a:Ljp/co/dimage/android/f$a;

    aput-object v1, v0, v3

    sget-object v1, Ljp/co/dimage/android/f$a;->b:Ljp/co/dimage/android/f$a;

    aput-object v1, v0, v4

    sget-object v1, Ljp/co/dimage/android/f$a;->c:Ljp/co/dimage/android/f$a;

    aput-object v1, v0, v5

    sput-object v0, Ljp/co/dimage/android/f$a;->e:[Ljp/co/dimage/android/f$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Ljp/co/dimage/android/f$a;->d:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljp/co/dimage/android/f$a;
    .locals 1

    const-class v0, Ljp/co/dimage/android/f$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljp/co/dimage/android/f$a;

    return-object v0
.end method

.method public static values()[Ljp/co/dimage/android/f$a;
    .locals 1

    sget-object v0, Ljp/co/dimage/android/f$a;->e:[Ljp/co/dimage/android/f$a;

    invoke-virtual {v0}, [Ljp/co/dimage/android/f$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljp/co/dimage/android/f$a;

    return-object v0
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljp/co/dimage/android/f$a;->d:Ljava/lang/String;

    return-object v0
.end method
