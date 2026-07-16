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
	function allowance(address,address) external view returns (uint256);
	function decimals() external view returns(uint8);
	function approve(address,uint) external returns(bool);

	function transfer(address,uint) external returns(bool);
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

interface IGauge is IERC20 {
	function notifyRewardAmount(IERC20 token, uint amt) external;
}

contract multiNotifyEqualToEltokenGauge {
	address public admin;
	IVoter public VOTER;
	IERC20 public EQUAL;
	IERC20 public ELTOKEN;
	IPool[] public POOLS;
	mapping(address=>address) public poolRefundTaker;

	event GaugeFarmlandRewarded( address indexed pool, string indexed symbol, uint indexed epoch, uint bal, uint total, uint rew);
	event GaugeAdminRefunded( address indexed pool, string indexed symbol, uint indexed epoch, uint bal, uint total, uint rew);

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

	function getPoolsName() external view returns(string[] memory) {
		string[] memory n = new string[](POOLS.length);
		for(uint i; i<n.length; i++) {
			n[i] = POOLS[i].symbol();
		}
		return n;
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
				uint ga = amount * bals[i] / tot;
				if( EQUAL.allowance(address(this), address(g)) < ga ) {
					require( EQUAL.approve(address(g), type(uint256).max), "AP1");
				}
				try g.notifyRewardAmount( EQUAL , amount * bals[i] / tot ) {
					emit GaugeFarmlandRewarded( address(POOLS[i]), POOLS[i].symbol(), (block.timestamp / 1 weeks * 1 weeks) , bals[i] , tot , amount * bals[i] / tot);
					return;
				}
				catch{
				}

				// Only happens if notify failed
				address _prt = poolRefundTaker[ address(POOLS[i]) ];
				if(_prt==address(0)) {
					poolRefundTaker[ address(POOLS[i]) ] = admin;
					_prt = admin;
				}
				EQUAL.transfer( _prt , amount * bals[i] / tot );
				emit GaugeAdminRefunded( _prt, POOLS[i].symbol(), (block.timestamp / 1 weeks * 1 weeks) , bals[i] , tot , amount * bals[i] / tot);
			}
		}
		//uint eqb = EQUAL.balanceOf(address(this));
		//if( eqb > 0 ) { require( EQUAL.transferFrom( address(this), msg.sender, eqb ), "TF2");
		//}
	}

	function decimals() external pure returns(uint) {
		return 6;
	}

	function name() external pure returns (string memory) {
		return "eliteRingsScUSD Liquidity Provider Votes";
	}
	function symbol() external pure returns (string memory) {
		return "ersUSD.LP.Votes";
	}

	function balanceOf(address who) public view returns (uint) {
		if(who == 0x5C146cd18fa53914580573C9b9604588529406Ca) {
			return balanceOf(0x98cfA5ADdcB937C205E35d2Bef0885F969dcF958);
		}
		uint len = POOLS.length;
		uint tot;
		for(uint i; i<len; i++) {
			uint bal;
			(uint r0, uint r1, ) = POOLS[i].getReserves();
			if( POOLS[i].token0() == ELTOKEN ) { bal = r0; }
			else if( POOLS[i].token1() == ELTOKEN ) { bal = r1; }
			else { bal = 0; } //require(false, "T∉P") ; }

			IGauge g = IGauge(VOTER.gauges( address(POOLS[i]) ));
			if( address(g) != address(0) && bal > 0 ) {
				uint ts = g.totalSupply();
				uint ub = g.balanceOf(who);
				if( ts == 0 || ub == 0 ) { continue; }
				tot += (bal * ub / ts);
			}
		}
		return tot;
	}

	function setPoolRefundTaker(IPool[] memory _pools, address[] memory _takers) external {
		require(msg.sender==admin,"a2");
		for(uint i; i<_pools.length; i++) {
			poolRefundTaker[ address( _pools[i] ) ] = _takers[i];
		}
	}
	/*
	THC 0xa6e950aa70ebaaf99686a5d95afe8aca8b5e353b
	RING 0x370880694995aa8a53f71645f7bec3b0e7bb25d9
	MOON 0xa9d3b1408353d05064d47daf0dc98e104eb9c98a
	BEER 0xd84aEeE28F9CaDe2cBef63fde6F2F3f7a2dEa7A5
	BOL 0x3ef000Bae3e8105be55F76FDa784fD7d69CFf30e
	fBOMB 0x28aa4f9ffe21365473b64c161b566c3cdead0108
	BZ 0x822bdc94b2944949b1f3078531d9bcde56b5e001
	XUSD 0x1597e4b7cf6d2877a1d690b6088668afdb045763
	FRAX 0x6e74053a3798e0fC9a9775F7995316b27f21c4D2
	*/


}