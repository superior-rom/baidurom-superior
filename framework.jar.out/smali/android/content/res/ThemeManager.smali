.class public Landroid/content/res/ThemeManager;
.super Ljava/lang/Object;
.source "ThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/ThemeManager$ThemeProcessingListener;,
        Landroid/content/res/ThemeManager$ThemeChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mChangeListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/content/res/ThemeManager$ThemeChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mProcessingListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/content/res/ThemeManager$ThemeProcessingListener;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Landroid/content/res/IThemeService;

.field private final mThemeChangeListener:Landroid/content/res/IThemeChangeListener;

.field private final mThemeProcessingListener:Landroid/content/res/IThemeProcessingListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Landroid/content/res/ThemeManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/content/res/ThemeManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/IThemeService;)V
    .locals 2
    .parameter "context"
    .parameter "service"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/content/res/ThemeManager;->mChangeListeners:Ljava/util/Set;

    .line 45
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/content/res/ThemeManager;->mProcessingListeners:Ljava/util/Set;

    .line 54
    new-instance v0, Landroid/content/res/ThemeManager$1;

    invoke-direct {v0, p0}, Landroid/content/res/ThemeManager$1;-><init>(Landroid/content/res/ThemeManager;)V

    iput-object v0, p0, Landroid/content/res/ThemeManager;->mThemeChangeListener:Landroid/content/res/IThemeChangeListener;

    .line 108
    new-instance v0, Landroid/content/res/ThemeManager$2;

    invoke-direct {v0, p0}, Landroid/content/res/ThemeManager$2;-><init>(Landroid/content/res/ThemeManager;)V

    iput-object v0, p0, Landroid/content/res/ThemeManager;->mThemeProcessingListener:Landroid/content/res/IThemeProcessingListener;

    .line 49
    iput-object p1, p0, Landroid/content/res/ThemeManager;->mContext:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Landroid/content/res/ThemeManager;->mService:Landroid/content/res/IThemeService;

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/content/res/ThemeManager;->mHandler:Landroid/os/Handler;

    .line 52
    return-void
.end method

.method static synthetic access$000(Landroid/content/res/ThemeManager;)Ljava/util/Set;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Landroid/content/res/ThemeManager;->mChangeListeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Landroid/content/res/ThemeManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/res/ThemeManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Landroid/content/res/ThemeManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Landroid/content/res/ThemeManager;)Ljava/util/Set;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Landroid/content/res/ThemeManager;->mProcessingListeners:Ljava/util/Set;

    return-object v0
.end method

