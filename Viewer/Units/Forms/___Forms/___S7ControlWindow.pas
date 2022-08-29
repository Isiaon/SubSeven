{******************************************************************************}
{                                                                              }
{         ____             _     ____          _           ____                }
{        |  _ \  __ _ _ __| | __/ ___|___   __| | ___ _ __/ ___|  ___          }
{        | | | |/ _` | '__| |/ / |   / _ \ / _` |/ _ \ '__\___ \ / __|         }
{        | |_| | (_| | |  |   <| |__| (_) | (_| |  __/ |   ___) | (__          }
{        |____/ \__,_|_|  |_|\_\\____\___/ \__,_|\___|_|  |____/ \___|         }
{                                                                              }
{                           +++++++++++++++++++++                              }
{                           +       +           +                              }
{                           +       +           +                              }
{                           +    +++++++++      +                              }
{                           +            +      +                              }
{                           +            +      +                              }
{                           +++++++      +      +                              }
{                           +            +      +                              }
{                           +            +      +                              }
{                           +++++++++++++++++++++                              }
{                                 SubSeven Legacy                              }
{                                                                              }
{                                                                              }
{                   Author: DarkCoderSc (Jean-Pierre LESUEUR)                  }
{                   https://www.twitter.com/                                   }
{                   https://github.com/darkcodersc                             }
{                   License: Apache License 2.0                                }
{                                                                              }
{                                                                              }
{  Disclaimer:                                                                 }
{  -----------                                                                 }
{    We are doing our best to prepare the content of this app and/or code.     }
{    However, The author cannot warranty the expressions and suggestions       }
{    of the contents, as well as its accuracy. In addition, to the extent      }
{    permitted by the law, author shall not be responsible for any losses      }
{    and/or damages due to the usage of the information on our app and/or      }
{    code.                                                                     }
{                                                                              }
{    By using our app and/or code, you hereby consent to our disclaimer        }
{    and agree to its terms.                                                   }
{                                                                              }
{    Any links contained in our app may lead to external sites are provided    }
{    for convenience only.                                                     }
{    Any information or statements that appeared in these sites or app or      }
{    files are not sponsored, endorsed, or otherwise approved by the author.   }
{    For these external sites, the author cannot be held liable for the        }
{    availability of, or the content located on or through it.                 }
{    Plus, any losses or damages occurred from using these contents or the     }
{    internet generally.                                                       }
{                                                                              }
{                                                                              }
{                                                                              }
{    I dedicate this work to my daughter.                                      }
{                                                                              }
{******************************************************************************}

unit ___S7ControlWindow;

interface

uses VCL.Forms, System.Classes, VCL.Controls, XSuperObject, ___S7ContextWindow,
     Sub7.Core.Protocol;

type
  TS7ControlWindow = class(TS7ContextWindow)
  protected
    FGUID : String;

    {@M}
    procedure SendCommand(const ACommand : TS7Command; AData : ISuperObject = nil);
  public
    {@M}
    procedure React(const ACommand : TS7Command; const AData : ISuperObject); virtual; abstract;
    procedure Render(const ACommand : TS7Command; const AData : ISuperObject); virtual; abstract;

    {@C}
    constructor Create(AOwner : TComponent); override;

    {@G}
    property GUID : String read FGUID;
  end;

implementation

uses System.SysUtils, uFormMain;

{-------------------------------------------------------------------------------

-------------------------------------------------------------------------------}
procedure TS7ControlWindow.SendCommand(const ACommand : TS7Command; AData : ISuperObject = nil);
begin
  if Assigned(FormMain.Session) then begin
    if not Assigned(AData) then
      AData := TSuperObject.Create();
    ///

    AData.S['form_guid'] := FGUID;

    ///
    FormMain.Session.SendCommand(ACommand, AData);
  end;
end;

{-------------------------------------------------------------------------------

-------------------------------------------------------------------------------}
constructor TS7ControlWindow.Create(AOwner : TComponent);
begin
  inherited Create(AOwner);
  ///

  FReleaseOnClose := True;
  FGUID           := TGUID.NewGuid.ToString();
end;

end.
