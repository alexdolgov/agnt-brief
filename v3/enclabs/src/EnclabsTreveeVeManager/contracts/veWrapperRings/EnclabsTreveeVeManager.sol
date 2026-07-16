// SPDX-License-Identifier: MIT

pragma solidity 0.8.25;

interface IERC20 {
	function totalSupply() external view returns (uint256);
	function balanceOf(address) external view returns (uint);
	function allowance(address, address) external view returns (uint);
	function transfer(address recipient, uint amount) external returns (bool);
	function transferFrom(address sender, address recipient, uint amount) external returns (bool);
	function burn(uint amount) external;
	function mint(address w, uint a) external returns (bool);
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


contract EnclabsTreveeVeManager {

	struct LockedBalance {
		int128 amount;
		uint end;
	}
	
	bool internal _locked; /// @notice  simple re-entrancy check
	bool public paused;
	
	uint public ID;
	address public dao;
	
	IERC20 public ELTOKEN;
	IVotingEscrow public VENFT;
	IVoter public VOTER;
	mapping(address => bool) public voteManager;
	
	uint public mintingFeesToDao;
	uint public mintingFeesToBurn;
	uint public redemptionFeesToDao;
	uint public redemptionFeesToBurn;
	uint public floor;
	
	IQuests public QUESTS;

	


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
		VENFT = IVotingEscrow(VOTER.ve());	
		ELTOKEN = IERC20(_el);
		ID = _id;
		if(ELTOKEN.totalSupply() == 0) {
			IVotingEscrow.LockedBalance memory _main = VENFT.locked(_id);
			require(_main.amount > 0, "Dirty veNFT!");
			int _iamt = _main.amount;
			uint _amt = uint(_iamt);
			floor = _amt;
			ELTOKEN.mint(msg.sender, _amt); 
			emit Deposit(msg.sender, _id, _amt, _amt, 0, 0, block.timestamp);
		}
	}

	function deposit(uint _id) external lock returns (uint) {
		require(!paused,"paused");
		uint _ts = ELTOKEN.totalSupply();
		IVotingEscrow.LockedBalance memory _main = VENFT.locked(ID);
		require(_main.amount > 0, "Dirty veNFT!");
		int _ibase = _main.amount;	//pre-cast to int
		uint256 _base = uint256(_ibase);
		VENFT.safeTransferFrom(msg.sender, address(this), _id);

		VENFT.merge(_id,ID);

		IVotingEscrow.LockedBalance memory _merged = VENFT.locked(ID);
		int _in = _merged.amount - _main.amount;
		require(_in > 0, "Dirty Deposit!");
		uint256 _inc = uint256(_in);//cast to uint

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

		_amt = _amt - _md - _mb;
		require( ELTOKEN.transfer( msg.sender, _amt) , "muf");
		emit Deposit(msg.sender, _id, _inc, _amt, _md, _mb, block.timestamp);

		return _amt;
	}



	function withdraw(uint _tamt) external lock returns(uint) {
		require(!paused,"paused");

		require(ELTOKEN.transferFrom(msg.sender, address(this), _tamt), "infail");

		uint _ts = ELTOKEN.totalSupply();

		require(_ts-_tamt > floor, "Too much drawn!");
		require(block.timestamp % 7 days    <=    6 days, "No Split on Wednesdays!");
		uint _utamt;

		// take fees
		uint _rd = _tamt * redemptionFeesToDao / 1e18;		
		if(_rd>0) {
			require( ELTOKEN.transfer(dao, _rd) , "rdf");
		}

		uint _rb = _tamt * redemptionFeesToBurn / 1e18;		

		// user's effective redeem amount
		_utamt = _tamt - _rd - _rb;						

		
		ELTOKEN.burn( _tamt - _rd );


		{
			if( VENFT.voted(ID) ) {
				VOTER.reset(ID); // do reset if voted. does it only once an epoch during THURS to TUES as votes are cast only on WEDNES
			}
			
			require(VENFT.balanceOf(address(this)) >= 1, "unexpected balance!");
			uint[] memory _splitRatios = new uint[](2);
			
			_splitRatios[0] = _ts-_utamt;
			_splitRatios[1] = _utamt;
			VENFT.split( _splitRatios, ID);
		}
		{
			uint _newID = VENFT.tokenOfOwnerByIndex(address(this), VENFT.balanceOf(address(this)) - 2 );
			ID = _newID;

			int _uvi = VENFT.locked(_newID + 1).amount; 
			uint _uv = uint256(_uvi);

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
	function rescueNFT(uint _id) external DAO lock {
		require(ID!=_id, "Cannot rescue main nft!");
		VENFT.safeTransferFrom(address(this), msg.sender, _id);
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

	function info(
		address _user
	)
	public
	view
	returns(
		uint[] memory, //uint[10] memory,
		address[] memory,
		uint[] memory,
		
		uint[] memory
	) {

		uint[] memory _basics = new uint[]( 13 );	//+ pendingRedemptions[_user].length);

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
			_venftUserData
		);

		
	}
}
