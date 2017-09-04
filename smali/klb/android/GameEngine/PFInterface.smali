.class public Lklb/android/GameEngine/PFInterface;
.super Ljava/lang/Object;
.source "PFInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lklb/android/GameEngine/PFInterface$DeviceKeyEvent;,
        Lklb/android/GameEngine/PFInterface$DeviceKeyMap;,
        Lklb/android/GameEngine/PFInterface$WEBVIEW_STATUS;
    }
.end annotation


# static fields
.field public static final E_FACEBOOK_CONNECTED:I = 0xb

.field public static final E_FACEBOOK_DISCONNECTED:I = 0xa

.field public static final E_INPUT_TYPE_CANCEL:I = 0x3

.field public static final E_INPUT_TYPE_CLICK:I = 0x0

.field public static final E_INPUT_TYPE_DRAG:I = 0x1

.field public static final E_INPUT_TYPE_RELEASE:I = 0x2

.field public static final E_PF_GAME_SERVICE_CONNECTED:I = 0xd

.field public static final E_PF_GAME_SERVICE_FAILED:I = 0xc

.field public static final E_PF_GAME_SERVICE_UNSUPPORTED:I = 0xe

.field public static final E_STORE_BAD_ITEMID:I = 0x0

.field public static final E_STORE_CANCELED:I = 0x9

.field public static final E_STORE_DEFERRED:I = 0x4

.field public static final E_STORE_FAILED:I = 0x5

.field public static final E_STORE_GET_PRODUCTS:I = 0x1

.field public static final E_STORE_GET_PRODUCTS_FAILED:I = 0xa

.field public static final E_STORE_PURCHASHED:I = 0x3

.field public static final E_STORE_PURCHASHING:I = 0x2

.field public static final E_STORE_RESTORE:I = 0x6

.field public static final E_STORE_RESTORE_COMPLETED:I = 0x8

.field public static final E_STORE_RESTORE_FAILED:I = 0x7

.field public static MOVIE_FINISHED:I = 0x0

.field static final TX_ALIGN_CENTER:I = 0x1

.field static final TX_ALIGN_LEFT:I = 0x0

.field static final TX_ALIGN_RIGHT:I = 0x2

.field static cipher:Ljavax/crypto/Cipher;

.field private static instance:Lklb/android/GameEngine/PFInterface;

.field private static mDeviceToken:Ljava/lang/String;

.field private static m_path_external:Ljava/lang/String;

.field private static m_path_install:Ljava/lang/String;

.field static rnd:Ljava/security/SecureRandom;

.field private static s:Landroid/content/pm/Signature;


# instance fields
.field private MAX_EDIT_TEXT:I

.field private MAX_MOVIE_VIEW:I

.field private MAX_WEB_VIEW:I

.field private isActive:Z

.field private m_bexec:Z

.field private m_context:Lklb/android/GameEngine/GameEngineActivity;

.field private m_height:I

.field private m_indicator:Lklb/android/GameEngine/IndicatorItem;

