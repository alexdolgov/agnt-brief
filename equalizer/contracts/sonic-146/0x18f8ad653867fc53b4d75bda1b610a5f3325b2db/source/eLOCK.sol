/*

Eliteness.Network
eLOCKS
v1.0.6

https://eliteness.network/elocks

//SPDX-License-Identifier: BUSL-1.1
Copyright 2024 Eliteness.Network @i543
Copyright 2024 Guru Network ftm1337@protonmail.com
Copyright 2024 Equalizer Exchange

Business Source License 1.1

License text copyright (c) 2017 MariaDB Corporation Ab, All Rights Reserved.
"Business Source License" is a trademark of MariaDB Corporation Ab.

-----------------------------------------------------------------------------

Parameters

Licensor:             Guru Network & Equalizer Exchange

Licensed Work:        eLOCKS, eLOCKS_fNFT, eLOCKS, Art Solidity Smart Contracts,
                      eLOCKS NFT, Artwork, Metadata, tangible or intangible parts,
                      or parts of, or any software or property derived therefrom.
                      The Licensed Work is (c) 2024 Guru Network and
                      the Licensed Work is (c) 2024 Equalizer Exchange

Additional Use Grant: Any uses listed and defined at
                      any Self-addressed transactions on Ethereum Mainnet from
                      0x167d87a906da361a10061fe42bbe89451c2ee584 with
                      explicit expression of Additional Use Grant

Change Date:          The earlier of 2028-12-31 or a date specified at
                      any Self-addressed transactions on Ethereum Mainnet from
                      0x167d87a906da361a10061fe42bbe89451c2ee584 with
                      explicit expression of Change Date

Change License:       GNU General Public License v2.0 or later

-----------------------------------------------------------------------------

Terms

The Licensor hereby grants you the right to copy, modify, create derivative
works, redistribute, and make non-production use of the Licensed Work. The
Licensor may make an Additional Use Grant, above, permitting limited
production use.

Effective on the Change Date, or the seventh anniversary of the first publicly
available distribution of a specific version of the Licensed Work under this
License, whichever comes first, the Licensor hereby grants you rights under
the terms of the Change License, and the rights granted in the paragraph
above terminate.

If your use of the Licensed Work does not comply with the requirements
currently in effect as described in this License, you must purchase a
commercial license from the Licensor, its affiliated entities, or authorized
resellers, or you must refrain from using the Licensed Work.

All copies of the original and modified Licensed Work, and derivative works
of the Licensed Work, are subject to this License. This License applies
separately for each version of the Licensed Work and the Change Date may vary
for each version of the Licensed Work released by Licensor.

You must conspicuously display this License on each original or modified copy
of the Licensed Work. If you receive the Licensed Work in original or
modified form from a third party, the terms and conditions set forth in this
License apply to your use of that work.

Any use of the Licensed Work in violation of this License will automatically
terminate your rights under this License for the current and all other
versions of the Licensed Work.

This License does not grant you any right in any trademark or logo of
Licensor or its affiliates (provided that you may use a trademark or logo of
Licensor as expressly required by this License).

TO THE EXTENT PERMITTED BY APPLICABLE LAW, THE LICENSED WORK IS PROVIDED ON
AN "AS IS" BASIS. LICENSOR HEREBY DISCLAIMS ALL WARRANTIES AND CONDITIONS,
EXPRESS OR IMPLIED, INCLUDING (WITHOUT LIMITATION) WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, NON-INFRINGEMENT, AND
TITLE.

MariaDB hereby grants you permission to use this License’s text to license
your works, and to refer to it using the trademark "Business Source License",
as long as you comply with the Covenants of Licensor below.

-----------------------------------------------------------------------------

Covenants of Licensor

In consideration of the right to use this License’s text and the "Business
Source License" name and trademark, Licensor covenants to MariaDB, and to all
other recipients of the licensed work to be provided by Licensor:

1. To specify as the Change License the GPL Version 2.0 or any later version,
   or a license that is compatible with GPL Version 2.0 or a later version,
   where "compatible" means that software provided under the Change License can
   be included in a program with software provided under GPL Version 2.0 or a
   later version. Licensor may specify additional Change Licenses without
   limitation.

2. To either: (a) specify an additional grant of rights to use that does not
   impose any additional restriction on the right granted in this License, as
   the Additional Use Grant; or (b) insert the text "None".

3. To specify a Change Date.

4. Not to modify this License in any other way.

-----------------------------------------------------------------------------

Notice

The Business Source License (this document, or the "License") is not an Open
Source license. However, the Licensed Work will eventually be made available
under an Open Source License, as stated in this License.



-----------------------------------------------------------------------------
xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
-----------------------------------------------------------------------------







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


v1.0.6
- Allow holding unstaked positions


*/

