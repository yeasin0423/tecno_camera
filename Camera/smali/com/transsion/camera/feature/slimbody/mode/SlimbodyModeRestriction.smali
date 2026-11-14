.class public Lcom/transsion/camera/feature/slimbody/mode/SlimbodyModeRestriction;
.super Ljava/lang/Object;
.source "SlimbodyModeRestriction.java"


# static fields
.field private static final KEY_SLIMBODY_MODE:Ljava/lang/String;

.field private static sAdvancedRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

.field private static sFaceAttributeRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

.field private static sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 18
    const-class v0, Lcom/transsion/camera/feature/slimbody/mode/SlimBodyModeEntry;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/slimbody/mode/SlimbodyModeRestriction;->KEY_SLIMBODY_MODE:Ljava/lang/String;

    .line 22
    new-instance v0, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/slimbody/mode/SlimbodyModeRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 23
    new-instance v0, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/slimbody/mode/SlimbodyModeRestriction;->sAdvancedRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 24
    new-instance v0, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/slimbody/mode/SlimbodyModeRestriction;->sFaceAttributeRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 27
    sget-object v0, Lcom/transsion/camera/feature/slimbody/mode/SlimbodyModeRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    sget-object v1, Lcom/transsion/camera/feature/slimbody/mode/SlimbodyModeRestriction;->KEY_SLIMBODY_MODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    .line 28
    sget-object v0, Lcom/transsion/camera/feature/slimbody/mode/SlimbodyModeRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v1, "key_hdr,key_distortion_correction"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 29
    sget-object v0, Lcom/transsion/camera/feature/slimbody/mode/SlimbodyModeRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v1, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    sget-object v2, Lcom/transsion/camera/feature/slimbody/mode/SlimbodyModeRestriction;->KEY_SLIMBODY_MODE:Ljava/lang/String;

    const-string v3, "on"

    invoke-direct {v1, v2, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "key_hdr"

    const-string v4, "off"

    .line 31
    invoke-virtual {v1, v2, v4, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v5, "key_distortion_correction"

    .line 32
    invoke-virtual {v1, v5, v4, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 33
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 37
    sget-object v0, Lcom/transsion/camera/feature/slimbody/mode/SlimbodyModeRestriction;->sAdvancedRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    sget-object v1, Lcom/transsion/camera/feature/slimbody/mode/SlimbodyModeRestriction;->KEY_SLIMBODY_MODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    .line 38
    sget-object v0, Lcom/transsion/camera/feature/slimbody/mode/SlimbodyModeRestriction;->sAdvancedRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 39
    sget-object v0, Lcom/transsion/camera/feature/slimbody/mode/SlimbodyModeRestriction;->sAdvancedRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v1, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    sget-object v5, Lcom/transsion/camera/feature/slimbody/mode/SlimbodyModeRestriction;->KEY_SLIMBODY_MODE:Ljava/lang/String;

    invoke-direct {v1, v5, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {v1, v2, v4, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 42
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 46
    sget-object v0, Lcom/transsion/camera/feature/slimbody/mode/SlimbodyModeRestriction;->sFaceAttributeRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    sget-object v1, Lcom/transsion/camera/feature/slimbody/mode/SlimbodyModeRestriction;->KEY_SLIMBODY_MODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    .line 47
    sget-object v0, Lcom/transsion/camera/feature/slimbody/mode/SlimbodyModeRestriction;->sFaceAttributeRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v1, "key_face_detection"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 48
    sget-object v0, Lcom/transsion/camera/feature/slimbody/mode/SlimbodyModeRestriction;->sFaceAttributeRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v2, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    sget-object v4, Lcom/transsion/camera/feature/slimbody/mode/SlimbodyModeRestriction;->KEY_SLIMBODY_MODE:Ljava/lang/String;

    invoke-direct {v2, v4, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "gender_indentification"

    .line 49
    invoke-virtual {v2, v1, v3, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 50
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    return-void
.end method

.method public static getFaceAttributeRelation()Lcom/transsion/camera/app/common/relation/RelationGroup;
    .locals 1

    .line 71
    sget-object v0, Lcom/transsion/camera/feature/slimbody/mode/SlimbodyModeRestriction;->sFaceAttributeRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    return-object v0
.end method

.method public static getRelation(IZ)Lcom/transsion/camera/app/common/relation/RelationGroup;
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    if-eqz p1, :cond_0

    .line 62
    sget-object p0, Lcom/transsion/camera/feature/slimbody/mode/SlimbodyModeRestriction;->sAdvancedRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 67
    :cond_1
    sget-object p0, Lcom/transsion/camera/feature/slimbody/mode/SlimbodyModeRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    return-object p0
.end method
