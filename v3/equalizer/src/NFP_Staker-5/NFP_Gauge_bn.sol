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




    ▀█▀░█░█░█░█▀░█▄▀
    ░█░░█▀█░█░█▄░█▀▄

	Thick Liquidity Protocol
	> Network agnostic Decentralized Exchange for ERC20 tokens


   Contributors:
    -   543#3017 (Sam, @i543), ftm.guru, Eliteness.network


  SPDX-License-Identifier: UNLICENSED

*/
/*
	Users deposit an NFP, an NFT minted from 2THICK
	Depositing claims any pending fee and sends to user
	User can claim rewards from Partner Reward distributor using Merkle trees, from Steer, etc.
	Users withdraw their NFP from this contract.
	Withdrawing claims any pending fee and sends to a Liquidity Marketplace, like Equalizer, etc.
*/

pragma solidity 0.8.9;

// interfaces
import "./I_2ThickPool.sol";
import "./I_ERC20.sol";
import "./I_NFPM.sol";
import "./I_Gauge.sol";
import "./I_Bribe.sol";
import "./I_Voter.sol";
import "./I_VotingEscrow.sol";
import "./I_SteerSmartRewarder_bn.sol";		//		<---- using "BN" version

// contracts
import "./Ownable.sol";
import "./Enumerable.sol";
import "./ReentrancyGuard.sol";

