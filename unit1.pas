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
    procedure StringGrid11HeaderClick(Sender: TObject; IsColumn: Boolean;
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
  StringGrid1.RowCount := 127;  // Total rows (including header row)
  StringGrid1.ColCount := 4;    // 4 columns: Row (Number), Name, Location, Flag


  // Populate grid with data and row count
  for i := 1 to 126 do // <MUST BE STRINGRID ROWCOUNT LESS 1
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
  for i := 1 to 126 do  // MUST BE STRINGRID ROWCOUNT LESS 1
  begin
    StringGrid1.Cells[0, i] := IntToStr(i);  // First column: Row number
  end;

  // Manually add data for all rows

  StringGrid1.Cells[1, 1] := 'adhoc';      StringGrid1.Cells[2, 1] := 'Australia';                           StringGrid1.Cells[3, 1] := '🇦🇺';
  StringGrid1.Cells[1, 2] := 'antranigv';  StringGrid1.Cells[2, 2] := 'Armenia';                            StringGrid1.Cells[3, 2] := '🇦🇲';
  StringGrid1.Cells[1, 3] := 'arahael';    StringGrid1.Cells[2, 3] := 'Australia';                          StringGrid1.Cells[3, 3] := '🇦🇺';
  StringGrid1.Cells[1, 4] := 'artmdl';     StringGrid1.Cells[2, 4] := 'BC, Canada';                         StringGrid1.Cells[3, 4] := '🇨🇦';
  StringGrid1.Cells[1, 5] := 'aruna';      StringGrid1.Cells[2, 5] := 'ON, Canada';                         StringGrid1.Cells[3, 5] := '🇨🇦';
  StringGrid1.Cells[1, 6] := '[Batch]';    StringGrid1.Cells[2, 6] := 'United Kingdom';                     StringGrid1.Cells[3, 6] := '🇬🇧';
  StringGrid1.Cells[1, 7] := 'bbrtj';      StringGrid1.Cells[2, 7] := 'Warsaw, Mazovia, Poland';            StringGrid1.Cells[3, 7] := '🇵🇱';
  StringGrid1.Cells[1, 8] := 'beastie';    StringGrid1.Cells[2, 8] := '';                                   StringGrid1.Cells[3, 8] := '';
  StringGrid1.Cells[1, 9] := 'bedah';      StringGrid1.Cells[2, 9] := 'Syria';                              StringGrid1.Cells[3, 9] := '🇸🇾';
  StringGrid1.Cells[1,10] := 'Bogen85';    StringGrid1.Cells[2,10] := 'United States';                      StringGrid1.Cells[3,10] := '🇺🇸';
  StringGrid1.Cells[1,11] := 'bput';       StringGrid1.Cells[2,11] := '';                                   StringGrid1.Cells[3,11] := '';
  StringGrid1.Cells[1,12] := 'cdbc';       StringGrid1.Cells[2,12] := 'Denmark';                            StringGrid1.Cells[3,12] := '🇩🇰';
  StringGrid1.Cells[1,13] := 'Chain|Q';    StringGrid1.Cells[2,13] := 'Germany';                            StringGrid1.Cells[3,13] := '🇩🇪';
  StringGrid1.Cells[1,14] := 'chiselfuse'; StringGrid1.Cells[2,14] := '';                                   StringGrid1.Cells[3,14] := '';
  StringGrid1.Cells[1,15] := 'coldzer0';   StringGrid1.Cells[2,15] := 'Egypt';                              StringGrid1.Cells[3,15] := '🇪🇬';
  StringGrid1.Cells[1,16] := 'comrad';     StringGrid1.Cells[2,16] := 'Germany';                            StringGrid1.Cells[3,16] := '🇩🇪';
  StringGrid1.Cells[1,17] := 'Coraxyn';    StringGrid1.Cells[2,17] := 'ON, Canada';                         StringGrid1.Cells[3,17] := '🇨🇦';
  StringGrid1.Cells[1,18] := 'cp-';        StringGrid1.Cells[2,18] := 'Japan';                              StringGrid1.Cells[3,18] := '🇯🇵';
  StringGrid1.Cells[1,19] := 'd3x0r';      StringGrid1.Cells[2,19] := '';                                   StringGrid1.Cells[3,19] := '';
  StringGrid1.Cells[1,20] := 'ducasse';    StringGrid1.Cells[2,20] := '';                                   StringGrid1.Cells[3,20] := '';
  StringGrid1.Cells[1,21] := 'EdFletcher'; StringGrid1.Cells[2,21] := '';                                   StringGrid1.Cells[3,21] := '';
  StringGrid1.Cells[1,22] := 'elmar69';    StringGrid1.Cells[2,22] := 'Germany';                            StringGrid1.Cells[3,22] := '🇩🇪';
  StringGrid1.Cells[1,23] := 'eloy';       StringGrid1.Cells[2,23] := '';                                   StringGrid1.Cells[3,23] := '';
  StringGrid1.Cells[1,24] := 'Ericounet';  StringGrid1.Cells[2,24] := 'France';                             StringGrid1.Cells[3,24] := '🇫🇷';
  StringGrid1.Cells[1,25] := 'Exp_in_Low_O'; StringGrid1.Cells[2,25] := '';                                 StringGrid1.Cells[3,25] := '';
  StringGrid1.Cells[1,26] := 'fifr';       StringGrid1.Cells[2,26] := '';                                   StringGrid1.Cells[3,26] := '';
  StringGrid1.Cells[1,27] := 'fpcfan';     StringGrid1.Cells[2,27] := 'Netherlands';                        StringGrid1.Cells[3,27] := '🇳🇱';
  StringGrid1.Cells[1,28] := 'fpk';        StringGrid1.Cells[2,28] := '';                                   StringGrid1.Cells[3,28] := '';
  StringGrid1.Cells[1,29] := 'genera';     StringGrid1.Cells[2,29] := '';                                   StringGrid1.Cells[3,29] := '';
  StringGrid1.Cells[1,30] := 'gerard42';   StringGrid1.Cells[2,30] := '';                                   StringGrid1.Cells[3,30] := '';
  StringGrid1.Cells[1,31] := 'giantm';     StringGrid1.Cells[2,31] := 'Netherlands';                        StringGrid1.Cells[3,31] := '🇳🇱';
  StringGrid1.Cells[1,32] := 'Ginoooo';    StringGrid1.Cells[2,32] := 'Italy';                              StringGrid1.Cells[3,32] := '🇮🇹';
  StringGrid1.Cells[1,33] := 'GPF_PRO';    StringGrid1.Cells[2,33] := 'United States';                      StringGrid1.Cells[3,33] := '🇺🇸';
  StringGrid1.Cells[1,34] := 'GreaseMonkey'; StringGrid1.Cells[2,34] := '';                                 StringGrid1.Cells[3,34] := '';
  StringGrid1.Cells[1,35] := 'Handoko';    StringGrid1.Cells[2,35] := 'Indonesia';                          StringGrid1.Cells[3,35] := '🇮🇩';
  StringGrid1.Cells[1,36] := 'henesy';     StringGrid1.Cells[2,36] := 'Amsterdam, Netherland';              StringGrid1.Cells[3,36] := '🇳🇱';
  StringGrid1.Cells[1,37] := 'hinst';      StringGrid1.Cells[2,37] := 'Leipzig, Saxony, Germany';           StringGrid1.Cells[3,37] := '🇩🇪';
  StringGrid1.Cells[1,38] := 'HyperKoos';  StringGrid1.Cells[2,38] := 'South Africa';                       StringGrid1.Cells[3,38] := '🇿🇦';
  StringGrid1.Cells[1,39] := 'inky';       StringGrid1.Cells[2,39] := 'Armenia';                            StringGrid1.Cells[3,39] := '🇦🇲';

  StringGrid1.Cells[1,40] := 'iz';            StringGrid1.Cells[2,40] := '';                                     StringGrid1.Cells[3,40] := '';
  StringGrid1.Cells[1,41] := 'Jesusrmx';      StringGrid1.Cells[2,41] := 'Mexico';                               StringGrid1.Cells[3,41] := '🇲🇽';
  StringGrid1.Cells[1,42] := 'JimBuntu';      StringGrid1.Cells[2,42] := 'United States';                        StringGrid1.Cells[3,42] := '🇺🇸';
  StringGrid1.Cells[1,43] := 'jns';           StringGrid1.Cells[2,43] := 'United States';                        StringGrid1.Cells[3,43] := '🇺🇸';
  StringGrid1.Cells[1,44] := 'Jonax';         StringGrid1.Cells[2,44] := 'Sweden';                               StringGrid1.Cells[3,44] := '🇸🇪';
  StringGrid1.Cells[1,45] := 'julienxx';      StringGrid1.Cells[2,45] := 'Falkenstein, Saxony, Germany';         StringGrid1.Cells[3,45] := '🇩🇪';
  StringGrid1.Cells[1,46] := 'Kee';           StringGrid1.Cells[2,46] := 'United Kingdom';                       StringGrid1.Cells[3,46] := '🇬🇧';
  StringGrid1.Cells[1,47] := 'Key-Real';      StringGrid1.Cells[2,47] := 'Germany';                              StringGrid1.Cells[3,47] := '🇩🇪';
  StringGrid1.Cells[1,48] := 'klys';          StringGrid1.Cells[2,48] := '';                                     StringGrid1.Cells[3,48] := '';
  StringGrid1.Cells[1,49] := 'koo5';          StringGrid1.Cells[2,49] := 'Düsseldorf, North Rhine-Westphalia, Germany'; StringGrid1.Cells[3,49] := '🇩🇪';
  StringGrid1.Cells[1,50] := 'KOTP';          StringGrid1.Cells[2,50] := 'Amsterdam, North Holland, Netherlands'; StringGrid1.Cells[3,50] := '🇳🇱';
  StringGrid1.Cells[1,51] := 'lainz';         StringGrid1.Cells[2,51] := 'Brazil';                               StringGrid1.Cells[3,51] := '🇧🇷';
  StringGrid1.Cells[1,52] := 'larr0t';        StringGrid1.Cells[2,52] := '';                                     StringGrid1.Cells[3,52] := '';
  StringGrid1.Cells[1,53] := 'lotuspsychje';  StringGrid1.Cells[2,53] := 'Belgium';                              StringGrid1.Cells[3,53] := '🇧🇪';
  StringGrid1.Cells[1,54] := 'luca0N';        StringGrid1.Cells[2,54] := 'United States';                        StringGrid1.Cells[3,54] := '🇺🇸';
  StringGrid1.Cells[1,55] := 'ludo';          StringGrid1.Cells[2,55] := 'South Africa';                         StringGrid1.Cells[3,55] := '🇿🇦';
  StringGrid1.Cells[1,56] := 'ManuelSantana'; StringGrid1.Cells[2,56] := 'Dominican Republic';                   StringGrid1.Cells[3,56] := '🇩🇴';
  StringGrid1.Cells[1,57] := 'Mintle';        StringGrid1.Cells[2,57] := '';                                     StringGrid1.Cells[3,57] := '';
  StringGrid1.Cells[1,58] := 'M-M_Exp_in_Low_O'; StringGrid1.Cells[2,58] := '';                                  StringGrid1.Cells[3,58] := '';
  StringGrid1.Cells[1,59] := 'Moody';         StringGrid1.Cells[2,59] := '';                                     StringGrid1.Cells[3,59] := '';
  StringGrid1.Cells[1,60] := 'Moody';         StringGrid1.Cells[2,60] := '';                                     StringGrid1.Cells[3,60] := '';


  StringGrid1.Cells[1,61] := 'myrkraverk_';   StringGrid1.Cells[2,61] := 'Iceland';                              StringGrid1.Cells[3,61] := '🇮🇸';
  StringGrid1.Cells[1,62] := 'nedko';         StringGrid1.Cells[2,62] := 'Bulgaria';                             StringGrid1.Cells[3,62] := '🇧🇬';
  StringGrid1.Cells[1,63] := 'neoncortex';    StringGrid1.Cells[2,63] := 'Brazil';                               StringGrid1.Cells[3,63] := '🇧🇷';
  StringGrid1.Cells[1,64] := 'nickysn';       StringGrid1.Cells[2,64] := 'Bulgaria';                             StringGrid1.Cells[3,64] := '🇧🇬';
  StringGrid1.Cells[1,65] := 'nielsAD';       StringGrid1.Cells[2,65] := '';                                     StringGrid1.Cells[3,65] := '';
  StringGrid1.Cells[1,66] := 'nil78';         StringGrid1.Cells[2,66] := 'Shanghai, China';                      StringGrid1.Cells[3,66] := '🇨🇳';
  StringGrid1.Cells[1,67] := 'NiunioMartinez'; StringGrid1.Cells[2,67] := 'Spain';                              StringGrid1.Cells[3,67] := '🇪🇸';
  StringGrid1.Cells[1,68] := 'nmz';           StringGrid1.Cells[2,68] := 'Ostend, Flanders, Belgium';            StringGrid1.Cells[3,68] := '🇧🇪';
  StringGrid1.Cells[1,69] := 'otisolsen70';   StringGrid1.Cells[2,69] := 'Sweden';                               StringGrid1.Cells[3,69] := '🇸🇪';
  StringGrid1.Cells[1,70] := 'pabs3';         StringGrid1.Cells[2,70] := '';                                     StringGrid1.Cells[3,70] := '';
  StringGrid1.Cells[1,71] := '[PasBotTesting]'; StringGrid1.Cells[2,71] := '';                                  StringGrid1.Cells[3,71] := '';
  StringGrid1.Cells[1,72] := '[PasLogBot]';   StringGrid1.Cells[2,72] := '';                                     StringGrid1.Cells[3,72] := '';
  StringGrid1.Cells[1,73] := 'paule32';       StringGrid1.Cells[2,73] := 'Germany';                              StringGrid1.Cells[3,73] := '🇩🇪';
  StringGrid1.Cells[1,74] := 'paweld';        StringGrid1.Cells[2,74] := 'Poland';                               StringGrid1.Cells[3,74] := '🇵🇱';
  StringGrid1.Cells[1,75] := 'pinaraf';       StringGrid1.Cells[2,75] := '';                                     StringGrid1.Cells[3,75] := '';
  StringGrid1.Cells[1,76] := 'pmobot';        StringGrid1.Cells[2,76] := 'Zurich, Switzerland';                  StringGrid1.Cells[3,76] := '🇨🇭';
  StringGrid1.Cells[1,77] := 'praetor';       StringGrid1.Cells[2,77] := 'Seattle, Washington, United States';   StringGrid1.Cells[3,77] := '🇺🇸';
  StringGrid1.Cells[1,78] := 'prg';           StringGrid1.Cells[2,78] := 'Piscataway, New Jersey, United States'; StringGrid1.Cells[3,78] := '🇺🇸';
  StringGrid1.Cells[1,79] := 'psydroid';      StringGrid1.Cells[2,79] := '';                                     StringGrid1.Cells[3,79] := '';
  StringGrid1.Cells[1,80] := 'pvalenta';      StringGrid1.Cells[2,80] := '';                                     StringGrid1.Cells[3,80] := '';

  StringGrid1.Cells[1,81] := 'redrambles';       StringGrid1.Cells[2,81] := 'Los Angeles, California, United States'; StringGrid1.Cells[3,81] := '🇺🇸';
  StringGrid1.Cells[1,82] := 'RobertLM78';       StringGrid1.Cells[2,82] := '';                                     StringGrid1.Cells[3,82] := '';
  StringGrid1.Cells[1,83] := 'Roey';             StringGrid1.Cells[2,83] := '';                                     StringGrid1.Cells[3,83] := '';
  StringGrid1.Cells[1,84] := 'rosseaux';         StringGrid1.Cells[2,84] := 'Falkenstein, Saxony, Germany';          StringGrid1.Cells[3,84] := '🇩🇪';
  StringGrid1.Cells[1,85] := 'rushfan';          StringGrid1.Cells[2,85] := 'Los Angeles, California, United States'; StringGrid1.Cells[3,85] := '🇺🇸';
  StringGrid1.Cells[1,86] := 'Scoops';           StringGrid1.Cells[2,86] := '';                                     StringGrid1.Cells[3,86] := '';
  StringGrid1.Cells[1,87] := 'Sebulba';          StringGrid1.Cells[2,87] := 'Belgium';                              StringGrid1.Cells[3,87] := '🇧🇪';
  StringGrid1.Cells[1,88] := 'sebulba';          StringGrid1.Cells[2,88] := 'Belgium';                              StringGrid1.Cells[3,88] := '🇧🇪';
  StringGrid1.Cells[1,89] := 'sgh';              StringGrid1.Cells[2,89] := '';                                     StringGrid1.Cells[3,89] := '';
  StringGrid1.Cells[1,90] := 'Shine_';           StringGrid1.Cells[2,90] := '';                                     StringGrid1.Cells[3,90] := '';
  StringGrid1.Cells[1,91] := 'siggy';            StringGrid1.Cells[2,91] := '';                                     StringGrid1.Cells[3,91] := '';
  StringGrid1.Cells[1,92] := 'silvercoder';      StringGrid1.Cells[2,92] := 'Austrailia';                           StringGrid1.Cells[3,92] := '🇦🇺';
  StringGrid1.Cells[1,93] := 'skrzyp';           StringGrid1.Cells[2,93] := '';                                     StringGrid1.Cells[3,93] := '';
  StringGrid1.Cells[1,94] := 'Solak';            StringGrid1.Cells[2,94] := '';                                     StringGrid1.Cells[3,94] := '';
  StringGrid1.Cells[1,95] := 'spinningCat';      StringGrid1.Cells[2,95] := 'Turkey';                               StringGrid1.Cells[3,95] := '🇹🇷';
  StringGrid1.Cells[1,96] := 'stanrifkin';       StringGrid1.Cells[2,96] := '';                                     StringGrid1.Cells[3,96] := '';
  StringGrid1.Cells[1,97] := 'T0tr0X';           StringGrid1.Cells[2,97] := '';                                     StringGrid1.Cells[3,97] := '';
  StringGrid1.Cells[1,98] := 't0xicity';         StringGrid1.Cells[2,98] := '';                                     StringGrid1.Cells[3,98] := '';
  StringGrid1.Cells[1,99] := 'tb12';             StringGrid1.Cells[2,99] := '';                                     StringGrid1.Cells[3,99] := '';
  StringGrid1.Cells[1,100] := 'tetsuo-cpp';     StringGrid1.Cells[2,100] := '';                                    StringGrid1.Cells[3,100] := '';

   StringGrid1.Cells[1,101] := 'The_Blode';       StringGrid1.Cells[2,101] := '';                                    StringGrid1.Cells[3,101] := '';
   StringGrid1.Cells[1,102] := 'toby';             StringGrid1.Cells[2,102] := '';                                    StringGrid1.Cells[3,102] := '';
   StringGrid1.Cells[1,103] := 'tomdef';            StringGrid1.Cells[2,103] := '';                                    StringGrid1.Cells[3,103] := '';
   StringGrid1.Cells[1,104] := 'TonyStone';         StringGrid1.Cells[2,104] := 'United States';                       StringGrid1.Cells[3,104] := '🇺🇸';
   StringGrid1.Cells[1,105] := 'topnep';            StringGrid1.Cells[2,105] := '';                                    StringGrid1.Cells[3,105] := '';
   StringGrid1.Cells[1,106] := 'travis';            StringGrid1.Cells[2,106] := '';                                    StringGrid1.Cells[3,106] := '';

   StringGrid1.Cells[1,107] := 'typhoon';            StringGrid1.Cells[2,107] := '';                                     StringGrid1.Cells[3,107] := '';
   StringGrid1.Cells[1,108] := 'vancz';              StringGrid1.Cells[2,108] := '';                                     StringGrid1.Cells[3,108] := '';
   StringGrid1.Cells[1,109] := 'void09_';            StringGrid1.Cells[2,109] := '';                                     StringGrid1.Cells[3,109] := '';
   StringGrid1.Cells[1,110] := 'Vus';                StringGrid1.Cells[2,110] := '';                                     StringGrid1.Cells[3,110] := '';

   StringGrid1.Cells[1,111] := 'werther';            StringGrid1.Cells[2,111] := '';                                     StringGrid1.Cells[3,111] := '';
   StringGrid1.Cells[1,112] := 'willmatrix';         StringGrid1.Cells[2,112] := '';                                     StringGrid1.Cells[3,112] := '';
   StringGrid1.Cells[1,113] := 'wizzwizz4';          StringGrid1.Cells[2,113] := 'United Kingdom';                       StringGrid1.Cells[3,113] := '🇬🇧';
   StringGrid1.Cells[1,114] := 'Wolfox';             StringGrid1.Cells[2,114] := '';                                     StringGrid1.Cells[3,114] := '';
   StringGrid1.Cells[1,115] := 'Wormnest';           StringGrid1.Cells[2,115] := 'United States';                        StringGrid1.Cells[3,115] := '🇺🇸';
   StringGrid1.Cells[1,116] := 'xardomain';          StringGrid1.Cells[2,116] := 'Italy';                                StringGrid1.Cells[3,116] := '🇮🇹';
   StringGrid1.Cells[1,117] := 'Xemiru';             StringGrid1.Cells[2,117] := 'Germany';                              StringGrid1.Cells[3,117] := '🇩🇪';
   StringGrid1.Cells[1,118] := 'Xenzh';              StringGrid1.Cells[2,118] := 'Germany';                              StringGrid1.Cells[3,118] := '🇩🇪';
   StringGrid1.Cells[1,119] := 'Yassir';             StringGrid1.Cells[2,119] := 'Birmingham, England, United Kingdom';  StringGrid1.Cells[3,119] := '🇬🇧';
   StringGrid1.Cells[1,120] := 'zaher';              StringGrid1.Cells[2,120] := 'Syria';                                StringGrid1.Cells[3,120] := '🇸🇾';
   StringGrid1.Cells[1,121] := 'Zeck';               StringGrid1.Cells[2,121] := '';                                     StringGrid1.Cells[3,121] := '';
   StringGrid1.Cells[1,122] := 'zero';               StringGrid1.Cells[2,122] := 'France';                               StringGrid1.Cells[3,122] := '🇫🇷';
   StringGrid1.Cells[1,123] := 'Zoro';               StringGrid1.Cells[2,123] := '';                                     StringGrid1.Cells[3,123] := '';
   StringGrid1.Cells[1,124] := 'ztm';                StringGrid1.Cells[2,124] := '';                                     StringGrid1.Cells[3,124] := '';
   StringGrid1.Cells[1,125] := 'Zxandris';           StringGrid1.Cells[2,125] := '';                                     StringGrid1.Cells[3,125] := '';
   StringGrid1.Cells[1,126] := 'zz';                 StringGrid1.Cells[2,126] := '';                                     StringGrid1.Cells[3,126] := '';

  // Initialize sorting state
  FSortAscending:=True;
end;

procedure TForm1.StringGrid11HeaderClick(Sender: TObject; IsColumn: Boolean;
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