pragma solidity 0.8.9;

interface IERC20 {
	function balanceOf(address) external view returns (uint256);
	function totalSupply() external view returns (uint256);
	function decimals() external view returns (uint256);
	function symbol() external view returns (string memory);
	function name() external view returns (string memory);

	function approve(address, uint) external returns (bool);
	function transfer(address, uint) external returns (bool);
	function transferFrom(address, address, uint) external returns (bool);
}
interface IERC721 {
	function ownerOf(uint) external view returns (address);
	function totalSupply() external view returns (uint256);
}

interface IeLockerRoom is IERC721 {
	function admin() external view returns(address);
	function feeSynthesizer() external view returns(address);
	function protocolFee() external view returns(uint);
	function voter() external view returns(IVoter);
	function TvlGuru() external view returns(ITvlGuru);
	function AprGuru() external view returns(IAprGuru);
}

interface ITvlGuru {
	function getAssetPrice(address asset) external view returns (uint256);
}

interface IAprGuru {
	function getApr(address rewarder) external view returns (uint256);
}

interface IPair is IERC20 {
	function token0() external view returns (address);
	function token1() external view returns (address);
	function index0() external view returns (uint);
	function index1() external view returns (uint);
	function claimable0(address) external view returns (uint);
	function claimable1(address) external view returns (uint);
	function supplyIndex0(address) external view returns (uint);
	function supplyIndex1(address) external view returns (uint);

	function claimFees() external returns (uint,uint);
}

interface IVoter {
	function gauges(address pool) external view returns(address);
	function factory() external view returns(address);
}

interface IFactory {
	function isPair(address) external view returns (bool);
}

interface IGauge is IPair {
	function rewardToken() external view returns(IERC20);  // <--- Thena Forks

	function rewardTokens(uint) external view returns(IERC20);
	function rewardsListLength() external view returns (uint);
	function earned(address,address) external view returns (uint);

	function earned(address) external view returns (uint);  // <--- Thena Forks

	function depositAll() external;
	function withdrawAll() external;
	function getReward(address, IERC20[] memory) external;

	function getReward(address) external;  // <--- Thena Forks
	function getReward() external;  // <--- Thena Forks
}

interface IArt {
    function _tokenURI(uint _tokenId) external view returns (string memory output);
}

contract Guard {
    /// @dev reentrancy guard
    bool internal _locked;

    modifier guarded() {
        require(!_locked, "No re-entrancy");
        _locked = true;
        _;
        _locked = false;
    }
}

