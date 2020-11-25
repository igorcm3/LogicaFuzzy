//---------------------------------------------------------------------------

#include <vcl.h>
#include <vector>

#pragma hdrstop

#include "UFuzzy.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"

TFmFuzzy *FmFuzzy;

//---------------------------------------------------------------------

// Consumo é a saída em Kg
// Supondo que uma pessoa consuma entre 0 kg a 3 kg de sorvete
std::vector <float> consumo_baixo(30);
std::vector <float> consumo_medio(30);
std::vector <float> consumo_alto(30);
std::vector <float> consumo(30);


float x=0;
float y=0;
float posicao_do_grafico = 0;
float posicao_do_grafico_dia = 0;
float posicao_do_grafico_temperatura = 0;

// Variáveis Fuzzy.
float fiTemperatura = 0;
float fiDia    = 0;
float foconsumo     = 0;
float fop_rule1 = 0;
float fop_rule2 = 0;
float fop_rule3 = 0;
float fop_rule4 = 0;

// Variáveis de auxilio ao cálculo da centróide.
float sum = 0;
float total_area = 0;
float consumoCentroide = 0;

// Entradas para o sistema.
float temperatura = 0;
float dia = 0;


//---------------------------------------------------------------------

// Função Triangular
float trimf(float x, float a, float b, float c)
{
    float ua = 0;

    if (x <= a)
        ua = 0;
    else if ((a < x) && (x <= b))
        ua = ((x - a) / (b - a));
    else if ((b < x) && (x <= c))
        ua = ((x - c) / (b - c));
    else if (x > c)
        ua = 0;

    return(ua);
}

//---------------------------------------------------------------------

// Função Trapezoidal
float trapmf(float x, float a, float b, float c, float d)
{
    float ua = 0;

    if (x <= a)
        ua = 0;
    else if ((a < x) && (x <= b))
        ua = ((x - a) / (b - a));
    else if ((b <= x) && (x <= c))
        ua = 1;
    else if ((c < x) && (x <= d))
        ua = ((d - x) / (d - c));
    else if (x > d)
        ua = 0;

    return(ua);
}

//---------------------------------------------------------------------

float min_val(float a, float b)
{
    if (a < b)
        return a;
    else
        return b;
}

//---------------------------------------------------------------------

float max_val(float a, float b)
{
	if (a > b)
		return a;
	else
        return b;
}


//---------------------------------------------------------------------------

void __fastcall TFmFuzzy::AplicarFuzzy()
{

	// 1ª regra - se temperatura é fria ou dia é inicio da semana, consumo é baixo
	if ((temperatura <= 17) && (dia >= 0 && dia <= 3))
	{
		// Fuzzificar as entradas.
		fiTemperatura = trapmf(temperatura, -10, -10, 10,  17);
		fiDia = trimf(dia, 1, 2, 3);
		// Aplicação dos operadores Fuzzy.
		fop_rule1 = max_val(fiTemperatura,fiDia);
		// Aplicação do Método de Implicação (valores mínimos).
		x=0;
		y=0;
		for (int a=0; a<30; a++)
		{
			y = trapmf(temperatura, -10, -10, 10,  17);
			if (y >= fop_rule1)
			{
				consumo_baixo.at(a) = fop_rule1;
			}
			else
			{
				consumo_baixo.at(a) = y;
			}
			x=x+1;
		}
	}


	// 2ª regra - Se temp for maior que 17 e menor/igual a 25
	if (((temperatura >= 15) && (temperatura <= 30)) && (dia >= 2 && dia <=4))
	{
		// Fuzzificar as entradas.
		fiTemperatura = trimf(temperatura, 15, 22, 30);
		fiDia = trimf(dia, 2, 3, 4);
		// Aplicação dos operadores Fuzzy.
		fop_rule2 = max_val(fiTemperatura,fiDia);
		 // Aplicação do Método de Implicação (valores mínimos).
		x=0;
		y=0;
		for (int a=0; a<30; a++)
		{
			y = trimf(x,15, 22, 30);
			if (y >= fop_rule2)
			{
				consumo_medio.at(a) = fop_rule2;
			}
			else
			{
				consumo_medio.at(a) = y;
			}

			x=x+1;
		}
	}

	// 3ª regra - Temperatura alta e fins de semana
	if ((temperatura >= 30) && (dia >= 5))
	{
		// Fuzzificar as entradas.
		fiTemperatura = trapmf(temperatura, 25, 35, 50, 50);
		fiDia    = trimf(dia, 5, 6, 7);
		// Aplicação dos operadores Fuzzy.
		fop_rule3 = max_val(fiTemperatura,fiDia);
		// Aplicação do Método de Implicação (valores mínimos).
		x=0;
		y=0;
		for (int a=0; a<30; a++)
		{
			y = trapmf(x, 25, 35, 50, 50);

			if (y >= fop_rule3)
			{
				consumo_alto.at(a) = fop_rule3;
			}
			else
			{
				consumo_alto.at(a) = y;
			}

			x=x+1;
		}
	}

	// 4ª regra - Temperatura alta e mas n pe fim de semana, vai vender mediano
	if ((temperatura >= 30) && (dia >= 1 && dia <= 4))
	{
		// Fuzzificar as entradas.
		fiTemperatura = trapmf(temperatura, 25, 35, 50, 50);
		fiDia    = trimf(dia, 2, 3, 4);
		// Aplicação dos operadores Fuzzy.
		fop_rule4 = max_val(fiTemperatura,fiDia);
		// Aplicação do Método de Implicação (valores mínimos).
		x=0;
		y=0;
		for (int a=0; a<30; a++)
		{
			trapmf(temperatura, 25, 35, 50, 50);

			if (y >= fop_rule4)
			{
				consumo_alto.at(a) = fop_rule4;
			}
			else
			{
				consumo_alto.at(a) = y;
			}

			x=x+1;
		}
	}
	// Aplicação do Método de Agregação.
	for (int a=0; a<30; a++)
	{
		if (a >= 0 && a <= 10)
		{
			consumo.at(a) = consumo_baixo.at(a);
		}

		if (a >= 10 && a <= 20)
		{
			consumo.at(a) = consumo_medio.at(a);
		}

		if (a >= 20 && a <= 30)
		{
			consumo.at(a) = consumo_alto.at(a);
		}
	}
	// Implicação dos antecedentes pelo consequente.
	x = 0;
	total_area = 0;
	sum = 0;
	for (int a=0; a<30; a++)
	{
		total_area = total_area + consumo.at(a);
		sum = sum + (x * consumo.at(a));

		x=x+1;
	}
	// Cálculo da Centróide.
	if (sum > 0) {
		consumoCentroide = (sum/total_area);
	}
    // CONSMO DIVIDE POR 10 PARA TER CONSUMO EM KG
	lblConsumoPessoa->Caption = "Consumo por pessoa: " + FloatToStrF((consumoCentroide/10),ffFixed,10,2)+ "kg";
	lblVlrBruto->Caption = "Estimativa venda vlr bruto:  R$ " + FloatToStrF(((consumoCentroide/10) * StrToFloatDef(ePrecoKg->Text, 0)),ffFixed,10,2);;
	posicao_do_grafico = consumoCentroide;
	for (int a=0; a<30; a++)
	{
		chCentroide->Series[0]->YValues->Value[a] = consumo.at(a);
	}
	chConsumo->Refresh();
	chCentroide->Refresh();
}


