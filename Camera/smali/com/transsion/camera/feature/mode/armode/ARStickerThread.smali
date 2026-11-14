.class public Lcom/transsion/camera/feature/mode/armode/ARStickerThread;
.super Landroid/os/HandlerThread;
.source "ARStickerThread.java"


# static fields
.field private static AFRICA:[Ljava/lang/String;

.field private static mARStickerThread:Lcom/transsion/camera/feature/mode/armode/ARStickerThread;


# instance fields
.field private mAnimojiItem:Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;

.field private mAreaType:I

.field private mStickerCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mStickerItem:Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;


# direct methods
.method static constructor <clinit>()V
    .locals 22

    const-string v0, "NG"

    const-string v1, "GH"

    const-string v2, "KE"

    const-string v3, "TZ"

    const-string v4, "CM"

    const-string v5, "UG"

    const-string v6, "ET"

    const-string v7, "ZM"

    const-string v8, "ML"

    const-string v9, "RW"

    const-string v10, "CD"

    const-string v11, "CG"

    const-string v12, "TD"

    const-string v13, "GA"

    const-string v14, "NE"

    const-string v15, "TG"

    const-string v16, "BJ"

    const-string v17, "BF"

    const-string v18, "SO"

    const-string v19, "AO"

    const-string v20, "CF"

    const-string v21, "NS"

    .line 27
    filled-new-array/range {v0 .. v21}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/armode/ARStickerThread;->AFRICA:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/res/Resources;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 20
    iput p1, p0, Lcom/transsion/camera/feature/mode/armode/ARStickerThread;->mAreaType:I

    .line 32
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/armode/ARStickerThread;->initAreaType(Landroid/content/res/Resources;)V

    .line 33
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/armode/ARStickerThread;->initItem(Landroid/content/res/Resources;)V

    return-void
.end method

.method public static getInstance(Landroid/content/res/Resources;)Lcom/transsion/camera/feature/mode/armode/ARStickerThread;
    .locals 2

    .line 37
    sget-object v0, Lcom/transsion/camera/feature/mode/armode/ARStickerThread;->mARStickerThread:Lcom/transsion/camera/feature/mode/armode/ARStickerThread;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/transsion/camera/feature/mode/armode/ARStickerThread;

    const-string v1, "arSticker_thread"

    invoke-direct {v0, v1, p0}, Lcom/transsion/camera/feature/mode/armode/ARStickerThread;-><init>(Ljava/lang/String;Landroid/content/res/Resources;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/armode/ARStickerThread;->mARStickerThread:Lcom/transsion/camera/feature/mode/armode/ARStickerThread;

    .line 39
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 41
    :cond_0
    sget-object p0, Lcom/transsion/camera/feature/mode/armode/ARStickerThread;->mARStickerThread:Lcom/transsion/camera/feature/mode/armode/ARStickerThread;

    return-object p0
.end method

.method private initAreaType(Landroid/content/res/Resources;)V
    .locals 2

    const-string v0, "persist.sys.oobe_country"

    const-string v1, ""

    .line 65
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    sget v0, Lcom/transsion/camera/feature/mode/armode/R$string;->area_code:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 69
    :cond_0
    sget-object p1, Lcom/transsion/camera/feature/mode/armode/ARStickerThread;->AFRICA:[Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const-string v1, "IN"

    .line 70
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    .line 71
    iput p1, p0, Lcom/transsion/camera/feature/mode/armode/ARStickerThread;->mAreaType:I

    goto :goto_0

    .line 72
    :cond_1
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    .line 73
    iput p1, p0, Lcom/transsion/camera/feature/mode/armode/ARStickerThread;->mAreaType:I

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 75
    iput p1, p0, Lcom/transsion/camera/feature/mode/armode/ARStickerThread;->mAreaType:I

    :goto_0
    return-void
.end method

.method private initItem(Landroid/content/res/Resources;)V
    .locals 8

    .line 80
    iget v0, p0, Lcom/transsion/camera/feature/mode/armode/ARStickerThread;->mAreaType:I

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v2, v0, v1, p1}, Lcom/transsion/camera/app/ui/mode/armode/ARStickerInfo;->getEffectsByEffectType(IILjava/lang/String;Landroid/content/res/Resources;)Ljava/util/ArrayList;

    move-result-object p1

    .line 82
    iget v0, p0, Lcom/transsion/camera/feature/mode/armode/ARStickerThread;->mAreaType:I

    const-string v1, "tie.bundle"

    const-string v3, "huangya_animoji.bundle"

    const-string v4, "qbaimao_zh_fu.bundle"

    const-string v5, "baimao.bundle"

    const-string v6, "Infinix"

    const/4 v7, 0x1

    if-ne v0, v7, :cond_2

    .line 83
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    move-object v1, v4

    goto :goto_1

    :cond_0
    const-string v1, "aixinyanjing.bundle"

    :cond_1
    move-object v3, v5

    goto :goto_1

    :cond_2
    const/4 v7, 0x2

    if-ne v0, v7, :cond_3

    .line 91
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 99
    :cond_3
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :goto_1
    move v0, v2

    .line 108
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_7

    .line 109
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;

    move v5, v2

    .line 110
    :goto_3
    iget-object v6, v4, Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;->bundle:[Ljava/lang/String;

    array-length v7, v6

    if-ge v5, v7, :cond_6

    .line 111
    aget-object v6, v6, v5

    invoke-static {v6, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 112
    iput-object v4, p0, Lcom/transsion/camera/feature/mode/armode/ARStickerThread;->mStickerItem:Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;

    goto :goto_4

    .line 114
    :cond_4
    iget-object v6, v4, Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;->bundle:[Ljava/lang/String;

    aget-object v6, v6, v5

    invoke-static {v6, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 115
    iput-object v4, p0, Lcom/transsion/camera/feature/mode/armode/ARStickerThread;->mAnimojiItem:Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;

    goto :goto_4

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    return-void
.end method


# virtual methods
.method public getAnimojiItem()Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/armode/ARStickerThread;->mAnimojiItem:Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;

    return-object p0
.end method

.method public getAreatype()I
    .locals 0

    .line 52
    iget p0, p0, Lcom/transsion/camera/feature/mode/armode/ARStickerThread;->mAreaType:I

    return p0
.end method

.method public getStickerItem()Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/armode/ARStickerThread;->mStickerItem:Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;

    return-object p0
.end method

.method public getmStickerCache()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARStickerThread;->mStickerCache:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARStickerThread;->mStickerCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 48
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/armode/ARStickerThread;->mStickerCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method
