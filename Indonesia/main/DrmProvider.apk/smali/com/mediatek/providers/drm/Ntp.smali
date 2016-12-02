.class public Lcom/mediatek/providers/drm/Ntp;
.super Ljava/lang/Object;
.source "Ntp.java"


# static fields
.field private static sSentTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/mediatek/providers/drm/Ntp;->sSentTime:J

    return-void
.end method

.method public static getSentTime()J
    .locals 2

    .prologue
    .line 104
    sget-wide v0, Lcom/mediatek/providers/drm/Ntp;->sSentTime:J

    return-wide v0
.end method

.method public static sync(Ljava/lang/String;)I
    .locals 30
    .param p0, "host"    # Ljava/lang/String;

    .prologue
    .line 21
    const/16 v19, 0x2

    .line 22
    .local v19, "retry":I
    const/16 v18, 0x7b

    .line 23
    .local v18, "port":I
    const/16 v24, 0xbb8

    .line 27
    .local v24, "timeout":I
    const/4 v10, 0x0

    .line 29
    .local v10, "ipv4Addr":Ljava/net/InetAddress;
    :try_start_0
    const-string v26, "Ntp"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "get address from host: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-static/range {p0 .. p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 36
    const/16 v16, -0x1

    .line 37
    .local v16, "ntpServiceStatus":I
    const/4 v3, 0x0

    .line 38
    .local v3, "datagramSocket":Ljava/net/DatagramSocket;
    const-wide/16 v20, -0x1

    .line 39
    .local v20, "responseTime":J
    const/16 v17, 0x0

    .line 41
    .local v17, "offset":I
    :try_start_1
    const-string v26, "Ntp"

    const-string v27, "create datagram socket"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    new-instance v4, Ljava/net/DatagramSocket;

    invoke-direct {v4}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_1
    .catch Ljava/net/NoRouteToHostException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    .end local v3    # "datagramSocket":Ljava/net/DatagramSocket;
    .local v4, "datagramSocket":Ljava/net/DatagramSocket;
    :try_start_2
    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/net/DatagramSocket;->setSoTimeout(I)V
    :try_end_2
    .catch Ljava/net/NoRouteToHostException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/net/ConnectException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 46
    const/16 v25, 0x0

    .line 47
    .local v25, "tryCount":I
    :goto_0
    move/from16 v0, v25

    move/from16 v1, v19

    if-gt v0, v1, :cond_1

    const/16 v26, 0x1

    move/from16 v0, v16

    move/from16 v1, v26

    if-eq v0, v1, :cond_1

    .line 48
    add-int/lit8 v25, v25, 0x1

    .line 51
    :try_start_3
    new-instance v26, Lcom/mediatek/providers/drm/NtpMessage;

    invoke-direct/range {v26 .. v26}, Lcom/mediatek/providers/drm/NtpMessage;-><init>()V

    invoke-virtual/range {v26 .. v26}, Lcom/mediatek/providers/drm/NtpMessage;->toByteArray()[B

    move-result-object v2

    .line 52
    .local v2, "data":[B
    new-instance v14, Ljava/net/DatagramPacket;

    array-length v0, v2

    move/from16 v26, v0

    move/from16 v0, v26

    move/from16 v1, v18

    invoke-direct {v14, v2, v0, v10, v1}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 54
    .local v14, "ntpRequest":Ljava/net/DatagramPacket;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 55
    .local v22, "sentTime":J
    sput-wide v22, Lcom/mediatek/providers/drm/Ntp;->sSentTime:J

    .line 56
    invoke-virtual {v4, v14}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 57
    const-string v26, "Ntp"

    const-string v27, "sent via datagram socket"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    new-instance v15, Ljava/net/DatagramPacket;

    array-length v0, v2

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-direct {v15, v2, v0}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 62
    .local v15, "ntpResponse":Ljava/net/DatagramPacket;
    invoke-virtual {v4, v15}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    sub-long v20, v26, v22

    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    move-wide/from16 v0, v26

    long-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide v28, 0x408f400000000000L    # 1000.0

    div-double v26, v26, v28

    const-wide v28, 0x41e0754fd0000000L    # 2.2089888E9

    add-double v6, v26, v28

    .line 69
    .local v6, "destinationTimestamp":D
    new-instance v11, Lcom/mediatek/providers/drm/NtpMessage;

    invoke-virtual {v15}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v26

    move-object/from16 v0, v26

    invoke-direct {v11, v0}, Lcom/mediatek/providers/drm/NtpMessage;-><init>([B)V

    .line 70
    .local v11, "ntpMessage":Lcom/mediatek/providers/drm/NtpMessage;
    iget-wide v0, v11, Lcom/mediatek/providers/drm/NtpMessage;->mReceiveTimestamp:D

    move-wide/from16 v26, v0

    iget-wide v0, v11, Lcom/mediatek/providers/drm/NtpMessage;->mOriginateTimestamp:D

    move-wide/from16 v28, v0

    sub-double v26, v26, v28

    iget-wide v0, v11, Lcom/mediatek/providers/drm/NtpMessage;->mTransmitTimestamp:D

    move-wide/from16 v28, v0

    sub-double v28, v28, v6

    add-double v26, v26, v28

    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    div-double v12, v26, v28

    .line 73
    .local v12, "localClockOffset":D
    double-to-int v0, v12

    move/from16 v17, v0

    .line 75
    const-string v26, "Ntp"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "local clock offset: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/InterruptedIOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/net/NoRouteToHostException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/net/ConnectException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 76
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 31
    .end local v2    # "data":[B
    .end local v4    # "datagramSocket":Ljava/net/DatagramSocket;
    .end local v6    # "destinationTimestamp":D
    .end local v11    # "ntpMessage":Lcom/mediatek/providers/drm/NtpMessage;
    .end local v12    # "localClockOffset":D
    .end local v14    # "ntpRequest":Ljava/net/DatagramPacket;
    .end local v15    # "ntpResponse":Ljava/net/DatagramPacket;
    .end local v16    # "ntpServiceStatus":I
    .end local v17    # "offset":I
    .end local v20    # "responseTime":J
    .end local v22    # "sentTime":J
    .end local v25    # "tryCount":I
    :catch_0
    move-exception v8

    .line 32
    .local v8, "e1":Ljava/net/UnknownHostException;
    invoke-virtual {v8}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 33
    const v17, 0x7fffffff

    .line 100
    .end local v8    # "e1":Ljava/net/UnknownHostException;
    :cond_0
    :goto_1
    return v17

    .line 77
    .restart local v4    # "datagramSocket":Ljava/net/DatagramSocket;
    .restart local v16    # "ntpServiceStatus":I
    .restart local v17    # "offset":I
    .restart local v20    # "responseTime":J
    .restart local v25    # "tryCount":I
    :catch_1
    move-exception v9

    .line 78
    .local v9, "ex":Ljava/io/InterruptedIOException;
    :try_start_4
    const-string v26, "Ntp"

    const-string v27, "InterruptedIOException caught, set offset as 2147483647"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/net/NoRouteToHostException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/net/ConnectException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 79
    const v17, 0x7fffffff

    .line 80
    goto/16 :goto_0

    .line 95
    .end local v9    # "ex":Ljava/io/InterruptedIOException;
    :cond_1
    if-eqz v4, :cond_3

    .line 96
    invoke-virtual {v4}, Ljava/net/DatagramSocket;->close()V

    move-object v3, v4

    .end local v4    # "datagramSocket":Ljava/net/DatagramSocket;
    .restart local v3    # "datagramSocket":Ljava/net/DatagramSocket;
    goto :goto_1

    .line 82
    .end local v25    # "tryCount":I
    :catch_2
    move-exception v5

    .line 83
    .local v5, "e":Ljava/net/NoRouteToHostException;
    :goto_2
    :try_start_5
    const-string v26, "Ntp"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "No route to host exception for address: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", set offset as "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const v28, 0x7fffffff

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 84
    const v17, 0x7fffffff

    .line 95
    if-eqz v3, :cond_0

    .line 96
    invoke-virtual {v3}, Ljava/net/DatagramSocket;->close()V

    goto :goto_1

    .line 85
    .end local v5    # "e":Ljava/net/NoRouteToHostException;
    :catch_3
    move-exception v5

    .line 87
    .local v5, "e":Ljava/net/ConnectException;
    :goto_3
    :try_start_6
    invoke-virtual {v5}, Ljava/net/ConnectException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 88
    const-string v26, "Ntp"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Connection exception for address: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", set offset as "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const v28, 0x7fffffff

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 89
    const v17, 0x7fffffff

    .line 95
    if-eqz v3, :cond_0

    .line 96
    invoke-virtual {v3}, Ljava/net/DatagramSocket;->close()V

    goto :goto_1

    .line 90
    .end local v5    # "e":Ljava/net/ConnectException;
    :catch_4
    move-exception v9

    .line 91
    .local v9, "ex":Ljava/io/IOException;
    :goto_4
    :try_start_7
    invoke-virtual {v9}, Ljava/io/IOException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 92
    const-string v26, "Ntp"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "IOException while polling address: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", set offset as "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const v28, 0x7fffffff

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 93
    const v17, 0x7fffffff

    .line 95
    if-eqz v3, :cond_0

    .line 96
    invoke-virtual {v3}, Ljava/net/DatagramSocket;->close()V

    goto/16 :goto_1

    .line 95
    .end local v9    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v26

    :goto_5
    if-eqz v3, :cond_2

    .line 96
    invoke-virtual {v3}, Ljava/net/DatagramSocket;->close()V

    :cond_2
    throw v26

    .line 95
    .end local v3    # "datagramSocket":Ljava/net/DatagramSocket;
    .restart local v4    # "datagramSocket":Ljava/net/DatagramSocket;
    :catchall_1
    move-exception v26

    move-object v3, v4

    .end local v4    # "datagramSocket":Ljava/net/DatagramSocket;
    .restart local v3    # "datagramSocket":Ljava/net/DatagramSocket;
    goto :goto_5

    .line 90
    .end local v3    # "datagramSocket":Ljava/net/DatagramSocket;
    .restart local v4    # "datagramSocket":Ljava/net/DatagramSocket;
    :catch_5
    move-exception v9

    move-object v3, v4

    .end local v4    # "datagramSocket":Ljava/net/DatagramSocket;
    .restart local v3    # "datagramSocket":Ljava/net/DatagramSocket;
    goto :goto_4

    .line 85
    .end local v3    # "datagramSocket":Ljava/net/DatagramSocket;
    .restart local v4    # "datagramSocket":Ljava/net/DatagramSocket;
    :catch_6
    move-exception v5

    move-object v3, v4

    .end local v4    # "datagramSocket":Ljava/net/DatagramSocket;
    .restart local v3    # "datagramSocket":Ljava/net/DatagramSocket;
    goto :goto_3

    .line 82
    .end local v3    # "datagramSocket":Ljava/net/DatagramSocket;
    .restart local v4    # "datagramSocket":Ljava/net/DatagramSocket;
    :catch_7
    move-exception v5

    move-object v3, v4

    .end local v4    # "datagramSocket":Ljava/net/DatagramSocket;
    .restart local v3    # "datagramSocket":Ljava/net/DatagramSocket;
    goto/16 :goto_2

    .end local v3    # "datagramSocket":Ljava/net/DatagramSocket;
    .restart local v4    # "datagramSocket":Ljava/net/DatagramSocket;
    .restart local v25    # "tryCount":I
    :cond_3
    move-object v3, v4

    .end local v4    # "datagramSocket":Ljava/net/DatagramSocket;
    .restart local v3    # "datagramSocket":Ljava/net/DatagramSocket;
    goto/16 :goto_1
.end method
