.class public Lcom/msc/seclib/proxy/ProxyConfig;
.super Ljava/lang/Object;


# instance fields
.field bindport_instance:C

.field loglevel:C

.field logpath:Ljava/lang/String;

.field network_type:C


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBindport_app()C
    .locals 1

    iget-char v0, p0, Lcom/msc/seclib/proxy/ProxyConfig;->bindport_instance:C

    return v0
.end method

.method public getLoglevel()C
    .locals 1

    iget-char v0, p0, Lcom/msc/seclib/proxy/ProxyConfig;->loglevel:C

    return v0
.end method

.method public getLogpath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/msc/seclib/proxy/ProxyConfig;->logpath:Ljava/lang/String;

    return-object v0
.end method

.method public getNetwork_type()C
    .locals 1

    iget-char v0, p0, Lcom/msc/seclib/proxy/ProxyConfig;->network_type:C

    return v0
.end method

.method public setBindport_app(C)V
    .locals 0

    iput-char p1, p0, Lcom/msc/seclib/proxy/ProxyConfig;->bindport_instance:C

    return-void
.end method

.method public setLoglevel(C)V
    .locals 0

    iput-char p1, p0, Lcom/msc/seclib/proxy/ProxyConfig;->loglevel:C

    return-void
.end method

.method public setLogpath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/msc/seclib/proxy/ProxyConfig;->logpath:Ljava/lang/String;

    return-void
.end method

.method public setNetwork_type(C)V
    .locals 0

    iput-char p1, p0, Lcom/msc/seclib/proxy/ProxyConfig;->network_type:C

    return-void
.end method
