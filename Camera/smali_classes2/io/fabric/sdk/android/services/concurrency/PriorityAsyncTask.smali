.class public abstract Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask;
.super Lio/fabric/sdk/android/services/concurrency/AsyncTask;
.source "PriorityAsyncTask.java"

# interfaces
.implements Lio/fabric/sdk/android/services/concurrency/Dependency;
.implements Lio/fabric/sdk/android/services/concurrency/PriorityProvider;
.implements Lio/fabric/sdk/android/services/concurrency/Task;
.implements Lio/fabric/sdk/android/services/concurrency/DelegateProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask$ProxyExecutor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Lio/fabric/sdk/android/services/concurrency/AsyncTask<",
        "TParams;TProgress;TResult;>;",
        "Lio/fabric/sdk/android/services/concurrency/Dependency<",
        "Lio/fabric/sdk/android/services/concurrency/Task;",
        ">;",
        "Lio/fabric/sdk/android/services/concurrency/PriorityProvider;",
        "Lio/fabric/sdk/android/services/concurrency/Task;",
        "Lio/fabric/sdk/android/services/concurrency/DelegateProvider;"
    }
.end annotation


# instance fields
.field private final priorityTask:Lio/fabric/sdk/android/services/concurrency/PriorityTask;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lio/fabric/sdk/android/services/concurrency/AsyncTask;-><init>()V

    .line 37
    new-instance v0, Lio/fabric/sdk/android/services/concurrency/PriorityTask;

    invoke-direct {v0}, Lio/fabric/sdk/android/services/concurrency/PriorityTask;-><init>()V

    iput-object v0, p0, Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask;->priorityTask:Lio/fabric/sdk/android/services/concurrency/PriorityTask;

    return-void
.end method


# virtual methods
.method public addDependency(Lio/fabric/sdk/android/services/concurrency/Task;)V
    .locals 2

    .line 58
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/AsyncTask;->getStatus()Lio/fabric/sdk/android/services/concurrency/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Lio/fabric/sdk/android/services/concurrency/AsyncTask$Status;->PENDING:Lio/fabric/sdk/android/services/concurrency/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    .line 61
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask;->getDelegate()Lio/fabric/sdk/android/services/concurrency/Dependency;

    move-result-object p0

    check-cast p0, Lio/fabric/sdk/android/services/concurrency/PriorityProvider;

    check-cast p0, Lio/fabric/sdk/android/services/concurrency/Dependency;

    invoke-interface {p0, p1}, Lio/fabric/sdk/android/services/concurrency/Dependency;->addDependency(Ljava/lang/Object;)V

    return-void

    .line 59
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Must not add Dependency after task is running"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic addDependency(Ljava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p1, Lio/fabric/sdk/android/services/concurrency/Task;

    invoke-virtual {p0, p1}, Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask;->addDependency(Lio/fabric/sdk/android/services/concurrency/Task;)V

    return-void
.end method

.method public areDependenciesMet()Z
    .locals 0

    .line 71
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask;->getDelegate()Lio/fabric/sdk/android/services/concurrency/Dependency;

    move-result-object p0

    check-cast p0, Lio/fabric/sdk/android/services/concurrency/PriorityProvider;

    check-cast p0, Lio/fabric/sdk/android/services/concurrency/Dependency;

    invoke-interface {p0}, Lio/fabric/sdk/android/services/concurrency/Dependency;->areDependenciesMet()Z

    move-result p0

    return p0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 48
    invoke-static {p0, p1}, Lio/fabric/sdk/android/services/concurrency/Priority;->compareTo(Lio/fabric/sdk/android/services/concurrency/PriorityProvider;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final varargs executeOnExecutor(Ljava/util/concurrent/ExecutorService;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ExecutorService;",
            "[TParams;)V"
        }
    .end annotation

    .line 42
    new-instance v0, Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask$ProxyExecutor;

    invoke-direct {v0, p1, p0}, Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask$ProxyExecutor;-><init>(Ljava/util/concurrent/Executor;Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask;)V

    .line 43
    invoke-super {p0, v0, p2}, Lio/fabric/sdk/android/services/concurrency/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lio/fabric/sdk/android/services/concurrency/AsyncTask;

    return-void
.end method

.method public getDelegate()Lio/fabric/sdk/android/services/concurrency/Dependency;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/fabric/sdk/android/services/concurrency/Dependency<",
            "Lio/fabric/sdk/android/services/concurrency/Task;",
            ">;:",
            "Lio/fabric/sdk/android/services/concurrency/PriorityProvider;",
            ":",
            "Lio/fabric/sdk/android/services/concurrency/Task;",
            ">()TT;"
        }
    .end annotation

    .line 101
    iget-object p0, p0, Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask;->priorityTask:Lio/fabric/sdk/android/services/concurrency/PriorityTask;

    return-object p0