// main
contract NFP_Staker is Ownable, ReentrancyGuard, Enumerable {

	// constants
	I2ThickPool public pool;
	INFPM public nfpm;
	int24 public tickSpacing;
	IERC20 public token0;
	IERC20 public token1;
	IVotingEscrow public ve;
	IVoter public voter;

	// variables
    IGauge public gauge;
	IBribe public bribe;

	// admin vars
    bool public paused;
    address public feeTaker;

    // Records
	uint public fees0Earned;
	mapping(uint=>uint) public fees0EarnedDuring;
	mapping(uint=>uint) public fees0EarnedByNFP;
	mapping(uint=>mapping(uint=>uint)) public fees0EarnedByNFPDuring;
	mapping(address=>uint) public fees0EarnedByUser;
	mapping(address=>mapping(uint=>uint)) public fees0EarnedByUserDuring;

	uint public fees1Earned;
	mapping(uint=>uint) public fees1EarnedDuring;
	mapping(uint=>uint) public fees1EarnedByNFP;
	mapping(uint=>mapping(uint=>uint)) public fees1EarnedByNFPDuring;
	mapping(address=>uint) public fees1EarnedByUser;
	mapping(address=>mapping(uint=>uint)) public fees1EarnedByUserDuring;

	// events
    event ProtocolFees(address indexed initiator, address indexed taker, address indexed token, uint amount);
    event DispatchFees(address indexed initiator, address indexed beneficiary, address indexed token, uint amount);
    event ClaimFees(address indexed initiator, address indexed beneficiary, uint indexed _tokenId, uint amount0, uint amount1);
    event Deposit(address indexed _operator, address indexed _beneficiary, uint indexed _tokenId, int128 _lo, int128 _up, uint _li);
    event Withdraw(address indexed _operator, address indexed _beneficiary, uint indexed _tokenId, int128 _lo, int128 _up, uint _li);

    ISteerSmartRewarder public SteerSmartRewarder;


    // modifiers
    modifier checkPaused() {
    	require( !paused , "p!");
    	_;
    }

	// init
	function initialize(I2ThickPool _pool, INFPM _nfpm, IGauge _lmgauge, ISteerSmartRewarder _s) external {
		require(interactions == 0, "reinit");
		interactions++;
		pool = _pool;
		nfpm = _nfpm;
		token0 = IERC20(_pool.token0());
		token1 = IERC20(_pool.token1());
		tickSpacing = _pool.tickSpacing();

		// Ownable
		_transferOwnership(_msgSender());

		// Liquidity Market
        gauge = IGauge(_lmgauge);
        ve = IVotingEscrow(_lmgauge.ve());
        voter = IVoter(_lmgauge.voter());
        address _b = voter.bribes(address(_lmgauge));
        _setBribe(_b);

        // Rewarder
        SteerSmartRewarder= _s;
	}

	// NOTE : Both these deposit functions require approval first, nfpm.approve(gauge,nid) call by the caller
	// NOTE : Caller's NFP is taken and deposited for Caller
	function deposit(uint _nid) external checkPaused {
		nfpm.safeTransferFrom(msg.sender, address(this), _nid , abi.encode(msg.sender));
	}
	// NOTE : Caller's NFP is taken and deposited for beneficiary
	function depositFor(uint _nid, address _beneficiary) external checkPaused {
		nfpm.safeTransferFrom(msg.sender, address(this), _nid , abi.encode(_beneficiary));
	}

    /**
     * @dev Whenever an {IERC721} `tokenId` token is transferred to this contract via {IERC721-safeTransferFrom}
     * by `operator` from `from`, this function is called.
     *
     * It must return its Solidity selector to confirm the token transfer.
     * If any other value is returned or the interface is not implemented by the recipient, the transfer will be reverted.
     *
     * The selector can be obtained in Solidity with `IERC721.onERC721Received.selector`.
     */
    function onERC721Received(
        address _operator,
        address _from,
        uint256 _tokenId,
        bytes calldata _encParams
    ) external checkPaused nonReentrant returns (bytes4) {
    	require(msg.sender == address(nfpm), "!nfpm");
		// Who?
		address _beneficiary;
		// Staking by Direct Transfer from wallet
		if(_operator == _from && _encParams.length == 0) {
			require(_from != address(0), "o1");
			_beneficiary = _from;
		}
		// Staking by Approved contract. can be from this.deposit*()
		else if(_encParams.length == 40){
			_beneficiary = abi.decode(_encParams, (address));
			require(
				_beneficiary != address(0)
				&& _beneficiary != address(this)
				&& _beneficiary != address(nfpm)
				&& _beneficiary != address(token0)
				&& _beneficiary != address(token1)
				, "bp"
			);
		}
		else {
			revert("!_encParams");
		}
		//

    	// Checks
    	(,, address _t0, address _t1, int24 _ts, int128 _lo, int128 _up, uint _li,,,,) = nfpm.positions(_tokenId);
    	require(_t0 == address(token0), "d0");
    	require(_t1 == address(token1), "d1");
    	require(_ts == tickSpacing, "d2");

        // Update Enumerable
        addToken(_beneficiary, _tokenId);

        // Forward revenues to liquidty marketplace
		_claimFees(_tokenId);

        emit Deposit(_operator, _beneficiary, _tokenId, _lo, _up, _li);
        return this.onERC721Received.selector;
	}



	function withdraw(uint _nid) external checkPaused nonReentrant {
		require( ownerOf(_nid) == msg.sender , "!owner" );

        // Forward revenues to liquidty marketplace
		_claimFees(_nid);

    	(,,,,,int128 _lo, int128 _up, uint _li,,,,) = nfpm.positions(_nid);
        // Update Enumerable
        removeToken(msg.sender, _nid);
        nfpm.safeTransferFrom(address(this), msg.sender, _nid);
        emit Withdraw(msg.sender, msg.sender, _nid, _lo, _up, _li);
	}

	function withdrawTo(uint _nid, address _to) external checkPaused nonReentrant {
		require( ownerOf(_nid) == msg.sender , "!owner" );

        // Forward revenues to liquidty marketplace
		_claimFees(_nid);

    	(,,,,,int128 _lo, int128 _up, uint _li,,,,) = nfpm.positions(_nid);
        // Update Enumerable
        removeToken(msg.sender, _nid);
        nfpm.safeTransferFrom(address(this), _to, _nid);
        emit Withdraw(msg.sender, _to, _nid, _lo, _up, _li);
	}



	function claimFeesOfAllIdsOfUser(address _user) external checkPaused nonReentrant {
		_claimFeesOfAllIdsOfUser(_user);
	}

	function _claimFeesOfAllIdsOfUser(address _user) internal {
		for(uint i;i<balanceOf(_user);i++) {
			_claimFees( tokenOfOwnerByIndex(_user, i) );
		}
	}

	function claimFeesOfMultipleIds(uint[] calldata _ids)  external checkPaused nonReentrant {
			for(uint i; i<_ids.length; i++) {
				_claimFees( _ids[i] );
			}
	}

	function claimFeesOf(uint _start, uint _end)  external checkPaused nonReentrant {
		if(_end == 0 || _end < _start) {
			// claim everyone's
			uint[] memory _all = nfpm.allTokensOf(address(this));
			for(uint i; i<_all.length; i++) {
				_claimFees(_all[i]);
			}
		}
		else {
			{
				uint _bal = nfpm.balanceOf(address(this));
				if(_end >= _bal) {
					_end = _bal - 1;
				}
			}
			for(uint i=_start; i<_end; i++) {
				_claimFees( nfpm.tokenOfOwnerByIndex(address(this), i) );
			}
		}
	}

	function claimFees(uint _nid) external checkPaused nonReentrant returns(uint,uint) {
		return _claimFees(_nid);
	}

	function _claimFees(uint _nid) internal returns(uint,uint) {
        // Liquidity Market overrides
        uint _pfpm = voter.protocolFeesPerMillion();
        address _pft = _pfpm > 0 ? voter.protocolFeesTaker() : address(0);

        // actual nfpm.collect()
		INFPM.CollectParams memory _cp;
		_cp.tokenId = _nid;
        _cp.recipient = address(this);
        _cp.amount0Max = type(uint128).max;
        _cp.amount1Max = type(uint128).max;


		nfpm.collect(_cp);

		if( address(bribe) == address(0) ) {
			return (0,0);
		}
		else {
			uint _ept = block.timestamp / 7 days * 7 days;
			address _user = ownerOf(_nid);
			uint _fc0 = token0.balanceOf(address(this));
			uint _fc1 = token1.balanceOf(address(this));
			if(_fc0>0) {
				fees0Earned += _fc0;
				fees0EarnedDuring[_ept] += _fc0;
				fees0EarnedByNFP[_nid] += _fc0;
				fees0EarnedByNFPDuring[_nid][_ept] += _fc0;
				fees0EarnedByUser[_user] += _fc0;
				fees0EarnedByUserDuring[_user][_ept] += _fc0;
				_dispatchFees( token0 , _fc0 , _pft , _pfpm );
			}
			if(_fc1>0) {
				fees1Earned += _fc1;
				fees1EarnedDuring[_ept] += _fc1;
				fees1EarnedByNFP[_nid] += _fc1;
				fees1EarnedByNFPDuring[_nid][_ept] += _fc1;
				fees1EarnedByUser[_user] += _fc1;
				fees1EarnedByUserDuring[_user][_ept] += _fc1;
				_dispatchFees( token1 , _fc1 , _pft , _pfpm );
			}

			emit ClaimFees( msg.sender , _user , _nid , _fc0 , _fc1 );
			return (_fc0,_fc1);
		}

	}

	function _dispatchFees(IERC20 _tkn, uint _amt, address _pft, uint _pfpm) internal {
		///Protocol Fees
        {
        	uint _pfa = ( _amt * _pfpm / 1e6 );
        	if( _pfa > 0 && _pft != address(0) ) {
        		_tkn.transfer( _pft , _pfa );
        		emit ProtocolFees( msg.sender , _pft , address(_tkn) , _pfa );
        		_amt = _amt - _pfa;
        		// break if 100% is protocol fee
        		if(_amt < 2) {
        			return;
        		}
        	}
        }

        ///Normal Fees -> Bribe
        if (feeTaker == address(0)) {
        	try bribe.notifyRewardAmount(address(_tkn), _amt) {
        		emit DispatchFees( msg.sender, address(bribe) , address(_tkn) , _amt );
        	} catch {}
        }
        ///Re-channeled Fees -> FeesTaker
        else {
        	_tkn.transfer( feeTaker , _amt );
        	emit DispatchFees( msg.sender , feeTaker , address(_tkn) , _amt );
        }
	}


    /// When feeTaker is set, all Fees Claims go to it instead of going to the Bribe.
    /// Useful during a platform-wide upgrade (optional)
    function setFeeTaker(address _ft) external onlyOwner {
        feeTaker = _ft;
    }

    function setPaused(bool _b) external onlyOwner {
        paused = _b;
    }

    function setSteerSmartRewarder(ISteerSmartRewarder _s) external onlyOwner {
        SteerSmartRewarder= _s;
    }

    function setGauge(IGauge _g) external onlyOwner {
        gauge = _g;
    }

    function setBribe(address _b) external {
        require(msg.sender==address(voter) || msg.sender==owner(), "Who U"); // Un-authorized!
		_setBribe(_b);
	}
    function _setBribe(address _b) internal {
        address _ob = address(bribe);
        if(_ob != address(0)) {
        	token0.approve(_ob, 0);	// revoke old-bribe allowances
        	token1.approve(_ob, 0);	// revoke old-bribe allowances
        }
		token0.approve(_b, type(uint256).max); // approve new bribe
        token1.approve(_b, type(uint256).max); // approve new bribe
        bribe = IBribe(_b);
    }

    function name() external view returns(string memory) {
    	return gauge.name();
    }

    function symbol() external view returns(string memory) {
    	return gauge.symbol();
    }

    function decimals() external pure returns(uint) {
    	return 0;
    }


	function claim(
        address[] calldata users,
        uint256[] calldata campaignIds,
        uint256[] calldata amounts,
        bytes32[][] calldata proofs
    ) external checkPaused nonReentrant {
    	try voter.distribute(address(gauge)) {} catch {}
		for(uint i;i<users.length;i++){
			_claimFeesOfAllIdsOfUser(users[i]);
		}
		SteerSmartRewarder.claim(users, campaignIds, amounts, proofs);
    }

    function left(address) external pure returns(uint) {
    	return 0;
    }

    function notifyRewardAmount(IERC20 _tkn, uint _ramt) external checkPaused nonReentrant {
    	require(_tkn.transferFrom(msg.sender, address(this), _ramt), "n1");
		if(_tkn.allowance(address(this), address(SteerSmartRewarder)) < _ramt) {
			_tkn.approve( address(SteerSmartRewarder) , type(uint256).max);
		}
		SteerSmartRewarder.createRewardCampaign(
			ISteerSmartRewarder.RewardCampaignParams({
        		owner: owner(),
        		liquidityPool: address(pool),
        		rewardToken: address(_tkn),
        		escrowAmount: _ramt,
	        		// old per-block rewards streaming
        		startBlock: block.number + 1,
        		endBlock: block.number + 1_337_000,
        		campaignParamsIPFSHash: "Qmd9hzvFt3Y6tqJQtgnJA5DABUsULYiDVqy68FFucpQs9H"
    	    		// new per-second rewards streaming
    	    	///startTimestamp: block.timestamp + 1,
    	    	///endTimestamp: block.timestamp + 7 days,
        		///campaignParamsIPFSHash: "QmWc8fHsK24TqmFroPr26YvfvDJLi4WXLqKa4rXFhcT9jp"
			})
		);

    }


	// to do
	// toggle enable/disable _claimFee
	// info()

}