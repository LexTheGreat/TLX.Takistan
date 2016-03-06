//	MPFramework for Arma2 OA
//  @file Author: [TLU] Zeus
//	@file Created: 25/01/2014
// 	@Modified By 

_actiontype = ((_this select 3) select 0);

switch (_actiontype) do 
{
	case "hostagedragdrop": {
		[] spawn TLU_ZipTie_DragHostageToogle;
	};
	case "hostagedisablephone": {
		[] spawn TLU_ZipTie_DisableHostagePhone;
	};
};