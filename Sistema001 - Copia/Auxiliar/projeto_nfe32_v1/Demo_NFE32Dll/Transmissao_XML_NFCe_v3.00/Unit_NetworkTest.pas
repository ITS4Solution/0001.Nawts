unit Unit_NetworkTest;

interface

uses
 Windows;

const
 NETWORK_ALIVE_AOL = $4;
 NETWORK_ALIVE_LAN = $1;
 NETWORK_ALIVE_WAN = $2;

 INTERNET_CONNECTION_MODEM = 1;      //Local system uses a modem to connect to the Internet
 INTERNET_CONNECTION_MODEM_BUSY = 8; //No longer used
 INTERNET_CONNECTION_LAN = 2;        //Local system uses a local area network to connect to the Internet.
 INTERNET_CONNECTION_PROXY = 4;

 function IsConnectedToInternet: Boolean;
 function IsConnectedToNetWork: Boolean;
 function IsConnectedToWWW: Boolean;

 function IsNetworkAlive(var lpdwFlags : DWORD): HResult; stdcall; external 'SENSAPI.DLL';
 function InternetGetConnectedState(lpdwFlags: LPDWORD; dwReserved: DWORD): BOOL; stdcall; external 'WININET.DLL';

implementation

function IsConnectedToInternet: Boolean;
var 
 dwConnectionTypes: Integer;
begin
 try
  dwConnectionTypes := INTERNET_CONNECTION_MODEM_BUSY + INTERNET_CONNECTION_PROXY + NETWORK_ALIVE_WAN;
  if InternetGetConnectedState(@dwConnectionTypes, 0) then
   Result := true
  else
   Result := false;
 except
  Result := false;
 end;
end;

function IsConnectedToNetWork: Boolean;
var
 dwConnectionTypes: Integer;
begin
 try
  dwConnectionTypes := INTERNET_CONNECTION_LAN;
  if InternetGetConnectedState(@dwConnectionTypes, 0) then
   Result := true
  else
   Result := false;
 except
  Result := false;
 end;
end;

function IsConnectedToWWW: Boolean;
var
 dwConnectionTypes: Integer;
begin
 try
  dwConnectionTypes := NETWORK_ALIVE_WAN;
  if InternetGetConnectedState(@dwConnectionTypes, 0) then
   Result := true
  else
   Result := false;
 except
  Result := false;
 end;
end;

end.
 