.class public Lcom/transsion/camera/app/ui/mode/armode/ARStickerInfo;
.super Ljava/lang/Object;
.source "ARStickerInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/mode/armode/ARStickerInfo$ARStickerEnum;
    }
.end annotation


# direct methods
.method private static convertData(Lcom/transsion/camera/app/ui/mode/armode/ARStickerInfo$ARStickerEnum;)Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;
    .locals 2

    .line 62
    new-instance v0, Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;-><init>()V

    .line 63
    iget v1, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerInfo$ARStickerEnum;->area:I

    iput v1, v0, Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;->area:I

    .line 64
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerInfo$ARStickerEnum;->brand:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;->brand:Ljava/lang/String;

    .line 65
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerInfo$ARStickerEnum;->bundle:[Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;->bundle:[Ljava/lang/String;

    .line 66
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerInfo$ARStickerEnum;->emojiFile:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;->emojiFile:Ljava/lang/String;

    .line 67
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerInfo$ARStickerEnum;->emojiResImage:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;->emojiResImage:Ljava/lang/String;

    .line 68
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerInfo$ARStickerEnum;->filePath:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;->filePath:Ljava/lang/String;

    .line 69
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerInfo$ARStickerEnum;->iconRes:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;->iconRes:Ljava/lang/String;

    .line 70
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerInfo$ARStickerEnum;->isDownload:Z

    iput-boolean v1, v0, Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;->isDownload:Z

    .line 71
    iget v1, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerInfo$ARStickerEnum;->maxFace:I

    iput v1, v0, Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;->maxFace:I

    .line 72
    iget v1, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerInfo$ARStickerEnum;->tips:I

    iput v1, v0, Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;->tips:I

    .line 73
    iget p0, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerInfo$ARStickerEnum;->type:I

    iput p0, v0, Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;->type:I

    return-object v0
.end method

.method public static getEffectsByEffectType(IILjava/lang/String;Landroid/content/res/Resources;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Landroid/content/res/Resources;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;",
            ">;"
        }
    .end annotation

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x28d543ab

    const/4 v3, 0x0

    const-string v4, "Tecno"

    const/4 v5, 0x1

    if-eq v1, v2, :cond_1

    const v2, 0x4cf2133

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v5

    goto :goto_1

    :cond_1
    const-string v1, "Infinix"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, -0x1

    :goto_1
    if-eqz v1, :cond_3

    if-eq v1, v5, :cond_3

    move-object p2, v4

    .line 46
    :cond_3
    invoke-static {}, Lcom/transsion/camera/app/ui/mode/armode/ARStickerInfo$ARStickerEnum;->values()[Lcom/transsion/camera/app/ui/mode/armode/ARStickerInfo$ARStickerEnum;

    move-result-object v1

    array-length v2, v1

    :goto_2
    if-ge v3, v2, :cond_7

    aget-object v4, v1, v3

    .line 47
    invoke-static {p3}, Lcom/transsion/camera/app/ui/mode/armode/ARStickerInfo;->isGenderIdentificationSupport(Landroid/content/res/Resources;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 48
    iget-object v5, v4, Lcom/transsion/camera/app/ui/mode/armode/ARStickerInfo$ARStickerEnum;->bundle:[Ljava/lang/String;

    array-length v5, v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    goto :goto_3

    :cond_4
    if-eqz p0, :cond_5

    .line 53
    iget v5, v4, Lcom/transsion/camera/app/ui/mode/armode/ARStickerInfo$ARStickerEnum;->type:I

    if-ne v5, p0, :cond_6

    iget v5, v4, Lcom/transsion/camera/app/ui/mode/armode/ARStickerInfo$ARStickerEnum;->area:I

    if-ne v5, p1, :cond_6

    iget-object v5, v4, Lcom/transsion/camera/app/ui/mode/armode/ARStickerInfo$ARStickerEnum;->brand:Ljava/lang/String;

    .line 54
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 55
    :cond_5
    invoke-static {v4}, Lcom/transsion/camera/app/ui/mode/armode/ARStickerInfo;->convertData(Lcom/transsion/camera/app/ui/mode/armode/ARStickerInfo$ARStickerEnum;)Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    return-object v0
.end method

.method public static isARFaceBeautySupport(Landroid/content/res/Resources;)Z
    .locals 1

    .line 32
    sget v0, Lcom/transsion/camera/feature/mode/armode/R$bool;->ar_beauty:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public static isEmojiSupport(Landroid/content/res/Resources;)Z
    .locals 1

    .line 24
    sget v0, Lcom/transsion/camera/feature/mode/armode/R$bool;->emoji_support:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public static isGenderIdentificationSupport(Landroid/content/res/Resources;)Z
    .locals 1

    .line 28
    invoke-static {p0}, Lcom/transsion/camera/app/ui/mode/armode/ARStickerInfo;->isEmojiSupport(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/transsion/camera/feature/mode/armode/R$bool;->gender_identification_support:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
