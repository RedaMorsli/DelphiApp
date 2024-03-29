unit DisplayPvUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage;

type
  TDisplayPvForm = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Image1: TImage;
    Panel2: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    Panel3: TPanel;
    Date: TLabel;
    Ref: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    Label10: TLabel;
    Panel6: TPanel;
    Label11: TLabel;
    Panel7: TPanel;
    Label12: TLabel;
    Panel8: TPanel;
    Label13: TLabel;
    Panel9: TPanel;
    Adr: TLabel;
    Panel10: TPanel;
    Mail: TLabel;
    Panel11: TPanel;
    Phone: TLabel;
    Panel12: TPanel;
    Fax: TLabel;
    Panel13: TPanel;
    Panel15: TPanel;
    Label19: TLabel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    Travail: TLabel;
    Panel14: TPanel;
    Panel17: TPanel;
    Label21: TLabel;
    Panel16: TPanel;
    Label20: TLabel;
    Panel18: TPanel;
    Label22: TLabel;
    Panel19: TPanel;
    Label23: TLabel;
    Panel20: TPanel;
    Label24: TLabel;
    Panel21: TPanel;
    Label25: TLabel;
    Panel22: TPanel;
    Marque: TLabel;
    Panel23: TPanel;
    Serie: TLabel;
    Panel24: TPanel;
    Qnt: TLabel;
    Obs: TLabel;
    Panel25: TPanel;
    Panel26: TPanel;
    Label30: TLabel;
    Panel27: TPanel;
    Label31: TLabel;
    Panel28: TPanel;
    Label32: TLabel;
    Panel29: TPanel;
    Panel30: TPanel;
    Panel31: TPanel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DisplayPvForm: TDisplayPvForm;

implementation

{$R *.dfm}

uses Main;

procedure TDisplayPvForm.FormShow(Sender: TObject);
begin
  with MainForm.DBGrid do begin
    Ref.Caption := 'R�f�rence courrier: ' + Fields[1].AsString;
    Date.Caption := 'Date de r�alisation: ' + Fields[2].AsString;
    Adr.Caption := 'Personne � contacter: ' + Fields[3].AsString;
    Phone.Caption := 'T�l�phone / Mobile : ' + Fields[4].AsString;
    Mail.Caption := 'Email: ' + Fields[5].AsString;
    Fax.Caption := 'Fax : ' + Fields[6].AsString;
    Travail.Caption := 'Travail effectu�: ' + Fields[8].AsString;
    Marque.Caption := Fields[9].AsString;
    Serie.Caption := Fields[10].AsString;
    Qnt.Caption := Fields[11].AsString;
    Obs.Caption := 'Observation: ' + Fields[12].AsString;
  end;
end;

end.
