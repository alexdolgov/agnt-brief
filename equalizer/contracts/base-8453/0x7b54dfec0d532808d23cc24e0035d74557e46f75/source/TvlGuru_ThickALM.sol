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
//ftm.guru's Universal On-chain TVL Calculator
//Source: https://ftm.guru/rawdata/tvl
interface ITVL {
	//Using Version = v7
	function coinusd() external view returns(uint256);
	function p_lpt_coin_usd(address lp) external view returns(uint256);
	function p_lpt_usd(address u,address lp) external view returns(uint256);
	function p_t_coin_usd(address lp) external view returns(uint256);
}

interface IERC20 {
	function totalSupply() external view returns (uint256);
	function balanceOf(address account) external view returns (uint256);
	function decimals() external view returns(uint8);
}

interface IThickALM {
	function getTotalAmounts() external view returns(uint256, uint256);
	function totalSupply() external view returns(uint256);
	function token0() external view returns(address);
	function token1() external view returns(address);
}

contract TvlGuru_ThickALM {

	address public owner;
	ITVL public TvlGuru_v7;
    mapping(address => address) public TvlGuru;
    mapping(address => bytes) public TvlPriceFeed;

	constructor(ITVL _t7) {
		owner = msg.sender;
		TvlGuru_v7 = _t7;
	}

	function _onlyOwner() internal view {
		require(msg.sender==owner,"OO");
	}

    /* ========== Tvl Guru ========== */

    function getAssetPrice(address _a) public view returns(uint256) {
    	( , bytes memory _tt) = address(TvlGuru[_a]).staticcall(TvlPriceFeed[_a]);
    	return abi.decode(_tt, (uint256));
    }

    function setTvlGuru(address _a, address _t, bytes memory _b) external {
        _onlyOwner();
        TvlGuru[_a] = _t;
        TvlPriceFeed[_a] = _b;
    }


	function getPrice_NativeUsd6(address _vault, bool _u0) public view returns(uint256) {
		return getTvl(_vault, _u0) * 1e18 / IThickALM(_vault).totalSupply();
	}
	function getTvl_NativeUsd6(address _vault, bool _u0) public view returns(uint256) {
		(uint ta0, uint ta1) = IThickALM(_vault).getTotalAmounts();
		if(_u0){
			uint temp = ta0;
			ta0 = ta1;
			ta1 = temp;
		}
		return
			TvlGuru_v7.coinusd() * ta0 / 1e18
			+ ta1 * 1e18 / 1e6
		;
	}

	function getPrice(address _vault, bool _u0) public view returns(uint256) {
		return getTvl(_vault, _u0) * 1e18 / IThickALM(_vault).totalSupply();
	}
	function getTvl(address _vault, bool _u0) public view returns(uint256) {
		IERC20 t0 = IERC20(IThickALM(_vault).token0());
		IERC20 t1 = IERC20(IThickALM(_vault).token1());
		(uint ta0, uint ta1) = IThickALM(_vault).getTotalAmounts();
		if(_u0){
			uint temp = ta0;
			ta0 = ta1;
			ta1 = temp;
		}
		return
			getAssetPrice(address(t0)) * ta0 / 10**t0.decimals()
			+ getAssetPrice(address(t1)) * ta1 / 10**t1.decimals()
		;
	}
}