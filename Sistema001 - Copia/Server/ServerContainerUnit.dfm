object ServerContainer: TServerContainer
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 384
  Width = 490
  object DSServer: TDSServer
    Left = 56
    Top = 11
  end
  object DSTCPServerTransport: TDSTCPServerTransport
    Port = 8211
    PoolSize = 0
    Server = DSServer
    Filters = <>
    AuthenticationManager = CMAuthManager
    Left = 56
    Top = 73
  end
  object DSServerClassGen: TDSServerClass
    OnGetClass = DSServerClassGenGetClass
    Server = DSServer
    Left = 56
    Top = 147
  end
  object CMHTTPService: TDSHTTPService
    HttpPort = 8089
    Server = DSServer
    DSPort = 0
    Filters = <>
    SessionTimeout = 0
    Left = 48
    Top = 255
  end
  object CMAuthManager: TDSAuthenticationManager
    OnUserAuthorize = CMAuthManagerUserAuthorize
    Roles = <>
    Left = 144
    Top = 256
  end
end
