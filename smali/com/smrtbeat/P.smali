.class final enum Lcom/smrtbeat/P;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/smrtbeat/P;

.field public static final enum b:Lcom/smrtbeat/P;

.field public static final enum c:Lcom/smrtbeat/P;

.field private static final synthetic d:[Lcom/smrtbeat/P;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/smrtbeat/P;

    const-string v1, "OK"

    invoke-direct {v0, v1, v2}, Lcom/smrtbeat/P;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smrtbeat/P;->a:Lcom/smrtbeat/P;

    new-instance v0, Lcom/smrtbeat/P;

    const-string v1, "FAILED_BY_DATA"

    invoke-direct {v0, v1, v3}, Lcom/smrtbeat/P;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smrtbeat/P;->b:Lcom/smrtbeat/P;

    new-instance v0, Lcom/smrtbeat/P;

    const-string v1, "FAILED_BY_OTHER"

    invoke-direct {v0, v1, v4}, Lcom/smrtbeat/P;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smrtbeat/P;->c:Lcom/smrtbeat/P;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/smrtbeat/P;

    sget-object v1, Lcom/smrtbeat/P;->a:Lcom/smrtbeat/P;

    aput-object v1, v0, v2

    sget-object v1, Lcom/smrtbeat/P;->b:Lcom/smrtbeat/P;

    aput-object v1, v0, v3

    sget-object v1, Lcom/smrtbeat/P;->c:Lcom/smrtbeat/P;

    aput-object v1, v0, v4

    sput-object v0, Lcom/smrtbeat/P;->d:[Lcom/smrtbeat/P;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smrtbeat/P;
    .locals 1

    const-class v0, Lcom/smrtbeat/P;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/smrtbeat/P;

    return-object v0
.end method

.method public static values()[Lcom/smrtbeat/P;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/smrtbeat/P;->d:[Lcom/smrtbeat/P;

    array-length v1, v0

    new-array v2, v1, [Lcom/smrtbeat/P;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
