//---------------------------------------------------------------------------

#ifndef UFuzzyH
#define UFuzzyH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.ComCtrls.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <VCLTee.Chart.hpp>
#include <VCLTee.Series.hpp>
#include <VclTee.TeeGDIPlus.hpp>
#include <VCLTee.TeEngine.hpp>
#include <VCLTee.TeeProcs.hpp>
#include <VCLTee.TeeSpline.hpp>
//---------------------------------------------------------------------------
class TFmFuzzy : public TForm
{
__published:	// IDE-managed Components
	TLabel *lblTemp;
	TLabel *lblDia;
	TChart *chTemperatura;
	TLineSeries *Series1;
	TLineSeries *Series2;
	TLineSeries *Series3;
	TPanel *Panel1;
	TLabel *lblConsuloPessoa;
	TLabel *Label2;
	TChart *chDiaSemana;
	TLineSeries *Series4;
	TLineSeries *Series5;
	TChart *chConsumo;
	TLineSeries *Series6;
	TLineSeries *Series7;
	TLineSeries *Series8;
	TTrackBar *tbTemperatura;
	TTrackBar *tbFood;
	TChart *chCentroide;
	TLineSeries *LineSeries3;
	TLineSeries *Series9;
	TEdit *ePrecoKg;
	TLabel *Label1;
	void __fastcall FormCreate(TObject *Sender);
	void __fastcall tbTemperaturaChange(TObject *Sender);
	void __fastcall tbFoodChange(TObject *Sender);
	void __fastcall chCentroideAfterDraw(TObject *Sender);
	void __fastcall chTemperaturaAfterDraw(TObject *Sender);
	void __fastcall chDiaSemanaAfterDraw(TObject *Sender);
	void __fastcall chConsumoAfterDraw(TObject *Sender);

private:	// User declarations
public:		// User declarations
	__fastcall TFmFuzzy(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TFmFuzzy *FmFuzzy;
//---------------------------------------------------------------------------
#endif
