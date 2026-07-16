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


	eTHENA.sol

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

pragma solidity ^0.8.17;

interface IERC20 {
	function totalSupply() external view returns (uint256);
	function balanceOf(address) external view returns (uint);
	function transfer(address recipient, uint amount) external returns (bool);
	function transferFrom(address sender, address recipient, uint amount) external returns (bool);
	function burn(uint amount) external;
}
interface IelToken is IERC20 {
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
	function create_lock_for(uint _value, uint _lock_duration, address _to) external returns (uint);
    function safeTransferFrom(address from, address to, uint256 tokenId) external;
    function locked(uint id) external view returns(LockedBalance memory);
	function token() external view returns (address);
	function merge(uint _from, uint _to) external;
	function setApprovalForAll(address _who, bool _give) external;
	function split(uint[] memory amounts, uint _tokenId) external;
	function tokenOfOwnerByIndex(address _owner, uint _tokenIndex) external view returns (uint);
}
interface IVoter {
	function _ve() external view returns (address);
	function poolVoteLength(uint256) external view returns (uint256);
	function poolVote(uint256, uint256) external view returns (address);
	function reset(uint256) external;
	function votes(uint256, address) external view returns (uint256);
	function vote(uint256, address[] memory, uint256[] memory) external view returns (uint256);
	function claimBribes(address[] memory _bribes, address[][] memory _tokens, uint _tokenId) external;
}
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

