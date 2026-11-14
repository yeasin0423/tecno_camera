.class public Lcom/transsion/camera/feature/mode/portrait/PortraitModeRestriction;
.super Ljava/lang/Object;
.source "PortraitModeRestriction.java"


# static fields
.field private static final KEY_PORTRAIT_MODE:Ljava/lang/String;

.field private static sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 11
    const-class v0, Lcom/transsion/camera/feature/mode/portrait/PortraitModeEntry;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/portrait/PortraitModeRestriction;->KEY_PORTRAIT_MODE:Ljava/lang/String;

    .line 16
    new-instance v0, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/portrait/PortraitModeRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 19
    sget-object v1, Lcom/transsion/camera/feature/mode/portrait/PortraitModeRestriction;->KEY_PORTRAIT_MODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    .line 20
    sget-object v0, Lcom/transsion/camera/feature/mode/portrait/PortraitModeRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v1, "key_hdr"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 21
    sget-object v0, Lcom/transsion/camera/feature/mode/portrait/PortraitModeRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v2, "key_flash"

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 22
    sget-object v0, Lcom/transsion/camera/feature/mode/portrait/PortraitModeRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v3, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    sget-object v4, Lcom/transsion/camera/feature/mode/portrait/PortraitModeRestriction;->KEY_PORTRAIT_MODE:Ljava/lang/String;

    const-string v5, "on"

    invoke-direct {v3, v4, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "off"

    .line 24
    invoke-virtual {v3, v1, v4, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 25
    invoke-virtual {v3, v2, v4, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 26
    invoke-virtual {v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    return-void
.end method

.method public static getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;
    .locals 1

    .line 35
    sget-object v0, Lcom/transsion/camera/feature/mode/portrait/PortraitModeRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    return-object v0
.end method