contract eLOCK is Guard {

	struct Referral {
		address agent;
		uint percent;
	}

	bool internal initialized;

	IVoter public voter;
	IFactory public factory;
	IeLockerRoom public eLocker;
	IPair public pool;
	IERC20 public token0;
	IERC20 public token1;
	uint public ID;

	address public earner;

	IGauge public gauge;
	bool public staked;
	IERC20[] public rewardTokens;

	uint public expiry;
	mapping(IERC20 => uint) public earnings;

	Referral public referral;
	uint public dateOfBirth;
	address public creator;


	/*
		A user can create 1 lock per LP,
		can extend it but not reduce its expiry,
		can add more tokens but not reduce their locked balance,
		can withdraw all tokens at once after expiry has passed.
	*/

	event LockStatus(address indexed depositor, uint amount, uint total, uint until);
	event ReferralPaid(address indexed token, address indexed agent, uint amount);
	event ClaimRewards(address indexed earner, IERC20 indexed token, uint amount);
	event Transfer(address indexed from, address indexed to, uint amount);
	event Recovered(address,uint);

	modifier onlyOwner() {
		require(msg.sender == owner(), "!owner");
		_;
	}

	modifier onlyOwnerOrSuperAdmin() {
		require(msg.sender == owner() || msg.sender == eLocker.admin(), "!os");
		_;
	}

	function initialize(IPair _lp, uint _exp, Referral memory _ref) external {
		require(!initialized, "in it!");
		initialized = true;
		eLocker = IeLockerRoom(msg.sender);
		voter = eLocker.voter();
		factory = IFactory(voter.factory());
		require(factory.isPair(address(_lp)), "unknown lp");
		pool = _lp;
		token0 = IERC20(_lp.token0());
		token1 = IERC20(_lp.token1());
		ID = eLocker.totalSupply();
		earner = eLocker.ownerOf(ID);
		//_validateGauge();
		_setupGaugeIfNeeded();
		require(_exp>block.timestamp,"expd");
		expiry = _exp;
		require(_ref.percent <= 0.98663e18, "hiref");
		referral = _ref;
		dateOfBirth = block.timestamp;
		creator = earner;
	}

	function _setupGaugeIfNeeded() internal returns(bool _gaugeNowExists) {
		if( address(gauge) != address(0) ) { // gauge exists! immutable once set!
			return true;
		}
		address _g = voter.gauges(address(pool));
		// has a gauge? note it, approve it, note rewardsList
		if( address(_g) != address(0) ) {
			gauge = IGauge(_g);
			staked = true;
			require(pool.approve(_g, type(uint256).max), "A1");
			_validateRewardsList();
			return true;
		}
		else {
			return false;
		}
	}
/*
	function _validateGauge() internal returns(bool) { // called during initialize, relock, increase, claimFeesTo
		// during initialize:
		if( expiry == 0) {
			address _g = voter.gauges(address(pool));
			// has a gauge? note it, approve it, note rewardsList
			if( address(_g) != address(0) ) {
				gauge = IGauge(_g);
				require(pool.approve(_g, type(uint256).max), "A1");
				staked = true;
				_validateRewardsList();
				return true; // value not important, just need to escape this internal call
			}
			else {
				return false; // value not important, just need to escape this internal call
			}
		}

		if(staked) {
			return true;
		}
		else {
			address _g = voter.gauges(address(pool));
			if(_g == address(0) ) {
				return false;
			}
			else {
				gauge = IGauge(_g);
				require(pool.approve(_g, type(uint256).max), "A1");
				staked = true;
				_validateRewardsList();
				return true;
			}
		}
	}
*/
	function relock(uint _amt, uint _date) external onlyOwner guarded {
		require(_amt > 0, "!>0");
		require(_date > block.timestamp, "<Now");
		require(_date > expiry, "<Expiry");
		expiry = _date;

		require(pool.transferFrom(msg.sender, address(this), _amt), "E2");

		if( _setupGaugeIfNeeded() && staked ) {
			gauge.depositAll();
		}

		emit Transfer(address(0), msg.sender, _amt);
		emit LockStatus(msg.sender, _amt, totalSupply(), _date);
	}

	// @notice Public Function!
	// @notice Can be used for external increments to lock, like an earner who is an autocompounder.
	function increaseAmount(uint _amt) external guarded {
		require(_amt > 0, "!>0");

		require(pool.transferFrom(msg.sender, address(this), _amt), "E2");

		if( _setupGaugeIfNeeded() && staked ) {
			gauge.depositAll();
		}

		emit Transfer(address(0), owner(), _amt);
		emit LockStatus(msg.sender, _amt, totalSupply(), expiry);
	}

	function extendDate(uint _date) external onlyOwner guarded {
		require(_date > block.timestamp, "<Now");
		require(_date > expiry, "<Expiry");
		expiry = _date;
		emit LockStatus(msg.sender, 0, totalSupply(), _date);
	}

	function unlockLiquidity() external onlyOwner guarded returns(uint _ts) {
		_ts = totalSupply();
		require(block.timestamp > expiry, "Early");
		if(staked && (gauge.balanceOf(address(this))>0) ) {
			gauge.withdrawAll();
		}
		require(pool.transfer(owner(), pool.balanceOf(address(this))), "E3");
		emit LockStatus(msg.sender, 0, 0, block.timestamp);
		emit Transfer(owner(), address(0), _ts);
	}

	// internal use
	function transferFrom(address _from, address _to, uint _amt) external {
		require(msg.sender == address(eLocker), "!eLOCKS");
		require(_amt == ID, "!ID");
		emit Transfer(_from, _to, totalSupply());
	}

	function _sendReward(IERC20 _rt, address _to) internal {
		require( address(_rt) != address(pool) , "!cstk");
		uint _ra = _rt.balanceOf(address(this));
		if(_ra==0) {
			return;
		}
		earnings[_rt] += _ra;
		{
			uint _fs = _ra * eLocker.protocolFee() / 1e18; // 1.337%
			require(_rt.transfer(eLocker.feeSynthesizer(), _fs), "R1");
			_ra = _ra - _fs;
		}
		{
			uint _ref = referral.percent * _ra / 1e18; // type(uint10).max=1024
			address _refa = referral.agent;
			if(_ref>0 && _refa != address(0)) {
				require(_rt.transfer(_refa, _ref), "R2");
				emit ReferralPaid(address(_rt), _refa, _ref);
				_ra = _ra - _ref;
			}
		}
		{
			if(_ra>0) {
				require(_rt.transfer(_to, _ra), "R3");
				emit ClaimRewards(_to, _rt, _ra);
			}
		}
	}

	// Can disable public claims by setting earner to 0x00
	function _validateEarner() internal returns(address) {
		address _o = owner();
		if(_o==address(0)) {
			earner = eLocker.feeSynthesizer();
		}
		address _e = earner;
		if(_e == address(0)) {
			require(msg.sender == _o, "claims restricted");
			return _o;
		}
		else {
			return _e;
		}
	}

	function _claimFeesTo(address _to) internal {
		pool.claimFees();
		_sendReward(token0, _to);
		_sendReward(token1, _to);
		if( _setupGaugeIfNeeded() && staked ) {
			if(pool.balanceOf(address(this)) > 0) {
				gauge.depositAll();
			}
		}
	}

	// @notice Public Function!
	function claimFees() external guarded {
		_claimFeesTo(_validateEarner());
	}

	function claimFeesTo(address _to) external onlyOwner guarded {
		_claimFeesTo(_to);
	}

	function _claimRewardsTo(address _to, IERC20[] memory _tkns) internal {
		//require(staked, "!stk");
		if( _setupGaugeIfNeeded() && staked && (pool.balanceOf(address(this)) > 0) ) {
			gauge.depositAll();
		}
		//gauge.getReward(address(this), _tkns);
		gauge.getReward();  // <--- Thena Forks
		// Still iterate over input tokens to suuport future addition of rewarders (gauge.gaugeRewarder())    <--- Thena Forks
		uint _l = _tkns.length;
		uint[] memory _trew = new uint[](_l);
		for(uint i; i<_l; i++) {
			_trew[i] = _tkns[i].balanceOf(address(this));
			_sendReward(_tkns[i], _to);
		}
	}

	// @notice Public Function!
	function claimMultipleRewards(IERC20[] memory _tkns) external guarded {
		_claimRewardsTo(_validateEarner(), _tkns);
	}

	function claimMultipleRewardsTo(address _to, IERC20[] memory _tkns) external onlyOwner guarded {
		_claimRewardsTo(_to, _tkns);
	}

	function _validateRewardsList() internal {
		/*
		// For Equalizer (Curve.fi forks)
		uint _lg = gauge.rewardsListLength();
		uint _ll = rewardsListLength();
		if(_lg>_ll) {
			for(uint i = _ll; i<_lg; i++) {
				rewardTokens.push( gauge.rewardTokens(i) );
			}
		}
		*/
		// For Thena (LiquidDriver forks) - Single Reward - Rhis loop runs only runs once a lifetime // <--- Thena Forks
		uint _lg = 1; // <--- Thena Forks
		uint _ll = rewardsListLength();
		if(_lg>_ll) {
			for(uint i = _ll; i<_lg; i++) {
				rewardTokens.push( gauge.rewardToken() );  // <--- Thena Forks
			}
		}
		rewardTokens.push( gauge.rewardToken() );
	}

	function claimRewardsTo(address _to) external onlyOwner guarded {
		_validateRewardsList();
		_claimRewardsTo(_to, rewardTokens);
	}

	function claimRewards() external guarded {
		_validateRewardsList();
		_claimRewardsTo(earner, rewardTokens);
	}

	function setEarner(address _e) external onlyOwner {
		earner = _e;
	}

    /// Useful for claiming random airdrops
    function rescue(uint _amt, address _token, address _to) external onlyOwnerOrSuperAdmin {
        require( (_token == address(pool)) == false , "!!stk"); // Rescuing Locks is Prohibited!
        IERC20(_token).transfer(_to, _amt);
        emit Recovered(_token, _amt);
    }

	function toggleStaked() external onlyOwner {
		if(staked) {
			staked = false;
			if(gauge.balanceOf(address(this))>0) {
				gauge.withdrawAll();
			}
		}
		else {
			require( _setupGaugeIfNeeded() , "No Gauge yet!");
			staked = true;
			if( pool.balanceOf(address(this)) > 0) {
				gauge.depositAll();
			}
		}
	}

	////
	////

	function rewardsListLength() public view returns(uint) {
		return rewardTokens.length;
	}

	function rewardsList() public view returns(IERC20[] memory) {
		return rewardTokens;
	}

	function allEarnings() public view returns(IERC20[] memory, uint[] memory, uint[] memory, string[] memory) {
		IERC20 _t0 = token0;
		IERC20 _t1 = token1;
		bool _incl0;
		bool _incl1;
		uint _nz;
		uint _l = rewardsListLength();
		IERC20[] memory _tkns = new IERC20[](_l+2);
		uint[] memory _amts = new uint[](_l+2);
		//uint[] memory _deci = new uint[](_l+2);
		//string[] memory _sym = new string[](_l+2);
		for(uint i; i<_l; i++) {
			IERC20 _rt = rewardTokens[i];
			uint _ra = earnings[ _rt ];
			if(_ra>0) {
				_tkns[_nz] = _rt;
				_amts[_nz] = _ra;
				//_deci[_nz] = _rt.decimals();
				//_sym[_nz]  = _rt.symbol();
				_nz++;
			}
			if(!_incl0 && _tkns[i] == _t0) { _incl0 = true; }
			if(!_incl1 && _tkns[i] == _t1) { _incl1 = true; }
		}
		if(!_incl0) {
			uint _ra = earnings[ _t0 ];
			if(_ra>0) {
				_tkns[_nz] = _t0;
				_amts[_nz] = _ra;
				//_deci[_nz] = _t0.decimals();
				//_sym[_nz]  = _t0.symbol();
				_nz++;
			}
		}
		if(!_incl1) {
			uint _ra = earnings[ _t1 ];
			if(_ra>0) {
				_tkns[_nz] = _t1;
				_amts[_nz] = _ra;
				//_deci[_nz] = _t1.decimals();
				//_sym[_nz]  = _t1.symbol();
				_nz++;
			}
		}
		IERC20[] memory _t = new IERC20[](_nz);
		uint[] memory _a = new uint[](_nz);
		uint[] memory _d = new uint[](_nz);
		string[] memory _s = new string[](_nz);
		for(uint i;i<_nz;i++){
			_t[i] = _tkns[i];
			_a[i] = _amts[i];
			_d[i] = 10 ** _tkns[i].decimals();
			_s[i] =  _tkns[i].symbol();
		}
		return(_t,_a,_d,_s);
	}

	function totalSupply() public view returns(uint _ts) {
		_ts = pool.balanceOf(address(this));
		if( address(gauge) != address(0) ) {
			_ts += gauge.balanceOf(address(this));
		}
	}

	function balanceOf(address _who) external view returns(uint) {
		return _who == owner() ? totalSupply() : 0 ;
	}

	function symbol() external view returns (string memory) {
		return string(abi.encodePacked("eLOCKS.SwapX:",pool.symbol()));
	}

	function name() external view returns (string memory) {
		return string(abi.encodePacked("eLOCKS Financial NFT containing Locked Liquidity Pool tokens of ",pool.name(),unicode"pool on SwapX.fi, and rights to any Yields derived therefrom."));
	}

	function decimals() public view returns (uint) {
		return pool.decimals();
	}

	function owner() public view returns (address) {
		return eLocker.ownerOf(ID);
	}

	function tvl() public view returns(uint) {
		ITvlGuru _tg = eLocker.TvlGuru();
		try _tg.getAssetPrice(address(pool)) returns(uint _p) {
			return
				_p
				*totalSupply()
				/10
				**decimals()
			;
		}
		catch {
			return 0;
		}
	}

	function apr() public view returns(uint) {
		try eLocker.AprGuru() returns(IAprGuru _ag) {
			try _ag.getApr(address(gauge)) returns(uint _a) {
				return _a;
			}
			catch {
				return 0;
			}
		}
		catch {
			return 0;
		}
	}





	function claimableFees() public view returns(uint _cf0, uint _cf1) {
        _cf0 = pool.claimable0(address(this));
        _cf1 = pool.claimable1(address(this));

        uint _supplied = pool.balanceOf(address(this)); // get LP balance of `recipient`
        if (_supplied > 0) {
        	{
            	uint _supplyIndex = pool.supplyIndex0(address(this)); // get last adjusted index0 for recipient
            	uint _index = pool.index0(); // get global index0 for accumulated fees
            	uint _delta = _index - _supplyIndex; // see if there is any difference that need to be accrued
            	if (_delta > 0) {
                	uint _share = _supplied * _delta / 1e18; // add accrued difference for each supplied token
                 	_cf0 += _share;
            	}
        	}
        	{
            	uint _supplyIndex = pool.supplyIndex1(address(this)); // get last adjusted index1 for recipient
            	uint _index = pool.index1(); // get global index1 for accumulated fees
            	uint _delta = _index - _supplyIndex; // see if there is any difference that need to be accrued
            	if (_delta > 0) {
                	uint _share = _supplied * _delta / 1e18; // add accrued difference for each supplied token
                 	_cf1 += _share;
            	}
        	}
        }
	}

	function claimableRewards() public view returns(uint[] memory) {
		uint _l = rewardTokens.length;
		uint[] memory _cr = new uint[](_l);
		for(uint i;i<_l;i++) { // _l will always be 1
			//_cr[i] = gauge.earned(address(rewardTokens[i]), address(this));
			_cr[i] = gauge.earned( address(this) );  // <--- Thena Forks
		}
		return _cr;
	}


}