.method private logThemeServiceException(Ljava/lang/Exception;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 286
    sget-object v0, Landroid/content/res/ThemeManager;->TAG:Ljava/lang/String;

    const-string v1, "Unable to access ThemeService"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 287
    return-void
.end method


# virtual methods
.method public addClient(Landroid/content/res/ThemeManager$ThemeChangeListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 139
    iget-object v2, p0, Landroid/content/res/ThemeManager;->mChangeListeners:Ljava/util/Set;

    monitor-enter v2

    .line 140
    :try_start_0
    iget-object v1, p0, Landroid/content/res/ThemeManager;->mChangeListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Client was already added "

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 151
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 143
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/content/res/ThemeManager;->mChangeListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 145
    :try_start_2
    iget-object v1, p0, Landroid/content/res/ThemeManager;->mService:Landroid/content/res/IThemeService;

    iget-object v3, p0, Landroid/content/res/ThemeManager;->mThemeChangeListener:Landroid/content/res/IThemeChangeListener;

    invoke-interface {v1, v3}, Landroid/content/res/IThemeService;->requestThemeChangeUpdates(Landroid/content/res/IThemeChangeListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 150
    :cond_1
    :goto_0
    :try_start_3
    iget-object v1, p0, Landroid/content/res/ThemeManager;->mChangeListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 151
    monitor-exit v2

    .line 152
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/content/res/ThemeManager;->TAG:Ljava/lang/String;

    const-string v3, "Unable to register listener"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public applyDefaultTheme()V
    .locals 2

    .prologue
    .line 242
    :try_start_0
    iget-object v1, p0, Landroid/content/res/ThemeManager;->mService:Landroid/content/res/IThemeService;

    invoke-interface {v1}, Landroid/content/res/IThemeService;->applyDefaultTheme()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    :goto_0
    return-void

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Landroid/content/res/ThemeManager;->logThemeServiceException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getProgress()I
    .locals 2

    .prologue
    .line 269
    :try_start_0
    iget-object v1, p0, Landroid/content/res/ThemeManager;->mService:Landroid/content/res/IThemeService;

    invoke-interface {v1}, Landroid/content/res/IThemeService;->getProgress()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 273
    :goto_0
    return v1

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Landroid/content/res/ThemeManager;->logThemeServiceException(Ljava/lang/Exception;)V

    .line 273
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public isThemeApplying()Z
    .locals 2

    .prologue
    .line 250
    :try_start_0
    iget-object v1, p0, Landroid/content/res/ThemeManager;->mService:Landroid/content/res/IThemeService;

    invoke-interface {v1}, Landroid/content/res/IThemeService;->isThemeApplying()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 255
    :goto_0
    return v1

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Landroid/content/res/ThemeManager;->logThemeServiceException(Ljava/lang/Exception;)V

    .line 255
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isThemeBeingProcessed(Ljava/lang/String;)Z
    .locals 2
    .parameter "themePkgName"

    .prologue
    .line 260
    :try_start_0
    iget-object v1, p0, Landroid/content/res/ThemeManager;->mService:Landroid/content/res/IThemeService;

    invoke-interface {v1, p1}, Landroid/content/res/IThemeService;->isThemeBeingProcessed(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 264
    :goto_0
    return v1

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Landroid/content/res/ThemeManager;->logThemeServiceException(Ljava/lang/Exception;)V

    .line 264
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onClientDestroyed(Landroid/content/res/ThemeManager$ThemeChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 176
    invoke-virtual {p0, p1}, Landroid/content/res/ThemeManager;->removeClient(Landroid/content/res/ThemeManager$ThemeChangeListener;)V

    .line 177
    return-void
.end method

.method public onClientPaused(Landroid/content/res/ThemeManager$ThemeChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 168
    invoke-virtual {p0, p1}, Landroid/content/res/ThemeManager;->removeClient(Landroid/content/res/ThemeManager$ThemeChangeListener;)V

    .line 169
    return-void
.end method

.method public onClientResumed(Landroid/content/res/ThemeManager$ThemeChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 172
    invoke-virtual {p0, p1}, Landroid/content/res/ThemeManager;->addClient(Landroid/content/res/ThemeManager$ThemeChangeListener;)V

    .line 173
    return-void
.end method

.method public processThemeResources(Ljava/lang/String;)Z
    .locals 2
    .parameter "themePkgName"

    .prologue
    .line 278
    :try_start_0
    iget-object v1, p0, Landroid/content/res/ThemeManager;->mService:Landroid/content/res/IThemeService;

    invoke-interface {v1, p1}, Landroid/content/res/IThemeService;->processThemeResources(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 282
    :goto_0
    return v1

    .line 279
    :catch_0
    move-exception v0

    .line 280
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Landroid/content/res/ThemeManager;->logThemeServiceException(Ljava/lang/Exception;)V

    .line 282
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public registerProcessingListener(Landroid/content/res/ThemeManager$ThemeProcessingListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 184
    iget-object v2, p0, Landroid/content/res/ThemeManager;->mProcessingListeners:Ljava/util/Set;

    monitor-enter v2

    .line 185
    :try_start_0
    iget-object v1, p0, Landroid/content/res/ThemeManager;->mProcessingListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Listener was already added "

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 196
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 188
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/content/res/ThemeManager;->mProcessingListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 190
    :try_start_2
    iget-object v1, p0, Landroid/content/res/ThemeManager;->mService:Landroid/content/res/IThemeService;

    iget-object v3, p0, Landroid/content/res/ThemeManager;->mThemeProcessingListener:Landroid/content/res/IThemeProcessingListener;

    invoke-interface {v1, v3}, Landroid/content/res/IThemeService;->registerThemeProcessingListener(Landroid/content/res/IThemeProcessingListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 195
    :cond_1
    :goto_0
    :try_start_3
    iget-object v1, p0, Landroid/content/res/ThemeManager;->mProcessingListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 196
    monitor-exit v2

    .line 197
    return-void

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/content/res/ThemeManager;->TAG:Ljava/lang/String;

    const-string v3, "Unable to register listener"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public removeClient(Landroid/content/res/ThemeManager$ThemeChangeListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 155
    iget-object v2, p0, Landroid/content/res/ThemeManager;->mChangeListeners:Ljava/util/Set;

    monitor-enter v2

    .line 156
    :try_start_0
    iget-object v1, p0, Landroid/content/res/ThemeManager;->mChangeListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 157
    iget-object v1, p0, Landroid/content/res/ThemeManager;->mChangeListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 159
    :try_start_1
    iget-object v1, p0, Landroid/content/res/ThemeManager;->mService:Landroid/content/res/IThemeService;

    iget-object v3, p0, Landroid/content/res/ThemeManager;->mThemeChangeListener:Landroid/content/res/IThemeChangeListener;

    invoke-interface {v1, v3}, Landroid/content/res/IThemeService;->removeUpdates(Landroid/content/res/IThemeChangeListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 164
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 165
    return-void

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/content/res/ThemeManager;->TAG:Ljava/lang/String;

    const-string v3, "Unable to remove listener"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 164
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public requestThemeChange(Ljava/lang/String;)V
    .locals 2
    .parameter "pkgName"

    .prologue
    .line 220
    iget-object v1, p0, Landroid/content/res/ThemeManager;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Landroid/content/pm/ThemeUtils;->getSupportedComponents(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 221
    .local v0, components:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p1, v0}, Landroid/content/res/ThemeManager;->requestThemeChange(Ljava/lang/String;Ljava/util/List;)V

    .line 222
    return-void
.end method

.method public requestThemeChange(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .parameter "pkgName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 225
    .local p2, components:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 226
    .local v1, componentMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 227
    .local v0, component:Ljava/lang/String;
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 229
    .end local v0           #component:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v1}, Landroid/content/res/ThemeManager;->requestThemeChange(Ljava/util/Map;)V

    .line 230
    return-void
.end method

.method public requestThemeChange(Ljava/util/Map;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 234
    .local p1, componentMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    iget-object v1, p0, Landroid/content/res/ThemeManager;->mService:Landroid/content/res/IThemeService;

    invoke-interface {v1, p1}, Landroid/content/res/IThemeService;->requestThemeChange(Ljava/util/Map;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :goto_0
    return-void

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Landroid/content/res/ThemeManager;->logThemeServiceException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public unregisterProcessingListener(Landroid/content/res/ThemeManager$ThemeChangeListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 204
    iget-object v2, p0, Landroid/content/res/ThemeManager;->mProcessingListeners:Ljava/util/Set;

    monitor-enter v2

    .line 205
    :try_start_0
    iget-object v1, p0, Landroid/content/res/ThemeManager;->mProcessingListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 206
    iget-object v1, p0, Landroid/content/res/ThemeManager;->mProcessingListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 208
    :try_start_1
    iget-object v1, p0, Landroid/content/res/ThemeManager;->mService:Landroid/content/res/IThemeService;

    iget-object v3, p0, Landroid/content/res/ThemeManager;->mThemeProcessingListener:Landroid/content/res/IThemeProcessingListener;

    invoke-interface {v1, v3}, Landroid/content/res/IThemeService;->unregisterThemeProcessingListener(Landroid/content/res/IThemeProcessingListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 213
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 214
    return-void

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/content/res/ThemeManager;->TAG:Ljava/lang/String;

    const-string v3, "Unable to remove listener"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 213
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
