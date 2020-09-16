.class public Lcom/msc/seclib/proxy/ProxyLibJNI;
.super Ljava/lang/Object;


# static fields
.field private static callback_:Lcom/msc/seclib/proxy/a;

.field private static instance_:Lcom/msc/seclib/proxy/ProxyLibJNI;

.field private static retry_flag_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/msc/seclib/proxy/ProxyLibJNI;

    invoke-direct {v0}, Lcom/msc/seclib/proxy/ProxyLibJNI;-><init>()V

    sput-object v0, Lcom/msc/seclib/proxy/ProxyLibJNI;->instance_:Lcom/msc/seclib/proxy/ProxyLibJNI;

    new-instance v0, Lcom/msc/seclib/proxy/b;

    invoke-direct {v0}, Lcom/msc/seclib/proxy/b;-><init>()V

    sput-object v0, Lcom/msc/seclib/proxy/ProxyLibJNI;->callback_:Lcom/msc/seclib/proxy/a;

    const/4 v0, -0x1

    sput v0, Lcom/msc/seclib/proxy/ProxyLibJNI;->retry_flag_:I

    const-string v0, "scone_proxy"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/msc/seclib/proxy/ProxyLibJNI;
    .locals 2

    const-class v0, Lcom/msc/seclib/proxy/ProxyLibJNI;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/msc/seclib/proxy/ProxyLibJNI;->instance_:Lcom/msc/seclib/proxy/ProxyLibJNI;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private presConnNotify()V
    .locals 1

    sget-object v0, Lcom/msc/seclib/proxy/ProxyLibJNI;->callback_:Lcom/msc/seclib/proxy/a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/msc/seclib/proxy/ProxyLibJNI;->callback_:Lcom/msc/seclib/proxy/a;

    invoke-interface {v0}, Lcom/msc/seclib/proxy/a;->a()V

    :cond_0
    return-void
.end method

.method private presDisconnNotify(I)I
    .locals 1

    sget-object v0, Lcom/msc/seclib/proxy/ProxyLibJNI;->callback_:Lcom/msc/seclib/proxy/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/msc/seclib/proxy/ProxyLibJNI;->callback_:Lcom/msc/seclib/proxy/a;

    invoke-interface {v0, p1}, Lcom/msc/seclib/proxy/a;->a(I)I

    move-result v0

    sput v0, Lcom/msc/seclib/proxy/ProxyLibJNI;->retry_flag_:I

    sget v0, Lcom/msc/seclib/proxy/ProxyLibJNI;->retry_flag_:I

    goto :goto_0
.end method


# virtual methods
.method public native getProxyConfig()Lcom/msc/seclib/proxy/ProxyConfig;
.end method

.method public native getProxyStatus()I
.end method

.method public native getProxyVersion()Ljava/lang/String;
.end method

.method public native networkChanged(C)V
.end method

.method public startProxy(Lcom/msc/seclib/proxy/ProxyConfig;Lcom/msc/seclib/proxy/a;)I
    .locals 1

    sput-object p2, Lcom/msc/seclib/proxy/ProxyLibJNI;->callback_:Lcom/msc/seclib/proxy/a;

    invoke-virtual {p0, p1}, Lcom/msc/seclib/proxy/ProxyLibJNI;->startProxy_i(Lcom/msc/seclib/proxy/ProxyConfig;)I

    move-result v0

    return v0
.end method

.method public native startProxy_i(Lcom/msc/seclib/proxy/ProxyConfig;)I
.end method

.method public native stopProxy()V
.end method
