//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop
#include "sqlite3.h"
#include "string.h"


#include "Unit2.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "VirtualTrees"
#pragma resource "*.dfm"
TForm2 *Form2;
sqlite3* Database;
//---------------------------------------------------------------------------
__fastcall TForm2::TForm2(TComponent* Owner)
	: TForm(Owner)
{
int open;
//Открытие базы
open = sqlite3_open("anna.db", &Database);
   if(open==SQLITE_OK) {
	  ShowMessage("YU");
   } else {
	  fprintf(stderr, "Ошибка открытия/создания БД: %s\n", sqlite3_errmsg(Database));
   }
//Размер нод
VirtualStringTree1->NodeDataSize = sizeof(ANode);
//
sqlite3_stmt *pStatement;
//
int result = sqlite3_prepare_v2(Database,"SELECT id, random_name, random_country FROM first_table",-1,&pStatement,NULL);
//
while(true)
{
	result = sqlite3_step(pStatement);
	if(result != SQLITE_ROW) break;
	int id1 = sqlite3_column_int(pStatement, 0 /* */);
	unsigned char *name1 = (unsigned char *)sqlite3_column_text(pStatement, 1);
	unsigned char *country1 = (unsigned char *)sqlite3_column_text(pStatement, 2);
	PVirtualNode NewNode = (PVirtualNode)VirtualStringTree1->AddChild(VirtualStringTree1->RootNode);
	ANode *nodeData = (ANode*)VirtualStringTree1->GetNodeData(NewNode);
	nodeData->id=id1;
	nodeData->name=(UnicodeString)(char*)name1;
	nodeData->country=(UnicodeString)(char*)country1;
}
//
sqlite3_finalize(pStatement);
}
//---------------------------------------------------------------------------

void __fastcall TForm2::VirtualStringTree1GetText(TBaseVirtualTree *Sender, PVirtualNode Node,
          TColumnIndex Column, TVSTTextType TextType, UnicodeString &CellText)

{
ANode *nodeData = (ANode*)Sender->GetNodeData(Node);
switch(Column)
{
	case 0: CellText = nodeData->id; break;
	case 1: CellText = nodeData->name; break;
	case 2: CellText = nodeData->country; break;
}

}
//---------------------------------------------------------------------------

