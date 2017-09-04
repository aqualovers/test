.class final enum Ljp/co/cyberz/fox/a/a/e$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/co/cyberz/fox/a/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation


# static fields
.field public static final enum a:Ljp/co/cyberz/fox/a/a/e$a;

.field public static final enum b:Ljp/co/cyberz/fox/a/a/e$a;

.field private static final synthetic e:[Ljp/co/cyberz/fox/a/a/e$a;


# instance fields
.field private c:I

.field private d:[B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Ljp/co/cyberz/fox/a/a/e$a;

    const-string v1, "XUNIQ"

    const-string v2, "a582a79754ac4f5fb75bc18271e4712c"

    invoke-direct {v0, v1, v3, v3, v2}, Ljp/co/cyberz/fox/a/a/e$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Ljp/co/cyberz/fox/a/a/e$a;->a:Ljp/co/cyberz/fox/a/a/e$a;

    new-instance v0, Ljp/co/cyberz/fox/a/a/e$a;

    const-string v1, "SERVER_URL"

    const-string v2, "910c256430ae453496018633be5e1629"

    invoke-direct {v0, v1, v4, v4, v2}, Ljp/co/cyberz/fox/a/a/e$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Ljp/co/cyberz/fox/a/a/e$a;->b:Ljp/co/cyberz/fox/a/a/e$a;

    const/4 v0, 0x2

    new-array v0, v0, [Ljp/co/cyberz/fox/a/a/e$a;

    sget-object v1, Ljp/co/cyberz/fox/a/a/e$a;->a:Ljp/co/cyberz/fox/a/a/e$a;

    aput-object v1, v0, v3

    sget-object v1, Ljp/co/cyberz/fox/a/a/e$a;->b:Ljp/co/cyberz/fox/a/a/e$a;

    aput-object v1, v0, v4

    sput-object v0, Ljp/co/cyberz/fox/a/a/e$a;->e:[Ljp/co/cyberz/fox/a/a/e$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Ljp/co/cyberz/fox/a/a/e$a;->c:I

    invoke-static {p4}, Ljp/co/cyberz/fox/a/a/e;->b(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Ljp/co/cyberz/fox/a/a/e$a;->d:[B

    return-void
.end method

.method public static a(I)Ljp/co/cyberz/fox/a/a/e$a;
    .locals 5

    invoke-static {}, Ljp/co/cyberz/fox/a/a/e$a;->values()[Ljp/co/cyberz/fox/a/a/e$a;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    invoke-virtual {v0}, Ljp/co/cyberz/fox/a/a/e$a;->b()I

    move-result v4

    if-ne v4, p0, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown key index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Ljp/co/cyberz/fox/a/a/e$a;
    .locals 1

    const-class v0, Ljp/co/cyberz/fox/a/a/e$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljp/co/cyberz/fox/a/a/e$a;

    return-object v0
.end method

.method public static values()[Ljp/co/cyberz/fox/a/a/e$a;
    .locals 1

    sget-object v0, Ljp/co/cyberz/fox/a/a/e$a;->e:[Ljp/co/cyberz/fox/a/a/e$a;

    invoke-virtual {v0}, [Ljp/co/cyberz/fox/a/a/e$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljp/co/cyberz/fox/a/a/e$a;

    return-object v0
.end method


# virtual methods
.method a()[B
    .locals 1

    iget-object v0, p0, Ljp/co/cyberz/fox/a/a/e$a;->d:[B

    return-object v0
.end method

.method b()I
    .locals 1

    iget v0, p0, Ljp/co/cyberz/fox/a/a/e$a;->c:I

    return v0
.end method
