.class public final enum Ljp/co/cyberz/fox/a/a/a$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/co/cyberz/fox/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field public static final enum a:Ljp/co/cyberz/fox/a/a/a$a;

.field public static final enum b:Ljp/co/cyberz/fox/a/a/a$a;

.field public static final enum c:Ljp/co/cyberz/fox/a/a/a$a;

.field public static final enum d:Ljp/co/cyberz/fox/a/a/a$a;

.field public static final enum e:Ljp/co/cyberz/fox/a/a/a$a;

.field private static final synthetic g:[Ljp/co/cyberz/fox/a/a/a$a;


# instance fields
.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Ljp/co/cyberz/fox/a/a/a$a;

    const-string v1, "AnalyticsEventStartSession"

    const-string v2, "1"

    invoke-direct {v0, v1, v3, v2}, Ljp/co/cyberz/fox/a/a/a$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ljp/co/cyberz/fox/a/a/a$a;->a:Ljp/co/cyberz/fox/a/a/a$a;

    new-instance v0, Ljp/co/cyberz/fox/a/a/a$a;

    const-string v1, "AnalyticsEventEndSession"

    const-string v2, "2"

    invoke-direct {v0, v1, v4, v2}, Ljp/co/cyberz/fox/a/a/a$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ljp/co/cyberz/fox/a/a/a$a;->b:Ljp/co/cyberz/fox/a/a/a$a;

    new-instance v0, Ljp/co/cyberz/fox/a/a/a$a;

    const-string v1, "AnalyticsEventPageView"

    const-string v2, "3"

    invoke-direct {v0, v1, v5, v2}, Ljp/co/cyberz/fox/a/a/a$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ljp/co/cyberz/fox/a/a/a$a;->c:Ljp/co/cyberz/fox/a/a/a$a;

    new-instance v0, Ljp/co/cyberz/fox/a/a/a$a;

    const-string v1, "AnalyticsEventTrackEvent"

    const-string v2, "4"

    invoke-direct {v0, v1, v6, v2}, Ljp/co/cyberz/fox/a/a/a$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ljp/co/cyberz/fox/a/a/a$a;->d:Ljp/co/cyberz/fox/a/a/a$a;

    new-instance v0, Ljp/co/cyberz/fox/a/a/a$a;

    const-string v1, "AnalyticsEventTracTransaction"

    const-string v2, "5"

    invoke-direct {v0, v1, v7, v2}, Ljp/co/cyberz/fox/a/a/a$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ljp/co/cyberz/fox/a/a/a$a;->e:Ljp/co/cyberz/fox/a/a/a$a;

    const/4 v0, 0x5

    new-array v0, v0, [Ljp/co/cyberz/fox/a/a/a$a;

    sget-object v1, Ljp/co/cyberz/fox/a/a/a$a;->a:Ljp/co/cyberz/fox/a/a/a$a;

    aput-object v1, v0, v3

    sget-object v1, Ljp/co/cyberz/fox/a/a/a$a;->b:Ljp/co/cyberz/fox/a/a/a$a;

    aput-object v1, v0, v4

    sget-object v1, Ljp/co/cyberz/fox/a/a/a$a;->c:Ljp/co/cyberz/fox/a/a/a$a;

    aput-object v1, v0, v5

    sget-object v1, Ljp/co/cyberz/fox/a/a/a$a;->d:Ljp/co/cyberz/fox/a/a/a$a;

    aput-object v1, v0, v6

    sget-object v1, Ljp/co/cyberz/fox/a/a/a$a;->e:Ljp/co/cyberz/fox/a/a/a$a;

    aput-object v1, v0, v7

    sput-object v0, Ljp/co/cyberz/fox/a/a/a$a;->g:[Ljp/co/cyberz/fox/a/a/a$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Ljp/co/cyberz/fox/a/a/a$a;->f:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljp/co/cyberz/fox/a/a/a$a;
    .locals 5

    invoke-static {}, Ljp/co/cyberz/fox/a/a/a$a;->values()[Ljp/co/cyberz/fox/a/a/a$a;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    invoke-virtual {v0}, Ljp/co/cyberz/fox/a/a/a$a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Ljp/co/cyberz/fox/a/a/a$a;
    .locals 1

    const-class v0, Ljp/co/cyberz/fox/a/a/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljp/co/cyberz/fox/a/a/a$a;

    return-object v0
.end method

.method public static values()[Ljp/co/cyberz/fox/a/a/a$a;
    .locals 1

    sget-object v0, Ljp/co/cyberz/fox/a/a/a$a;->g:[Ljp/co/cyberz/fox/a/a/a$a;

    invoke-virtual {v0}, [Ljp/co/cyberz/fox/a/a/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljp/co/cyberz/fox/a/a/a$a;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljp/co/cyberz/fox/a/a/a$a;->f:Ljava/lang/String;

    return-object v0
.end method
