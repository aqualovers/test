.class Lcom/smrtbeat/u;
.super Ljava/lang/Object;


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "HTL23"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "LGL22"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Nexus 5"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "SH-04F"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "SH-06F"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "SM-G900K"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "SO-02F"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "SOL23"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "SOL25"

    aput-object v2, v0, v1

    sput-object v0, Lcom/smrtbeat/u;->a:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/smrtbeat/u;->a:[Ljava/lang/String;

    invoke-static {v0, p0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