//---------------------------------------------------------------------------

__fastcall TFmFuzzy::TFmFuzzy(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TFmFuzzy::FormCreate(TObject *Sender)
{
	// Expande o gráfico para comportar a quantidade de amostras contidas em max_tela.
	// Temperatura 10-40
	for (unsigned int a = 0; a <= 40; a++)
	{
		chTemperatura->Series[0]->AddY(0);
		chTemperatura->Series[1]->AddY(0);
		chTemperatura->Series[2]->AddY(0);
	}
	// Dia - Semana de 1-7, com 1= segunda - feira
	for (unsigned i = 0; i <= 7; i++) {
		chDiaSemana->Series[0]->AddY(0);
		chDiaSemana->Series[1]->AddY(0);
        chDiaSemana->Series[2]->AddY(0);
	}
	// Consumo de 0 a 3 kg
	for (unsigned int a = 0; a <= 30; a++)
	{
		chConsumo->Series[0]->AddY(0);
		chConsumo->Series[1]->AddY(0);
		chConsumo->Series[2]->AddY(0);
		chCentroide->Series[0]->AddY(0);
	}

	// Atualiza o chart.
	chTemperatura->Refresh();
	chDiaSemana->Refresh();
	chConsumo->Refresh();
	chCentroide->Refresh();

	x=0;
    // Temperatura de 10 a 40 ºC, totalizando 30 possiveis valores
	for (int a=0; a<=40; a++)
	{
		// Frio abaixo de 17
		chTemperatura->Series[0]->YValues->Value[a] = trapmf(x, -10, -10, 10,  17);
		// Agradavél entre 15 e 30
		chTemperatura->Series[1]->YValues->Value[a] = trimf(x, 15, 22, 30);
		// Quente: acima de 25
		chTemperatura->Series[2]->YValues->Value[a] = trapmf(x, 25, 35, 50, 50);
		x=x+1;
	}

	x=0;
	// Dias da semana
	for (int a=0; a<=7; a++)
	{
		// Inicio da semana
		chDiaSemana->Series[0]->YValues->Value[a] = trimf(x, 1, 2, 3);
        // Meio da semana
		chDiaSemana->Series[1]->YValues->Value[a] = trimf(x, 3, 4, 5);
		//Fim da semana
		chDiaSemana->Series[2]->YValues->Value[a] = trimf(x, 5, 6, 7);
		x=x+1;
	}

	x=0;
	for (int a=0; a<=30; a++)
	{
		chConsumo->Series[0]->YValues->Value[a] = trimf(x,0,5,10);
		chConsumo->Series[1]->YValues->Value[a] = trimf(x,10,15,20);
		chConsumo->Series[2]->YValues->Value[a] = trimf(x,20,25,30);
		x=x+1;
	}
}
//---------------------------------------------------------------------------
void __fastcall TFmFuzzy::tbTemperaturaChange(TObject *Sender)
{
	temperatura = tbTemperatura->Position;
	posicao_do_grafico_temperatura = tbTemperatura->Position;
	lblTemp->Caption = "Temperatura: " + IntToStr(tbTemperatura->Position) + " ºC";
	chTemperatura->Refresh();
	AplicarFuzzy();
}
//---------------------------------------------------------------------------
void __fastcall TFmFuzzy::tbDiaChange(TObject *Sender)
{
	dia = tbDia->Position;
	posicao_do_grafico_dia = tbDia->Position;
	switch (tbDia->Position) {
		case 1: lblDia->Caption = "Dia = Segunda - feira";
			break;
		case 2: lblDia->Caption = "Dia = Terça - feira";
			break;
		case 3: lblDia->Caption = "Dia = Quarta- feira";
			break;
		case 4: lblDia->Caption = "Dia = Quinta- feira";
			break;
		case 5: lblDia->Caption = "Dia = Sexta - feira";
			break;
		case 6: lblDia->Caption = "Dia = Sábado";
			break;
		case 7: lblDia->Caption = "Dia = Domingo";
			break;
		default:
			lblDia->Caption = "Dia = Segunda - feira";
			break;
	}
	chDiaSemana->Refresh();
	AplicarFuzzy();
}
//---------------------------------------------------------------------------
void __fastcall TFmFuzzy::chCentroideAfterDraw(TObject *Sender)
{
	double xi, xf, yi, yf;
	xi=chCentroide->BottomAxis->CalcPosValue(posicao_do_grafico);
	yi=chCentroide->LeftAxis->CalcPosValue(chCentroide->LeftAxis->Minimum)+5;
	xf=chCentroide->BottomAxis->CalcPosValue(posicao_do_grafico)+1;
	yf=chCentroide->LeftAxis->CalcPosValue(chCentroide->LeftAxis->Maximum)-5;
	chCentroide->Canvas->Pen->Style=psSolid;
	chCentroide->Canvas->Pen->Color=clBlack;
	chCentroide->Canvas->Rectangle(xi,yi,xf,yf);
}
//---------------------------------------------------------------------------
void __fastcall TFmFuzzy::chTemperaturaAfterDraw(TObject *Sender)
{
	double xi, xf, yi, yf;

	xi=chTemperatura->BottomAxis->CalcPosValue(posicao_do_grafico_temperatura);
	yi=chTemperatura->LeftAxis->CalcPosValue(chTemperatura->LeftAxis->Minimum)+5;
	xf=chTemperatura->BottomAxis->CalcPosValue(posicao_do_grafico_temperatura)+1;
	yf=chTemperatura->LeftAxis->CalcPosValue(chTemperatura->LeftAxis->Maximum)-5;
	chTemperatura->Canvas->Pen->Style=psSolid;
	chTemperatura->Canvas->Pen->Color=clRed;
	chTemperatura->Canvas->Rectangle(xi,yi,xf,yf);
}
//---------------------------------------------------------------------------

void __fastcall TFmFuzzy::chDiaSemanaAfterDraw(TObject *Sender)
{
	double xi, xf, yi, yf;

	xi=chDiaSemana->BottomAxis->CalcPosValue(posicao_do_grafico_dia);
	yi=chDiaSemana->LeftAxis->CalcPosValue(chDiaSemana->LeftAxis->Minimum)+5;
	xf=chDiaSemana->BottomAxis->CalcPosValue(posicao_do_grafico_dia)+1;
	yf=chDiaSemana->LeftAxis->CalcPosValue(chDiaSemana->LeftAxis->Maximum)-5;
	chDiaSemana->Canvas->Pen->Style=psSolid;
	chDiaSemana->Canvas->Pen->Color=clRed;
	chDiaSemana->Canvas->Rectangle(xi,yi,xf,yf);
}
//---------------------------------------------------------------------------

void __fastcall TFmFuzzy::chConsumoAfterDraw(TObject *Sender)
{
	double xi, xf, yi, yf;

	xi=chConsumo->BottomAxis->CalcPosValue(posicao_do_grafico);
	yi=chConsumo->LeftAxis->CalcPosValue(chConsumo->LeftAxis->Minimum)+5;
	xf=chConsumo->BottomAxis->CalcPosValue(posicao_do_grafico)+1;
	yf=chConsumo->LeftAxis->CalcPosValue(chConsumo->LeftAxis->Maximum)-5;
	chConsumo->Canvas->Pen->Style=psSolid;
	chConsumo->Canvas->Pen->Color=clRed;
	chConsumo->Canvas->Rectangle(xi,yi,xf,yf);
}
//---------------------------------------------------------------------------

