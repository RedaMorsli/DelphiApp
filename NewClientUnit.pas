unit NewClientUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls;

type
  TNewClientForm = class(TForm)
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

var
  NewClientForm: TNewClientForm;

implementation

{$R *.dfm}

uses DataModuleUnit;

procedure TNewClientForm.Button2Click(Sender: TObject);
begin
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

procedure TNewClientForm.FormShow(Sender: TObject);
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
end;

end.
