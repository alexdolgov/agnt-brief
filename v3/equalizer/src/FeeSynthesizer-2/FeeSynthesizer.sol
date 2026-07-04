/**
 *Submitted for verification at basescan.org on 2024-04-10
*/

/**
 *Submitted for verification at basescan.org on 2024-02-10
*/

/**
 *Submitted for verification at basescan.org on 2024-02-05
*/

/**
 *Submitted for verification at ftmscan.com on 2024-01-31
*/

/*

FeeSynthesizerForGamma.sol


FFFFF  TTTTTTT  M   M         GGGGG  U    U  RRRRR     U    U
FF       TTT   M M M M       G       U    U  RR   R    U    U
FFFFF    TTT   M  M  M      G  GGG   U    U  RRRRR     U    U
FF       TTT   M  M  M   O  G    G   U    U  RR R      U    U
FF       TTT   M     M       GGGGG    UUUU   RR  RRR    UUUU

						Contact us at:
			https://discord.com/invite/QpyfMarNrV
					https://t.me/FTM1337


	Community Mediums:
		https://medium.com/@ftm1337
		https://twitter.com/ftm1337




    ▀█▀░█░█░█░█▀░█▄▀
    ░█░░█▀█░█░█▄░█▀▄

	Thick Liquidity Protocol
	> Network agnostic Decentralized Exchange for ERC20 tokens


   Contributors:
    -   543#3017 (Sam, @i543), ftm.guru, Eliteness.network


  SPDX-License-Identifier: UNLICENSED

*/

pragma solidity 0.8.9;

interface IERC20 {
	function transferFrom(address,address,uint) external returns(bool);
	function transfer(address,uint) external returns(bool);
	function balanceOf(address) external view returns(uint);
	function totalSupply() external view returns(uint);
	function approve(address,uint) external returns(bool);
}

interface IRewarder {
	function notifyRewardAmount(address _token, uint _amount) external;
}

interface IWrapper is IERC20 {
	function collectFees() external;
}
interface IFeeRecipientV2 {
	function sendToken(address token1, address token2) external;
}

contract FeeSynthesizer {
	address public owner;
	address public nextOwner;
	address public redistributor;
	IWrapper public wrapper;
	address[] public holders;
	IRewarder[] public rewarders;
	uint public proportion; // redist o/1e18 if o!=1
	uint[] public proportions;
	IFeeRecipientV2 public feeRecipientV2;
	address public token0;
	address public token1;

	function _onlyOwner() internal view {
		require(msg.sender==owner,"!Owner");
	}

	function _claimFees(address _token, uint _amount) internal {
		uint _o = proportion;
		if(_o > 0) {
			if(_o!=1) { // redist o/1e18 if o!=1
				_amount -= _amount * _o / 1e18;
			}
			uint _hl = holders.length;
			uint _weight;
			for(uint i; i< _hl; i++) {
				_weight += proportions[i];
			}
			for(uint i; i< _hl; i++) {
				IRewarder _rw = rewarders[i];
				uint _ta = _amount * proportions[i] / _weight;
				if(_ta>0) {
					IERC20(_token)
						.approve(
							address(_rw),
							_ta
						)
					;
					_rw
						.notifyRewardAmount(
							_token,
							_ta
						)
					;
				}
			}
		}
		else {
			uint _ts = wrapper.totalSupply();
			uint _hl = holders.length;
			for(uint i; i< _hl; i++) {
				IRewarder _rw = rewarders[i];
				uint _ta = _amount * wrapper.balanceOf(holders[i]) / _ts;
				if(_ta>0) {
					IERC20(_token)
						.approve(
							address(_rw),
							_ta
						)
					;
					_rw
						.notifyRewardAmount(
							_token,
							_ta
						)
					;
				}
			}
		}
		{
			uint _tb = IERC20(_token).balanceOf(address(this));
			address _rd = redistributor;
			if(_rd != address(0) && _tb > 0) {
				IERC20(_token)
					.transfer(_rd, _tb)
				;
			}
		}
	}

	function claimFees() external {
		//wrapper.collectFees();
		feeRecipientV2.sendToken(token0,token1);
		{
			uint _b0 = IERC20(token0).balanceOf(address(this));
			if(_b0>0) _claimFees(token0, _b0);
		}
		{
			uint _b1 = IERC20(token1).balanceOf(address(this));
			if(_b1>0) _claimFees(token1, _b1);
		}
	}

	function setOwner(address _o) external {
		_onlyOwner();
		require(_o!=address(0),"!real");
		nextOwner = _o;
	}

	function becomeOwner() external {
		require(msg.sender==nextOwner,"!owner");
		owner = nextOwner;
	}

	function setRedistributor(address _r) external {
		_onlyOwner();
		redistributor = _r;
	}

	function setProportion(uint _o) external {
		_onlyOwner();
		require(_o<=1e18,">100%!");
		proportion = _o;
	}

	function resetHoldersAndRewarders(address[] memory _h, IRewarder[] memory _r, uint[] memory _o) external {
		_onlyOwner();
		delete holders;
		delete rewarders;
		delete proportions;
		uint _hl = holders.length;
		for(uint i; i< _hl; i++) {
			holders.push(_h[i]);
			rewarders.push(_r[i]);
			proportions.push(_o[i]);
		}
	}

	function pushHolderAndRewarder(address _h, IRewarder _r, uint _o)  external {
		_onlyOwner();
		holders.push(_h);
		rewarders.push(_r);
		proportions.push(_o);
	}

	function pullHolderAndRewarder(uint _n) external {
		_onlyOwner();
		uint _hl = holders.length;
		holders[_n] = holders[_hl-1];
		rewarders[_n] = rewarders[_hl-1];
		proportions[_n] = proportions[_hl-1];
		holders.pop();
		rewarders.pop();
	}

	function initialize(address _r, IWrapper _w, IFeeRecipientV2 _f, address _t0, address _t1) external {
		require(owner==address(0),"initialized!");
		owner=msg.sender;
		redistributor=_r;
		wrapper=_w;
		feeRecipientV2=_f;
		token0 = _t0;
		token1 = _t1;
	}

	function reinitialize(address _r, IWrapper _w, IFeeRecipientV2 _f, address _t0, address _t1) external {
		require(msg.sender==owner,"unauthorized!");
		redistributor=_r;
		wrapper=_w;
		feeRecipientV2=_f;
		token0 = _t0;
		token1 = _t1;
	}
}