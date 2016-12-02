.class public Lcom/mediatek/providers/drm/NtpMessage;
.super Ljava/lang/Object;
.source "NtpMessage.java"


# instance fields
.field public mLeapIndicator:B

.field public mMode:B

.field public mOriginateTimestamp:D

.field public mPollInterval:B

.field public mPrecision:B

.field public mReceiveTimestamp:D

.field public mReferenceIdentifier:[B

.field public mReferenceTimestamp:D

.field public mRootDelay:D

.field public mRootDispersion:D

.field public mStratum:S

.field public mTransmitTimestamp:D

.field public mVersion:B


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x3

    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-byte v0, p0, Lcom/mediatek/providers/drm/NtpMessage;->mLeapIndicator:B

    .line 24
    iput-byte v1, p0, Lcom/mediatek/providers/drm/NtpMessage;->mVersion:B

    .line 37
    iput-byte v0, p0, Lcom/mediatek/providers/drm/NtpMessage;->mMode:B

    .line 47
    iput-short v0, p0, Lcom/mediatek/providers/drm/NtpMessage;->mStratum:S

    .line 55
    iput-byte v0, p0, Lcom/mediatek/providers/drm/NtpMessage;->mPollInterval:B

    .line 63
    iput-byte v0, p0, Lcom/mediatek/providers/drm/NtpMessage;->mPrecision:B

    .line 72
    iput-wide v2, p0, Lcom/mediatek/providers/drm/NtpMessage;->mRootDelay:D

    .line 79
    iput-wide v2, p0, Lcom/mediatek/providers/drm/NtpMessage;->mRootDispersion:D

    .line 107
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/mediatek/providers/drm/NtpMessage;->mReferenceIdentifier:[B

    .line 113
    iput-wide v2, p0, Lcom/mediatek/providers/drm/NtpMessage;->mReferenceTimestamp:D

    .line 119
    iput-wide v2, p0, Lcom/mediatek/providers/drm/NtpMessage;->mOriginateTimestamp:D

    .line 125
    iput-wide v2, p0, Lcom/mediatek/providers/drm/NtpMessage;->mReceiveTimestamp:D

    .line 131
    iput-wide v2, p0, Lcom/mediatek/providers/drm/NtpMessage;->mTransmitTimestamp:D

    .line 196
    iput-byte v1, p0, Lcom/mediatek/providers/drm/NtpMessage;->mMode:B

    .line 197
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    const-wide v2, 0x41e0754fd0000000L    # 2.2089888E9

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/mediatek/providers/drm/NtpMessage;->mTransmitTimestamp:D

    .line 198
    return-void

    .line 107
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>([B)V
    .locals 10
    .param p1, "array"    # [B

    .prologue
    const-wide/high16 v8, 0x40f0000000000000L    # 65536.0

    const/4 v5, 0x3

    const-wide/high16 v6, 0x4070000000000000L    # 256.0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-byte v4, p0, Lcom/mediatek/providers/drm/NtpMessage;->mLeapIndicator:B

    .line 24
    iput-byte v5, p0, Lcom/mediatek/providers/drm/NtpMessage;->mVersion:B

    .line 37
    iput-byte v4, p0, Lcom/mediatek/providers/drm/NtpMessage;->mMode:B

    .line 47
    iput-short v4, p0, Lcom/mediatek/providers/drm/NtpMessage;->mStratum:S

    .line 55
    iput-byte v4, p0, Lcom/mediatek/providers/drm/NtpMessage;->mPollInterval:B

    .line 63
    iput-byte v4, p0, Lcom/mediatek/providers/drm/NtpMessage;->mPrecision:B

    .line 72
    iput-wide v2, p0, Lcom/mediatek/providers/drm/NtpMessage;->mRootDelay:D

    .line 79
    iput-wide v2, p0, Lcom/mediatek/providers/drm/NtpMessage;->mRootDispersion:D

    .line 107
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/mediatek/providers/drm/NtpMessage;->mReferenceIdentifier:[B

    .line 113
    iput-wide v2, p0, Lcom/mediatek/providers/drm/NtpMessage;->mReferenceTimestamp:D

    .line 119
    iput-wide v2, p0, Lcom/mediatek/providers/drm/NtpMessage;->mOriginateTimestamp:D

    .line 125
    iput-wide v2, p0, Lcom/mediatek/providers/drm/NtpMessage;->mReceiveTimestamp:D

    .line 131
    iput-wide v2, p0, Lcom/mediatek/providers/drm/NtpMessage;->mTransmitTimestamp:D

    .line 138
    aget-byte v0, p1, v4

    shr-int/lit8 v0, v0, 0x6

    and-int/lit8 v0, v0, 0x3

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/mediatek/providers/drm/NtpMessage;->mLeapIndicator:B

    .line 139
    aget-byte v0, p1, v4

    shr-int/lit8 v0, v0, 0x3

    and-int/lit8 v0, v0, 0x7

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/mediatek/providers/drm/NtpMessage;->mVersion:B

    .line 140
    aget-byte v0, p1, v4

    and-int/lit8 v0, v0, 0x7

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/mediatek/providers/drm/NtpMessage;->mMode:B

    .line 141
    const/4 v0, 0x1

    aget-byte v0, p1, v0

    invoke-static {v0}, Lcom/mediatek/providers/drm/NtpMessage;->unsignedByteToShort(B)S

    move-result v0

    iput-short v0, p0, Lcom/mediatek/providers/drm/NtpMessage;->mStratum:S

    .line 142
    const/4 v0, 0x2

    aget-byte v0, p1, v0

    iput-byte v0, p0, Lcom/mediatek/providers/drm/NtpMessage;->mPollInterval:B

    .line 143
    aget-byte v0, p1, v5

    iput-byte v0, p0, Lcom/mediatek/providers/drm/NtpMessage;->mPrecision:B

    .line 145
    const/4 v0, 0x4

    aget-byte v0, p1, v0

    int-to-double v0, v0

    mul-double/2addr v0, v6

    const/4 v2, 0x5

    aget-byte v2, p1, v2

    invoke-static {v2}, Lcom/mediatek/providers/drm/NtpMessage;->unsignedByteToShort(B)S

    move-result v2

    int-to-double v2, v2

    add-double/2addr v0, v2

    const/4 v2, 0x6

    aget-byte v2, p1, v2

    invoke-static {v2}, Lcom/mediatek/providers/drm/NtpMessage;->unsignedByteToShort(B)S

    move-result v2

    int-to-double v2, v2

    div-double/2addr v2, v6

    add-double/2addr v0, v2

    const/4 v2, 0x7

    aget-byte v2, p1, v2

    invoke-static {v2}, Lcom/mediatek/providers/drm/NtpMessage;->unsignedByteToShort(B)S

    move-result v2

    int-to-double v2, v2

    div-double/2addr v2, v8

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/mediatek/providers/drm/NtpMessage;->mRootDelay:D

    .line 150
    const/16 v0, 0x8

    aget-byte v0, p1, v0

    invoke-static {v0}, Lcom/mediatek/providers/drm/NtpMessage;->unsignedByteToShort(B)S

    move-result v0

    int-to-double v0, v0

    mul-double/2addr v0, v6

    const/16 v2, 0x9

    aget-byte v2, p1, v2

    invoke-static {v2}, Lcom/mediatek/providers/drm/NtpMessage;->unsignedByteToShort(B)S

    move-result v2

    int-to-double v2, v2

    add-double/2addr v0, v2

    const/16 v2, 0xa

    aget-byte v2, p1, v2

    invoke-static {v2}, Lcom/mediatek/providers/drm/NtpMessage;->unsignedByteToShort(B)S

    move-result v2

    int-to-double v2, v2

    div-double/2addr v2, v6

    add-double/2addr v0, v2

    const/16 v2, 0xb

    aget-byte v2, p1, v2

    invoke-static {v2}, Lcom/mediatek/providers/drm/NtpMessage;->unsignedByteToShort(B)S

    move-result v2

    int-to-double v2, v2

    div-double/2addr v2, v8

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/mediatek/providers/drm/NtpMessage;->mRootDispersion:D

    .line 155
    iget-object v0, p0, Lcom/mediatek/providers/drm/NtpMessage;->mReferenceIdentifier:[B

    const/16 v1, 0xc

    aget-byte v1, p1, v1

    aput-byte v1, v0, v4

    .line 156
    iget-object v0, p0, Lcom/mediatek/providers/drm/NtpMessage;->mReferenceIdentifier:[B

    const/4 v1, 0x1

    const/16 v2, 0xd

    aget-byte v2, p1, v2

    aput-byte v2, v0, v1

    .line 157
    iget-object v0, p0, Lcom/mediatek/providers/drm/NtpMessage;->mReferenceIdentifier:[B

    const/4 v1, 0x2

    const/16 v2, 0xe

    aget-byte v2, p1, v2

    aput-byte v2, v0, v1

    .line 158
    iget-object v0, p0, Lcom/mediatek/providers/drm/NtpMessage;->mReferenceIdentifier:[B

    const/16 v1, 0xf

    aget-byte v1, p1, v1

    aput-byte v1, v0, v5

    .line 160
    const/16 v0, 0x10

    invoke-static {p1, v0}, Lcom/mediatek/providers/drm/NtpMessage;->decodeTimestamp([BI)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/providers/drm/NtpMessage;->mReferenceTimestamp:D

    .line 161
    const/16 v0, 0x18

    invoke-static {p1, v0}, Lcom/mediatek/providers/drm/NtpMessage;->decodeTimestamp([BI)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/providers/drm/NtpMessage;->mOriginateTimestamp:D

    .line 162
    const/16 v0, 0x20

    invoke-static {p1, v0}, Lcom/mediatek/providers/drm/NtpMessage;->decodeTimestamp([BI)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/providers/drm/NtpMessage;->mReceiveTimestamp:D

    .line 163
    const/16 v0, 0x28

    invoke-static {p1, v0}, Lcom/mediatek/providers/drm/NtpMessage;->decodeTimestamp([BI)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/providers/drm/NtpMessage;->mTransmitTimestamp:D

    .line 164
    return-void

    .line 107
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static decodeTimestamp([BI)D
    .locals 10
    .param p0, "array"    # [B
    .param p1, "pointer"    # I

    .prologue
    .line 278
    const-wide/16 v2, 0x0

    .line 280
    .local v2, "r":D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 281
    add-int v1, p1, v0

    aget-byte v1, p0, v1

    invoke-static {v1}, Lcom/mediatek/providers/drm/NtpMessage;->unsignedByteToShort(B)S

    move-result v1

    int-to-double v4, v1

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    rsub-int/lit8 v1, v0, 0x3

    mul-int/lit8 v1, v1, 0x8

    int-to-double v8, v1

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    .line 280
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 284
    :cond_0
    return-wide v2
.end method

.method public static encodeTimestamp([BID)V
    .locals 8
    .param p0, "array"    # [B
    .param p1, "pointer"    # I
    .param p2, "timestamp"    # D

    .prologue
    .line 292
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x8

    if-ge v2, v3, :cond_0

    .line 294
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    rsub-int/lit8 v3, v2, 0x3

    mul-int/lit8 v3, v3, 0x8

    int-to-double v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 297
    .local v0, "base":D
    add-int v3, p1, v2

    div-double v4, p2, v0

    double-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, p0, v3

    .line 300
    add-int v3, p1, v2

    aget-byte v3, p0, v3

    invoke-static {v3}, Lcom/mediatek/providers/drm/NtpMessage;->unsignedByteToShort(B)S

    move-result v3

    int-to-double v4, v3

    mul-double/2addr v4, v0

    sub-double/2addr p2, v4

    .line 292
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 307
    .end local v0    # "base":D
    :cond_0
    const/4 v3, 0x7

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide v6, 0x406fe00000000000L    # 255.0

    mul-double/2addr v4, v6

    double-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, p0, v3

    .line 308
    return-void
.end method

.method public static referenceIdentifierToString([BSB)Ljava/lang/String;
    .locals 10
    .param p0, "ref"    # [B
    .param p1, "stratum"    # S
    .param p2, "mVersion"    # B

    .prologue
    const/4 v9, 0x2

    const/4 v2, 0x0

    const/4 v8, 0x3

    const/4 v6, 0x1

    .line 345
    if-eqz p1, :cond_0

    if-ne p1, v6, :cond_1

    .line 346
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    .line 363
    :goto_0
    return-object v0

    .line 347
    :cond_1
    if-ne p2, v8, :cond_2

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-byte v1, p0, v2

    invoke-static {v1}, Lcom/mediatek/providers/drm/NtpMessage;->unsignedByteToShort(B)S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-byte v1, p0, v6

    invoke-static {v1}, Lcom/mediatek/providers/drm/NtpMessage;->unsignedByteToShort(B)S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-byte v1, p0, v9

    invoke-static {v1}, Lcom/mediatek/providers/drm/NtpMessage;->unsignedByteToShort(B)S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-byte v1, p0, v8

    invoke-static {v1}, Lcom/mediatek/providers/drm/NtpMessage;->unsignedByteToShort(B)S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 354
    :cond_2
    const/4 v0, 0x4

    if-ne p2, v0, :cond_3

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-byte v1, p0, v2

    invoke-static {v1}, Lcom/mediatek/providers/drm/NtpMessage;->unsignedByteToShort(B)S

    move-result v1

    int-to-double v2, v1

    const-wide/high16 v4, 0x4070000000000000L    # 256.0

    div-double/2addr v2, v4

    aget-byte v1, p0, v6

    invoke-static {v1}, Lcom/mediatek/providers/drm/NtpMessage;->unsignedByteToShort(B)S

    move-result v1

    int-to-double v4, v1

    const-wide/high16 v6, 0x40f0000000000000L    # 65536.0

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    aget-byte v1, p0, v9

    invoke-static {v1}, Lcom/mediatek/providers/drm/NtpMessage;->unsignedByteToShort(B)S

    move-result v1

    int-to-double v4, v1

    const-wide/high16 v6, 0x4170000000000000L    # 1.6777216E7

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    aget-byte v1, p0, v8

    invoke-static {v1}, Lcom/mediatek/providers/drm/NtpMessage;->unsignedByteToShort(B)S

    move-result v1

    int-to-double v4, v1

    const-wide/high16 v6, 0x41f0000000000000L    # 4.294967296E9

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 363
    :cond_3
    const-string v0, ""

    goto/16 :goto_0
.end method

.method public static timestampToString(D)Ljava/lang/String;
    .locals 10
    .param p0, "timestamp"    # D

    .prologue
    .line 315
    const-wide/16 v8, 0x0

    cmpl-double v8, p0, v8

    if-nez v8, :cond_0

    .line 316
    const-string v8, "0"

    .line 333
    :goto_0
    return-object v8

    .line 321
    :cond_0
    const-wide v8, 0x41e0754fd0000000L    # 2.2089888E9

    sub-double v6, p0, v8

    .line 324
    .local v6, "utc":D
    const-wide v8, 0x408f400000000000L    # 1000.0

    mul-double/2addr v8, v6

    double-to-long v4, v8

    .line 327
    .local v4, "ms":J
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v9, "dd-MMM-yyyy HH:mm:ss"

    invoke-direct {v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, "date":Ljava/lang/String;
    double-to-long v8, p0

    long-to-double v8, v8

    sub-double v2, p0, v8

    .line 331
    .local v2, "fraction":D
    new-instance v8, Ljava/text/DecimalFormat;

    const-string v9, ".000000"

    invoke-direct {v8, v9}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    .line 333
    .local v1, "fractionSting":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0
.end method

.method public static unsignedByteToShort(B)S
    .locals 2
    .param p0, "b"    # B

    .prologue
    .line 266
    and-int/lit16 v0, p0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    .line 267
    and-int/lit8 v0, p0, 0x7f

    add-int/lit16 v0, v0, 0x80

    int-to-short v0, v0

    .line 269
    :goto_0
    return v0

    :cond_0
    int-to-short v0, p0

    goto :goto_0
.end method


# virtual methods
.method public toByteArray()[B
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-wide/high16 v6, 0x40f0000000000000L    # 65536.0

    const-wide/16 v8, 0xff

    .line 205
    const/16 v4, 0x30

    new-array v1, v4, [B

    .line 207
    .local v1, "p":[B
    iget-byte v4, p0, Lcom/mediatek/providers/drm/NtpMessage;->mLeapIndicator:B

    shl-int/lit8 v4, v4, 0x6

    iget-byte v5, p0, Lcom/mediatek/providers/drm/NtpMessage;->mVersion:B

    shl-int/lit8 v5, v5, 0x3

    or-int/2addr v4, v5

    iget-byte v5, p0, Lcom/mediatek/providers/drm/NtpMessage;->mMode:B

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v10

    .line 208
    iget-short v4, p0, Lcom/mediatek/providers/drm/NtpMessage;->mStratum:S

    int-to-byte v4, v4

    aput-byte v4, v1, v11

    .line 209
    iget-byte v4, p0, Lcom/mediatek/providers/drm/NtpMessage;->mPollInterval:B

    aput-byte v4, v1, v12

    .line 210
    const/4 v4, 0x3

    iget-byte v5, p0, Lcom/mediatek/providers/drm/NtpMessage;->mPrecision:B

    aput-byte v5, v1, v4

    .line 213
    iget-wide v4, p0, Lcom/mediatek/providers/drm/NtpMessage;->mRootDelay:D

    mul-double/2addr v4, v6

    double-to-int v0, v4

    .line 214
    .local v0, "l":I
    const/4 v4, 0x4

    shr-int/lit8 v5, v0, 0x18

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    .line 215
    const/4 v4, 0x5

    shr-int/lit8 v5, v0, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    .line 216
    const/4 v4, 0x6

    shr-int/lit8 v5, v0, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    .line 217
    const/4 v4, 0x7

    and-int/lit16 v5, v0, 0xff

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    .line 221
    iget-wide v4, p0, Lcom/mediatek/providers/drm/NtpMessage;->mRootDispersion:D

    mul-double/2addr v4, v6

    double-to-long v2, v4

    .line 222
    .local v2, "ul":J
    const/16 v4, 0x8

    const/16 v5, 0x18

    shr-long v6, v2, v5

    and-long/2addr v6, v8

    long-to-int v5, v6

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    .line 223
    const/16 v4, 0x9

    const/16 v5, 0x10

    shr-long v6, v2, v5

    and-long/2addr v6, v8

    long-to-int v5, v6

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    .line 224
    const/16 v4, 0xa

    const/16 v5, 0x8

    shr-long v6, v2, v5

    and-long/2addr v6, v8

    long-to-int v5, v6

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    .line 225
    const/16 v4, 0xb

    and-long v6, v2, v8

    long-to-int v5, v6

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    .line 227
    const/16 v4, 0xc

    iget-object v5, p0, Lcom/mediatek/providers/drm/NtpMessage;->mReferenceIdentifier:[B

    aget-byte v5, v5, v10

    aput-byte v5, v1, v4

    .line 228
    const/16 v4, 0xd

    iget-object v5, p0, Lcom/mediatek/providers/drm/NtpMessage;->mReferenceIdentifier:[B

    aget-byte v5, v5, v11

    aput-byte v5, v1, v4

    .line 229
    const/16 v4, 0xe

    iget-object v5, p0, Lcom/mediatek/providers/drm/NtpMessage;->mReferenceIdentifier:[B

    aget-byte v5, v5, v12

    aput-byte v5, v1, v4

    .line 230
    const/16 v4, 0xf

    iget-object v5, p0, Lcom/mediatek/providers/drm/NtpMessage;->mReferenceIdentifier:[B

    const/4 v6, 0x3

    aget-byte v5, v5, v6

    aput-byte v5, v1, v4

    .line 232
    const/16 v4, 0x10

    iget-wide v6, p0, Lcom/mediatek/providers/drm/NtpMessage;->mReferenceTimestamp:D

    invoke-static {v1, v4, v6, v7}, Lcom/mediatek/providers/drm/NtpMessage;->encodeTimestamp([BID)V

    .line 233
    const/16 v4, 0x18

    iget-wide v6, p0, Lcom/mediatek/providers/drm/NtpMessage;->mOriginateTimestamp:D

    invoke-static {v1, v4, v6, v7}, Lcom/mediatek/providers/drm/NtpMessage;->encodeTimestamp([BID)V

    .line 234
    const/16 v4, 0x20

    iget-wide v6, p0, Lcom/mediatek/providers/drm/NtpMessage;->mReceiveTimestamp:D

    invoke-static {v1, v4, v6, v7}, Lcom/mediatek/providers/drm/NtpMessage;->encodeTimestamp([BID)V

    .line 235
    const/16 v4, 0x28

    iget-wide v6, p0, Lcom/mediatek/providers/drm/NtpMessage;->mTransmitTimestamp:D

    invoke-static {v1, v4, v6, v7}, Lcom/mediatek/providers/drm/NtpMessage;->encodeTimestamp([BID)V

    .line 237
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    const-wide v6, 0x408f400000000000L    # 1000.0

    .line 244
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "0.#E0"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    iget-byte v4, p0, Lcom/mediatek/providers/drm/NtpMessage;->mPrecision:B

    int-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "precisionStr":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Leap indicator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/mediatek/providers/drm/NtpMessage;->mLeapIndicator:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/mediatek/providers/drm/NtpMessage;->mVersion:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/mediatek/providers/drm/NtpMessage;->mMode:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Stratum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Lcom/mediatek/providers/drm/NtpMessage;->mStratum:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Poll: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/mediatek/providers/drm/NtpMessage;->mPollInterval:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Precision: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/mediatek/providers/drm/NtpMessage;->mPrecision:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seconds) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Root delay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/text/DecimalFormat;

    const-string v3, "0.00"

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/mediatek/providers/drm/NtpMessage;->mRootDelay:D

    mul-double/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Root dispersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/text/DecimalFormat;

    const-string v3, "0.00"

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/mediatek/providers/drm/NtpMessage;->mRootDispersion:D

    mul-double/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Reference identifier: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/providers/drm/NtpMessage;->mReferenceIdentifier:[B

    iget-short v3, p0, Lcom/mediatek/providers/drm/NtpMessage;->mStratum:S

    iget-byte v4, p0, Lcom/mediatek/providers/drm/NtpMessage;->mVersion:B

    invoke-static {v2, v3, v4}, Lcom/mediatek/providers/drm/NtpMessage;->referenceIdentifierToString([BSB)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Reference timestamp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/mediatek/providers/drm/NtpMessage;->mReferenceTimestamp:D

    invoke-static {v2, v3}, Lcom/mediatek/providers/drm/NtpMessage;->timestampToString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Originate timestamp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/mediatek/providers/drm/NtpMessage;->mOriginateTimestamp:D

    invoke-static {v2, v3}, Lcom/mediatek/providers/drm/NtpMessage;->timestampToString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Receive timestamp:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/mediatek/providers/drm/NtpMessage;->mReceiveTimestamp:D

    invoke-static {v2, v3}, Lcom/mediatek/providers/drm/NtpMessage;->timestampToString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Transmit timestamp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/mediatek/providers/drm/NtpMessage;->mTransmitTimestamp:D

    invoke-static {v2, v3}, Lcom/mediatek/providers/drm/NtpMessage;->timestampToString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
