/**
 *Submitted for verification at SonicScan.org on 2024-12-29
*/

/**
 *Submitted for verification at blastscan.io on 2024-11-12
*/

/*

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
*/

//SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.9;


interface IERC20 {
	function totalSupply() external view returns (uint256);
	function balanceOf(address account) external view returns (uint256);
	function decimals() external view returns(uint8);
	function transferFrom(address,address,uint) external returns(bool);
}

interface IPool is IERC20 {
	function token0() external view returns(IERC20);
	function token1() external view returns(IERC20);
	function getReserves() external view returns(uint,uint,uint);
	function symbol() external view returns(string memory);
}

interface IVoter {
	function base() external view returns(address);
	function gauges(address) external view returns(address);
}

interface IGauge {
	function notifyRewardAmount(IERC20 token, uint amt) external;
}

contract multiNotifyEqualToEltokenGauge {
	address public admin;
	IVoter public VOTER;
	IERC20 public EQUAL;
	IERC20 public ELTOKEN;
	IPool[] public POOLS;

	event GaugeRewarded( address indexed pool, string indexed symbol, uint indexed epoch, uint bal, uint total, uint rew);

	function initialize (IVoter v, IERC20 el) external {
		require(admin==address(0), "reinit");
		admin = msg.sender;
		VOTER = v;
		EQUAL = IERC20(v.base());
		ELTOKEN = el;
	}

	//Edit: Push & Pull
	function addPool(IPool p) external {
		require(msg.sender==admin,"a1");
		POOLS.push(p);
	}
	function addPools(IPool[] memory ps) external {
		require(msg.sender==admin,"a2");
		for(uint i; i<ps.length; i++) {
			POOLS.push(ps[i]);
		}
	}

	function removePool(uint n) external {
		require(msg.sender==admin,"r1");
		POOLS[n]=POOLS[POOLS.length-1];
		POOLS.pop();
	}

	function getPools() external view returns(IPool[] memory) {
		return POOLS;
	}

	function multiNotifyGauges(uint amount) external {
		require( EQUAL.transferFrom(msg.sender, address(this), amount) , "TF1");
		uint len = POOLS.length;
		uint[] memory bals = new uint[](len);
		uint tot;
		for(uint i; i<len; i++) {
			(uint r0, uint r1, ) = POOLS[i].getReserves();
			if( POOLS[i].token0() == ELTOKEN ) { bals[i] = r0; }
			else if( POOLS[i].token1() == ELTOKEN ) { bals[i] = r1; }
			else { bals[i] = 0; } //require(false, "T∉P") ; }
			tot += bals[i];
		}
		for(uint i; i<len; i++) {
			IGauge g = IGauge(VOTER.gauges( address(POOLS[i]) ));
			if( address(g) != address(0) && bals[i] > 0 ) {
				g.notifyRewardAmount( EQUAL , amount * bals[i] / tot );
				emit GaugeRewarded( address(POOLS[i]), POOLS[i].symbol(), (block.timestamp / 1 weeks * 1 weeks) , bals[i] , tot , amount * bals[i] / tot);
			}
		}
		uint eqb = EQUAL.balanceOf(address(this));
		if( eqb > 0 ) { require( EQUAL.transferFrom( address(this), msg.sender, eqb ), "TF2");
		}
	}
}