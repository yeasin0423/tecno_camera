.class Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;
.super Ljava/lang/Object;
.source "TopBarUpdateHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;,
        Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field mAnimatorHelper:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;

.field mContainer:Landroid/view/ViewGroup;

.field mContainerWidth:I

.field mViewStore:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mContainer:Landroid/view/ViewGroup;

    .line 55
    new-instance p1, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;

    invoke-direct {p1}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mViewStore:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;

    .line 56
    new-instance v0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;-><init>(Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mAnimatorHelper:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;

    return-void
.end method

.method static synthetic access$000()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 43
    sget-object v0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method private calculateIntervalTranslate(II)I
    .locals 3

    .line 130
    sget-object v0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calculateIntervalTranslate------mContainerWidth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mContainerWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " itemSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " itemViewSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gt p1, v1, :cond_0

    return v0

    .line 137
    :cond_0
    iget p0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mContainerWidth:I

    if-gtz p0, :cond_1

    return v0

    :cond_1
    sub-int/2addr p0, p2

    int-to-float p0, p0

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float/2addr p0, p2

    float-to-int p0, p0

    sub-int/2addr p1, v1

    .line 142
    div-int/2addr p0, p1

    return p0
.end method

.method private updateShowViews(Ljava/util/Map;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070356

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 91
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->calculateIntervalTranslate(II)I

    move-result v0

    .line 93
    iget-object v1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 94
    :goto_0
    sget-object v4, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateShowViews : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 96
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v4, v3

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 97
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 98
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 100
    instance-of v7, v5, Lcom/transsion/camera/app/ui/widget/IRotatable;

    if-eqz v7, :cond_1

    const/4 v7, -0x1

    if-eq p2, v7, :cond_1

    .line 102
    move-object v7, v5

    check-cast v7, Lcom/transsion/camera/app/ui/widget/IRotatable;

    invoke-interface {v7, p2, v3}, Lcom/transsion/camera/app/ui/widget/IRotatable;->setOrientation(IZ)V

    .line 105
    :cond_1
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-nez v7, :cond_2

    .line 106
    iget-object v7, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 108
    :cond_2
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    iget-object v8, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mContainer:Landroid/view/ViewGroup;

    if-eq v7, v8, :cond_3

    .line 109
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 110
    iget-object v7, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 113
    :cond_3
    :goto_2
    iget-object v7, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mViewStore:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;

    add-int/lit8 v8, v4, 0x1

    mul-int/2addr v4, v0

    const/4 v9, 0x4

    invoke-virtual {v7, v6, v4, v2, v9}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;->update(Ljava/lang/String;III)V

    if-eqz v1, :cond_4

    .line 116
    iget-object v4, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mAnimatorHelper:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;

    invoke-virtual {v4, v6, v5}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;->animator(Ljava/lang/String;Landroid/view/View;)V

    goto :goto_3

    .line 118
    :cond_4
    iget-object v4, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mAnimatorHelper:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;

    invoke-virtual {v4, v6, v5}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;->withoutAnimator(Ljava/lang/String;Landroid/view/View;)V

    .line 121
    :goto_3
    iget-object v4, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mViewStore:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;

    invoke-virtual {v4, v6}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;->getView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_5

    if-eq v4, v5, :cond_5

    .line 123
    iget-object v7, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 125
    :cond_5
    iget-object v4, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mViewStore:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;

    invoke-virtual {v4, v6, v5}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;->cacheView(Ljava/lang/String;Landroid/view/View;)V

    move v4, v8

    goto :goto_1

    :cond_6
    return-void
.end method


# virtual methods
.method setContainerWidth(I)V
    .locals 0

    .line 60
    iput p1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mContainerWidth:I

    return-void
.end method

.method update(Ljava/util/Map;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mViewStore:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;->updateStart()V

    .line 66
    iget-object v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mAnimatorHelper:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;->animatorStart()V

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->updateShowViews(Ljava/util/Map;I)V

    .line 72
    iget-object p1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mViewStore:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;->updateEnd()Ljava/util/List;

    move-result-object p1

    .line 73
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 74
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 75
    iget-object v2, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mAnimatorHelper:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    new-instance v5, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$1;

    invoke-direct {v5, p0, v1}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$1;-><init>(Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;Landroid/view/View;)V

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;->addAlphaAnimator(Landroid/view/View;FFLandroid/animation/AnimatorListenerAdapter;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mAnimatorHelper:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;->animatorEnd()V

    return-void
.end method
