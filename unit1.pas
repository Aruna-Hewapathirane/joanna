unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Grids;

type

  { TForm1 }

  TForm1 = class(TForm)
    StringGrid1: TStringGrid;
    procedure FormCreate(Sender: TObject);
    procedure StringGrid1HeaderClick(Sender: TObject; IsColumn: Boolean;
      Index: Integer);
  private
    FSortAscending:Boolean;
  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  // Set grid options
  StringGrid1.RowCount := 102;  // Total rows (including header row)
  StringGrid1.ColCount := 4;    // 4 columns: Row (Number), Name, Location, Flag


  // Populate grid with data and row count
  for i := 1 to 100 do
  begin
    StringGrid1.Cells[0, i] := IntToStr(i);  // First column: Row number
  end;




  // Set column widths
  StringGrid1.ColWidths[0] := 50;  // Row (Number) column width
  StringGrid1.ColWidths[1] := 150; // Name column width
  StringGrid1.ColWidths[2] := 250; // Location column width
  StringGrid1.ColWidths[3] := 50;  // Flag column width

  // Set headers
  StringGrid1.Cells[0, 0] := 'Row';
  StringGrid1.Cells[1, 0] := 'Name';
  StringGrid1.Cells[2, 0] := 'Location';
  StringGrid1.Cells[3, 0] := 'Flag';

  // Populate grid with data and row count
  for i := 1 to 100 do
  begin
    StringGrid1.Cells[0, i] := IntToStr(i);  // First column: Row number
  end;

  // Manually add data for all rows
  StringGrid1.Cells[1, 1] := 'adhoc'; StringGrid1.Cells[2, 1] := ''; StringGrid1.Cells[3, 1] := '';
  StringGrid1.Cells[1, 2] := 'antranigv'; StringGrid1.Cells[2, 2] := 'Armenia'; StringGrid1.Cells[3, 2] := '🇦🇲';
  StringGrid1.Cells[1, 3] := 'artmdl'; StringGrid1.Cells[2, 3] := 'British Columbia, Canada'; StringGrid1.Cells[3, 3] := '🇨🇦';
  StringGrid1.Cells[1, 4] := 'aruna'; StringGrid1.Cells[2, 4] := 'Ontario, Canada'; StringGrid1.Cells[3, 4] := '🇨🇦';
  StringGrid1.Cells[1, 5] := 'bbrtj'; StringGrid1.Cells[2, 5] := 'Warsaw, Mazovia, Poland'; StringGrid1.Cells[3, 5] := '🇵🇱';
  StringGrid1.Cells[1, 6] := 'beastie'; StringGrid1.Cells[2, 6] := 'Luis'; StringGrid1.Cells[3, 6] := '';
  StringGrid1.Cells[1, 7] := 'bedah'; StringGrid1.Cells[2, 7] := ''; StringGrid1.Cells[3, 7] := '';
  StringGrid1.Cells[1, 8] := 'Bogen85'; StringGrid1.Cells[2, 8] := ''; StringGrid1.Cells[3, 8] := '';
  StringGrid1.Cells[1, 9] := 'bput'; StringGrid1.Cells[2, 9] := ''; StringGrid1.Cells[3, 9] := '';
  StringGrid1.Cells[1, 10] := 'cdbc'; StringGrid1.Cells[2, 10] := 'Denmark'; StringGrid1.Cells[3, 10] := '🇩🇰';
  StringGrid1.Cells[1, 11] := 'Chain|Q'; StringGrid1.Cells[2, 11] := 'Germany'; StringGrid1.Cells[3, 11] := '🇩🇪';
  StringGrid1.Cells[1, 12] := 'chiselfuse'; StringGrid1.Cells[2, 12] := ''; StringGrid1.Cells[3, 12] := '';
  StringGrid1.Cells[1, 13] := 'comrad'; StringGrid1.Cells[2, 13] := 'Germany'; StringGrid1.Cells[3, 13] := '🇩🇪';
  StringGrid1.Cells[1, 14] := 'Coraxyn'; StringGrid1.Cells[2, 14] := 'Ontario, Canada'; StringGrid1.Cells[3, 14] := '🇨🇦';
  StringGrid1.Cells[1, 15] := 'cp-'; StringGrid1.Cells[2, 15] := 'Japan'; StringGrid1.Cells[3, 15] := '🇯🇵';
  StringGrid1.Cells[1, 16] := 'd3x0r'; StringGrid1.Cells[2, 16] := ''; StringGrid1.Cells[3, 16] := '';
  StringGrid1.Cells[1, 17] := 'ducasse'; StringGrid1.Cells[2, 17] := ''; StringGrid1.Cells[3, 17] := '';
  StringGrid1.Cells[1, 18] := 'EdFletcher'; StringGrid1.Cells[2, 18] := 'Ed Fletcher, Sector T137'; StringGrid1.Cells[3, 18] := '';
  StringGrid1.Cells[1, 19] := 'elmar69'; StringGrid1.Cells[2, 19] := 'Germany'; StringGrid1.Cells[3, 19] := '🇩🇪';
  StringGrid1.Cells[1, 20] := 'eloy'; StringGrid1.Cells[2, 20] := 'Eloy Degen'; StringGrid1.Cells[3, 20] := '';
  StringGrid1.Cells[1, 21] := 'Ericounet'; StringGrid1.Cells[2, 21] := 'France'; StringGrid1.Cells[3, 21] := '🇫🇷';
  StringGrid1.Cells[1, 22] := 'Exp_in_Low_O'; StringGrid1.Cells[2, 22] := ''; StringGrid1.Cells[3, 22] := '';
  StringGrid1.Cells[1, 23] := 'fifr'; StringGrid1.Cells[2, 23] := ''; StringGrid1.Cells[3, 23] := '';
  StringGrid1.Cells[1, 24] := 'fpk'; StringGrid1.Cells[2, 24] := ''; StringGrid1.Cells[3, 24] := '';
  StringGrid1.Cells[1, 25] := 'genera'; StringGrid1.Cells[2, 25] := ''; StringGrid1.Cells[3, 25] := '';
  StringGrid1.Cells[1, 26] := 'gerard42'; StringGrid1.Cells[2, 26] := ''; StringGrid1.Cells[3, 26] := '';
  StringGrid1.Cells[1, 27] := 'Giantm'; StringGrid1.Cells[2, 27] := 'Netherlands'; StringGrid1.Cells[3, 27] := '🇳🇱';
  StringGrid1.Cells[1, 28] := 'Ginoooo'; StringGrid1.Cells[2, 28] := 'Italy'; StringGrid1.Cells[3, 28] := '🇮🇹';
  StringGrid1.Cells[1, 29] := 'GPF_PRO'; StringGrid1.Cells[2, 29] := ''; StringGrid1.Cells[3, 29] := '';
  StringGrid1.Cells[1, 30] := 'GreaseMonkey'; StringGrid1.Cells[2, 30] := ''; StringGrid1.Cells[3, 30] := '';
  StringGrid1.Cells[1, 31] := 'henesy'; StringGrid1.Cells[2, 31] := 'Amsterdam, Netherlands'; StringGrid1.Cells[3, 31] := '🇳🇱';
  StringGrid1.Cells[1, 32] := 'hinst'; StringGrid1.Cells[2, 32] := 'Leipzig, Saxony, Germany'; StringGrid1.Cells[3, 32] := '🇩🇪';
  StringGrid1.Cells[1, 33] := 'HyperKoos'; StringGrid1.Cells[2, 33] := ''; StringGrid1.Cells[3, 33] := '';
  StringGrid1.Cells[1, 34] := 'Inky'; StringGrid1.Cells[2, 34] := 'Armenia'; StringGrid1.Cells[3, 34] := '🇦🇲';
  StringGrid1.Cells[1, 35] := 'iz'; StringGrid1.Cells[2, 35] := ''; StringGrid1.Cells[3, 35] := '';
  StringGrid1.Cells[1, 36] := 'Jesusrmx'; StringGrid1.Cells[2, 36] := 'Mexico'; StringGrid1.Cells[3, 36] := '🇲🇽';
  StringGrid1.Cells[1, 37] := 'JimBuntu'; StringGrid1.Cells[2, 37] := 'United States'; StringGrid1.Cells[3, 37] := '🇺🇸';
  StringGrid1.Cells[1, 38] := 'jns'; StringGrid1.Cells[2, 38] := 'United States'; StringGrid1.Cells[3, 38] := '🇺🇸';
  StringGrid1.Cells[1, 39] := 'Joanna'; StringGrid1.Cells[2, 39] := ''; StringGrid1.Cells[3, 39] := '';
  StringGrid1.Cells[1, 40] := 'Jonax'; StringGrid1.Cells[2, 40] := ''; StringGrid1.Cells[3, 40] := '';
  StringGrid1.Cells[1, 41] := 'Otilsen70'; StringGrid1.Cells[2, 41] := ''; StringGrid1.Cells[3, 41] := '';
  StringGrid1.Cells[1, 42] := 'julienxx'; StringGrid1.Cells[2, 42] := 'Falkenstein, Saxony, Germany'; StringGrid1.Cells[3, 42] := '🇩🇪';
  StringGrid1.Cells[1, 43] := 'key-real'; StringGrid1.Cells[2, 43] := 'Germany'; StringGrid1.Cells[3, 43] := '🇩🇪';
  StringGrid1.Cells[1, 44] := 'klys'; StringGrid1.Cells[2, 44] := ''; StringGrid1.Cells[3, 44] := '';
  StringGrid1.Cells[1, 45] := 'koo5'; StringGrid1.Cells[2, 45] := 'Düsseldorf, North Rhine-Westphalia, Germany'; StringGrid1.Cells[3, 45] := '🇩🇪';
  StringGrid1.Cells[1, 46] := 'KOTP'; StringGrid1.Cells[2, 46] := 'Amsterdam, North Holland, Netherlands'; StringGrid1.Cells[3, 46] := '🇳🇱';
  StringGrid1.Cells[1, 47] := 'larr0t'; StringGrid1.Cells[2, 47] := ''; StringGrid1.Cells[3, 47] := '';
  StringGrid1.Cells[1, 48] := 'lotuspsychje'; StringGrid1.Cells[2, 48] := 'Belgium'; StringGrid1.Cells[3, 48] := '🇧🇪';
  StringGrid1.Cells[1, 49] := 'luca0N'; StringGrid1.Cells[2, 49] := ''; StringGrid1.Cells[3, 49] := '';
  StringGrid1.Cells[1, 50] := 'ludo'; StringGrid1.Cells[2, 50] := 'South Africa'; StringGrid1.Cells[3, 50] := '🇿🇦';
  StringGrid1.Cells[1, 51] := 'M-M_'; StringGrid1.Cells[2, 51] := ''; StringGrid1.Cells[3, 51] := '';
  StringGrid1.Cells[1, 52] := 'ManuelSantana'; StringGrid1.Cells[2, 52] := ''; StringGrid1.Cells[3, 52] := '';
  StringGrid1.Cells[1, 53] := 'Mintle'; StringGrid1.Cells[2, 53] := '[ Mintle the brony]'; StringGrid1.Cells[3, 53] := '';
  StringGrid1.Cells[1, 54] := 'Moody'; StringGrid1.Cells[2, 54] := '[ (~thomas@linuxfromscratch/editor/Moody): ThomasT]'; StringGrid1.Cells[3, 54] := '';
  StringGrid1.Cells[1, 55] := 'myrkraverk'; StringGrid1.Cells[2, 55] := 'Iceland & Philippines: '; StringGrid1.Cells[3, 55] := '🇮🇸 🇵🇭';
  StringGrid1.Cells[1, 56] := 'nedko'; StringGrid1.Cells[2, 56] := '[ Nedko Arnaudov (LZ1ERT)]'; StringGrid1.Cells[3, 56] := '🇧🇬';
  StringGrid1.Cells[1, 57] := 'neoncortex'; StringGrid1.Cells[2, 57] := ''; StringGrid1.Cells[3, 57] := '';
  StringGrid1.Cells[1, 58] := 'nickysn'; StringGrid1.Cells[2, 58] := 'Sofia, Bulgaria'; StringGrid1.Cells[3, 58] := '🇧🇬';
  StringGrid1.Cells[1, 59] := 'nielsAD'; StringGrid1.Cells[2, 59] := ''; StringGrid1.Cells[3, 59] := '';
  StringGrid1.Cells[1, 60] := 'nil78'; StringGrid1.Cells[2, 60] := 'Shanghai, China'; StringGrid1.Cells[3, 60] := '🇨🇳';
  StringGrid1.Cells[1, 61] := 'NiunioMartinez'; StringGrid1.Cells[2, 61] := ''; StringGrid1.Cells[3, 61] := '';
  StringGrid1.Cells[1, 62] := 'nmz'; StringGrid1.Cells[2, 62] := 'Ostend, Flanders, Belgium'; StringGrid1.Cells[3, 62] := '🇧🇪';
  StringGrid1.Cells[1, 63] := 'otisolsen70'; StringGrid1.Cells[2, 63] := ''; StringGrid1.Cells[3, 63] := '';
  StringGrid1.Cells[1, 64] := 'pabs3'; StringGrid1.Cells[2, 64] := '[ Paul Wise https://bonedaddy.net/pabs3/]'; StringGrid1.Cells[3, 64] := '';
  StringGrid1.Cells[1, 65] := 'paule32'; StringGrid1.Cells[2, 65] := 'Germany'; StringGrid1.Cells[3, 65] := '🇩🇪';
  StringGrid1.Cells[1, 66] := 'paweld'; StringGrid1.Cells[2, 66] := 'Poland'; StringGrid1.Cells[3, 66] := '🇵🇱';
  StringGrid1.Cells[1, 67] := 'pinaraf'; StringGrid1.Cells[2, 67] := 'Le Quesnoy, Hauts-de-France, France'; StringGrid1.Cells[3, 67] := '🇫🇷';
  StringGrid1.Cells[1, 68] := 'pmobot'; StringGrid1.Cells[2, 68] := 'Zürich, Zurich, Switzerland'; StringGrid1.Cells[3, 68] := '';
  StringGrid1.Cells[1, 69] := 'praetor'; StringGrid1.Cells[2, 69] := 'Seattle, Washington, United States'; StringGrid1.Cells[3, 69] := '🇺🇸';
  StringGrid1.Cells[1, 70] := 'prg'; StringGrid1.Cells[2, 70] := 'Piscataway, New Jersey, United States'; StringGrid1.Cells[3, 70] := '🇺🇸';
  StringGrid1.Cells[1, 71] := 'psydroid'; StringGrid1.Cells[2, 71] := ''; StringGrid1.Cells[3, 71] := '';
  StringGrid1.Cells[1, 72] := 'pvalenta'; StringGrid1.Cells[2, 72] := 'Petr Valenta'; StringGrid1.Cells[3, 72] := '';
  StringGrid1.Cells[1, 73] := 'raj'; StringGrid1.Cells[2, 73] := ''; StringGrid1.Cells[3, 73] := '';
  StringGrid1.Cells[1, 74] := 'redrambles'; StringGrid1.Cells[2, 74] := 'Los Angeles, California, United States'; StringGrid1.Cells[3, 74] := '🇺🇸';
  StringGrid1.Cells[1, 75] := 'RobertLM78'; StringGrid1.Cells[2, 75] := ''; StringGrid1.Cells[3, 75] := '';
  StringGrid1.Cells[1, 76] := 'Roey'; StringGrid1.Cells[2, 76] := ''; StringGrid1.Cells[3, 76] := '';
  StringGrid1.Cells[1, 77] := 'rosseaux'; StringGrid1.Cells[2, 77] := ''; StringGrid1.Cells[3, 77] := '';
  StringGrid1.Cells[1, 78] := 'rosseaux'; StringGrid1.Cells[2, 78] := 'Falkenstein, Saxony, Germany'; StringGrid1.Cells[3, 78] := '🇩🇪';
  StringGrid1.Cells[1, 79] := 'rushfan'; StringGrid1.Cells[2, 79] := 'Rob, Los Angeles, California, United States'; StringGrid1.Cells[3, 79] := '🇺🇸';
  StringGrid1.Cells[1, 80] := 'Scoops'; StringGrid1.Cells[2, 80] := ''; StringGrid1.Cells[3, 80] := '';
  StringGrid1.Cells[1, 81] := 'sebulba'; StringGrid1.Cells[2, 81] := 'Belgium'; StringGrid1.Cells[3, 81] := '🇧🇪';
  StringGrid1.Cells[1, 82] := 'sgh'; StringGrid1.Cells[2, 82] := ''; StringGrid1.Cells[3, 82] := '';
  StringGrid1.Cells[1, 83] := 'T0tr0X'; StringGrid1.Cells[2, 83] := ''; StringGrid1.Cells[3, 83] := '';
  StringGrid1.Cells[1, 84] := 't0xicity'; StringGrid1.Cells[2, 84] := ''; StringGrid1.Cells[3, 84] := '';
  StringGrid1.Cells[1, 85] := 'tb12'; StringGrid1.Cells[2, 85] := ''; StringGrid1.Cells[3, 85] := '';
  StringGrid1.Cells[1, 86] := 'toby'; StringGrid1.Cells[2, 86] := ''; StringGrid1.Cells[3, 86] := '';
  StringGrid1.Cells[1, 87] := 'tomdef'; StringGrid1.Cells[2, 87] := ''; StringGrid1.Cells[3, 87] := '';
  StringGrid1.Cells[1, 88] := 'typhoon'; StringGrid1.Cells[2, 88] := ''; StringGrid1.Cells[3, 88] := '';
  StringGrid1.Cells[1, 89] := 'Vus'; StringGrid1.Cells[2, 89] := ''; StringGrid1.Cells[3, 89] := '';
  StringGrid1.Cells[1, 90] := 'werther'; StringGrid1.Cells[2, 90] := ''; StringGrid1.Cells[3, 90] := '';
  StringGrid1.Cells[1, 91] := 'willmatrix'; StringGrid1.Cells[2, 91] := ''; StringGrid1.Cells[3, 91] := '';
  StringGrid1.Cells[1, 92] := 'Wolfox'; StringGrid1.Cells[2, 92] := ''; StringGrid1.Cells[3, 92] := '';
  StringGrid1.Cells[1, 93] := 'Xemiru'; StringGrid1.Cells[2, 93] := 'Germany'; StringGrid1.Cells[3, 93] := '🇩🇪';
  StringGrid1.Cells[1, 94] := 'Xenzh'; StringGrid1.Cells[2, 94] := 'Germany'; StringGrid1.Cells[3, 94] := '🇩🇪';
  StringGrid1.Cells[1, 95] := 'Yassir'; StringGrid1.Cells[2, 95] := 'Birmingham, England, United Kingdom'; StringGrid1.Cells[3, 95] := '🇬🇧';
  StringGrid1.Cells[1, 96] := 'Zaher'; StringGrid1.Cells[2, 96] := 'Syria'; StringGrid1.Cells[3, 96] := '🇸🇾';
  StringGrid1.Cells[1, 97] := 'Zeck'; StringGrid1.Cells[2, 97] := ''; StringGrid1.Cells[3, 97] := '';
  StringGrid1.Cells[1, 98] := 'zero'; StringGrid1.Cells[2, 98] := 'France'; StringGrid1.Cells[3, 98] := '🇫🇷';
  StringGrid1.Cells[1, 99] := 'Zoro'; StringGrid1.Cells[2, 98] := ''; StringGrid1.Cells[3, 98] := '';
  StringGrid1.Cells[1, 100] := 'ztm'; StringGrid1.Cells[2, 100] := ''; StringGrid1.Cells[3, 100] := '';
  StringGrid1.Cells[1, 101] := 'zz'; StringGrid1.Cells[2, 101] := ''; StringGrid1.Cells[3, 101] := '';

  // Initialize sorting state
  FSortAscending:=True;
