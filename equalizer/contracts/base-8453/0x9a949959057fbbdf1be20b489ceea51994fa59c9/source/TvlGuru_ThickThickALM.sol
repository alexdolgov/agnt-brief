/**
 *Submitted for verification at ftmscan.com on 2024-01-27
*/

/**
 *Submitted for verification at ftmscan.com on 2022-01-15
*/

//(C) Sam, FTM1337, kcc.guru 0-9999
//(C) Guru Network
//(C) Eliteness.Network
//file://tvlGuru.sol
//ftm.guru : On-chain Total Value Locked Finder
//https://ftm.guru/docs/TvlGuru
//Version: 11.3.0
//Author: Sam4x, 543#3017, Guru Network
//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.7.6;
pragma abicoder v2;
//All tvlGuru Compliant contracts must implement the ITVL interface
interface ITVL{
	function coinusd() external view returns(uint256);
}

interface IThickALM {
	function getTotalAmounts() external view returns(uint256, uint256);
	function totalSupply() external view returns(uint256);
}

contract TvlGuru_ThickThickALM {
	function getPrice(address _ichi, bool _u0) public view returns(uint256) {
		return getTvl(_ichi, _u0) * 1e18 / IThickALM(_ichi).totalSupply();
	}
	function getTvl(address _ichi, bool _u0) public view returns(uint256) {
		(uint ta0, uint ta1) = IThickALM(_ichi).getTotalAmounts();
		if(_u0){
			uint temp = ta0;
			ta0 = ta1;
			ta1 = temp;
		}
		return ITVL(0x7a18D1b46baaBB2D8260D0f8cfBb2292901c2779)
			.coinusd() * ta0 / 1e18
			+ ta1 * 1e18 / 1e6
		;
	}
}