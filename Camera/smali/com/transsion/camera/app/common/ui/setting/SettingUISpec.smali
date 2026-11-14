.class public abstract Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;
.super Ljava/lang/Object;
.source "SettingUISpec.java"


# instance fields
.field protected mEntries:[Ljava/lang/String;

.field protected mEntryDrawables:[Landroid/graphics/drawable/Drawable;

.field protected mEntryExtDrawables:[Landroid/graphics/drawable/Drawable;

.field protected mEntrySummaries:[Ljava/lang/String;

.field protected mEntryValues:[Ljava/lang/String;

.field protected mEntryViewId:I

.field protected mIcon:Landroid/graphics/drawable/Drawable;

.field private final mKey:Ljava/lang/String;

.field protected mMessage:Ljava/lang/String;

.field protected mSupportedEntries:[Ljava/lang/String;

.field protected mSupportedEntryDrawables:[Landroid/graphics/drawable/Drawable;

.field protected mSupportedEntryExtDrawables:[Landroid/graphics/drawable/Drawable;

.field protected mSupportedEntrySummaries:[Ljava/lang/String;

.field protected mSupportedEntryValues:[Ljava/lang/String;

.field protected final mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

.field protected mTitle:Ljava/lang/String;

.field private final mType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILandroid/content/res/Resources;)V
    .locals 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 67
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mKey:Ljava/lang/String;

    .line 68
    iput p2, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mType:I

    .line 69
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->initEntryViewId()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mEntryViewId:I

    .line 70
    invoke-virtual {p0, p3}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->init(Landroid/content/res/Resources;)V

    return-void
.end method

.method protected static typedArrayToDrawableArray(Landroid/content/res/TypedArray;)[Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 165
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 166
    new-array v1, v0, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 169
    invoke-virtual {p0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public createSupportedEntries(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 77
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->createSupportedEntries(Ljava/util/List;)V

    return-void
.end method

.method public abstract createSupportedEntries(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public getCustomFragment()Landroid/app/Fragment;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getEntryViewId()I
    .locals 0

    .line 109
    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mEntryViewId:I

    return p0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getIndex(Ljava/lang/String;)I
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntryValues:[Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mMessage:Ljava/lang/String;

    return-object p0
.end method

.method public getSupportedEntries()[Ljava/lang/String;
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntries:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "getSupportedEntries is null, return default entries."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 115
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mEntries:[Ljava/lang/String;

    return-object p0

    :cond_0
    return-object v0
.end method

.method public getSupportedEntryDrawables()[Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntryDrawables:[Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "getSupportedEntryDrawables is null, return default entry drawables."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 139
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mEntryDrawables:[Landroid/graphics/drawable/Drawable;

    return-object p0

    :cond_0
    return-object v0
.end method

.method public getSupportedEntrySummaries()[Ljava/lang/String;
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntrySummaries:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "getSupportedEntrySummaries is null, return default summaries."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 123
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mEntrySummaries:[Ljava/lang/String;

    return-object p0

    :cond_0
    return-object v0
.end method

.method public getSupportedEntryValues()[Ljava/lang/String;
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntryValues:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "getSupportedEntryValues is null, return default entry values."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 131
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mEntryValues:[Ljava/lang/String;

    return-object p0

    :cond_0
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getType()I
    .locals 0

    .line 85
    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mType:I

    return p0
.end method

.method protected abstract init(Landroid/content/res/Resources;)V
.end method

.method protected initEntryViewId()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isValueEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 161
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public shouldHighLightShow(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
