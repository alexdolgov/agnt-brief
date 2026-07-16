/**


FFFFF  TTTTTTT  M   M         GGGGG  U    U  RRRRR     U    U
FF       TTT   M M M M       G       U    U  RR   R    U    U
FFFFF    TTT   M  M  M      G  GGG   U    U  RRRRR     U    U
FF       TTT   M  M  M   O  G    G   U    U  RR R      U    U
FF       TTT   M     M       GGGGG    UUUU   RR  RRR    UUUU


					https://eliteness.network


						Contact us at:
			https://discord.com/invite/QpyfMarNrV
					https://t.me/FTM1337

	Community Mediums:
		https://medium.com/@ftm1337
		https://twitter.com/ftm1337

 *  SPDX-License-Identifier: UNLICENSED
 *
 *
 *  Contributors:
 *   -   543 (Sam), ftm.guru, Eliteness.network & Equalizer.Exchange
 *
 *
 */

pragma solidity 0.8.9;
contract ContractChecker {
	function isContract(address account) public view returns (bool) {
	
    	uint256 size;
    	assembly { size := extcodesize(account) }
    	return size > 0;
	}

	function areContracts(address[] memory ad) public view returns (bool[] memory) {
		bool[] memory rb = new bool[](ad.length);
		for(uint i;i<ad.length;i++){
			rb[i] = isContract(ad[i]);
		}
		return rb;
	}
}