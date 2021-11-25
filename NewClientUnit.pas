unit NewClientUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls;

type
  TClient = class(TForm)
    Title: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    EditName: TEdit;
    EditFirstName: TEdit;
    ComboComm: TDBComboBox;
    Button1: TButton;
    Button2: TButton;
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const
  MODE_NEW = 0;
  MODE_EDIT = 1;

var
  Client: TClient;
  Mode: Integer;
  Id: Integer;

implementation

{$R *.dfm}

uses DataModuleUnit, Main;

procedure TClient.Button2Click(Sender: TObject);
begin
 case Mode of
  MODE_NEW: begin
    with DM.QueryClient do
      begin
        SQL.Clear;
        SQL.Add('INSERT INTO `client` (`N_cl`, `Nom_cl`, `Pre_cl`, `Num_srv_com`)');
        SQL.Add('VALUES (NULL, '''+EditName.Text+''', '''+EditFirstName.Text+''', '+ComboComm.Items[ComboComm.ItemIndex]+')');
        ExecSQL(true);
      end;
    with DM.DSClient do begin
      MergeChangeLog;
      ApplyUpdates(-1);
      Refresh;
    end;
  end;
  MODE_EDIT: begin
    with DM.QueryClient do
      begin
        SQL.Clear;
        SQL.Add('UPDATE `client` SET Nom_cl = '''+EditName.Text+''', Pre_cl = '''+EditFirstName.Text+''', Num_srv_com = '+ComboComm.Items[ComboComm.ItemIndex]+'');
        SQL.Add('WHERE N_cl = ' + MainForm.DBGrid.Fields[0].AsString + '');
        ExecSQL(true);
      end;
    with DM.DSClient do begin
      MergeChangeLog;
      ApplyUpdates(-1);
      Refresh;
    end;
  end;
 end;

end;

procedure TClient.FormShow(Sender: TObject);
begin
  EditName.Clear;
  EditFirstName.Clear;
  with DM.DSComm1 do begin
    open;
    while not EOF do
    begin
      ComboComm.items.add(FieldByName('N_srv').AsString);
      next;
    end;
  end;
  ComboComm.ItemIndex := 0;
  if Mode = MODE_EDIT then begin
    EditName.Text := MainForm.DBGrid.Fields[1].AsString;
    EditFirstName.Text := MainForm.DBGrid.Fields[2].AsString;
    ComboComm.ItemIndex := ComboComm.Items.IndexOf(MainForm.DBGrid.Fields[3].AsString);
  end;

end;

end.
