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

contract PriceGuru {

	address public owner;

    mapping(address => address) public TvlGuru;
    mapping(address => bytes) public TvlPriceFeed;

	function initialize() external {
		require(owner == address(0), "!reinit");
		owner = msg.sender;
	}

	function onlyOwner() internal view {
		require(msg.sender==owner,"OO");
	}

    /* ========== Tvl Guru ========== */

    function getAssetPrice(address _a) public view returns(uint256) {
    	( , bytes memory _tt) = address(TvlGuru[_a]).staticcall(TvlPriceFeed[_a]);
    	return abi.decode(_tt, (uint256));
    }

    function setTvlGuru(address _a, address _t, bytes memory _b) external {
        onlyOwner();
        TvlGuru[_a] = _t;
        TvlPriceFeed[_a] = _b;
    }

}