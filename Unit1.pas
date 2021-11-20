unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,  ActiveX,  ComObj,
  Vcl.WinXCtrls, Vcl.Buttons;


type
  TForm1 = class(TForm)
    ts1: TToggleSwitch;
    ts2: TToggleSwitch;
    ts3: TToggleSwitch;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure ts1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
Procedure isFirewallOff;
var
 fwPolicy2       : OleVariant;
begin
      CoInitialize(nil);
    try
      fwPolicy2   := CreateOleObject('HNetCfg.FwPolicy2');
      if fwPolicy2.FirewallEnabled[1]=true then form1.ts1.State:=tsson;
      if fwPolicy2.FirewallEnabled[2]=true then form1.ts2.State:=tsson;
      if fwPolicy2.FirewallEnabled[4]=true then form1.ts3.State:=tsson;
    finally
      CoUninitialize;
      form1.Tag:=1;
    end;
end;

Procedure SetFirewall;
Const
  NET_FW_PROFILE2_DOMAIN  = 1;
  NET_FW_PROFILE2_PRIVATE = 2;
  NET_FW_PROFILE2_PUBLIC  = 4;
var
 fwPolicy2       : OleVariant;
begin
    try
    CoInitialize(nil);
    try
  // Create the FwPolicy2 object.
        fwPolicy2   := CreateOleObject('HNetCfg.FwPolicy2');
        fwPolicy2.FirewallEnabled[NET_FW_PROFILE2_DOMAIN]:= form1.ts1.IsOn;
        fwPolicy2.FirewallEnabled[NET_FW_PROFILE2_PRIVATE]:= form1.ts2.IsOn;
        fwPolicy2.FirewallEnabled[NET_FW_PROFILE2_PUBLIC]:= form1.ts3.IsOn;
      finally
      CoUninitialize;
    end;
 except
    on E:EOleException do
        showmessage(Format('EOleException %s %x', [E.Message,E.ErrorCode]));
    on E:Exception do
        showmessage(E.Classname+ ':'+ E.Message);
 end;
///showmessage('done');
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
isFirewallOff;
end;

procedure TForm1.ts1Click(Sender: TObject);
begin
if tag=1 then
SetFirewall;
end;

end.
