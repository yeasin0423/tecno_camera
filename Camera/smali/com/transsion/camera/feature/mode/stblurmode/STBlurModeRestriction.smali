.class Lcom/transsion/camera/feature/mode/stblurmode/STBlurModeRestriction;
.super Ljava/lang/Object;
.source "STBlurModeRestriction.java"


# static fields
.field private static final KEY_STBLUR_MODE:Ljava/lang/String;

.field private static sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

.field private static sRelationWithFlash:Lcom/transsion/camera/app/common/relation/RelationGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 16
    const-class v0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurModeEntry;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurModeRestriction;->KEY_STBLUR_MODE:Ljava/lang/String;

    .line 21
    new-instance v0, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurModeRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 22
    new-instance v0, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurModeRestriction;->sRelationWithFlash:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 25
    sget-object v0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurModeRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    sget-object v1, Lcom/transsion/camera/feature/mode/stblurmode/STBlurModeRestriction;->KEY_STBLUR_MODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    .line 26
    sget-object v0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurModeRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v1, "key_hdr"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 27
    sget-object v0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurModeRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v2, "key_flash"

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 28
    sget-object v0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurModeRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v3, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    sget-object v4, Lcom/transsion/camera/feature/mode/stblurmode/STBlurModeRestriction;->KEY_STBLUR_MODE:Ljava/lang/String;

    const-string v5, "on"

    invoke-direct {v3, v4, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "off"

    .line 30
    invoke-virtual {v3, v1, v4, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 31
    invoke-virtual {v3, v2, v4, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 32
    invoke-virtual {v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v2

    .line 28
    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 34
    sget-object v0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurModeRestriction;->sRelationWithFlash:Lcom/transsion/camera/app/common/relation/RelationGroup;

    sget-object v2, Lcom/transsion/camera/feature/mode/stblurmode/STBlurModeRestriction;->KEY_STBLUR_MODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    .line 35
    sget-object v0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurModeRestriction;->sRelationWithFlash:Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 36
    sget-object v0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurModeRestriction;->sRelationWithFlash:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v2, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    sget-object v3, Lcom/transsion/camera/feature/mode/stblurmode/STBlurModeRestriction;->KEY_STBLUR_MODE:Ljava/lang/String;

    invoke-direct {v2, v3, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v2, v1, v4, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 39
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    return-void
.end method

.method public static getRestriction(Z)Lcom/transsion/camera/app/common/relation/RelationGroup;
    .locals 0

    if-eqz p0, :cond_0

    .line 48
    sget-object p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurModeRestriction;->sRelationWithFlash:Lcom/transsion/camera/app/common/relation/RelationGroup;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurModeRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    :goto_0
    return-object p0
.end method