.field private m_movieList:[Lklb/android/GameEngine/MovieViewItem;

.field private m_movieListCount:I

.field private m_osversion:Ljava/lang/String;

.field private m_textList:[Lklb/android/GameEngine/EditBoxItem;

.field private m_textListCount:I

.field private m_tzone:Ljava/lang/String;

.field private m_webList:[Lklb/android/GameEngine/WebViewItem;

.field private m_webListCount:I

.field private m_width:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 87
    const/4 v0, 0x1

    sput v0, Lklb/android/GameEngine/PFInterface;->MOVIE_FINISHED:I

    .line 142
    new-instance v0, Lklb/android/GameEngine/PFInterface;

    invoke-direct {v0}, Lklb/android/GameEngine/PFInterface;-><init>()V

    sput-object v0, Lklb/android/GameEngine/PFInterface;->instance:Lklb/android/GameEngine/PFInterface;

    .line 143
    sput-object v1, Lklb/android/GameEngine/PFInterface;->m_path_external:Ljava/lang/String;

    .line 144
    sput-object v1, Lklb/android/GameEngine/PFInterface;->m_path_install:Ljava/lang/String;

    .line 155
    sput-object v1, Lklb/android/GameEngine/PFInterface;->mDeviceToken:Ljava/lang/String;

    .line 157
    sput-object v1, Lklb/android/GameEngine/PFInterface;->s:Landroid/content/pm/Signature;

    .line 1056
    sput-object v1, Lklb/android/GameEngine/PFInterface;->rnd:Ljava/security/SecureRandom;

    .line 1065
    sput-object v1, Lklb/android/GameEngine/PFInterface;->cipher:Ljavax/crypto/Cipher;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x64

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-boolean v2, p0, Lklb/android/GameEngine/PFInterface;->m_bexec:Z

    .line 148
    iput-object v0, p0, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    .line 149
    iput-object v0, p0, Lklb/android/GameEngine/PFInterface;->m_osversion:Ljava/lang/String;

    .line 150
    iput-object v0, p0, Lklb/android/GameEngine/PFInterface;->m_tzone:Ljava/lang/String;

    .line 151
    iput v3, p0, Lklb/android/GameEngine/PFInterface;->MAX_EDIT_TEXT:I

    .line 152
    iput v3, p0, Lklb/android/GameEngine/PFInterface;->MAX_WEB_VIEW:I

    .line 153
    const/16 v0, 0x32

    iput v0, p0, Lklb/android/GameEngine/PFInterface;->MAX_MOVIE_VIEW:I

    .line 159
    iput-boolean v2, p0, Lklb/android/GameEngine/PFInterface;->isActive:Z

    .line 161
    iget v0, p0, Lklb/android/GameEngine/PFInterface;->MAX_EDIT_TEXT:I

    new-array v0, v0, [Lklb/android/GameEngine/EditBoxItem;

    iput-object v0, p0, Lklb/android/GameEngine/PFInterface;->m_textList:[Lklb/android/GameEngine/EditBoxItem;

    .line 162
    iput v1, p0, Lklb/android/GameEngine/PFInterface;->m_textListCount:I

    .line 164
    iget v0, p0, Lklb/android/GameEngine/PFInterface;->MAX_WEB_VIEW:I

    new-array v0, v0, [Lklb/android/GameEngine/WebViewItem;

    iput-object v0, p0, Lklb/android/GameEngine/PFInterface;->m_webList:[Lklb/android/GameEngine/WebViewItem;

    .line 165
    iput v1, p0, Lklb/android/GameEngine/PFInterface;->m_webListCount:I

    .line 167
    iget v0, p0, Lklb/android/GameEngine/PFInterface;->MAX_MOVIE_VIEW:I

    new-array v0, v0, [Lklb/android/GameEngine/MovieViewItem;

    iput-object v0, p0, Lklb/android/GameEngine/PFInterface;->m_movieList:[Lklb/android/GameEngine/MovieViewItem;

    .line 168
    iput v1, p0, Lklb/android/GameEngine/PFInterface;->m_movieListCount:I

    .line 172
    return-void
.end method

.method public static billingBuyItem(Ljava/lang/String;)V
    .locals 1
    .param p0, "sku"    # Ljava/lang/String;

    .prologue
    .line 886
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    iget-object v0, v0, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    invoke-static {v0}, Lklb/android/GameEngine/billing/manager/BillingManager;->getInstance(Landroid/app/Activity;)Lklb/android/GameEngine/billing/manager/BillingManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lklb/android/GameEngine/billing/manager/BillingManager;->requestBuy(Ljava/lang/String;)V

    .line 887
    return-void
.end method

.method public static billingConsume(Ljava/lang/String;)V
    .locals 2
    .param p0, "receipt"    # Ljava/lang/String;

    .prologue
    .line 859
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    iget-object v0, v0, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    invoke-static {v0}, Lklb/android/GameEngine/billing/manager/BillingManager;->getInstance(Landroid/app/Activity;)Lklb/android/GameEngine/billing/manager/BillingManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lklb/android/GameEngine/billing/manager/BillingManager;->requestConsume(Ljava/lang/String;I)V

    .line 860
    return-void
.end method

.method public static billingGetProducts(Ljava/lang/String;)V
    .locals 8
    .param p0, "jsonStr"    # Ljava/lang/String;

    .prologue
    .line 865
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 868
    .local v4, "skuList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 869
    .local v2, "json":Lorg/json/JSONArray;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 871
    .local v3, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 872
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 871
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 875
    .end local v1    # "i":I
    .end local v2    # "json":Lorg/json/JSONArray;
    .end local v3    # "len":I
    :catch_0
    move-exception v0

    .line 876
    .local v0, "e":Lorg/json/JSONException;
    const-string v5, "PFInterface"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "illegal json string: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    return-void

    .line 880
    .restart local v1    # "i":I
    .restart local v2    # "json":Lorg/json/JSONArray;
    .restart local v3    # "len":I
    :cond_0
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v5

    iget-object v5, v5, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    invoke-static {v5}, Lklb/android/GameEngine/billing/manager/BillingManager;->getInstance(Landroid/app/Activity;)Lklb/android/GameEngine/billing/manager/BillingManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Lklb/android/GameEngine/billing/manager/BillingManager;->requestGetProducts(Ljava/util/List;I)V

    goto :goto_1
.end method

.method public static billingInit()V
    .locals 1

    .prologue
    .line 849
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    iget-object v0, v0, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    invoke-static {v0}, Lklb/android/GameEngine/billing/manager/BillingManager;->init(Landroid/app/Activity;)V

    .line 850
    return-void
.end method

.method public static billingTerminate()V
    .locals 0

    .prologue
    .line 854
    invoke-static {}, Lklb/android/GameEngine/billing/manager/BillingManager;->requestTerminate()V

    .line 855
    return-void
.end method

.method private static calAPKSignature(Landroid/app/Activity;I)Ljava/lang/String;
    .locals 20
    .param p0, "a"    # Landroid/app/Activity;
    .param p1, "seed"    # I

    .prologue
    .line 1368
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 1369
    .local v10, "pkgMgr":Landroid/content/pm/PackageManager;
    new-instance v12, Ljava/lang/String;

    const-string v15, ""

    invoke-direct {v12, v15}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1372
    .local v12, "rtv":Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x40

    move/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v15

    iget-object v15, v15, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/16 v16, 0x0

    aget-object v15, v15, v16

    sput-object v15, Lklb/android/GameEngine/PFInterface;->s:Landroid/content/pm/Signature;

    .line 1373
    sget-object v15, Lklb/android/GameEngine/PFInterface;->s:Landroid/content/pm/Signature;

    if-nez v15, :cond_0

    .line 1375
    const-string v12, "NOT_FOUND"

    move-object v13, v12

    .line 1410
    .end local v12    # "rtv":Ljava/lang/String;
    .local v13, "rtv":Ljava/lang/String;
    :goto_0
    return-object v13

    .line 1378
    .end local v13    # "rtv":Ljava/lang/String;
    .restart local v12    # "rtv":Ljava/lang/String;
    :cond_0
    new-instance v8, Ljava/io/ByteArrayInputStream;

    sget-object v15, Lklb/android/GameEngine/PFInterface;->s:Landroid/content/pm/Signature;

    invoke-virtual {v15}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v15

    invoke-direct {v8, v15}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1381
    .local v8, "is":Ljava/io/InputStream;
    :try_start_1
    const-string v15, "X.509"

    invoke-static {v15}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v4

    .line 1382
    .local v4, "cf":Ljava/security/cert/CertificateFactory;
    invoke-virtual {v4, v8}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 1383
    .local v3, "c":Ljava/security/cert/X509Certificate;
    const-string v15, "SHA256"

    invoke-static {v15}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v9

    .line 1384
    .local v9, "md":Ljava/security/MessageDigest;
    sget-object v15, Lklb/android/GameEngine/PFInterface;->instance:Lklb/android/GameEngine/PFInterface;

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lklb/android/GameEngine/PFInterface;->transformSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1385
    .local v11, "realSig":Ljava/lang/String;
    const-string v15, "UTF-8"

    invoke-static {v15}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 1386
    .local v2, "b":[B
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "%0"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    array-length v0, v2

    move/from16 v16, v0

    mul-int/lit8 v16, v16, 0x2

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x58

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    new-instance v18, Ljava/math/BigInteger;

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1387
    .local v7, "hex":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v14

    .line 1388
    .local v14, "size":I
    const/4 v5, 0x0

    .local v5, "cnt":I
    :goto_1
    add-int/lit8 v15, v14, -0x2

    if-ge v5, v15, :cond_1

    .line 1390
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    add-int/lit8 v16, v5, 0x2

    move/from16 v0, v16

    invoke-virtual {v7, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1391
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ":"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1388
    add-int/lit8 v5, v5, 0x2

    goto :goto_1

    .line 1393
    :cond_1
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    add-int/lit8 v16, v14, -0x2

    move/from16 v0, v16

    invoke-virtual {v7, v0, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v12

    .line 1401
    :try_start_2
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .end local v2    # "b":[B
    .end local v3    # "c":Ljava/security/cert/X509Certificate;
    .end local v4    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v5    # "cnt":I
    .end local v7    # "hex":Ljava/lang/String;
    .end local v8    # "is":Ljava/io/InputStream;
    .end local v9    # "md":Ljava/security/MessageDigest;
    .end local v11    # "realSig":Ljava/lang/String;
    .end local v14    # "size":I
    :goto_2
    move-object v13, v12

    .line 1410
    .end local v12    # "rtv":Ljava/lang/String;
    .restart local v13    # "rtv":Ljava/lang/String;
    goto/16 :goto_0

    .line 1395
    .end local v13    # "rtv":Ljava/lang/String;
    .restart local v8    # "is":Ljava/io/InputStream;
    .restart local v12    # "rtv":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 1397
    .local v6, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v12, "ERROR"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1401
    :try_start_4
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 1402
    :catch_1
    move-exception v15

    goto :goto_2

    .line 1401
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v15

    :try_start_5
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 1402
    :goto_3
    :try_start_6
    throw v15
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 1405
    .end local v8    # "is":Ljava/io/InputStream;
    :catch_2
    move-exception v6

    .line 1407
    .restart local v6    # "e":Ljava/lang/Exception;
    const-string v12, "ERROR"

    goto :goto_2

    .line 1402
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v2    # "b":[B
    .restart local v3    # "c":Ljava/security/cert/X509Certificate;
    .restart local v4    # "cf":Ljava/security/cert/CertificateFactory;
    .restart local v5    # "cnt":I
    .restart local v7    # "hex":Ljava/lang/String;
    .restart local v8    # "is":Ljava/io/InputStream;
    .restart local v9    # "md":Ljava/security/MessageDigest;
    .restart local v11    # "realSig":Ljava/lang/String;
    .restart local v14    # "size":I
    :catch_3
    move-exception v15

    goto :goto_2

    .end local v2    # "b":[B
    .end local v3    # "c":Ljava/security/cert/X509Certificate;
    .end local v4    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v5    # "cnt":I
    .end local v7    # "hex":Ljava/lang/String;
    .end local v9    # "md":Ljava/security/MessageDigest;
    .end local v11    # "realSig":Ljava/lang/String;
    .end local v14    # "size":I
    :catch_4
    move-exception v16

    goto :goto_3
.end method

.method public static cancelLocalNotification(Ljava/lang/String;I)V
    .locals 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "idx"    # I

    .prologue
    .line 957
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v4

    iget-object v1, v4, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    .line 958
    .local v1, "context":Lklb/android/GameEngine/GameEngineActivity;
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lklb/android/jpllfync/AlarmBroadcastReceiver;

    invoke-direct {v2, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 959
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v4, 0x8000000

    invoke-static {v1, p1, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 960
    .local v3, "sender":Landroid/app/PendingIntent;
    const-string v4, "alarm"

    invoke-virtual {v1, v4}, Lklb/android/GameEngine/GameEngineActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 962
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    invoke-virtual {v0, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 963
    return-void
.end method

.method public static copyToClipBoard(Ljava/lang/String;)V
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 1239
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v1

    iget-object v0, v1, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    .line 1241
    .local v0, "context":Lklb/android/GameEngine/GameEngineActivity;
    new-instance v1, Lklb/android/GameEngine/PFInterface$5;

    invoke-direct {v1, v0, p0}, Lklb/android/GameEngine/PFInterface$5;-><init>(Lklb/android/GameEngine/GameEngineActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lklb/android/GameEngine/GameEngineActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1249
    return-void
.end method

.method public static decryptAES128CBC([B[B[B)I
    .locals 8
    .param p0, "data"    # [B
    .param p1, "key"    # [B
    .param p2, "outbuf"    # [B

    .prologue
    .line 1151
    :try_start_0
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    const/4 v5, 0x0

    const/16 v6, 0x10

    const-string v7, "AES"

    invoke-direct {v4, p1, v5, v6, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1159
    .local v4, "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    :try_start_1
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    const/4 v5, 0x0

    const/16 v6, 0x10

    invoke-direct {v3, p0, v5, v6}, Ljavax/crypto/spec/IvParameterSpec;-><init>([BII)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1167
    .local v3, "iv":Ljavax/crypto/spec/IvParameterSpec;
    :try_start_2
    const-string v5, "AES/CBC/PKCS5Padding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_2 .. :try_end_2} :catch_5

    move-result-object v0

    .line 1174
    .local v0, "c":Ljavax/crypto/Cipher;
    const/4 v5, 0x2

    :try_start_3
    invoke-virtual {v0, v5, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_3
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3 .. :try_end_3} :catch_7

    .line 1181
    const/16 v5, 0x10

    :try_start_4
    array-length v6, p0

    add-int/lit8 v6, v6, -0x10

    invoke-virtual {v0, p0, v5, v6}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v1

    .line 1182
    .local v1, "decrypted":[B
    const/4 v5, 0x0

    const/4 v6, 0x0

    array-length v7, v1

    invoke-static {v1, v5, p2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1183
    array-length v5, v1
    :try_end_4
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljavax/crypto/BadPaddingException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_b

    .line 1191
    .end local v0    # "c":Ljavax/crypto/Cipher;
    .end local v1    # "decrypted":[B
    .end local v3    # "iv":Ljavax/crypto/spec/IvParameterSpec;
    .end local v4    # "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    return v5

    .line 1152
    :catch_0
    move-exception v2

    .line 1153
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const/4 v5, -0x1

    goto :goto_0

    .line 1154
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    .line 1155
    .local v2, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const/4 v5, -0x2

    goto :goto_0

    .line 1160
    .end local v2    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v4    # "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    :catch_2
    move-exception v2

    .line 1161
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const/16 v5, -0xa

    goto :goto_0

    .line 1162
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v2

    .line 1163
    .local v2, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const/16 v5, -0xb

    goto :goto_0

    .line 1168
    .end local v2    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v3    # "iv":Ljavax/crypto/spec/IvParameterSpec;
    :catch_4
    move-exception v2

    .line 1169
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    const/4 v5, -0x3

    goto :goto_0

    .line 1170
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_5
    move-exception v2

    .line 1171
    .local v2, "e":Ljavax/crypto/NoSuchPaddingException;
    const/4 v5, -0x4

    goto :goto_0

    .line 1175
    .end local v2    # "e":Ljavax/crypto/NoSuchPaddingException;
    .restart local v0    # "c":Ljavax/crypto/Cipher;
    :catch_6
    move-exception v2

    .line 1176
    .local v2, "e":Ljava/security/InvalidKeyException;
    const/4 v5, -0x5

    goto :goto_0

    .line 1177
    .end local v2    # "e":Ljava/security/InvalidKeyException;
    :catch_7
    move-exception v2

    .line 1178
    .local v2, "e":Ljava/security/InvalidAlgorithmParameterException;
    const/16 v5, -0xc

    goto :goto_0

    .line 1184
    .end local v2    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :catch_8
    move-exception v2

    .line 1185
    .local v2, "e":Ljavax/crypto/IllegalBlockSizeException;
    const/4 v5, -0x6

    goto :goto_0

    .line 1186
    .end local v2    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_9
    move-exception v2

    .line 1187
    .local v2, "e":Ljavax/crypto/BadPaddingException;
    const/4 v5, -0x7

    goto :goto_0

    .line 1188
    .end local v2    # "e":Ljavax/crypto/BadPaddingException;
    :catch_a
    move-exception v2

    .line 1189
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    const/4 v5, -0x8

    goto :goto_0

    .line 1190
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_b
    move-exception v2

    .line 1191
    .local v2, "e":Ljava/lang/NullPointerException;
    const/16 v5, -0x9

    goto :goto_0
.end method

.method public static delKeyChain(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "service_name"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 308
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v3

    iget-object v3, v3, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    const-string v4, "GameEngineActivity"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lklb/android/GameEngine/GameEngineActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 309
    .local v2, "pref":Landroid/content/SharedPreferences;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 310
    .local v1, "pkey":Ljava/lang/String;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 311
    .local v0, "e":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 312
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 313
    const/4 v3, 0x1

    return v3
.end method

.method public static drawText(Landroid/graphics/Paint;[IIIIFFLjava/lang/String;)V
    .locals 12
    .param p0, "paint"    # Landroid/graphics/Paint;
    .param p1, "image"    # [I
    .param p2, "color"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "x"    # F
    .param p6, "y"    # F
    .param p7, "text"    # Ljava/lang/String;

    .prologue
    .line 746
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 747
    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 748
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p4

    invoke-static {p3, v0, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 750
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p1

    move v6, p3

    move v9, p3

    move/from16 v10, p4

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 751
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 752
    .local v11, "canvas":Landroid/graphics/Canvas;
    move-object/from16 v0, p7

    move/from16 v1, p5

    move/from16 v2, p6

    invoke-virtual {v11, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 754
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p1

    move v6, p3

    move v9, p3

    move/from16 v10, p4

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 755
    return-void
.end method

.method public static encryptAES128CBC([B[B[B)I
    .locals 8
    .param p0, "data"    # [B
    .param p1, "key"    # [B
    .param p2, "outbuf"    # [B

    .prologue
    .line 1112
    :try_start_0
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    const/4 v5, 0x0

    const/16 v6, 0x10

    const-string v7, "AES"

    invoke-direct {v4, p1, v5, v6, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1120
    .local v4, "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    :try_start_1
    const-string v5, "AES/CBC/PKCS5Padding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v0

    .line 1127
    .local v0, "c":Ljavax/crypto/Cipher;
    const/4 v5, 0x1

    :try_start_2
    invoke-virtual {v0, v5, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_2
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_4

    .line 1132
    :try_start_3
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 1133
    .local v2, "encrypted":[B
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v3

    .line 1134
    .local v3, "iv":[B
    const/4 v5, 0x0

    const/4 v6, 0x0

    array-length v7, v3

    invoke-static {v3, v5, p2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1135
    const/4 v5, 0x0

    array-length v6, v3

    array-length v7, v2

    invoke-static {v2, v5, p2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1136
    array-length v5, v3

    array-length v6, v2
    :try_end_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljavax/crypto/BadPaddingException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_8

    add-int/2addr v5, v6

    .line 1144
    .end local v0    # "c":Ljavax/crypto/Cipher;
    .end local v2    # "encrypted":[B
    .end local v3    # "iv":[B
    .end local v4    # "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    return v5

    .line 1113
    :catch_0
    move-exception v1

    .line 1114
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const/4 v5, -0x1

    goto :goto_0

    .line 1115
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 1116
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const/4 v5, -0x2

    goto :goto_0

    .line 1121
    .end local v1    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v4    # "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    :catch_2
    move-exception v1

    .line 1122
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const/4 v5, -0x3

    goto :goto_0

    .line 1123
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_3
    move-exception v1

    .line 1124
    .local v1, "e":Ljavax/crypto/NoSuchPaddingException;
    const/4 v5, -0x4

    goto :goto_0

    .line 1128
    .end local v1    # "e":Ljavax/crypto/NoSuchPaddingException;
    .restart local v0    # "c":Ljavax/crypto/Cipher;
    :catch_4
    move-exception v1

    .line 1129
    .local v1, "e":Ljava/security/InvalidKeyException;
    const/4 v5, -0x5

    goto :goto_0

    .line 1137
    .end local v1    # "e":Ljava/security/InvalidKeyException;
    :catch_5
    move-exception v1

    .line 1138
    .local v1, "e":Ljavax/crypto/IllegalBlockSizeException;
    const/4 v5, -0x6

    goto :goto_0

    .line 1139
    .end local v1    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_6
    move-exception v1

    .line 1140
    .local v1, "e":Ljavax/crypto/BadPaddingException;
    const/4 v5, -0x7

    goto :goto_0

    .line 1141
    .end local v1    # "e":Ljavax/crypto/BadPaddingException;
    :catch_7
    move-exception v1

    .line 1142
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    const/4 v5, -0x8

    goto :goto_0

    .line 1143
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_8
    move-exception v1

    .line 1144
    .local v1, "e":Ljava/lang/NullPointerException;
    const/16 v5, -0x9

    goto :goto_0
.end method

.method public static exitGame()V
    .locals 1

    .prologue
    .line 1196
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 1197
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 1198
    return-void
.end method

.method public static forbidSleep(Z)V
    .locals 2
    .param p0, "isForbidden"    # Z

    .prologue
    .line 988
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v1

    iget-object v0, v1, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    .line 989
    .local v0, "engineActivity":Lklb/android/GameEngine/GameEngineActivity;
    if-eqz v0, :cond_0

    .line 990
    invoke-virtual {v0, p0}, Lklb/android/GameEngine/GameEngineActivity;->forbidSleep(Z)V

    .line 992
    :cond_0
    return-void
.end method

.method public static genUserID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 270
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, "uuid":Ljava/lang/String;
    return-object v0
.end method

.method public static generateDeviceIdent()Ljava/lang/String;
    .locals 6

    .prologue
    .line 793
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x4170000000000000L    # 1.6777216E7

    mul-double/2addr v2, v4

    double-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAPKSignature(I)Ljava/lang/String;
    .locals 2
    .param p0, "seed"    # I

    .prologue
    .line 1420
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v1

    iget-object v0, v1, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    .line 1421
    .local v0, "context":Lklb/android/GameEngine/GameEngineActivity;
    invoke-static {v0, p0}, Lklb/android/GameEngine/PFInterface;->calAPKSignature(Landroid/app/Activity;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getActivity()Lklb/android/GameEngine/GameEngineActivity;
    .locals 1

    .prologue
    .line 184
    sget-object v0, Lklb/android/GameEngine/PFInterface;->instance:Lklb/android/GameEngine/PFInterface;

    iget-object v0, v0, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    return-object v0
.end method

.method public static getBasePath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 214
    sget-object v0, Lklb/android/GameEngine/PFInterface;->instance:Lklb/android/GameEngine/PFInterface;

    sget-object v0, Lklb/android/GameEngine/PFInterface;->m_path_install:Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lklb/android/GameEngine/PFInterface;->instance:Lklb/android/GameEngine/PFInterface;

    sget-object v2, Lklb/android/GameEngine/PFInterface;->m_path_install:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "/install/"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBoard()Ljava/lang/String;
    .locals 1

    .prologue
    .line 828
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    return-object v0
.end method

.method public static getBrand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 813
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    return-object v0
.end method

.method public static getCountryCodeRAW()Ljava/lang/String;
    .locals 3

    .prologue
    .line 219
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 220
    .local v1, "currLocale":Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "country":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 227
    .end local v0    # "country":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 224
    .restart local v0    # "country":Ljava/lang/String;
    :cond_0
    const-string v0, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 226
    .end local v0    # "country":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 227
    .local v2, "e":Ljava/lang/Exception;
    const-string v0, ""

    goto :goto_0
.end method

.method public static getDevice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 818
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeviceToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    sget-object v0, Lklb/android/GameEngine/PFInterface;->mDeviceToken:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 263
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getActivity()Lklb/android/GameEngine/GameEngineActivity;

    move-result-object v0

    invoke-virtual {v0}, Lklb/android/GameEngine/GameEngineActivity;->bakeDeviceToken()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lklb/android/GameEngine/PFInterface;->mDeviceToken:Ljava/lang/String;

    .line 265
    :cond_0
    sget-object v0, Lklb/android/GameEngine/PFInterface;->mDeviceToken:Ljava/lang/String;

    return-object v0
.end method

.method public static getEnableNotification()Z
    .locals 3

    .prologue
    .line 967
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v2

    iget-object v0, v2, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    .line 968
    .local v0, "context":Lklb/android/GameEngine/GameEngineActivity;
    invoke-static {v0}, Landroid/support/v4/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v1

    .line 970
    .local v1, "nmc":Landroid/support/v4/app/NotificationManagerCompat;
    invoke-virtual {v1}, Landroid/support/v4/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    move-result v2

    return v2
.end method

.method public static getFingerPrint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 839
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    return-object v0
.end method

.method public static getFreeMemorySize()D
    .locals 8

    .prologue
    .line 1253
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v3

    iget-object v0, v3, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    .line 1254
    .local v0, "context":Lklb/android/GameEngine/GameEngineActivity;
    const-string v3, "activity"

    invoke-virtual {v0, v3}, Lklb/android/GameEngine/GameEngineActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 1255
    .local v2, "mgr":Landroid/app/ActivityManager;
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 1256
    .local v1, "info":Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v2, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 1258
    iget-wide v4, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    long-to-double v4, v4

    const-wide/high16 v6, 0x4130000000000000L    # 1048576.0

    div-double/2addr v4, v6

    return-wide v4
.end method

.method public static getInstance()Lklb/android/GameEngine/PFInterface;
    .locals 1

    .prologue
    .line 180
    sget-object v0, Lklb/android/GameEngine/PFInterface;->instance:Lklb/android/GameEngine/PFInterface;

    return-object v0
.end method

.method public static getKeyChain(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "service_name"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 300
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v3

    iget-object v3, v3, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    const-string v4, "GameEngineActivity"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lklb/android/GameEngine/GameEngineActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 301
    .local v1, "pref":Landroid/content/SharedPreferences;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, "pkey":Ljava/lang/String;
    const-string v3, ""

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 303
    .local v2, "ret":Ljava/lang/String;
    return-object v2
.end method

.method public static getLanguageCodeRAW()Ljava/lang/String;
    .locals 3

    .prologue
    .line 238
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 239
    .local v0, "currLocale":Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 240
    .local v2, "language":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 246
    .end local v2    # "language":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 243
    .restart local v2    # "language":Ljava/lang/String;
    :cond_0
    const-string v2, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 245
    .end local v2    # "language":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 246
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, ""

    goto :goto_0
.end method

.method public static getLocation()V
    .locals 2

    .prologue
    .line 1273
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v1

    iget-object v0, v1, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    .line 1274
    .local v0, "context":Lklb/android/GameEngine/GameEngineActivity;
    invoke-virtual {v0}, Lklb/android/GameEngine/GameEngineActivity;->getLocation()V

    .line 1275
    return-void
.end method

.method public static getManufacturer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 808
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method public static getMode()I
    .locals 4

    .prologue
    .line 431
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v1

    iget-object v0, v1, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    .line 432
    .local v0, "context":Lklb/android/GameEngine/GameEngineActivity;
    invoke-virtual {v0}, Lklb/android/GameEngine/GameEngineActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "adb_enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 823
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getOptimalAudioHz()I
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 1202
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v3

    iget-object v1, v3, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    .line 1203
    .local v1, "gameEngineActivity":Lklb/android/GameEngine/GameEngineActivity;
    invoke-virtual {v1}, Lklb/android/GameEngine/GameEngineActivity;->isLowLatencyAudioOptimisationEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1205
    const-string v3, "audio"

    invoke-virtual {v1, v3}, Lklb/android/GameEngine/GameEngineActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1206
    .local v0, "am":Landroid/media/AudioManager;
    const-string v3, "android.media.property.OUTPUT_SAMPLE_RATE"

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1207
    .local v2, "sampleRate":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1210
    .end local v0    # "am":Landroid/media/AudioManager;
    .end local v2    # "sampleRate":Ljava/lang/String;
    :goto_0
    return v3

    :cond_0
    const v3, 0xac44

    goto :goto_0
.end method

.method public static getOptimalAudioSamples()I
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 1216
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v3

    iget-object v2, v3, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    .line 1217
    .local v2, "gameEngineActivity":Lklb/android/GameEngine/GameEngineActivity;
    invoke-virtual {v2}, Lklb/android/GameEngine/GameEngineActivity;->isLowLatencyAudioOptimisationEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1219
    const-string v3, "audio"

    invoke-virtual {v2, v3}, Lklb/android/GameEngine/GameEngineActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1220
    .local v0, "am":Landroid/media/AudioManager;
    const-string v3, "android.media.property.OUTPUT_FRAMES_PER_BUFFER"

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1221
    .local v1, "framesPerBuffer":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1224
    .end local v0    # "am":Landroid/media/AudioManager;
    .end local v1    # "framesPerBuffer":Ljava/lang/String;
    :goto_0
    return v3

    :cond_0
    const/16 v3, 0x400

    goto :goto_0
.end method

.method public static getOption()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 437
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v2

    iget-object v0, v2, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    .line 438
    .local v0, "context":Lklb/android/GameEngine/GameEngineActivity;
    invoke-virtual {v0}, Lklb/android/GameEngine/GameEngineActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "development_settings_enabled"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 439
    .local v1, "rtv":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ge v2, v3, :cond_0

    .line 441
    invoke-virtual {v0}, Lklb/android/GameEngine/GameEngineActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mock_location"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 443
    :cond_0
    return v1
.end method

.method public static getPermissionStatus()I
    .locals 2

    .prologue
    .line 1306
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v1

    iget-object v0, v1, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    .line 1307
    .local v0, "context":Lklb/android/GameEngine/GameEngineActivity;
    invoke-virtual {v0}, Lklb/android/GameEngine/GameEngineActivity;->getPermissionStatus()I

    move-result v1

    return v1
.end method

.method public static getPreferredLangCodeRAW()Ljava/lang/String;
    .locals 5

    .prologue
    .line 252
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getLanguageCodeRAW()Ljava/lang/String;

    move-result-object v1

    .line 253
    .local v1, "language":Ljava/lang/String;
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getCountryCodeRAW()Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, "country":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 255
    .local v2, "prfdLanguage":Ljava/lang/String;
    return-object v2
.end method

.method public static getProductName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 803
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    return-object v0
.end method

.method public static getRandomBytes([B)Z
    .locals 1
    .param p0, "dest"    # [B

    .prologue
    .line 1058
    sget-object v0, Lklb/android/GameEngine/PFInterface;->rnd:Ljava/security/SecureRandom;

    if-nez v0, :cond_0

    .line 1059
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lklb/android/GameEngine/PFInterface;->rnd:Ljava/security/SecureRandom;

    .line 1061
    :cond_0
    sget-object v0, Lklb/android/GameEngine/PFInterface;->rnd:Ljava/security/SecureRandom;

    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1062
    const/4 v0, 0x1

    return v0
.end method

.method static getRsaPublicKey([B)Ljava/security/interfaces/RSAPublicKey;
    .locals 9
    .param p0, "pubk_in"    # [B

    .prologue
    const/4 v7, 0x0

    .line 997
    :try_start_0
    const-string v6, "RSA"

    invoke-static {v6}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1004
    .local v2, "factory":Ljava/security/KeyFactory;
    :try_start_1
    new-instance v4, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v4, p0, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1011
    .local v4, "pubkeyB64":Ljava/lang/String;
    const-string v6, "-----BEGIN PUBLIC KEY-----\n"

    const-string v8, ""

    invoke-virtual {v4, v6, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 1012
    .local v5, "pubkeyPem":Ljava/lang/String;
    const-string v6, "-----END PUBLIC KEY-----"

    const-string v8, ""

    invoke-virtual {v5, v6, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 1014
    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 1015
    .local v1, "encoded":[B
    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v3, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 1018
    .local v3, "keySpec":Ljava/security/spec/X509EncodedKeySpec;
    :try_start_2
    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v6

    check-cast v6, Ljava/security/interfaces/RSAPublicKey;
    :try_end_2
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1022
    .end local v1    # "encoded":[B
    .end local v2    # "factory":Ljava/security/KeyFactory;
    .end local v3    # "keySpec":Ljava/security/spec/X509EncodedKeySpec;
    .end local v4    # "pubkeyB64":Ljava/lang/String;
    .end local v5    # "pubkeyPem":Ljava/lang/String;
    :goto_0
    return-object v6

    .line 998
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    move-object v6, v7

    .line 1000
    goto :goto_0

    .line 1005
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v2    # "factory":Ljava/security/KeyFactory;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    move-object v6, v7

    .line 1007
    goto :goto_0

    .line 1019
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v1    # "encoded":[B
    .restart local v3    # "keySpec":Ljava/security/spec/X509EncodedKeySpec;
    .restart local v4    # "pubkeyB64":Ljava/lang/String;
    .restart local v5    # "pubkeyPem":Ljava/lang/String;
    :catch_2
    move-exception v0

    .local v0, "e":Ljava/security/spec/InvalidKeySpecException;
    move-object v6, v7

    .line 1022
    goto :goto_0
.end method

.method public static getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    sget-object v0, Lklb/android/GameEngine/PFInterface;->s:Landroid/content/pm/Signature;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lklb/android/GameEngine/PFInterface;->s:Landroid/content/pm/Signature;

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getTags()Ljava/lang/String;
    .locals 1

    .prologue
    .line 844
    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    return-object v0
.end method

.method public static getUsedMemorySize()D
    .locals 8

    .prologue
    .line 1263
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v3

    iget-object v0, v3, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    .line 1264
    .local v0, "context":Lklb/android/GameEngine/GameEngineActivity;
    const-string v3, "activity"

    invoke-virtual {v0, v3}, Lklb/android/GameEngine/GameEngineActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 1265
    .local v2, "mgr":Landroid/app/ActivityManager;
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 1266
    .local v1, "info":Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v2, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 1268
    iget-wide v4, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    iget-wide v6, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    sub-long/2addr v4, v6

    long-to-double v4, v4

    const-wide/high16 v6, 0x4130000000000000L    # 1048576.0

    div-double/2addr v4, v6

    return-wide v4
.end method

.method public static getVersionCode()I
    .locals 7

    .prologue
    .line 916
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v5

    iget-object v0, v5, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    .line 917
    .local v0, "context":Lklb/android/GameEngine/GameEngineActivity;
    invoke-virtual {v0}, Lklb/android/GameEngine/GameEngineActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 918
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    .line 920
    .local v4, "versionCode":I
    :try_start_0
    invoke-virtual {v0}, Lklb/android/GameEngine/GameEngineActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 921
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    iget v4, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 926
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return v4

    .line 922
    :catch_0
    move-exception v1

    .line 924
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getVersionName()Ljava/lang/String;
    .locals 7

    .prologue
    .line 974
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v5

    iget-object v0, v5, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    .line 975
    .local v0, "context":Lklb/android/GameEngine/GameEngineActivity;
    invoke-virtual {v0}, Lklb/android/GameEngine/GameEngineActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 976
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const-string v4, ""

    .line 978
    .local v4, "versionName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v0}, Lklb/android/GameEngine/GameEngineActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 979
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 984
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v4

    .line 980
    :catch_0
    move-exception v1

    .line 982
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getVersionRelease()Ljava/lang/String;
    .locals 1

    .prologue
    .line 834
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static getVersionSDK()I
    .locals 1

    .prologue
    .line 798
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static indicator_cmd(II)V
    .locals 2
    .param p0, "index"    # I
    .param p1, "cmd"    # I

    .prologue
    .line 668
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v1

    iget-object v0, v1, Lklb/android/GameEngine/PFInterface;->m_indicator:Lklb/android/GameEngine/IndicatorItem;

    .line 669
    .local v0, "indicator":Lklb/android/GameEngine/IndicatorItem;
    if-eqz v0, :cond_0

    .line 670
    invoke-virtual {v0, p1}, Lklb/android/GameEngine/IndicatorItem;->cmd(I)V

    .line 672
    :cond_0
    return-void
.end method

.method public static indicator_create(IIIIZ)I
    .locals 8
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "background"    # Z

    .prologue
    .line 615
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v7

    .line 616
    .local v7, "pfif":Lklb/android/GameEngine/PFInterface;
    iget-object v1, v7, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    .line 617
    .local v1, "context":Lklb/android/GameEngine/GameEngineActivity;
    iget-object v2, v7, Lklb/android/GameEngine/PFInterface;->m_indicator:Lklb/android/GameEngine/IndicatorItem;

    if-nez v2, :cond_0

    .line 619
    new-instance v0, Lklb/android/GameEngine/IndicatorItem;

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lklb/android/GameEngine/IndicatorItem;-><init>(Lklb/android/GameEngine/GameEngineActivity;IIIIZ)V

    .line 620
    .local v0, "indicator":Lklb/android/GameEngine/IndicatorItem;
    iput-object v0, v7, Lklb/android/GameEngine/PFInterface;->m_indicator:Lklb/android/GameEngine/IndicatorItem;

    .line 621
    const/4 v2, 0x0

    .line 627
    .end local v0    # "indicator":Lklb/android/GameEngine/IndicatorItem;
    :goto_0
    return v2

    .line 625
    :cond_0
    iget-object v2, v7, Lklb/android/GameEngine/PFInterface;->m_indicator:Lklb/android/GameEngine/IndicatorItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lklb/android/GameEngine/IndicatorItem;->setVisible(Z)V

    .line 627
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static indicator_destroy(I)Z
    .locals 3
    .param p0, "index"    # I

    .prologue
    const/4 v2, 0x1

    .line 632
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    .line 633
    .local v0, "pfif":Lklb/android/GameEngine/PFInterface;
    iget-object v1, v0, Lklb/android/GameEngine/PFInterface;->m_indicator:Lklb/android/GameEngine/IndicatorItem;

    if-eqz v1, :cond_0

    .line 635
    iget-object v1, v0, Lklb/android/GameEngine/PFInterface;->m_indicator:Lklb/android/GameEngine/IndicatorItem;

    iput-boolean v2, v1, Lklb/android/GameEngine/IndicatorItem;->m_remove:Z

    .line 637
    :cond_0
    return v2
.end method

.method public static indicator_getText(I)Ljava/lang/String;
    .locals 3
    .param p0, "index"    # I

    .prologue
    .line 651
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v2

    iget-object v2, v2, Lklb/android/GameEngine/PFInterface;->m_webList:[Lklb/android/GameEngine/WebViewItem;

    aget-object v0, v2, p0

    .line 652
    .local v0, "control":Lklb/android/GameEngine/WebViewItem;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 654
    :goto_0
    return-object v1

    .line 653
    :cond_0
    invoke-virtual {v0}, Lklb/android/GameEngine/WebViewItem;->getText()Ljava/lang/String;

    move-result-object v1

    .line 654
    .local v1, "text":Ljava/lang/String;
    goto :goto_0
.end method

.method public static indicator_setText(ILjava/lang/String;)Z
    .locals 2
    .param p0, "index"    # I
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 643
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v1

    iget-object v0, v1, Lklb/android/GameEngine/PFInterface;->m_indicator:Lklb/android/GameEngine/IndicatorItem;

    .line 644
    .local v0, "indicator":Lklb/android/GameEngine/IndicatorItem;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 646
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static indicator_update(IIIIIZZ)V
    .locals 2
    .param p0, "index"    # I
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "enable"    # Z
    .param p6, "visible"    # Z

    .prologue
    .line 659
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v1

    .line 660
    .local v1, "pfif":Lklb/android/GameEngine/PFInterface;
    iget-object v0, v1, Lklb/android/GameEngine/PFInterface;->m_indicator:Lklb/android/GameEngine/IndicatorItem;

    .line 661
    .local v0, "indicator":Lklb/android/GameEngine/IndicatorItem;
    if-eqz v0, :cond_0

    .line 662
    invoke-virtual {v0, p1, p2, p3, p4}, Lklb/android/GameEngine/IndicatorItem;->move(IIII)V

    .line 664
    :cond_0
    return-void
.end method

.method public static movieview_cmd(II)V
    .locals 2
    .param p0, "index"    # I
    .param p1, "cmd"    # I

    .prologue
    .line 607
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v1

    iget-object v1, v1, Lklb/android/GameEngine/PFInterface;->m_movieList:[Lklb/android/GameEngine/MovieViewItem;

    aget-object v0, v1, p0

    .line 608
    .local v0, "movie":Lklb/android/GameEngine/MovieViewItem;
    invoke-virtual {v0, p1}, Lklb/android/GameEngine/MovieViewItem;->cmd(I)V

    .line 609
    return-void
.end method

.method public static movieview_create(IIIILjava/lang/String;Z)I
    .locals 10
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "defURL"    # Ljava/lang/String;
    .param p5, "background"    # Z

    .prologue
    .line 552
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v9

    .line 553
    .local v9, "pfif":Lklb/android/GameEngine/PFInterface;
    iget-object v2, v9, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    .line 554
    .local v2, "context":Lklb/android/GameEngine/GameEngineActivity;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, v9, Lklb/android/GameEngine/PFInterface;->MAX_MOVIE_VIEW:I

    if-ge v1, v3, :cond_2

    .line 555
    iget-object v3, v9, Lklb/android/GameEngine/PFInterface;->m_movieList:[Lklb/android/GameEngine/MovieViewItem;

    aget-object v3, v3, v1

    if-nez v3, :cond_1

    .line 556
    new-instance v0, Lklb/android/GameEngine/MovieViewItem;

    move-object v3, p4

    move v4, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p5

    invoke-direct/range {v0 .. v8}, Lklb/android/GameEngine/MovieViewItem;-><init>(ILklb/android/GameEngine/GameEngineActivity;Ljava/lang/String;IIIIZ)V

    .line 557
    .local v0, "movie":Lklb/android/GameEngine/MovieViewItem;
    iget-object v3, v9, Lklb/android/GameEngine/PFInterface;->m_movieList:[Lklb/android/GameEngine/MovieViewItem;

    aput-object v0, v3, v1

    .line 558
    iget v3, v9, Lklb/android/GameEngine/PFInterface;->m_movieListCount:I

    if-le v1, v3, :cond_0

    iput v1, v9, Lklb/android/GameEngine/PFInterface;->m_movieListCount:I

    .line 562
    .end local v0    # "movie":Lklb/android/GameEngine/MovieViewItem;
    .end local v1    # "i":I
    :cond_0
    :goto_1
    return v1

    .line 554
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 562
    :cond_2
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public static movieview_destroy(I)Z
    .locals 4
    .param p0, "index"    # I

    .prologue
    const/4 v3, 0x1

    .line 567
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v1

    .line 568
    .local v1, "pfif":Lklb/android/GameEngine/PFInterface;
    iget-object v2, v1, Lklb/android/GameEngine/PFInterface;->m_movieList:[Lklb/android/GameEngine/MovieViewItem;

    aget-object v0, v2, p0

    .line 569
    .local v0, "movie":Lklb/android/GameEngine/MovieViewItem;
    iput-boolean v3, v0, Lklb/android/GameEngine/MovieViewItem;->m_remove:Z

    .line 570
    return v3
.end method

.method public static movieview_getText(I)Ljava/lang/String;
    .locals 3
    .param p0, "index"    # I

    .prologue
    .line 590
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v2

    iget-object v2, v2, Lklb/android/GameEngine/PFInterface;->m_webList:[Lklb/android/GameEngine/WebViewItem;

    aget-object v0, v2, p0

    .line 591
    .local v0, "control":Lklb/android/GameEngine/WebViewItem;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 593
    :goto_0
    return-object v1

    .line 592
    :cond_0
    invoke-virtual {v0}, Lklb/android/GameEngine/WebViewItem;->getText()Ljava/lang/String;

    move-result-object v1

    .line 593
    .local v1, "text":Ljava/lang/String;
    goto :goto_0
.end method

.method public static movieview_setText(ILjava/lang/String;)Z
    .locals 4
    .param p0, "index"    # I
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 575
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v2

    iget-object v2, v2, Lklb/android/GameEngine/PFInterface;->m_movieList:[Lklb/android/GameEngine/MovieViewItem;

    aget-object v0, v2, p0

    .line 576
    .local v0, "control":Lklb/android/GameEngine/MovieViewItem;
    move-object v1, p1

    .line 577
    .local v1, "inner_text":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v2, 0x0

    .line 585
    :goto_0
    return v2

    .line 580
    :cond_0
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v2

    iget-object v2, v2, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    new-instance v3, Lklb/android/GameEngine/PFInterface$3;

    invoke-direct {v3, v0, v1}, Lklb/android/GameEngine/PFInterface$3;-><init>(Lklb/android/GameEngine/MovieViewItem;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lklb/android/GameEngine/GameEngineActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 585
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static movieview_update(IIIIIZZ)V
    .locals 3
    .param p0, "index"    # I
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "enable"    # Z
    .param p6, "visible"    # Z

    .prologue
    .line 598
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v1

    .line 599
    .local v1, "pfif":Lklb/android/GameEngine/PFInterface;
    iget-object v2, v1, Lklb/android/GameEngine/PFInterface;->m_movieList:[Lklb/android/GameEngine/MovieViewItem;

    aget-object v0, v2, p0

    .line 600
    .local v0, "movie":Lklb/android/GameEngine/MovieViewItem;
    if-eqz v0, :cond_0

    .line 601
    invoke-virtual {v0, p1, p2, p3, p4}, Lklb/android/GameEngine/MovieViewItem;->move(IIII)V

    .line 603
    :cond_0
    return-void
.end method

.method public static nanotime()J
    .locals 2

    .prologue
    .line 758
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static onExtensionEventRequest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "eventName"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1415
    invoke-static {}, Lklb/android/GameEngine/KLBExtensionRuntime;->getInstance()Lklb/android/GameEngine/KLBExtensionRuntime;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lklb/android/GameEngine/KLBExtensionRuntime;->onExtensionEventRequest(Ljava/lang/String;Ljava/lang/String;)V

    .line 1416
    return-void
.end method

.method public static publicKeyEncrypt([B[B[B)I
    .locals 7
    .param p0, "data"    # [B
    .param p1, "pubk_in"    # [B
    .param p2, "outbuf"    # [B

    .prologue
    const/4 v3, -0x1

    .line 1067
    invoke-static {p1}, Lklb/android/GameEngine/PFInterface;->getRsaPublicKey([B)Ljava/security/interfaces/RSAPublicKey;

    move-result-object v2

    .line 1068
    .local v2, "pubKey":Ljava/security/interfaces/RSAPublicKey;
    if-nez v2, :cond_0

    .line 1105
    :goto_0
    return v3

    .line 1071
    :cond_0
    sget-object v4, Lklb/android/GameEngine/PFInterface;->rnd:Ljava/security/SecureRandom;

    if-nez v4, :cond_1

    .line 1072
    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    sput-object v4, Lklb/android/GameEngine/PFInterface;->rnd:Ljava/security/SecureRandom;

    .line 1074
    :cond_1
    sget-object v4, Lklb/android/GameEngine/PFInterface;->cipher:Ljavax/crypto/Cipher;

    if-nez v4, :cond_2

    .line 1076
    :try_start_0
    const-string v4, "RSA/None/PKCS1Padding"

    const-string v5, "BC"

    invoke-static {v4, v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    sput-object v4, Lklb/android/GameEngine/PFInterface;->cipher:Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1089
    :cond_2
    :try_start_1
    sget-object v4, Lklb/android/GameEngine/PFInterface;->cipher:Ljavax/crypto/Cipher;

    const/4 v5, 0x1

    sget-object v6, Lklb/android/GameEngine/PFInterface;->rnd:Ljava/security/SecureRandom;

    invoke-virtual {v4, v5, v2, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1095
    :try_start_2
    sget-object v4, Lklb/android/GameEngine/PFInterface;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v4, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 1096
    .local v1, "encrypted":[B
    const/4 v4, 0x0

    const/4 v5, 0x0

    array-length v6, v1

    invoke-static {v1, v4, p2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1097
    array-length v3, v1
    :try_end_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_2} :catch_5

    goto :goto_0

    .line 1077
    .end local v1    # "encrypted":[B
    :catch_0
    move-exception v0

    .line 1079
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    goto :goto_0

    .line 1080
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .line 1082
    .local v0, "e":Ljava/security/NoSuchProviderException;
    goto :goto_0

    .line 1083
    .end local v0    # "e":Ljava/security/NoSuchProviderException;
    :catch_2
    move-exception v0

    .line 1085
    .local v0, "e":Ljavax/crypto/NoSuchPaddingException;
    goto :goto_0

    .line 1090
    .end local v0    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_3
    move-exception v0

    .line 1092
    .local v0, "e":Ljava/security/InvalidKeyException;
    goto :goto_0

    .line 1099
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    :catch_4
    move-exception v0

    .line 1101
    .local v0, "e":Ljavax/crypto/IllegalBlockSizeException;
    goto :goto_0

    .line 1103
    .end local v0    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_5
    move-exception v0

    .line 1105
    .local v0, "e":Ljavax/crypto/BadPaddingException;
    goto :goto_0
.end method

.method public static publicKeyVerify([B[B[B)Z
    .locals 5
    .param p0, "data"    # [B
    .param p1, "sig_in"    # [B
    .param p2, "pubk_in"    # [B

    .prologue
    const/4 v2, 0x0

    .line 1030
    :try_start_0
    const-string v4, "SHA1withRSA"

    invoke-static {v4}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1035
    .local v3, "sig":Ljava/security/Signature;
    invoke-static {p2}, Lklb/android/GameEngine/PFInterface;->getRsaPublicKey([B)Ljava/security/interfaces/RSAPublicKey;

    move-result-object v1

    .line 1036
    .local v1, "pubKey":Ljava/security/interfaces/RSAPublicKey;
    if-nez v1, :cond_0

    .line 1052
    .end local v1    # "pubKey":Ljava/security/interfaces/RSAPublicKey;
    .end local v3    # "sig":Ljava/security/Signature;
    :goto_0
    return v2

    .line 1031
    :catch_0
    move-exception v0

    .line 1033
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const/4 v2, 0x1

    goto :goto_0

    .line 1040
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v1    # "pubKey":Ljava/security/interfaces/RSAPublicKey;
    .restart local v3    # "sig":Ljava/security/Signature;
    :cond_0
    :try_start_1
    invoke-virtual {v3, v1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1046
    :try_start_2
    invoke-virtual {v3, p0}, Ljava/security/Signature;->update([B)V

    .line 1047
    invoke-virtual {v3, p1}, Ljava/security/Signature;->verify([B)Z
    :try_end_2
    .catch Ljava/security/SignatureException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v2

    .line 1049
    .local v2, "result":Z
    goto :goto_0

    .line 1041
    .end local v2    # "result":Z
    :catch_1
    move-exception v0

    .line 1043
    .local v0, "e":Ljava/security/InvalidKeyException;
    goto :goto_0

    .line 1050
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    :catch_2
    move-exception v0

    .line 1052
    .local v0, "e":Ljava/security/SignatureException;
    goto :goto_0
.end method

.method public static quitGame()V
    .locals 2

    .prologue
    .line 1229
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v1

    iget-object v0, v1, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    .line 1230
    .local v0, "gameEngineActivity":Lklb/android/GameEngine/GameEngineActivity;
    new-instance v1, Lklb/android/GameEngine/PFInterface$4;

    invoke-direct {v1}, Lklb/android/GameEngine/PFInterface$4;-><init>()V

    invoke-virtual {v0, v1}, Lklb/android/GameEngine/GameEngineActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1235
    return-void
.end method

.method public static requirePermission(I)V
    .locals 2
    .param p0, "idx"    # I

    .prologue
    .line 1286
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v1

    iget-object v0, v1, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    .line 1287
    .local v0, "context":Lklb/android/GameEngine/GameEngineActivity;
    packed-switch p0, :pswitch_data_0

    .line 1302
    :goto_0
    return-void

    .line 1293
    :pswitch_0
    invoke-virtual {v0}, Lklb/android/GameEngine/GameEngineActivity;->requireLocationPermission()V

    goto :goto_0

    .line 1298
    :pswitch_1
    invoke-virtual {v0}, Lklb/android/GameEngine/GameEngineActivity;->requireNotificationPermission()V

    goto :goto_0

    .line 1287
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static setKeyChain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "service_name"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 290
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v3

    iget-object v3, v3, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    const-string v4, "GameEngineActivity"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lklb/android/GameEngine/GameEngineActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 291
    .local v2, "pref":Landroid/content/SharedPreferences;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 292
    .local v1, "pkey":Ljava/lang/String;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 293
    .local v0, "e":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 294
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 295
    const/4 v3, 0x1

    return v3
.end method

.method public static setLocalNotificationWithAlarm(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    .locals 9
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "id"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "sec"    # I
    .param p4, "soundName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 931
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v5

    iget-object v2, v5, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    .line 933
    .local v2, "context":Lklb/android/GameEngine/GameEngineActivity;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 934
    .local v1, "calendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 935
    const/16 v5, 0xd

    invoke-virtual {v1, v5, p3}, Ljava/util/Calendar;->add(II)V

    .line 937
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lklb/android/jpllfync/AlarmBroadcastReceiver;

    invoke-direct {v3, v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 938
    .local v3, "intent":Landroid/content/Intent;
    const-string v5, "tag"

    invoke-virtual {v3, v5, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 939
    const-string v5, "msg"

    invoke-virtual {v3, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 940
    const-string v5, "soundName"

    invoke-virtual {v3, v5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 941
    const-string v5, "id"

    invoke-virtual {v3, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 943
    const/high16 v5, 0x8000000

    invoke-static {v2, p1, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 944
    .local v4, "sender":Landroid/app/PendingIntent;
    const-string v5, "alarm"

    invoke-virtual {v2, v5}, Lklb/android/GameEngine/GameEngineActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 945
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-lt v5, v6, :cond_0

    .line 947
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v0, v8, v6, v7, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 953
    :goto_0
    return-void

    .line 951
    :cond_0
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v0, v8, v6, v7, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public static sha512(Ljava/lang/String;)[B
    .locals 6
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 277
    :try_start_0
    const-string v4, "SHA-512"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 278
    .local v2, "md":Ljava/security/MessageDigest;
    const-string v4, "UTF-8"

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 279
    .local v3, "strdata":[B
    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 280
    .local v0, "digest":[B
    return-object v0

    .line 281
    .end local v0    # "digest":[B
    .end local v2    # "md":Ljava/security/MessageDigest;
    .end local v3    # "strdata":[B
    :catch_0
    move-exception v1

    .line 282
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "No Such Algorithm: SHA512"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 283
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v1

    .line 284
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "No Such Algorithm: SHA512"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static startAlertDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 904
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v1

    iget-object v0, v1, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    .line 905
    .local v0, "context":Lklb/android/GameEngine/GameEngineActivity;
    invoke-virtual {v0, p0, p1}, Lklb/android/GameEngine/GameEngineActivity;->startAlertDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    return-void
.end method

.method public static startBrowser(Ljava/lang/String;)V
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 911
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v1

    iget-object v0, v1, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    .line 912
    .local v0, "context":Lklb/android/GameEngine/GameEngineActivity;
    invoke-virtual {v0, p0}, Lklb/android/GameEngine/GameEngineActivity;->startBrowser(Ljava/lang/String;)V

    .line 913
    return-void
.end method

.method public static startMailer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "addr"    # Ljava/lang/String;
    .param p1, "subject"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;

    .prologue
    .line 897
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v1

    iget-object v0, v1, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    .line 898
    .local v0, "context":Lklb/android/GameEngine/GameEngineActivity;
    invoke-virtual {v0, p0, p1, p2}, Lklb/android/GameEngine/GameEngineActivity;->startExternalApplicationMail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    return-void
.end method

.method public static stopGetLocation()Z
    .locals 2

    .prologue
    .line 1279
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v1

    iget-object v0, v1, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    .line 1280
    .local v0, "context":Lklb/android/GameEngine/GameEngineActivity;
    invoke-virtual {v0}, Lklb/android/GameEngine/GameEngineActivity;->stopGetLocation()Z

    move-result v1

    return v1
.end method

.method public static textbox_create(IIIILjava/lang/String;Z)I
    .locals 10
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "defText"    # Ljava/lang/String;
    .param p5, "passwdmode"    # Z

    .prologue
    .line 318
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v9

    .line 319
    .local v9, "pfif":Lklb/android/GameEngine/PFInterface;
    iget-object v1, v9, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    .line 320
    .local v1, "context":Lklb/android/GameEngine/GameEngineActivity;
    new-instance v0, Lklb/android/GameEngine/EditBoxItem;

    move-object v2, p4

    move v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lklb/android/GameEngine/EditBoxItem;-><init>(Lklb/android/GameEngine/GameEngineActivity;Ljava/lang/String;IIIIZ)V

    .line 321
    .local v0, "ebox":Lklb/android/GameEngine/EditBoxItem;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    iget v2, v9, Lklb/android/GameEngine/PFInterface;->MAX_EDIT_TEXT:I

    if-ge v8, v2, :cond_2

    .line 322
    iget-object v2, v9, Lklb/android/GameEngine/PFInterface;->m_textList:[Lklb/android/GameEngine/EditBoxItem;

    aget-object v2, v2, v8

    if-nez v2, :cond_1

    .line 323
    iget-object v2, v9, Lklb/android/GameEngine/PFInterface;->m_textList:[Lklb/android/GameEngine/EditBoxItem;

    aput-object v0, v2, v8

    .line 324
    iget v2, v9, Lklb/android/GameEngine/PFInterface;->m_textListCount:I

    if-le v8, v2, :cond_0

    iput v8, v9, Lklb/android/GameEngine/PFInterface;->m_textListCount:I

    .line 329
    .end local v8    # "i":I
    :cond_0
    :goto_1
    return v8

    .line 321
    .restart local v8    # "i":I
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 328
    :cond_2
    const/4 v0, 0x0

    .line 329
    const/4 v8, -0x1

    goto :goto_1
.end method

.method public static textbox_destroy(I)Z
    .locals 4
    .param p0, "index"    # I

    .prologue
    const/4 v3, 0x1

    .line 334
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v1

    .line 335
    .local v1, "pfif":Lklb/android/GameEngine/PFInterface;
    iget-object v2, v1, Lklb/android/GameEngine/PFInterface;->m_textList:[Lklb/android/GameEngine/EditBoxItem;

    aget-object v0, v2, p0

    .line 336
    .local v0, "edit":Lklb/android/GameEngine/EditBoxItem;
    iput-boolean v3, v0, Lklb/android/GameEngine/EditBoxItem;->m_remove:Z

    .line 337
    return v3
.end method

.method public static textbox_getText(I)Ljava/lang/String;
    .locals 3
    .param p0, "index"    # I

    .prologue
    .line 359
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v2

    iget-object v2, v2, Lklb/android/GameEngine/PFInterface;->m_textList:[Lklb/android/GameEngine/EditBoxItem;

    aget-object v0, v2, p0

    .line 360
    .local v0, "control":Lklb/android/GameEngine/EditBoxItem;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 362
    :goto_0
    return-object v1

    .line 361
    :cond_0
    invoke-virtual {v0}, Lklb/android/GameEngine/EditBoxItem;->getText()Ljava/lang/String;

    move-result-object v1

    .line 362
    .local v1, "text":Ljava/lang/String;
    goto :goto_0
.end method

.method public static textbox_setAlignment(II)V
    .locals 4
    .param p0, "index"    # I
    .param p1, "alignment"    # I

    .prologue
    .line 410
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v2

    .line 411
    .local v2, "pfif":Lklb/android/GameEngine/PFInterface;
    iget-object v3, v2, Lklb/android/GameEngine/PFInterface;->m_textList:[Lklb/android/GameEngine/EditBoxItem;

    aget-object v0, v3, p0

    .line 412
    .local v0, "edit":Lklb/android/GameEngine/EditBoxItem;
    if-nez v0, :cond_0

    .line 427
    :goto_0
    return-void

    .line 414
    :cond_0
    const/4 v1, 0x0

    .line 415
    .local v1, "gravity":I
    packed-switch p1, :pswitch_data_0

    .line 426
    :goto_1
    invoke-virtual {v0, v1}, Lklb/android/GameEngine/EditBoxItem;->setGravity(I)V

    goto :goto_0

    .line 417
    :pswitch_0
    const/4 v1, 0x3

    .line 418
    goto :goto_1

    .line 420
    :pswitch_1
    const/16 v1, 0x11

    .line 421
    goto :goto_1

    .line 423
    :pswitch_2
    const/4 v1, 0x5

    goto :goto_1

    .line 415
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static textbox_setMaxlen(II)V
    .locals 3
    .param p0, "index"    # I
    .param p1, "maxlen"    # I

    .prologue
    .line 398
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v1

    .line 399
    .local v1, "pfif":Lklb/android/GameEngine/PFInterface;
    iget-object v2, v1, Lklb/android/GameEngine/PFInterface;->m_textList:[Lklb/android/GameEngine/EditBoxItem;

    aget-object v0, v2, p0

    .line 400
    .local v0, "edit":Lklb/android/GameEngine/EditBoxItem;
    if-nez v0, :cond_0

    .line 403
    :goto_0
    return-void

    .line 402
    :cond_0
    invoke-virtual {v0, p1}, Lklb/android/GameEngine/EditBoxItem;->setMaxlen(I)V

    goto :goto_0
.end method

.method public static textbox_setText(ILjava/lang/String;)Z
    .locals 4
    .param p0, "index"    # I
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 342
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v2

    iget-object v2, v2, Lklb/android/GameEngine/PFInterface;->m_textList:[Lklb/android/GameEngine/EditBoxItem;

    aget-object v0, v2, p0

    .line 343
    .local v0, "control":Lklb/android/GameEngine/EditBoxItem;
    move-object v1, p1

    .line 344
    .local v1, "inner_text":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v2, 0x0

    .line 354
    :goto_0
    return v2

    .line 349
    :cond_0
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v2

    iget-object v2, v2, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    new-instance v3, Lklb/android/GameEngine/PFInterface$1;

    invoke-direct {v3, v0, v1}, Lklb/android/GameEngine/PFInterface$1;-><init>(Lklb/android/GameEngine/EditBoxItem;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lklb/android/GameEngine/GameEngineActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 354
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static textbox_sethint(ILjava/lang/String;)V
    .locals 3
    .param p0, "index"    # I
    .param p1, "hint"    # Ljava/lang/String;

    .prologue
    .line 389
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v1

    .line 390
    .local v1, "pfif":Lklb/android/GameEngine/PFInterface;
    iget-object v2, v1, Lklb/android/GameEngine/PFInterface;->m_textList:[Lklb/android/GameEngine/EditBoxItem;

    aget-object v0, v2, p0

    .line 391
    .local v0, "edit":Lklb/android/GameEngine/EditBoxItem;
    if-nez v0, :cond_0

    .line 394
    :goto_0
    return-void

    .line 393
    :cond_0
    invoke-virtual {v0, p1}, Lklb/android/GameEngine/EditBoxItem;->setHint(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static textbox_setpaint(ILandroid/graphics/Paint;)V
    .locals 3
    .param p0, "index"    # I
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 379
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v1

    .line 380
    .local v1, "pfif":Lklb/android/GameEngine/PFInterface;
    iget-object v2, v1, Lklb/android/GameEngine/PFInterface;->m_textList:[Lklb/android/GameEngine/EditBoxItem;

    aget-object v0, v2, p0

    .line 381
    .local v0, "edit":Lklb/android/GameEngine/EditBoxItem;
    if-nez v0, :cond_0

    .line 384
    :goto_0
    return-void

    .line 383
    :cond_0
    invoke-virtual {v0, p1}, Lklb/android/GameEngine/EditBoxItem;->setPaint(Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public static textbox_update(IIIIIZZ)V
    .locals 3
    .param p0, "index"    # I
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "enable"    # Z
    .param p6, "visible"    # Z

    .prologue
    .line 367
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v1

    .line 368
    .local v1, "pfif":Lklb/android/GameEngine/PFInterface;
    iget-object v2, v1, Lklb/android/GameEngine/PFInterface;->m_textList:[Lklb/android/GameEngine/EditBoxItem;

    aget-object v0, v2, p0

    .line 369
    .local v0, "edit":Lklb/android/GameEngine/EditBoxItem;
    if-nez v0, :cond_0

    .line 374
    :goto_0
    return-void

    .line 371
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lklb/android/GameEngine/EditBoxItem;->move(IIII)V

    .line 372
    invoke-virtual {v0, p6}, Lklb/android/GameEngine/EditBoxItem;->setVisible(Z)V

    .line 373
    invoke-virtual {v0, p5}, Lklb/android/GameEngine/EditBoxItem;->setEnable(Z)V

    goto :goto_0
.end method

.method public static webview_create(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 21
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "defURL"    # Ljava/lang/String;
    .param p5, "token"    # Ljava/lang/String;
    .param p6, "region"    # Ljava/lang/String;
    .param p7, "bundleVersion"    # Ljava/lang/String;
    .param p8, "clientVersion"    # Ljava/lang/String;
    .param p9, "consumerKey"    # Ljava/lang/String;
    .param p10, "applicationId"    # Ljava/lang/String;
    .param p11, "userId"    # Ljava/lang/String;
    .param p12, "nojump"    # Z

    .prologue
    .line 452
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v20

    .line 453
    .local v20, "pfif":Lklb/android/GameEngine/PFInterface;
    move-object/from16 v0, v20

    iget-object v3, v0, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    .line 454
    .local v3, "context":Lklb/android/GameEngine/GameEngineActivity;
    new-instance v2, Lklb/android/GameEngine/WebViewItem;

    move-object/from16 v0, v20

    iget-object v0, v0, Lklb/android/GameEngine/PFInterface;->m_tzone:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lklb/android/GameEngine/PFInterface;->m_osversion:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v4, p4

    move/from16 v5, p0

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    move-object/from16 v15, p11

    move/from16 v18, p12

    invoke-direct/range {v2 .. v18}, Lklb/android/GameEngine/WebViewItem;-><init>(Lklb/android/GameEngine/GameEngineActivity;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 457
    .local v2, "web":Lklb/android/GameEngine/WebViewItem;
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_0
    move-object/from16 v0, v20

    iget v4, v0, Lklb/android/GameEngine/PFInterface;->MAX_WEB_VIEW:I

    move/from16 v0, v19

    if-ge v0, v4, :cond_2

    .line 458
    move-object/from16 v0, v20

    iget-object v4, v0, Lklb/android/GameEngine/PFInterface;->m_webList:[Lklb/android/GameEngine/WebViewItem;

    aget-object v4, v4, v19

    if-nez v4, :cond_1

    .line 459
    move-object/from16 v0, v20

    iget-object v4, v0, Lklb/android/GameEngine/PFInterface;->m_webList:[Lklb/android/GameEngine/WebViewItem;

    aput-object v2, v4, v19

    .line 460
    move-object/from16 v0, v20

    iget v4, v0, Lklb/android/GameEngine/PFInterface;->m_webListCount:I

    move/from16 v0, v19

    if-le v0, v4, :cond_0

    move/from16 v0, v19

    move-object/from16 v1, v20

    iput v0, v1, Lklb/android/GameEngine/PFInterface;->m_webListCount:I

    .line 465
    .end local v19    # "i":I
    :cond_0
    :goto_1
    return v19

    .line 457
    .restart local v19    # "i":I
    :cond_1
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 464
    :cond_2
    const/4 v2, 0x0

    .line 465
    const/16 v19, -0x1

    goto :goto_1
.end method

.method public static webview_destroy(I)Z
    .locals 4
    .param p0, "index"    # I

    .prologue
    const/4 v3, 0x1

    .line 470
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    .line 471
    .local v0, "pfif":Lklb/android/GameEngine/PFInterface;
    iget-object v2, v0, Lklb/android/GameEngine/PFInterface;->m_webList:[Lklb/android/GameEngine/WebViewItem;

    aget-object v1, v2, p0

    .line 472
    .local v1, "web":Lklb/android/GameEngine/WebViewItem;
    iput-boolean v3, v1, Lklb/android/GameEngine/WebViewItem;->m_remove:Z

    .line 473
    return v3
.end method

.method public static webview_getText(I)Ljava/lang/String;
    .locals 3
    .param p0, "index"    # I

    .prologue
    .line 524
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v2

    iget-object v2, v2, Lklb/android/GameEngine/PFInterface;->m_webList:[Lklb/android/GameEngine/WebViewItem;

    aget-object v0, v2, p0

    .line 525
    .local v0, "control":Lklb/android/GameEngine/WebViewItem;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 527
    :goto_0
    return-object v1

    .line 526
    :cond_0
    invoke-virtual {v0}, Lklb/android/GameEngine/WebViewItem;->getText()Ljava/lang/String;

    move-result-object v1

    .line 527
    .local v1, "text":Ljava/lang/String;
    goto :goto_0
.end method

.method public static webview_getTmpText(I)Ljava/lang/String;
    .locals 3
    .param p0, "index"    # I

    .prologue
    .line 532
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v2

    iget-object v2, v2, Lklb/android/GameEngine/PFInterface;->m_webList:[Lklb/android/GameEngine/WebViewItem;

    aget-object v0, v2, p0

    .line 533
    .local v0, "control":Lklb/android/GameEngine/WebViewItem;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 535
    :goto_0
    return-object v1

    .line 534
    :cond_0
    invoke-virtual {v0}, Lklb/android/GameEngine/WebViewItem;->getTmpText()Ljava/lang/String;

    move-result-object v1

    .line 535
    .local v1, "tmpText":Ljava/lang/String;
    goto :goto_0
.end method

.method public static webview_getWebViewItem(Landroid/webkit/WebView;)I
    .locals 3
    .param p0, "_webView"    # Landroid/webkit/WebView;

    .prologue
    .line 496
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v1

    .line 497
    .local v1, "pfif":Lklb/android/GameEngine/PFInterface;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, v1, Lklb/android/GameEngine/PFInterface;->MAX_WEB_VIEW:I

    if-ge v0, v2, :cond_1

    .line 499
    iget-object v2, v1, Lklb/android/GameEngine/PFInterface;->m_webList:[Lklb/android/GameEngine/WebViewItem;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    iget-object v2, v1, Lklb/android/GameEngine/PFInterface;->m_webList:[Lklb/android/GameEngine/WebViewItem;

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Lklb/android/GameEngine/WebViewItem;->isEqual(Landroid/webkit/WebView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 503
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 497
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 503
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static webview_setColor(III)V
    .locals 2
    .param p0, "_index"    # I
    .param p1, "_alpha"    # I
    .param p2, "_col"    # I

    .prologue
    .line 517
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v1

    iget-object v1, v1, Lklb/android/GameEngine/PFInterface;->m_webList:[Lklb/android/GameEngine/WebViewItem;

    aget-object v0, v1, p0

    .line 518
    .local v0, "control":Lklb/android/GameEngine/WebViewItem;
    if-nez v0, :cond_0

    .line 520
    :goto_0
    return-void

    .line 519
    :cond_0
    invoke-virtual {v0, p1, p2}, Lklb/android/GameEngine/WebViewItem;->setColor(II)V

    goto :goto_0
.end method

.method public static webview_setText(ILjava/lang/String;)Z
    .locals 4
    .param p0, "index"    # I
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 478
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v2

    iget-object v2, v2, Lklb/android/GameEngine/PFInterface;->m_webList:[Lklb/android/GameEngine/WebViewItem;

    aget-object v0, v2, p0

    .line 479
    .local v0, "control":Lklb/android/GameEngine/WebViewItem;
    move-object v1, p1

    .line 480
    .local v1, "inner_text":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v2, 0x0

    .line 491
    :goto_0
    return v2

    .line 481
    :cond_0
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v2

    iget-object v2, v2, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    new-instance v3, Lklb/android/GameEngine/PFInterface$2;

    invoke-direct {v3, v1, v0}, Lklb/android/GameEngine/PFInterface$2;-><init>(Ljava/lang/String;Lklb/android/GameEngine/WebViewItem;)V

    invoke-virtual {v2, v3}, Lklb/android/GameEngine/GameEngineActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 491
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static webview_setZoom(IZ)V
    .locals 2
    .param p0, "_index"    # I
    .param p1, "_flg"    # Z

    .prologue
    .line 509
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v1

    iget-object v1, v1, Lklb/android/GameEngine/PFInterface;->m_webList:[Lklb/android/GameEngine/WebViewItem;

    aget-object v0, v1, p0

    .line 510
    .local v0, "control":Lklb/android/GameEngine/WebViewItem;
    if-nez v0, :cond_0

    .line 512
    :goto_0
    return-void

    .line 511
    :cond_0
    invoke-virtual {v0, p1}, Lklb/android/GameEngine/WebViewItem;->setZoom(Z)V

    goto :goto_0
.end method

.method public static webview_update(IIIIIZZ)V
    .locals 3
    .param p0, "index"    # I
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "enable"    # Z
    .param p6, "visible"    # Z

    .prologue
    .line 540
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    .line 541
    .local v0, "pfif":Lklb/android/GameEngine/PFInterface;
    iget-object v2, v0, Lklb/android/GameEngine/PFInterface;->m_webList:[Lklb/android/GameEngine/WebViewItem;

    aget-object v1, v2, p0

    .line 542
    .local v1, "web":Lklb/android/GameEngine/WebViewItem;
    if-eqz v1, :cond_0

    .line 543
    invoke-virtual {v1, p1, p2, p3, p4}, Lklb/android/GameEngine/WebViewItem;->move(IIII)V

    .line 544
    invoke-virtual {v1, p6}, Lklb/android/GameEngine/WebViewItem;->setVisible(Z)V

    .line 545
    invoke-virtual {v1, p5}, Lklb/android/GameEngine/WebViewItem;->setEnable(Z)V

    .line 547
    :cond_0
    return-void
.end method


# virtual methods
.method public IsInstallEnd()Z
    .locals 2

    .prologue
    .line 890
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v1

    iget-object v0, v1, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    .line 891
    .local v0, "context":Lklb/android/GameEngine/GameEngineActivity;
    invoke-virtual {v0}, Lklb/android/GameEngine/GameEngineActivity;->IsInstallEnd()Z

    move-result v1

    return v1
.end method

.method public native OnLocationCallback(IIDDLjava/lang/String;)V
.end method

.method public native OnNotificationCallback(IILjava/lang/String;)V
.end method

.method public native WebViewControlEvent(Landroid/webkit/WebView;I)V
.end method

.method public callInit(IILjava/lang/String;)Z
    .locals 10
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "path"    # Ljava/lang/String;

    .prologue
    .line 762
    iput p1, p0, Lklb/android/GameEngine/PFInterface;->m_width:I

    .line 763
    iput p2, p0, Lklb/android/GameEngine/PFInterface;->m_height:I

    .line 764
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 765
    .local v4, "model":Ljava/lang/String;
    sget-object v5, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 766
    .local v5, "brand":Ljava/lang/String;
    sget-object v6, Landroid/os/Build;->BOARD:Ljava/lang/String;

    .line 767
    .local v6, "board":Ljava/lang/String;
    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 768
    .local v7, "version":Ljava/lang/String;
    const-string v8, "JST"

    .line 769
    .local v8, "tz":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lklb/android/GameEngine/PFInterface;->m_osversion:Ljava/lang/String;

    .line 770
    iput-object v8, p0, Lklb/android/GameEngine/PFInterface;->m_tzone:Ljava/lang/String;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    .line 771
    invoke-virtual/range {v0 .. v8}, Lklb/android/GameEngine/PFInterface;->initSequence(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    .line 772
    .local v9, "result":Z
    const/4 v0, 0x1

    iput-boolean v0, p0, Lklb/android/GameEngine/PFInterface;->m_bexec:Z

    .line 773
    return v9
.end method

.method public native clientControlEvent(IILjava/lang/String;Ljava/lang/String;)V
.end method

.method public native clientResumeGame()V
.end method

.method public native frameFlip(I)V
.end method

.method public getActive()Z
    .locals 1

    .prologue
    .line 209
    iget-boolean v0, p0, Lklb/android/GameEngine/PFInterface;->isActive:Z

    return v0
.end method

.method public getContext()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    return-object v0
.end method

.method public native getGLVersion()I
.end method

.method public getLocalizedMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "default_"    # Ljava/lang/String;

    .prologue
    .line 1332
    invoke-virtual {p0, p1, p2}, Lklb/android/GameEngine/PFInterface;->internalGetLocalizedMessage(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 1333
    .local v0, "buf":[B
    if-nez v0, :cond_2

    .line 1334
    iget-object v3, p0, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    if-nez v3, :cond_0

    .line 1346
    .end local p2    # "default_":Ljava/lang/String;
    :goto_0
    return-object p2

    .line 1337
    .restart local p2    # "default_":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    .line 1338
    .local v2, "str":Ljava/lang/String;
    iget-object v3, p0, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    invoke-virtual {v3}, Lklb/android/GameEngine/GameEngineActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "string"

    iget-object v5, p0, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    invoke-virtual {v5}, Lklb/android/GameEngine/GameEngineActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, p1, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1340
    .local v1, "ident":I
    :try_start_0
    iget-object v3, p0, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    invoke-virtual {v3}, Lklb/android/GameEngine/GameEngineActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1344
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .end local v2    # "str":Ljava/lang/String;
    :goto_2
    move-object p2, v2

    goto :goto_0

    .restart local v2    # "str":Ljava/lang/String;
    :cond_1
    move-object v2, p2

    goto :goto_2

    .line 1346
    .end local v1    # "ident":I
    .end local v2    # "str":Ljava/lang/String;
    :cond_2
    new-instance p2, Ljava/lang/String;

    .end local p2    # "default_":Ljava/lang/String;
    const-string v3, "UTF-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {p2, v0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0

    .line 1342
    .restart local v1    # "ident":I
    .restart local v2    # "str":Ljava/lang/String;
    .restart local p2    # "default_":Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public native initSequence(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public native inputDeviceKey(IC)V
.end method

.method public native inputPoint(IIII)V
.end method

.method public native internalGetLocalizedMessage(Ljava/lang/String;Ljava/lang/String;)[B
.end method

.method public loadProxy(Ljava/lang/String;)V
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1355
    :try_start_0
    const-string v2, "jniproxy"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1364
    :goto_0
    return-void

    .line 1357
    :catch_0
    move-exception v0

    .line 1359
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "files"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1360
    .local v1, "proxyPath":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "lib/libjniproxy.so"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1362
    invoke-static {v1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public native onActivityPause()V
.end method

.method public native onActivityResume()V
.end method

.method public native onKLabIdResult(ILjava/lang/String;)V
.end method

.method public native resetViewport()V
.end method

.method public native rotateScreenOrientation(III)V
.end method

.method public screenRotation(I)V
    .locals 4
    .param p1, "origin"    # I

    .prologue
    .line 777
    iget-boolean v2, p0, Lklb/android/GameEngine/PFInterface;->m_bexec:Z

    if-nez v2, :cond_0

    .line 790
    :goto_0
    return-void

    .line 779
    :cond_0
    and-int/lit8 v2, p1, 0x1

    if-nez v2, :cond_3

    .line 780
    iget v2, p0, Lklb/android/GameEngine/PFInterface;->m_width:I

    iget v3, p0, Lklb/android/GameEngine/PFInterface;->m_height:I

    if-ge v2, v3, :cond_1

    iget v1, p0, Lklb/android/GameEngine/PFInterface;->m_height:I

    .line 781
    .local v1, "width":I
    :goto_1
    iget v2, p0, Lklb/android/GameEngine/PFInterface;->m_width:I

    iget v3, p0, Lklb/android/GameEngine/PFInterface;->m_height:I

    if-le v2, v3, :cond_2

    iget v0, p0, Lklb/android/GameEngine/PFInterface;->m_height:I

    .line 789
    .local v0, "height":I
    :goto_2
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1, v0}, Lklb/android/GameEngine/PFInterface;->rotateScreenOrientation(III)V

    goto :goto_0

    .line 780
    .end local v0    # "height":I
    .end local v1    # "width":I
    :cond_1
    iget v1, p0, Lklb/android/GameEngine/PFInterface;->m_width:I

    goto :goto_1

    .line 781
    .restart local v1    # "width":I
    :cond_2
    iget v0, p0, Lklb/android/GameEngine/PFInterface;->m_width:I

    goto :goto_2

    .line 785
    .end local v1    # "width":I
    :cond_3
    iget v2, p0, Lklb/android/GameEngine/PFInterface;->m_width:I

    iget v3, p0, Lklb/android/GameEngine/PFInterface;->m_height:I

    if-le v2, v3, :cond_4

    iget v1, p0, Lklb/android/GameEngine/PFInterface;->m_width:I

    .line 786
    .restart local v1    # "width":I
    :goto_3
    iget v2, p0, Lklb/android/GameEngine/PFInterface;->m_width:I

    iget v3, p0, Lklb/android/GameEngine/PFInterface;->m_height:I

    if-ge v2, v3, :cond_5

    iget v0, p0, Lklb/android/GameEngine/PFInterface;->m_width:I

    .restart local v0    # "height":I
    :goto_4
    goto :goto_2

    .line 785
    .end local v0    # "height":I
    .end local v1    # "width":I
    :cond_4
    iget v1, p0, Lklb/android/GameEngine/PFInterface;->m_height:I

    goto :goto_3

    .line 786
    .restart local v1    # "width":I
    :cond_5
    iget v0, p0, Lklb/android/GameEngine/PFInterface;->m_height:I

    goto :goto_4
.end method

.method public setActive(Z)V
    .locals 0
    .param p1, "flg"    # Z

    .prologue
    .line 204
    iput-boolean p1, p0, Lklb/android/GameEngine/PFInterface;->isActive:Z

    .line 205
    return-void
.end method

.method public setBasePath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "path_install"    # Ljava/lang/String;
    .param p2, "path_external"    # Ljava/lang/String;

    .prologue
    .line 198
    sput-object p2, Lklb/android/GameEngine/PFInterface;->m_path_external:Ljava/lang/String;

    .line 199
    sput-object p1, Lklb/android/GameEngine/PFInterface;->m_path_install:Ljava/lang/String;

    .line 200
    return-void
.end method

.method public setContext(Lklb/android/GameEngine/GameEngineActivity;)V
    .locals 3
    .param p1, "context"    # Lklb/android/GameEngine/GameEngineActivity;

    .prologue
    const/4 v2, 0x0

    .line 188
    iput-object p1, p0, Lklb/android/GameEngine/PFInterface;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    .line 189
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lklb/android/GameEngine/PFInterface;->MAX_EDIT_TEXT:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lklb/android/GameEngine/PFInterface;->m_textList:[Lklb/android/GameEngine/EditBoxItem;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 190
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lklb/android/GameEngine/PFInterface;->MAX_WEB_VIEW:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lklb/android/GameEngine/PFInterface;->m_webList:[Lklb/android/GameEngine/WebViewItem;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 191
    :cond_1
    return-void
.end method

.method public native setLoadAppPath(Ljava/lang/String;)V
.end method

.method public native toNativeSignal(II)V
.end method

.method public native transformSignature(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public declared-synchronized updateControl()V
    .locals 4

    .prologue
    .line 677
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget v2, p0, Lklb/android/GameEngine/PFInterface;->m_textListCount:I

    if-gt v0, v2, :cond_2

    .line 678
    iget-object v2, p0, Lklb/android/GameEngine/PFInterface;->m_textList:[Lklb/android/GameEngine/EditBoxItem;

    aget-object v2, v2, v0

    if-nez v2, :cond_0

    .line 677
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 679
    :cond_0
    iget-object v2, p0, Lklb/android/GameEngine/PFInterface;->m_textList:[Lklb/android/GameEngine/EditBoxItem;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lklb/android/GameEngine/EditBoxItem;->remove()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 680
    iget-object v2, p0, Lklb/android/GameEngine/PFInterface;->m_textList:[Lklb/android/GameEngine/EditBoxItem;

    const/4 v3, 0x0

    aput-object v3, v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 677
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 683
    :cond_1
    :try_start_1
    iget-object v2, p0, Lklb/android/GameEngine/PFInterface;->m_textList:[Lklb/android/GameEngine/EditBoxItem;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lklb/android/GameEngine/EditBoxItem;->create()V

    .line 684
    iget-object v2, p0, Lklb/android/GameEngine/PFInterface;->m_textList:[Lklb/android/GameEngine/EditBoxItem;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lklb/android/GameEngine/EditBoxItem;->update()V

    goto :goto_1

    .line 686
    :cond_2
    iget v2, p0, Lklb/android/GameEngine/PFInterface;->m_textListCount:I

    if-ltz v2, :cond_5

    iget-object v2, p0, Lklb/android/GameEngine/PFInterface;->m_textList:[Lklb/android/GameEngine/EditBoxItem;

    iget v3, p0, Lklb/android/GameEngine/PFInterface;->m_textListCount:I

    aget-object v2, v2, v3

    if-nez v2, :cond_5

    .line 687
    const/4 v1, -0x1

    .line 688
    .local v1, "max":I
    const/4 v0, 0x0

    :goto_2
    iget v2, p0, Lklb/android/GameEngine/PFInterface;->m_textListCount:I

    if-ge v0, v2, :cond_4

    .line 689
    iget-object v2, p0, Lklb/android/GameEngine/PFInterface;->m_textList:[Lklb/android/GameEngine/EditBoxItem;

    aget-object v2, v2, v0

    if-eqz v2, :cond_3

    move v1, v0

    .line 688
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 691
    :cond_4
    iput v1, p0, Lklb/android/GameEngine/PFInterface;->m_textListCount:I

    .line 694
    .end local v1    # "max":I
    :cond_5
    const/4 v0, 0x0

    :goto_3
    iget v2, p0, Lklb/android/GameEngine/PFInterface;->m_webListCount:I

    if-gt v0, v2, :cond_8

    .line 695
    iget-object v2, p0, Lklb/android/GameEngine/PFInterface;->m_webList:[Lklb/android/GameEngine/WebViewItem;

    aget-object v2, v2, v0

    if-nez v2, :cond_6

    .line 694
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 696
    :cond_6
    iget-object v2, p0, Lklb/android/GameEngine/PFInterface;->m_webList:[Lklb/android/GameEngine/WebViewItem;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lklb/android/GameEngine/WebViewItem;->remove()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 697
    iget-object v2, p0, Lklb/android/GameEngine/PFInterface;->m_webList:[Lklb/android/GameEngine/WebViewItem;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    goto :goto_4

    .line 700
    :cond_7
    iget-object v2, p0, Lklb/android/GameEngine/PFInterface;->m_webList:[Lklb/android/GameEngine/WebViewItem;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lklb/android/GameEngine/WebViewItem;->create()V

    .line 701
    iget-object v2, p0, Lklb/android/GameEngine/PFInterface;->m_webList:[Lklb/android/GameEngine/WebViewItem;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lklb/android/GameEngine/WebViewItem;->update()V

    goto :goto_4

    .line 703
    :cond_8
    iget v2, p0, Lklb/android/GameEngine/PFInterface;->m_webListCount:I

    if-ltz v2, :cond_b

    iget-object v2, p0, Lklb/android/GameEngine/PFInterface;->m_webList:[Lklb/android/GameEngine/WebViewItem;

    iget v3, p0, Lklb/android/GameEngine/PFInterface;->m_webListCount:I

    aget-object v2, v2, v3

    if-nez v2, :cond_b

    .line 704
    const/4 v1, -0x1

    .line 705
    .restart local v1    # "max":I
    const/4 v0, 0x0

    :goto_5
    iget v2, p0, Lklb/android/GameEngine/PFInterface;->m_webListCount:I

    if-ge v0, v2, :cond_a

    .line 706
    iget-object v2, p0, Lklb/android/GameEngine/PFInterface;->m_webList:[Lklb/android/GameEngine/WebViewItem;

    aget-object v2, v2, v0

    if-eqz v2, :cond_9

    move v1, v0

    .line 705
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 708
    :cond_a
    iput v1, p0, Lklb/android/GameEngine/PFInterface;->m_webListCount:I

    .line 711
    .end local v1    # "max":I
    :cond_b
    const/4 v0, 0x0

    :goto_6
    iget v2, p0, Lklb/android/GameEngine/PFInterface;->m_movieListCount:I

    if-gt v0, v2, :cond_e

    .line 712
    iget-object v2, p0, Lklb/android/GameEngine/PFInterface;->m_movieList:[Lklb/android/GameEngine/MovieViewItem;

    aget-object v2, v2, v0

    if-nez v2, :cond_c

    .line 711
    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 713
    :cond_c
    iget-object v2, p0, Lklb/android/GameEngine/PFInterface;->m_movieList:[Lklb/android/GameEngine/MovieViewItem;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lklb/android/GameEngine/MovieViewItem;->remove()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 714
    iget-object v2, p0, Lklb/android/GameEngine/PFInterface;->m_movieList:[Lklb/android/GameEngine/MovieViewItem;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    goto :goto_7

    .line 717
    :cond_d
    iget-object v2, p0, Lklb/android/GameEngine/PFInterface;->m_movieList:[Lklb/android/GameEngine/MovieViewItem;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lklb/android/GameEngine/MovieViewItem;->create()V

    .line 718
    iget-object v2, p0, Lklb/android/GameEngine/PFInterface;->m_movieList:[Lklb/android/GameEngine/MovieViewItem;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lklb/android/GameEngine/MovieViewItem;->update()V

    goto :goto_7

    .line 720
    :cond_e
    iget v2, p0, Lklb/android/GameEngine/PFInterface;->m_movieListCount:I

    if-ltz v2, :cond_11

    iget-object v2, p0, Lklb/android/GameEngine/PFInterface;->m_movieList:[Lklb/android/GameEngine/MovieViewItem;

    iget v3, p0, Lklb/android/GameEngine/PFInterface;->m_movieListCount:I

    aget-object v2, v2, v3

    if-nez v2, :cond_11

    .line 721
    const/4 v1, -0x1

    .line 722
    .restart local v1    # "max":I
    const/4 v0, 0x0

    :goto_8
    iget v2, p0, Lklb/android/GameEngine/PFInterface;->m_movieListCount:I

    if-ge v0, v2, :cond_10

    .line 723
    iget-object v2, p0, Lklb/android/GameEngine/PFInterface;->m_movieList:[Lklb/android/GameEngine/MovieViewItem;

    aget-object v2, v2, v0

    if-eqz v2, :cond_f

    move v1, v0

    .line 722
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 725
    :cond_10
    iput v1, p0, Lklb/android/GameEngine/PFInterface;->m_movieListCount:I

    .line 729
    .end local v1    # "max":I
    :cond_11
    iget-object v2, p0, Lklb/android/GameEngine/PFInterface;->m_indicator:Lklb/android/GameEngine/IndicatorItem;

    if-eqz v2, :cond_13

    .line 731
    iget-object v2, p0, Lklb/android/GameEngine/PFInterface;->m_indicator:Lklb/android/GameEngine/IndicatorItem;

    invoke-virtual {v2}, Lklb/android/GameEngine/IndicatorItem;->remove()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 733
    const/4 v2, 0x0

    iput-object v2, p0, Lklb/android/GameEngine/PFInterface;->m_indicator:Lklb/android/GameEngine/IndicatorItem;

    .line 735
    :cond_12
    iget-object v2, p0, Lklb/android/GameEngine/PFInterface;->m_indicator:Lklb/android/GameEngine/IndicatorItem;

    if-eqz v2, :cond_13

    .line 737
    iget-object v2, p0, Lklb/android/GameEngine/PFInterface;->m_indicator:Lklb/android/GameEngine/IndicatorItem;

    invoke-virtual {v2}, Lklb/android/GameEngine/IndicatorItem;->create()V

    .line 738
    iget-object v2, p0, Lklb/android/GameEngine/PFInterface;->m_indicator:Lklb/android/GameEngine/IndicatorItem;

    invoke-virtual {v2}, Lklb/android/GameEngine/IndicatorItem;->update()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 742
    :cond_13
    monitor-exit p0

    return-void
.end method