end;

procedure TForm1.StringGrid1HeaderClick(Sender: TObject; IsColumn: Boolean;
  Index: Integer);
var
  i, j: Integer;
  Temp: string;
begin
  if IsColumn then
  begin
    // Toggle sorting order when the same column header is clicked
    FSortAscending := not FSortAscending;

    // Sort the grid based on the clicked column
    for i := 1 to StringGrid1.RowCount - 1 do
    begin
      for j := i + 1 to StringGrid1.RowCount - 1 do
      begin
        // Compare values for sorting based on the clicked column
        if (FSortAscending and (CompareText(StringGrid1.Cells[Index, i], StringGrid1.Cells[Index, j]) > 0)) or
           (not FSortAscending and (CompareText(StringGrid1.Cells[Index, i], StringGrid1.Cells[Index, j]) < 0)) then
        begin
          // Swap rows if out of order
          // Swap all columns, not just the clicked one
          Temp := StringGrid1.Cells[0, i];
          StringGrid1.Cells[0, i] := StringGrid1.Cells[0, j];
          StringGrid1.Cells[0, j] := Temp;

          Temp := StringGrid1.Cells[1, i];
          StringGrid1.Cells[1, i] := StringGrid1.Cells[1, j];
          StringGrid1.Cells[1, j] := Temp;

          Temp := StringGrid1.Cells[2, i];
          StringGrid1.Cells[2, i] := StringGrid1.Cells[2, j];
          StringGrid1.Cells[2, j] := Temp;

          Temp := StringGrid1.Cells[3, i];
          StringGrid1.Cells[3, i] := StringGrid1.Cells[3, j];
          StringGrid1.Cells[3, j] := Temp;
        end;
      end;
    end;
  end;
end;


end.
