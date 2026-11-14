.class Lcom/crashlytics/android/core/InvalidSessionReport;
.super Ljava/lang/Object;
.source "InvalidSessionReport.java"

# interfaces
.implements Lcom/crashlytics/android/core/Report;


# instance fields
.field private final customHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final files:[Ljava/io/File;

.field private final identifier:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/io/File;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p2, p0, Lcom/crashlytics/android/core/InvalidSessionReport;->files:[Ljava/io/File;

    .line 21
    new-instance p2, Ljava/util/HashMap;

    sget-object v0, Lcom/crashlytics/android/core/ReportUploader;->HEADER_INVALID_CLS_FILE:Ljava/util/Map;

    invoke-direct {p2, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object p2, p0, Lcom/crashlytics/android/core/InvalidSessionReport;->customHeaders:Ljava/util/Map;

    .line 22
    iput-object p1, p0, Lcom/crashlytics/android/core/InvalidSessionReport;->identifier:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCustomHeaders()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object p0, p0, Lcom/crashlytics/android/core/InvalidSessionReport;->customHeaders:Ljava/util/Map;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .line 37
    iget-object p0, p0, Lcom/crashlytics/android/core/InvalidSessionReport;->files:[Ljava/io/File;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object p0, p0, Lcom/crashlytics/android/core/InvalidSessionReport;->files:[Ljava/io/File;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFiles()[Ljava/io/File;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/crashlytics/android/core/InvalidSessionReport;->files:[Ljava/io/File;

    return-object p0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/crashlytics/android/core/InvalidSessionReport;->identifier:Ljava/lang/String;

    return-object p0
.end method

.method public getType()Lcom/crashlytics/android/core/Report$Type;
    .locals 0

    .line 61
    sget-object p0, Lcom/crashlytics/android/core/Report$Type;->JAVA:Lcom/crashlytics/android/core/Report$Type;

    return-object p0
.end method

.method public remove()V
    .locals 6

    .line 52
    iget-object p0, p0, Lcom/crashlytics/android/core/InvalidSessionReport;->files:[Ljava/io/File;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 53
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing invalid report file at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CrashlyticsCore"

    .line 53
    invoke-interface {v3, v5, v4}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
