/**
 *Submitted for verification at BscScan.com on 2024-12-15
*/

/**
 *Submitted for verification at BscScan.com on 2024-05-31
*/

/*

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

	SPDX-License-Identifier: UNLICENSED


	eliteRingsScUSD is based on eTHENA.sol

	eTHENA is a Liquid Staking Derivate for veTHE (Vote-Escrowed Thena NFT).
	It can be minted by burning (veTHE) veNFTs.
	eTHENA is an ERC20 based token.
	It can be staked with Guru Network to earn pure BNB instead of multiple small tokens.
	eTHENA can be further deposited into Kompound Protocol to mint iTHENA.

	iTHENA is a doubly-compounding interest-bearing veTHE at its core.
	iTHENA is an ERC4626 based token, which also adheres to the EIP20 Standard.
	iTHENA uses eTHENA's BNB yield to buyback more eTHENA from the open-market via JIT Aggregation.

	The price (in THE) to mint eTHENA goes up every epoch due to positive rebasing.
	This property gives iTHENA a "hyper-compounding" double-exponential trajectory against raw THE tokens.

*/

pragma solidity 0.8.9;

interface IERC20 {
	function totalSupply() external view returns (uint256);
	function balanceOf(address) external view returns (uint);
	function allowance(address, address) external view returns (uint);
	function transfer(address recipient, uint amount) external returns (bool);
	function transferFrom(address sender, address recipient, uint amount) external returns (bool);
	function burn(uint amount) external;
	function mint(address w, uint a) external returns (bool); // ETHENA
	///function mint(uint amount, address to) external returns (bool); // ELRETRO
}
interface IERC165 {
    function supportsInterface(bytes4 interfaceId) external view returns (bool);
}
interface IVotingEscrow {
	struct LockedBalance {
		int128 amount;
		uint end;
	}
	function balanceOf(address) external view returns (uint);
    function locked(uint id) external view returns(LockedBalance memory);
    function voted(uint id) external view returns(bool isVoting);
	function token() external view returns (address);
	function tokenOfOwnerByIndex(address _owner, uint _tokenIndex) external view returns (uint);
	// function getVotes(address) external view returns (uint);
	function totalSupply() external view returns (uint256);
	function isApprovedOrOwner(address, uint) external view returns (bool);

	function create_lock_for(uint _value, uint _lock_duration, address _to) external returns (uint);
    function safeTransferFrom(address from, address to, uint256 tokenId) external;
	function merge(uint _from, uint _to) external;
	function setApprovalForAll(address _who, bool _give) external;
	function split(uint[] memory amounts, uint _tokenId) external;
}
interface IVoter {
	struct CastedVote {
        address gauge;
        uint256 weight;
        uint256 votes;
    }
	function ve() external view returns (address);
	//function poolVoteLength(uint256) external view returns (uint256);
	function getNftCurrentVotes(uint) external view returns(CastedVote[] memory);
	function poolVote(uint256, uint256) external view returns (address);
	function votes(uint256, address) external view returns (uint256);
	function lastVoted(uint256) external view returns (uint256);

	function reset(uint256) external;
	function vote(uint256, address[] memory, uint256[] memory) external;
	//function claimBribes(address[] memory _bribes, address[][] memory _tokens, uint _tokenId) external;
}

interface IGuruFarmland {
	function totalSupply() external view returns (uint256);
	function balanceOf(address) external view returns (uint);
	function tvl() external view returns (uint256);
	function tvlDeposits() external view returns (uint256);
	function apr() external view returns (uint256);
	function getAssetPrice(address) external view returns (uint256);
	function stake() external view returns (address);
	function stakingToken() external view returns (address);
	function want() external view returns (address);
	function asset() external view returns (address);
}

