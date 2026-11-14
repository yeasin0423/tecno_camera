.class public Lcom/transsion/camera/app/common/provider/SettingUIProvider;
.super Ljava/lang/Object;
.source "SettingUIProvider.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mAllEntries:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/transsion/camera/app/common/provider/ISettingUIEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SettingUIProvider"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->mAllEntries:Ljava/util/concurrent/ConcurrentHashMap;

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->loadUIEntries(Landroid/content/Context;I)V

    return-void
.end method

.method private loadBuildInUIEntries(Landroid/content/Context;I)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/transsion/camera/app/common/provider/ISettingUIEntry;",
            ">;"
        }
    .end annotation

    .line 194
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 195
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 196
    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->loadClasses([Ljava/lang/String;Landroid/content/res/Resources;)Ljava/util/LinkedHashMap;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(Ljava/util/Map;)V

    return-object p2
.end method

.method private static loadClasses([Ljava/lang/String;Landroid/content/res/Resources;)Ljava/util/LinkedHashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Landroid/content/res/Resources;",
            ")",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/transsion/camera/app/common/provider/ISettingUIEntry;",
            ">;"
        }
    .end annotation

    .line 201
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 202
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p0, v3

    if-eqz v4, :cond_0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v2

    .line 204
    invoke-static {v4, v5}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/app/common/provider/ISettingUIEntry;

    if-eqz v4, :cond_0

    .line 206
    invoke-interface {v4}, Lcom/transsion/camera/app/common/provider/ISettingUIEntry;->getName()Ljava/lang/String;

    move-result-object v5

    .line 207
    invoke-virtual {v0, v5, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private loadUIEntries(Landroid/content/Context;I)V
    .locals 0

    .line 188
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->loadBuildInUIEntries(Landroid/content/Context;I)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    .line 189
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->mAllEntries:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public createPreferenceItemUIList([Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;Landroid/graphics/drawable/Drawable;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_8

    .line 122
    array-length v0, p1

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 125
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 126
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const-string v4, "createPreferenceItemUIList entry is null: "

    if-ge v3, v1, :cond_4

    aget-object v5, p1, v3

    .line 127
    iget-object v6, p0, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->mAllEntries:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/camera/app/common/provider/ISettingUIEntry;

    if-eqz v6, :cond_2

    .line 129
    invoke-interface {v6}, Lcom/transsion/camera/app/common/provider/ISettingUIEntry;->createPreferenceItemUI()Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 131
    invoke-interface {p3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    .line 132
    invoke-interface {v4, v5}, Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;->setIsSellingPoint(Z)V

    .line 133
    invoke-interface {v4, p4}, Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;->setPointRes(Landroid/graphics/drawable/Drawable;)V

    .line 135
    :cond_1
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 138
    :cond_2
    sget-object v6, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_7

    .line 142
    array-length p1, p2

    :goto_2
    if-ge v2, p1, :cond_7

    aget-object p3, p2, v2

    .line 143
    iget-object p4, p0, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->mAllEntries:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p4, p3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/transsion/camera/app/common/provider/ISettingUIEntry;

    if-eqz p4, :cond_5

    .line 145
    invoke-interface {p4}, Lcom/transsion/camera/app/common/provider/ISettingUIEntry;->createPreferenceItemUI()Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;

    move-result-object p3

    if-eqz p3, :cond_6

    .line 147
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 150
    :cond_5
    sget-object p4, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p4, p3}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_6
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    return-object v0

    .line 123
    :cond_8
    :goto_4
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public createSettingGuideItemUIList([Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ISettingGuideItemUI;",
            ">;"
        }
    .end annotation

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 178
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 179
    iget-object v4, p0, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->mAllEntries:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/app/common/provider/ISettingUIEntry;

    if-eqz v3, :cond_0

    .line 180
    invoke-interface {v3}, Lcom/transsion/camera/app/common/provider/ISettingUIEntry;->createSettingGuideItemUI()Lcom/transsion/camera/app/common/ui/setting/ISettingGuideItemUI;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 181
    invoke-interface {v3}, Lcom/transsion/camera/app/common/provider/ISettingUIEntry;->createSettingGuideItemUI()Lcom/transsion/camera/app/common/ui/setting/ISettingGuideItemUI;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public createWideCameraItemUIList([Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 102
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_2

    .line 105
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 106
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p1, v2

    .line 107
    iget-object v4, p0, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->mAllEntries:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/app/common/provider/ISettingUIEntry;

    if-eqz v4, :cond_1

    .line 109
    invoke-interface {v4}, Lcom/transsion/camera/app/common/provider/ISettingUIEntry;->createWideCameraItemUI()Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 111
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 114
    :cond_1
    sget-object v4, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createWideCameraItemUIList entry is null: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0

    .line 103
    :cond_4
    :goto_2
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getCommonSettingUIList([Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 53
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_2

    .line 56
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, p1, v2

    .line 58
    iget-object v4, p0, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->mAllEntries:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/app/common/provider/ISettingUIEntry;

    if-eqz v4, :cond_2

    .line 60
    invoke-interface {v4}, Lcom/transsion/camera/app/common/provider/ISettingUIEntry;->getCommonUI()Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    move-result-object v3

    if-nez v3, :cond_1

    .line 63
    invoke-interface {v4}, Lcom/transsion/camera/app/common/provider/ISettingUIEntry;->createCommonUI()Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    move-result-object v3

    :cond_1
    if-eqz v3, :cond_3

    .line 66
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 69
    :cond_2
    sget-object v4, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCommonSettingUIList entry is null: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v0

    .line 54
    :cond_5
    :goto_2
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getTopBarItemUIList([Ljava/lang/String;Ljava/util/List;Landroid/graphics/drawable/Drawable;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 76
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_2

    .line 79
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 80
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, p1, v2

    .line 81
    iget-object v4, p0, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->mAllEntries:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/app/common/provider/ISettingUIEntry;

    if-eqz v4, :cond_2

    .line 83
    invoke-interface {v4}, Lcom/transsion/camera/app/common/provider/ISettingUIEntry;->getTopBarItemUI()Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    move-result-object v5

    if-nez v5, :cond_1

    .line 85
    invoke-interface {v4}, Lcom/transsion/camera/app/common/provider/ISettingUIEntry;->createTopBarItemUI()Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    move-result-object v5

    .line 86
    invoke-interface {p2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    .line 87
    invoke-interface {v5, v3}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setIsSellingPoint(Z)V

    .line 88
    invoke-interface {v5, p3}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setPointRes(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    if-eqz v5, :cond_3

    .line 92
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 95
    :cond_2
    sget-object v4, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getTopBarItemUIList entry is null: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v0

    .line 77
    :cond_5
    :goto_2
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public resetSettingUIEntries()V
    .locals 1

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->mAllEntries:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/provider/ISettingUIEntry;

    if-eqz v0, :cond_0

    .line 47
    invoke-interface {v0}, Lcom/transsion/camera/app/common/provider/ISettingUIEntry;->resetSettingUIEntry()V

    goto :goto_0

    :cond_1
    return-void
.end method
