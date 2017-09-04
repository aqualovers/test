.class public Lcom/bushiroad/bushimo/sdk/android/api/BsmoConstant;
.super Ljava/lang/Object;
.source "BsmoConstant.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bushiroad/bushimo/sdk/android/api/BsmoConstant$Events;
    }
.end annotation


# static fields
.field public static final BSMO_AVATAR_IMAGE_TYPE_BUSTUP:Ljava/lang/String; = "bustup"

.field public static final BSMO_AVATAR_IMAGE_TYPE_FACE:Ljava/lang/String; = "face"

.field public static final BSMO_AVATAR_IMAGE_TYPE_FULL:Ljava/lang/String; = "full"

.field public static final BSMO_AVATAR_OPTIONAL_FLG_NOT_REQUIRE:Ljava/lang/Integer;

.field public static final BSMO_AVATAR_OPTIONAL_FLG_REQUIRE:Ljava/lang/Integer;

.field public static final BSMO_AVATAR_SIZE_LARGE:Ljava/lang/String; = "large"

.field public static final BSMO_AVATAR_SIZE_MIDDLE:Ljava/lang/String; = "middle"

.field public static final BSMO_AVATAR_SIZE_SMALL:Ljava/lang/String; = "small"

.field public static final BSMO_AVATAR_V2_IMAGE_TYPE_BUSTUP:Ljava/lang/String; = "bustup"

.field public static final BSMO_AVATAR_V2_IMAGE_TYPE_FACE:Ljava/lang/String; = "face"

.field public static final BSMO_AVATAR_V2_IMAGE_TYPE_FULL:Ljava/lang/String; = "full"

.field public static final BSMO_AVATAR_V2_OPTIONAL_FLG_NOT_REQUIRE:Ljava/lang/Integer;

.field public static final BSMO_AVATAR_V2_OPTIONAL_FLG_REQUIRE:Ljava/lang/Integer;

.field public static final BSMO_AVATAR_V2_SIZE_LARGE:Ljava/lang/String; = "large"

.field public static final BSMO_AVATAR_V2_SIZE_MIDDLE:Ljava/lang/String; = "middle"

.field public static final BSMO_AVATAR_V2_SIZE_SMALL:Ljava/lang/String; = "small"

.field public static final BSMO_AVATAR_V2_SIZE_TRANS:Ljava/lang/String; = "trans"

.field public static final BSMO_WAPI_ERROR_HTTP:I = -0x3

.field public static final BSMO_WAPI_ERROR_INTERNAL:I = -0x6

.field public static final BSMO_WAPI_ERROR_JSON:I = -0x1

.field public static final BSMO_WAPI_ERROR_JSON_KEY:I = -0x2

.field public static final BSMO_WAPI_ERROR_RET:I = -0x4

.field public static final BSMO_WAPI_ERROR_VALIDATION:I = -0x5

.field public static final BSMO_WAPI_HTTP_BAD_REQUEST:I = 0x190

.field public static final BSMO_WAPI_HTTP_ENHANCE_YOUR_CALM:I = 0x1a4

.field public static final BSMO_WAPI_HTTP_FORBIDDEN:I = 0x193

.field public static final BSMO_WAPI_HTTP_NOT_ACCEPTABLE:I = 0x196

.field public static final BSMO_WAPI_HTTP_NOT_FOUND:I = 0x194

.field public static final BSMO_WAPI_HTTP_NO_REQUEST:I = 0x0

.field public static final BSMO_WAPI_HTTP_PRECONDITION_FAILED:I = 0x19c

.field public static final BSMO_WAPI_HTTP_SERVER_ERROR:I = 0x1f4

.field public static final BSMO_WAPI_HTTP_SERVICE_UNAVAILABLE:I = 0x1f7

.field public static final BSMO_WAPI_HTTP_SUCCESS:I = 0xc8

.field public static final BSMO_WAPI_HTTP_UNAUTHORIZED:I = 0x191

.field public static final CHARA_POINT_REQ_TYPE_ALL:Ljava/lang/String; = "all"

.field public static final CHARA_POINT_REQ_TYPE_GAINED:Ljava/lang/String; = "gained"

.field public static final CHARA_POINT_REQ_TYPE_NOT_GAINED:Ljava/lang/String; = "notgained"

.field public static final INSPECTION_LENGTH_LIMIT:I = 0xfa0

.field public static final MAX_LIST_ITEMS:I = 0x3e8

.field public static final PERSON_COUNT_DEFAULT:I = 0x14

.field public static final PERSON_FORMAT_ATOM:Ljava/lang/String; = "atom"

.field public static final PERSON_FORMAT_JSON:Ljava/lang/String; = "json"

.field public static final PERSON_FORMAT_XML:Ljava/lang/String; = "xml"

.field public static final PERSON_SORT_BY_AREA:Ljava/lang/String; = "area"

.field public static final PERSON_SORT_BY_DISPLAYNAME:Ljava/lang/String; = "displayName"

.field public static final PERSON_SORT_BY_EMAIL:Ljava/lang/String; = "email"

.field public static final PERSON_SORT_BY_FAMILYNAME:Ljava/lang/String; = "familyName"

.field public static final PERSON_SORT_BY_GENDER:Ljava/lang/String; = "gender"

.field public static final PERSON_SORT_BY_GIVENNAME:Ljava/lang/String; = "givenName"

.field public static final PERSON_SORT_BY_ID:Ljava/lang/String; = "id"

.field public static final PERSON_SORT_BY_NICKNAME:Ljava/lang/String; = "nickname"

.field public static final PERSON_SORT_ORDER_ASCENDING:Ljava/lang/String; = "ascending"

.field public static final PERSON_SORT_ORDER_DEASCENDING:Ljava/lang/String; = "descending"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 31
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/bushiroad/bushimo/sdk/android/api/BsmoConstant;->BSMO_AVATAR_OPTIONAL_FLG_REQUIRE:Ljava/lang/Integer;

    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/bushiroad/bushimo/sdk/android/api/BsmoConstant;->BSMO_AVATAR_OPTIONAL_FLG_NOT_REQUIRE:Ljava/lang/Integer;

    .line 51
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/bushiroad/bushimo/sdk/android/api/BsmoConstant;->BSMO_AVATAR_V2_OPTIONAL_FLG_REQUIRE:Ljava/lang/Integer;

    .line 52
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/bushiroad/bushimo/sdk/android/api/BsmoConstant;->BSMO_AVATAR_V2_OPTIONAL_FLG_NOT_REQUIRE:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    return-void
.end method
