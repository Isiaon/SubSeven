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

unit S7SocketContexts;

interface

uses S7Socket, S7Protocol, XSuperObject;

type
  TS7MainHandlerSocket = class(TS7Socket)
  public
    {@M}
    procedure GetCommand(var ACommand : TMainHandlerCommand; var AData : ISuperObject); overload;
    procedure SendCommand(ACommand : TMainHandlerCommand; AData : ISuperObject = nil); overload;
  end;

  TS7FileManagerSocket = class(TS7Socket)
  public
    {@M}
    procedure GetCommand(var ACommand : TFileManagerCommand; var AData : ISuperObject); overload;
    procedure SendCommand(ACommand : TFileManagerCommand; AData : ISuperObject = nil); overload;
  end;

implementation


{+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


    TS7MainHandlerSocket


+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++}

procedure TS7MainHandlerSocket.GetCommand(var ACommand : TMainHandlerCommand; var AData : ISuperObject);
var AIntegerCommand : Integer;
begin
  AData := nil;
  ///

  self.GetCommand(AIntegerCommand, AData);

  ACommand := TMainHandlerCommand(AIntegerCommand);
end;

procedure TS7MainHandlerSocket.SendCommand(ACommand : TMainHandlerCommand; AData : ISuperObject = nil);
begin
  self.SendCommand(Integer(ACommand), AData);
end;

{+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


    TS7FileManagerHandlerContext


+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++}

procedure TS7FileManagerSocket.GetCommand(var ACommand : TFileManagerCommand; var AData : ISuperObject);
var AIntegerCommand : Integer;
begin
  AData := nil;
  ///

  self.GetCommand(AIntegerCommand, AData);

  ACommand := TFileManagerCommand(AIntegerCommand);
end;

procedure TS7FileManagerSocket.SendCommand(ACommand : TFileManagerCommand; AData : ISuperObject = nil);
begin
  self.SendCommand(Integer(ACommand), AData);
end;

end.
