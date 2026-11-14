.class public Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec;
.super Lcom/transsion/camera/app/ui/setting/spec/ListSettingUISpec;
.source "SuperDefinitionSettingUISpec.java"


# instance fields
.field private mFrontEntryDrawables:[Landroid/graphics/drawable/Drawable;

.field private mHighDefinitionMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Landroid/content/res/Resources;)V
    .locals 1

    const-string v0, "key_super_definition"

    .line 27
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/setting/spec/ListSettingUISpec;-><init>(Ljava/lang/String;Landroid/content/res/Resources;)V

    const/4 p1, 0x0

    .line 24
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec;->mHighDefinitionMode:Z

    return-void
.end method

.method private getDrawablesTypedArray(Landroid/content/res/Resources;II)Landroid/content/res/TypedArray;
    .locals 1

    const v0, 0x7f050023

    .line 90
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec;->mHighDefinitionMode:Z

    .line 91
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    const/16 v0, 0x20

    if-eq p3, v0, :cond_8

    const/16 v0, 0x30

    if-eq p3, v0, :cond_6

    const/16 v0, 0x32

    if-eq p3, v0, :cond_4

    const/16 v0, 0x40

    if-eq p3, v0, :cond_2

    const/16 v0, 0x6c

    if-eq p3, v0, :cond_0

    .line 128
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p0

    goto :goto_0

    .line 121
    :cond_0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec;->mHighDefinitionMode:Z

    if-eqz p0, :cond_1

    const p0, 0x7f0300ab

    .line 122
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p0

    goto :goto_0

    :cond_1
    const p0, 0x7f0300aa

    .line 124
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p0

    goto :goto_0

    .line 114
    :cond_2
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec;->mHighDefinitionMode:Z

    if-eqz p0, :cond_3

    const p0, 0x7f0300b5

    .line 115
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p0

    goto :goto_0

    :cond_3
    const p0, 0x7f0300b4

    .line 117
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p0

    goto :goto_0

    .line 107
    :cond_4
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec;->mHighDefinitionMode:Z

    if-eqz p0, :cond_5

    const p0, 0x7f0300b3

    .line 108
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p0

    goto :goto_0

    :cond_5
    const p0, 0x7f0300b2

    .line 110
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p0

    goto :goto_0

    .line 100
    :cond_6
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec;->mHighDefinitionMode:Z

    if-eqz p0, :cond_7

    const p0, 0x7f0300b1

    .line 101
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p0

    goto :goto_0

    :cond_7
    const p0, 0x7f0300b0

    .line 103
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p0

    goto :goto_0

    .line 93
    :cond_8
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec;->mHighDefinitionMode:Z

    if-eqz p0, :cond_9

    const p0, 0x7f0300ad

    .line 94
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p0

    goto :goto_0

    :cond_9
    const p0, 0x7f0300ac

    .line 96
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private initFrontEntryDrawables(Landroid/content/res/Resources;)Landroid/content/res/TypedArray;
    .locals 2

    const v0, 0x7f0300a6

    const v1, 0x7f0a0032

    .line 84
    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec;->getDrawablesTypedArray(Landroid/content/res/Resources;II)Landroid/content/res/TypedArray;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public createSupportedEntries(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mEntryValues:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 138
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 139
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 140
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 141
    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 142
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 146
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 147
    new-array v1, p2, [Ljava/lang/String;

    iput-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntryValues:[Ljava/lang/String;

    .line 148
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 150
    new-array v0, p2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntries:[Ljava/lang/String;

    .line 151
    new-array v0, p2, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntryDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_3

    .line 154
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntryValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 155
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mEntryValues:[Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/transsion/camera/utils/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 156
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntries:[Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mEntries:[Ljava/lang/String;

    aget-object v3, v3, v1

    aput-object v3, v2, v0

    const-string v2, "1"

    .line 157
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 158
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntryDrawables:[Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec;->mFrontEntryDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v3, v1

    aput-object v1, v2, v0

    goto :goto_2

    .line 160
    :cond_2
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntryDrawables:[Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mEntryDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v3, v1

    aput-object v1, v2, v0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method protected final init(Landroid/content/res/Resources;)V
    .locals 1

    .line 32
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/setting/spec/ListSettingUISpec;->init(Landroid/content/res/Resources;)V

    .line 33
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec;->initFrontEntryDrawables(Landroid/content/res/Resources;)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 34
    invoke-static {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->typedArrayToDrawableArray(Landroid/content/res/TypedArray;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec;->mFrontEntryDrawables:[Landroid/graphics/drawable/Drawable;

    .line 35
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method protected initEntries(Landroid/content/res/Resources;)[Ljava/lang/String;
    .locals 1

    const v0, 0x7f050023

    .line 56
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec;->mHighDefinitionMode:Z

    if-eqz v0, :cond_0

    const p0, 0x7f0300a8

    .line 58
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const p0, 0x7f0300a7

    .line 60
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method protected initEntryDrawables(Landroid/content/res/Resources;)Landroid/content/res/TypedArray;
    .locals 2

    const v0, 0x7f0300a9

    const v1, 0x7f0a0031

    .line 79
    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec;->getDrawablesTypedArray(Landroid/content/res/Resources;II)Landroid/content/res/TypedArray;

    move-result-object p0

    return-object p0
.end method

.method protected initEntryValues(Landroid/content/res/Resources;)[Ljava/lang/String;
    .locals 1

    const v0, 0x7f050023

    .line 68
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec;->mHighDefinitionMode:Z

    if-eqz v0, :cond_0

    const p0, 0x7f0300b7

    .line 70
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const p0, 0x7f0300b6

    .line 72
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method protected initEntryViewId()I
    .locals 0

    const p0, 0x7f0901e9

    return p0
.end method

.method protected initIcon(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const p0, 0x7f0804c7

    const/4 v0, 0x0

    .line 45
    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method protected initTitle(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 0

    const p0, 0x7f0f01ca

    .line 40
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