contract elTokenManager {
	struct LockedBalance {
		int128 amount;
		uint end;
	}

	bool internal _locked; /// @notice ftm.guru simple re-entrancy check

	uint public ID;
	address public dao;

	IelToken public ELTOKEN;
	IVotingEscrow public VENFT;
	IVoter public VOTER;

	mapping(address => bool) public voteManager;
	mapping(uint256 => address[]) public votedPools;
	mapping(uint256 => uint[]) public votedWeights;

	uint votedTime;
	uint feesToDao = 0.1e18;
	uint feesToBurn = 0.05e18;

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

	event Deposit(address indexed user, uint nft, uint veAmount, uint shares, uint wen);
	event Withdraw(address indexed user, uint nft, uint veAmount, uint shares, uint wen);

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    function onERC721Received(address, address,  uint256, bytes calldata) external view returns (bytes4) {
        require(msg.sender == address(VENFT), "!veToken");
        require(_locked, "unwanted");
        return bytes4(keccak256("onERC721Received(address,address,uint256,bytes)"));
    }

	function initialize(address _vo, address _el, uint _id) external DAO lock {
		require(dao == address(0));
		dao = msg.sender;
		voteManager[msg.sender] = true;
		VOTER = IVoter(_vo);
		VENFT = IVotingEscrow(VOTER._ve());
		ELTOKEN = IelToken(_el);
		ID = _id;
		if(ELTOKEN.totalSupply() == 0) {
			IVotingEscrow.LockedBalance memory _main = VENFT.locked(_id);
			require(_main.amount > 0, "Dirty veNFT!");
			int _iamt = _main.amount;
			uint _amt = uint(_iamt);
			ELTOKEN.mint(msg.sender, _amt);
		}
	}

	function deposit(uint _id) external lock returns (uint) {
		uint _ts = ELTOKEN.totalSupply();
		IVotingEscrow.LockedBalance memory _main = VENFT.locked(ID);
		require(_main.amount > 0, "Dirty veNFT!");
		int _ibase = _main.amount;	//pre-cast to int
		uint256 _base = uint256(_ibase);
		VENFT.safeTransferFrom(msg.sender, address(this), _id);
		//VENFT.safeTransferFrom(dao, address(this), ID);
		VENFT.merge(_id,ID);
		//VENFT.safeTransferFrom(address(this), dao, ID);
		IVotingEscrow.LockedBalance memory _merged = VENFT.locked(ID);
		int _in = _merged.amount - _main.amount;
		require(_in > 0, "Dirty Deposit!");
		uint256 _inc = uint256(_in);//cast to uint
		// If no eTHENA exists, mint it 1:1 to the amount of THE present inside the veNFT deposited
		if (_ts == 0 || _base == 0) {
			ELTOKEN.mint(msg.sender, _inc);
			emit Deposit(msg.sender, _id, _inc, _inc, block.timestamp);
			// Carry forward old votes into new nft
			_revote();
			return _inc;
		}
		// Calculate and mint the amount of eTHENA the veNFT is worth. The ratio will change overtime,
		// as eTHENA is minted when veTHE are deposited + gained from rebases
		else {
			uint256 _amt = (_inc * _ts) / _base;
			ELTOKEN.mint(msg.sender, _amt);
			emit Deposit(msg.sender, _id, _inc, _amt, block.timestamp);
			// Carry forward old votes into new nft
			_revote();
			return _amt;
		}
	}



	function withdraw(uint _tamt) external lock returns(uint) {
		require(ELTOKEN.transferFrom(msg.sender, address(this), _tamt), "in folded");
		// first stamp tokens per share
		uint _ts = ELTOKEN.totalSupply();
		/*
		IVotingEscrow.LockedBalance memory _main = VENFT.locked(ID);
		uint256 _base;
		{
			require(_main.amount > 0, "Dirty veNFT!");
			int _ibase = _main.amount;	//pre-cast to int
			_base = uint256(_ibase);
		}
		*/
		uint _utamt;
		// take fees
		{
			uint _dao = _tamt * feesToDao / 1e18;
			ELTOKEN.transfer(dao, _dao);
			uint _burn = _tamt * feesToBurn / 1e18;
			ELTOKEN.burn(_burn);
			_utamt = _tamt - _dao - _burn;
		}
		// split into two : [_ts-_utamt , _utamt]
		{
			VOTER.reset(ID);
			VENFT.safeTransferFrom(dao, address(this), ID);
			require(VENFT.balanceOf(address(this)) == 1, "unexpected balance!");
			uint[] memory _splitRatios = new uint[](2);
			_splitRatios[0] = _ts-_utamt;
			_splitRatios[1] = _utamt;
			VENFT.split( _splitRatios, ID);
		}
		// fees accrued into first, user gets second
		{
			uint _newID = VENFT.tokenOfOwnerByIndex(address(this), 0);
			ID = _newID;
			VENFT.safeTransferFrom(address(this), dao, _newID);
			VENFT.safeTransferFrom(address(this), msg.sender, _newID + 1);
			// Carry forward old votes into new dao nft
			_revote();

			int _uvi = VENFT.locked(_newID + 1).amount;
			uint _uv = uint256(_uvi);
			emit Withdraw(msg.sender, _newID + 1, _uv, _tamt, block.timestamp);
			return _uv;
		}
	}

	function _revote() internal {
		uint _ept = getCurrentEpoch();
		VOTER.vote(ID, votedPools[_ept], votedWeights[_ept]);
		votedTime = block.timestamp;
	}

	function vote(address[] memory _p, uint[] memory _w) OnlyVoteManagers external lock {
		VOTER.vote(ID, _p, _w);
		uint _ept = getCurrentEpoch();
		delete votedPools[_ept];
		delete votedWeights[_ept];
		votedPools[_ept] = new address[](_p.length);
		votedWeights[_ept] = new uint[](_w.length);
		for(uint i; i< _p.length; i++) {
			votedPools[_ept].push(_p[i]);
			votedWeights[_ept].push(_w[i]);
		}
		votedTime = block.timestamp;
	}

	function mirrorVotesFrom(uint _mi) OnlyVoteManagers external lock {
		uint _len = VOTER.poolVoteLength(_mi);
		require( _len > 0, "Target hasnt voted!");
		address[] memory _miPools = new address[](_len);
		uint[] memory _miWeights = new uint[](_len);
		for(uint i; i<_len; i++){
			_miPools[i] = VOTER.poolVote(_mi, i);
			_miWeights[i] = VOTER.votes(_mi, _miPools[i]);
		}
		VOTER.vote(ID, _miPools, _miWeights);
		uint _ept = getCurrentEpoch();
		delete votedPools[_ept];
		delete votedWeights[_ept];
		votedPools[_ept] = new address[](_len);
		votedWeights[_ept] = new uint[](_len);
		for(uint i; i< _len; i++) {
			votedPools[_ept].push(_miPools[i]);
			votedWeights[_ept].push(_miWeights[i]);
		}
		votedTime = block.timestamp;
	}

	/*
	function claimBribes(address[] memory _bribes, address[][] memory _tokens, uint _tokenId) OnlyVoteManagers external lock {
		;
	}
	*/

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
	function setFees(uint _d, uint _b) external DAO lock {
		require(_d+_b <= 0.5e18, "fee too high!");
		feesToDao = _d;
		feesToBurn = _b;
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
		// If no eTHENA exists, mint it 1:1 to the amount of THE present inside the veNFT deposited
		if (_ts == 0 || _base == 0) {
			return _inc;
		}
		// Calculate and mint the amount of eTHENA the veNFT is worth. The ratio will change overtime,
		// as eTHENA is minted when veTHE are deposited + gained from rebases
		else {
			uint256 _amt = (_inc * _ts) / _base;
			return _amt;
		}
	}
	function rawQuote(uint _inc) public view returns (uint) {
		uint _ts = ELTOKEN.totalSupply();
		IVotingEscrow.LockedBalance memory _main = VENFT.locked(ID);
		if( ! (_main.amount > 0) ) {return 0;}
		int _ibase = _main.amount;	//pre-cast to int
		uint256 _base = uint256(_ibase);
		// If no eTHENA exists, mint it 1:1 to the amount of THE present inside the veNFT deposited
		if (_ts == 0 || _base == 0) {
			return _inc;
		}
		// Calculate and mint the amount of eTHENA the veNFT is worth. The ratio will change overtime,
		// as eTHENA is minted when veTHE are deposited + gained from rebases
		else {
			uint256 _amt = (_inc * _ts) / _base;
			return _amt;
		}
	}

	function price() public view returns (uint) {
		return 1e36 / rawQuote(1e18);
	}

	function getCurrentVote() public view returns (uint _id, uint _wen, address[] memory _pools, uint[] memory _wt) {
		return(ID, votedTime, votedPools[getCurrentEpoch()], votedWeights[getCurrentEpoch()]);
	}
}

/*
	Community, Services & Enquiries:
		https://discord.gg/QpyfMarNrV

	Powered by Guru Network DAO ( 🦾 , 🚀 )
		Simplicity is the ultimate sophistication.
*/