interface IQuests {
    //Basic Claim
    /**
    * @notice Claims the reward for a user for a given period of a Quest
    * @dev Claims the reward for a user for a given period of a Quest if the correct proof was given
    * @param questID ID of the Quest
    * @param period Timestamp of the period
    * @param index Index in the Merkle Tree
    * @param account Address of the user claiming the rewards
    * @param amount Amount of rewards to claim
    * @param merkleProof Proof to claim the rewards
    */
    function claim(uint256 questID, uint256 period, uint256 index, address account, uint256 amount, bytes32[] calldata merkleProof) external;

    //Struct ClaimParams
    struct ClaimParams {
        uint256 questID;
        uint256 period;
        uint256 index;
        uint256 amount;
        bytes32[] merkleProof;
    }

    //Multi Claim
    /**
    * @notice Claims multiple rewards for a given list
    * @dev Calls the claim() method for each entry in the claims array
    * @param account Address of the user claiming the rewards
    * @param claims List of ClaimParams struct data to claim
    */
    function multiClaim(address account, ClaimParams[] calldata claims) external;

    function questRewardToken(uint256 qid) external view returns(address);

}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


contract eliteRingsManager {
	///////////// DONT EDIT /////////////
	struct LockedBalance {
		int128 amount;
		uint end;
	}
	///////////// DONT EDIT /////////////
	bool internal _locked; /// @notice ftm.guru simple re-entrancy check
	bool public paused;
	///////////// DONT EDIT /////////////
	uint public ID;
	address public dao;
	///////////// DONT EDIT /////////////
	IERC20 public ELTOKEN;
	IVotingEscrow public VENFT;
	IVoter public VOTER;
	mapping(address => bool) public voteManager;
	///////////// DONT EDIT /////////////
	uint public mintingFeesToDao;
	uint public mintingFeesToBurn;
	uint public redemptionFeesToDao;
	uint public redemptionFeesToBurn;
	uint public floor;
	///////////// DONT EDIT /////////////
	IQuests public QUESTS;

	///////////// DONT EDIT /////////////


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

	modifier lock() {
		require(!_locked,  "Re-entry!");
		_locked = true;
		_;
		_locked = false;
	}
	modifier DAO() {
		require(msg.sender==dao, "Unauthorized!");
		_;
	}
	modifier OnlyVoteManagers() {
		require(voteManager[msg.sender], "Unauthorized Voter!");
		_;
	}
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

	event Deposit(address indexed user, uint nft, uint veAmount, uint shares, uint md, uint mb, uint wen);
	event Withdraw(address indexed user, uint nft, uint veAmount, uint shares, uint rd, uint rb, uint wen);
    event QuestClaimed( // @notice Event emitted when Quest rewards are Claimed
        uint256 questID,
        uint256 indexed period,
        uint256 index,
        uint256 amount,
        address indexed rewardToken,
        address indexed account
    );

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    function onERC721Received(address, address,  uint256, bytes calldata) external view returns (bytes4) {
        require(msg.sender == address(VENFT), "!veToken");
        require(_locked, "unwanted");
        return bytes4(keccak256("onERC721Received(address,address,uint256,bytes)"));
    }

	function initialize(address _vo, address _el, uint _id) external lock {
		require(dao == address(0));
		dao = msg.sender;
		voteManager[msg.sender] = true;
		VOTER = IVoter(_vo);
		VENFT = IVotingEscrow(VOTER.ve());	// Rings has .ve() not ._ve()
		ELTOKEN = IERC20(_el);
		ID = _id;
		if(ELTOKEN.totalSupply() == 0) {
			IVotingEscrow.LockedBalance memory _main = VENFT.locked(_id);
			require(_main.amount > 0, "Dirty veNFT!");
			int _iamt = _main.amount;
			uint _amt = uint(_iamt);
			floor = _amt;
			ELTOKEN.mint(msg.sender, _amt); // ETHENA
			///ELTOKEN.mint(_amt, msg.sender); // ELRETRO
			emit Deposit(msg.sender, _id, _amt, _amt, 0, 0, block.timestamp);
		}
	}

	function deposit(uint _id) external lock returns (uint) {
		require(!paused,"paused");
		//{										// no rebase in rings
		//	claimRebase(); // self
		//	REBASE.claim(_id); // user
		//}
		uint _ts = ELTOKEN.totalSupply();
		IVotingEscrow.LockedBalance memory _main = VENFT.locked(ID);
		require(_main.amount > 0, "Dirty veNFT!");
		int _ibase = _main.amount;	//pre-cast to int
		uint256 _base = uint256(_ibase);
		VENFT.safeTransferFrom(msg.sender, address(this), _id);
		//VENFT.safeTransferFrom(dao, address(this), ID); // not needed in clean equalizer/thena forks
		VENFT.merge(_id,ID);
		//VENFT.safeTransferFrom(address(this), dao, ID);
		IVotingEscrow.LockedBalance memory _merged = VENFT.locked(ID);
		int _in = _merged.amount - _main.amount;
		require(_in > 0, "Dirty Deposit!");
		uint256 _inc = uint256(_in);//cast to uint
		// Calculate and mint the amount of eTHENA the veNFT is worth. The ratio will change overtime,
		// as eTHENA is minted when veTHE are deposited + gained from rebases

		uint256 _amt = (_inc * _ts) / _base;
		ELTOKEN.mint(address(this), _amt);

		uint _md = _amt * mintingFeesToDao / 1e18;
		if(_md>0) {
			require( ELTOKEN.transfer(dao, _md) , "mdf");
		}

		uint _mb = _amt * mintingFeesToBurn / 1e18;
		if(_mb > 0) {
			ELTOKEN.burn( _mb );
		}

		//ELTOKEN.mint(msg.sender, _amt); // ETHENA to Depositor
		///ELTOKEN.mint(_amt, msg.sender); // ELRETRO
		_amt = _amt - _md - _mb;
		require( ELTOKEN.transfer( msg.sender, _amt) , "muf");
		emit Deposit(msg.sender, _id, _inc, _amt, _md, _mb, block.timestamp);

		return _amt;
	}



	function withdraw(uint _tamt) external lock returns(uint) {
		require(!paused,"paused");

		require(ELTOKEN.transferFrom(msg.sender, address(this), _tamt), "infail");
		// first stamp tokens per share
		uint _ts = ELTOKEN.totalSupply();

		require(_ts-_tamt > floor, "Too much drawn!");
		require(block.timestamp % 7 days    <=    6 days, "No Split on Wednesdays!");
		uint _utamt;

		// take fees
		uint _rd = _tamt * redemptionFeesToDao / 1e18;		// _tamt = 1.00
		if(_rd>0) {
			require( ELTOKEN.transfer(dao, _rd) , "rdf");
		}

		uint _rb = _tamt * redemptionFeesToBurn / 1e18;		// _burn = 0.05

		// user's effective redeem amount
		_utamt = _tamt - _rd - _rb;						// _uta = 1.00 - 0.10 - 0.05 = 0.85

		// burn it all now that dao fee has been taken already
		//if(_rb > 0) {
		//	ELTOKEN.burn( _rb );
		//}
		ELTOKEN.burn( _tamt - _rd );

		// split into two : [_ts-_utamt , _utamt]
		{
			if( VENFT.voted(ID) ) {
				VOTER.reset(ID); // do reset if voted. does it only once an epoch during THURS to TUES as votes are cast only on WEDNES
			}
			//VENFT.safeTransferFrom(dao, address(this), ID); // Not required if veNFT is in contract
			///require(VENFT.balanceOf(address(this)) == 1, "unexpected balance!");
			///@Moustache.enclabs - possible dos via non-safeTransferFrom calls: venft.transferFrom() doesnt hook this.onERC721Received()

			uint[] memory _splitRatios = new uint[](2);
			// fees accrued into first, user gets second
			_splitRatios[0] = _ts-_utamt;
			_splitRatios[1] = _utamt;
			VENFT.split( _splitRatios, ID);
		}
		{
			uint _newID = VENFT.tokenOfOwnerByIndex(address(this), VENFT.balanceOf(address(this)) - 2 );
			ID = _newID;

			int _uvi = VENFT.locked(_newID + 1).amount; // cache before transfer since safeTransferFrom could trigger hooks if msg.sender is a contract
			uint _uv = uint256(_uvi);

			//VENFT.safeTransferFrom(address(this), dao, _newID); // Not required if veNFT stays in.
			VENFT.safeTransferFrom(address(this), msg.sender, _newID + 1);

			emit Withdraw(msg.sender, _newID + 1, _uv, _tamt, _rd, _rb, block.timestamp);
			return _uv;
		}
	}

	function voteReset() OnlyVoteManagers external lock {
		VOTER.reset(ID);
	}

	function vote(address[] memory _p, uint[] memory _w) OnlyVoteManagers external lock {
		require(_p.length==_w.length,"len mismatch");
		VOTER.vote(ID, _p, _w);
	}

	function copyVotesFrom(uint _mi) OnlyVoteManagers external lock {
		//uint _len = VOTER.poolVoteLength(_mi);
		IVoter.CastedVote[] memory _vc = VOTER.getNftCurrentVotes(_mi);
		uint _len = _vc.length;
		require( _len > 0, "Target hasnt voted!");
		address[] memory _miPools = new address[](_len);
		uint[] memory _miWeights = new uint[](_len);
		for(uint i; i<_len; i++){
			_miPools[i] = _vc[i].gauge;
			_miWeights[i] = _vc[i].weight;
		}
		VOTER.vote(ID, _miPools, _miWeights);
	}



/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

	function rescue(address _t, uint _a) external DAO lock {
		IERC20 _tk = IERC20(_t);
		_tk.transfer(dao, _a);
	}
	function setDAO(address d) external DAO lock {
		require(d!=address(0), "d==0!");
		dao = d;
		VENFT.setApprovalForAll(dao, true);
	}
	function setVoteManager(address _m, bool _b) external DAO lock {
		voteManager[_m] = _b;
	}
	function setID(uint _id) external DAO lock {
		ID = _id;
	}
	function setFees(uint _md, uint _mb, uint _rd, uint _rb) external DAO lock {
		require(_md +_mb <= 0.5e18, "mint fee too high");
		require(_rb + _rb <= 0.5e18, "redeem fee too high");
		mintingFeesToDao = _md;
		mintingFeesToBurn = _mb;
		redemptionFeesToDao = _rd;
		redemptionFeesToBurn = _rb;
	}
	function setFloor(uint _f) external DAO lock {
		floor = _f;
	}
	function setPaused(bool _p) external DAO lock {
		paused = _p;
	}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

	function setQuests(IQuests _q) external {
		require(address(QUESTS) == address(0), "qs");
		QUESTS = _q;
	}
	// 1:1 same sig, forwarded to QUESTS.claim, but in wrapped context. is also locked. reentered by this.multiClaim
	function claim(uint256 questID, uint256 period, uint256 index, address account, uint256 amount, bytes32[] calldata merkleProof) OnlyVoteManagers public lock {
		IERC20 _rt = IERC20(QUESTS.questRewardToken(questID));
		uint _rtbb = _rt.balanceOf(address(this));
		QUESTS.claim(questID, period, index, account, amount, merkleProof);
		uint _rtba = _rt.balanceOf(address(this)) - _rtbb;
		if( _rtba > 0 ) {
			require( _rt.transfer(msg.sender, _rtba) , "c1");
			emit QuestClaimed(questID, period, index, _rtba, address(_rt), account);
		}
	}
	// 1:1 same sig but doesnt call QUESTS.multiClaim instead its a conduit to an internal this.claim multicall
	function multiClaim(address account, IQuests.ClaimParams[] calldata claims) OnlyVoteManagers external {
        uint256 length = claims.length;
		for(uint i; i<length; i++) {
			claim(claims[i].questID, claims[i].period, claims[i].index, account, claims[i].amount, claims[i].merkleProof);
		}
	}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

	function getCurrentEpoch() public view returns(uint) {
		return block.timestamp - (block.timestamp % 7 days);
	}

	function quote(uint _id) public view returns (uint) {
		uint _ts = ELTOKEN.totalSupply();
		IVotingEscrow.LockedBalance memory _main = VENFT.locked(ID);
		IVotingEscrow.LockedBalance memory _user = VENFT.locked(_id);
		if( ! (_main.amount > 0) ) {return 0;}
		int _ibase = _main.amount;	//pre-cast to int
		uint256 _base = uint256(_ibase);
		int _in = _user.amount;
		if( ! (_in > 0) ) {return 0;}
		uint256 _inc = uint256(_in);//cast to uint

		uint256 _amt = (_inc * _ts) / _base;
		{
			uint _md = _amt * mintingFeesToDao / 1e18;
			uint _mb = _amt * mintingFeesToBurn / 1e18;
			_amt = _amt - _md - _mb;
		}
		return _amt;
	}
	function rawQuote(uint _inc) public view returns (uint) {
		uint _ts = ELTOKEN.totalSupply();
		IVotingEscrow.LockedBalance memory _main = VENFT.locked(ID);
		if( ! (_main.amount > 0) ) {return 0;}
		int _ibase = _main.amount;	//pre-cast to int
		uint256 _base = uint256(_ibase);
		// Calculate and mint the amount of eTHENA the veNFT is worth. The ratio will change overtime,
		// as eTHENA is minted when veTHE are deposited + gained from rebases

		uint256 _amt = (_inc * _ts) / _base;
		{
			uint _md = _amt * mintingFeesToDao / 1e18;
			uint _mb = _amt * mintingFeesToBurn / 1e18;
			_amt = _amt - _md - _mb;
		}
		return _amt;
	}

	function price() public view returns (uint) {
		return 1e36 / rawQuote(1e18);
	}

	function getApr(address _contract) public view returns(uint) {
		try IGuruFarmland(_contract).apr() returns(uint _apr) {
			return _apr;
		}
		catch {
			return 404;
		}
	}

	function tvl() external view returns(uint) {
		return
			uint(int256(VENFT.locked(ID).amount))
			// PriceGuru.getAssetPrice( scUSD ) / 1e6
			//// * IGuruFarmland(0x5A11968256F7860C9c19513aDf30AD9C8F5F6041).getAssetPrice( 0xd3DCe716f3eF535C5Ff8d041c1A41C3bd89b97aE ) / 1e6
			// PriceGuru.getAssetPrice( scETH ) / 1e18
			* IGuruFarmland(0x5A11968256F7860C9c19513aDf30AD9C8F5F6041).getAssetPrice( 0x3bcE5CB273F0F148010BbEa2470e7b5df84C7812 )  / 1e18
		;
	}

	function getTvl(address _contract) public view returns(uint) {
		try IGuruFarmland(_contract).tvlDeposits() returns(uint _tvl) {
			return _tvl;
		}
		catch {
			try IGuruFarmland(_contract).tvl() returns(uint _tvl) {
				return _tvl;
			}
			catch {
				return 404;
			}
		}
	}

	function getAllowance(address _user, address _farm) public view returns(uint) {
		try IGuruFarmland(_farm).stakingToken() returns(address _st) {	// GuruMultiRewardFarmlands
			return IERC20(_st).allowance(_user, _farm);
		}
		catch {
			try IGuruFarmland(_farm).stake() returns(address _st) {	// GuruFarmland
				return IERC20(_st).allowance(_user, _farm);
			}
			catch {
				try IGuruFarmland(_farm).want() returns(address _st) {	// Kompound Protocol
					return IERC20(_st).allowance(_user, _farm);
				}
				catch {
					try IGuruFarmland(_farm).asset() returns(address _st) {	// EIP-4626
						return IERC20(_st).allowance(_user, _farm);
					}
					catch {
						return 404;	// idkbro
					}
				}
			}
		}
	}


	function info(
		address _user,
		address[] memory _farms,
		address[] memory _pricing
	)
	public
	view
	returns(
		uint[] memory, //uint[10] memory,
		address[] memory,
		uint[] memory,
		uint[] memory,
		uint[] memory
	) {

		uint[] memory _basics = new uint[]( 13 + (_pricing.length/2) );	//+ pendingRedemptions[_user].length);

		_basics[0] = ELTOKEN.balanceOf(_user);
		_basics[1] = ELTOKEN.totalSupply();
		_basics[2] = price();
		_basics[3] = block.timestamp % 7 days > 6 days ? ELTOKEN.totalSupply() : floor;
		_basics[4] = redemptionFeesToDao;
		_basics[5] = redemptionFeesToBurn;
		_basics[6] = ID;
		_basics[7] = uint(int256(VENFT.locked(ID).amount));
		_basics[8] = VENFT.totalSupply();
		_basics[9] = VENFT.locked(ID).end;
		_basics[10] = mintingFeesToDao + mintingFeesToBurn;
		_basics[11] = ELTOKEN.allowance(_user, address(this));
		_basics[12] = VENFT.balanceOf(_user);

		for(uint i; i < _pricing.length; i += 2) {
			_basics[13 + i/2] = IGuruFarmland(_pricing[i]).getAssetPrice(_pricing[i+1]);
		}

		////for(uint i; i < pendingRedemptions[_user].length; i++) {
		////	_basics[13 + (_pricing.length/2) + i] = pendingRedemptions[_user][i];
		////}


		uint[] memory _farm_info = new uint[](_farms.length * 5);

		for(uint i; i < _farms.length * 5; i += 5) {
			IGuruFarmland _farm = IGuruFarmland(_farms[i/5]);
			_farm_info[i  ] = _farm.balanceOf(_user);
			_farm_info[i+1] = _farm.totalSupply();
			_farm_info[i+2] = getTvl(_farms[i/5]);//_farm.tvlDeposits();
			_farm_info[i+3] = getApr(_farms[i/5]);//_farm.apr();
			_farm_info[i+4] = getAllowance(_user, _farms[i/5]);
		}


		uint _venfts = VENFT.balanceOf(_user);
		uint[] memory _venftUserData = new uint[](_venfts * 4);

		for(uint i; i < _venfts * 4; i += 4) {
			_venftUserData[i  ] = VENFT.tokenOfOwnerByIndex(_user,i/4);
			IVotingEscrow.LockedBalance memory _lb = VENFT.locked(_venftUserData[i]);
			_venftUserData[i+1] = uint(int256(_lb.amount));
			_venftUserData[i+2] = _lb.end;
			_venftUserData[i+3] = VENFT.isApprovedOrOwner(address(this), _venftUserData[i]) == true ? 1 : 0;
		}

		IVoter.CastedVote[] memory _vc = VOTER.getNftCurrentVotes(ID);
		uint _len = _vc.length;
		address[] memory _miPools = new address[](_len);
		uint[] memory _miWeights = new uint[](_len);
		for(uint i; i<_len; i++){
			_miPools[i] = _vc[i].gauge;
			_miWeights[i] = _vc[i].weight;
		}

		return (
			_basics,
			_miPools,
			_miWeights,
			_farm_info,
			_venftUserData
		);

		/*
		return (
			ELTOKEN.balanceOf(_user),
			ELTOKEN.totalSupply(),
			price(),
			floor,
			redemptionFeesToDao,
			redemptionFeesToBurn,
			ID,
			uint(int256(VENFT.locked(ID).amount)),
			VENFT.totalSupply(),
			votedTime,
			votedPools[getCurrentEpoch()],
			votedWeights[getCurrentEpoch()],
			_farm_bals,
			_farm_tots,
			_farm_tvls,
			_farm_aprs,
			_venft_nft_ids,
			_venft_amounts,
			_venft_unlocks
		);
		*/
	}
}

/*
	Community, Services & Enquiries:
		https://discord.gg/QpyfMarNrV

	Powered by Guru Network DAO ( 🦾 , 🚀 )
		Simplicity is the ultimate sophistication.
*/