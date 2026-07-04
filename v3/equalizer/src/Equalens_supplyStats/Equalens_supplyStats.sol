// SPDX-License-Identifier: Unlicensed
// (C) Sam, 543#3017, Guru Network, 2022-9999
// Contact: https://discord.gg/QpyfMarNrV
pragma solidity ^0.8.17;
interface IERC20 {
	function totalSupply() external view returns (uint256);
	function balanceOf(address account) external view returns (uint256);
	function allowance(address, address) external view returns (uint256);
    function decimals() external view returns (uint8);
    function symbol() external view returns (string memory);
    function name() external view returns (string memory);
}
interface IVoter {
	function length() external view returns (uint256);
	function pools(uint256) external view returns (address);
	function gauges(address) external view returns (address);
}
interface IveNFT {
	function totalSupply() external view returns (uint256);
	function token() external view returns (address);
	function voter() external view returns (address);
}
//ftm.guru's Universal On-chain TVL Calculator
//Source: https://ftm.guru/docs
//Source: https://docs.ftm.guru
//Source: https://ftm.guru/rawdata/tvl
///interface ITVL {
    //Using Version = v7
    ///function p_lpt_coin_usd(address lp) external view returns(uint256);
    ///function p_lpt_usd(address u,address lp) external view returns(uint256);
    ///function p_t_coin_usd(address lp) external view returns(uint256);
    ///function p_t_e_coin_usd(address lp) external view returns(uint256);
    ///function p_glp_usd(address m, uint256 md, bool mx, address t, uint256 td) external view returns(uint256);
    ///function tvlOf_glp_usd(address q, address m, uint256 md, bool mx, address t, uint256 td) external view returns(uint256);
///}
interface IPriceGuru {
	function getAssetPrice(address) external view returns(uint);
}

contract Equalens_supplyStats {
	IERC20 public EQUAL;
	IVoter public VOTER;
	IveNFT public veNFT;
	//ITvlGuru public TvlGuru;
	IPriceGuru public PriceGuru;

	address[] public excluded = [
		address(0),
		0x000000000000000000000000000000000000dEaD
	];
	address public pool2;
	address public owner;

    modifier oo {
        require(msg.sender == owner, "!owner");
        _;
    }

	function initialize(address _pg, address _ve, address _p2) public {
		require(owner == address(0), "reinit!");
		owner = msg.sender;
		//TvlGuru = ITvlGuru(_tg);
		PriceGuru = IPriceGuru(_pg);
		veNFT = IveNFT(_ve);
		VOTER = IVoter(veNFT.voter());
		EQUAL = IERC20(veNFT.token());
		pool2 = _p2;
	}

	function addExcluded(address _e) public oo {
		excluded.push(_e);
	}

	function pullExcluded(uint n) public oo {
		excluded[n]=excluded[excluded.length-1];
		excluded.pop();
	}

	function name() public view returns(string memory) {
		return string(abi.encodePacked(EQUAL.name()," Statistics Tracker"));
	}

	function symbol() public view returns(string memory) {
		return string(abi.encodePacked(EQUAL.symbol(),".s"));
	}

	function decimals() public view returns(uint8) {
		return EQUAL.decimals();
	}

	function allowance(address _o, address _s) public view returns(uint256) {
		return EQUAL.allowance(_o, _s);
	}

	function balanceOf(address _o) public view returns(uint256) {
		return EQUAL.balanceOf(_o);
	}

	function inExcluded() public view returns(uint256 _t) {
		for(uint i;i<excluded.length;i++) {
			_t += EQUAL.balanceOf(excluded[i]);
		}
		return _t;
	}

	function inGauges() public view returns(uint256 _t) {
		uint _l = VOTER.length();
		for(uint i;i<_l;i++) {
			address _p = VOTER.pools(i);
			address _g = VOTER.gauges(_p);
			_t += EQUAL.balanceOf(_g);
		}
		return _t;
	}

	function inNFT() public view returns(uint256) {
		return EQUAL.balanceOf(address(veNFT));
	}

	function dilutedSupply() public view returns(uint256) {
		return EQUAL.totalSupply();
	}

	function outstandingSupply() public view returns(uint256) {
		return
			dilutedSupply()
			- inExcluded()
			- inGauges()
		;
	}

	function totalSupply() public view returns(uint256) {
		return circulatingSupply();
	}

	function circulatingSupply() public view returns(uint256) {
		return
			dilutedSupply()
			- inExcluded()
			- inGauges()
			- inNFT()
		;
	}

	function lockRatio() public view returns(uint256) {
		return ( inNFT() * 1e18 ) / ( circulatingSupply() + inNFT() );
	}

	function price() public view returns(uint256) {
		//return TvlGuru.p_t_coin_usd(pool2);
		return PriceGuru.getAssetPrice( address(EQUAL) );
	}

	function liquidity() public view returns(uint256) {
		return ( price() * EQUAL.balanceOf(pool2) * 2 ) / 1e18;
	}

	function circulatingMarketCap() public view returns(uint256) {
		return ( price() * circulatingSupply() ) / 1e18;
	}

	function marketCap() public view returns(uint256) {
		return ( price() * outstandingSupply() ) / 1e18;
	}

	function fdv() public view returns(uint256) {
		return ( price() * dilutedSupply() ) / 1e18;
	}

	function lockedMarketCap() public view returns(uint256) {
		return ( veNFT.totalSupply() * price() ) / 1e18;
	}

	function info() public view returns(uint256[15] memory) {
		uint256[15] memory _info = [
			uint256(0), 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14
		];
		_info[0] = block.timestamp;
		_info[1] = price();
		_info[2] = circulatingSupply();
		_info[3] = outstandingSupply();
		_info[4] = dilutedSupply();
		_info[5] = inNFT();
		_info[6] = inGauges();
		_info[7] = inExcluded();
		_info[8] = veNFT.totalSupply();
		_info[9] = lockRatio();
		_info[10] = liquidity();
		_info[11] = circulatingMarketCap();
		_info[12] = marketCap();
		_info[13] = fdv();
		_info[14] = lockedMarketCap();
		return _info;
	}

}