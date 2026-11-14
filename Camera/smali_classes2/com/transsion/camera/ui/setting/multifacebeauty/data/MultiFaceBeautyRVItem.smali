.class public Lcom/transsion/camera/ui/setting/multifacebeauty/data/MultiFaceBeautyRVItem;
.super Ljava/lang/Object;
.source "MultiFaceBeautyRVItem.java"


# instance fields
.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/data/MultiFaceBeautyRVItem;->mKey:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/data/MultiFaceBeautyRVItem;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/data/MultiFaceBeautyRVItem;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/data/MultiFaceBeautyRVItem;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/data/MultiFaceBeautyRVItem;->mKey:Ljava/lang/String;

    return-void
.end method