.end method

.method public getDependencies()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lio/fabric/sdk/android/services/concurrency/Task;",
            ">;"
        }
    .end annotation

    .line 66
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask;->getDelegate()Lio/fabric/sdk/android/services/concurrency/Dependency;

    move-result-object p0

    check-cast p0, Lio/fabric/sdk/android/services/concurrency/PriorityProvider;

    check-cast p0, Lio/fabric/sdk/android/services/concurrency/Dependency;

    invoke-interface {p0}, Lio/fabric/sdk/android/services/concurrency/Dependency;->getDependencies()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public getError()Ljava/lang/Throwable;
    .locals 0

    .line 96
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask;->getDelegate()Lio/fabric/sdk/android/services/concurrency/Dependency;

    move-result-object p0

    check-cast p0, Lio/fabric/sdk/android/services/concurrency/PriorityProvider;

    check-cast p0, Lio/fabric/sdk/android/services/concurrency/Task;

    invoke-interface {p0}, Lio/fabric/sdk/android/services/concurrency/Task;->getError()Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method public getPriority()Lio/fabric/sdk/android/services/concurrency/Priority;
    .locals 0

    .line 76
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask;->getDelegate()Lio/fabric/sdk/android/services/concurrency/Dependency;

    move-result-object p0

    check-cast p0, Lio/fabric/sdk/android/services/concurrency/PriorityProvider;

    invoke-interface {p0}, Lio/fabric/sdk/android/services/concurrency/PriorityProvider;->getPriority()Lio/fabric/sdk/android/services/concurrency/Priority;

    move-result-object p0

    return-object p0
.end method

.method public isFinished()Z
    .locals 0

    .line 86
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask;->getDelegate()Lio/fabric/sdk/android/services/concurrency/Dependency;

    move-result-object p0

    check-cast p0, Lio/fabric/sdk/android/services/concurrency/PriorityProvider;

    check-cast p0, Lio/fabric/sdk/android/services/concurrency/Task;

    invoke-interface {p0}, Lio/fabric/sdk/android/services/concurrency/Task;->isFinished()Z

    move-result p0

    return p0
.end method

.method public setError(Ljava/lang/Throwable;)V
    .locals 0

    .line 91
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask;->getDelegate()Lio/fabric/sdk/android/services/concurrency/Dependency;

    move-result-object p0

    check-cast p0, Lio/fabric/sdk/android/services/concurrency/PriorityProvider;

    check-cast p0, Lio/fabric/sdk/android/services/concurrency/Task;

    invoke-interface {p0, p1}, Lio/fabric/sdk/android/services/concurrency/Task;->setError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public setFinished(Z)V
    .locals 0

    .line 81
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask;->getDelegate()Lio/fabric/sdk/android/services/concurrency/Dependency;

    move-result-object p0

    check-cast p0, Lio/fabric/sdk/android/services/concurrency/PriorityProvider;

    check-cast p0, Lio/fabric/sdk/android/services/concurrency/Task;

    invoke-interface {p0, p1}, Lio/fabric/sdk/android/services/concurrency/Task;->setFinished(Z)V

    return-void
.end method
