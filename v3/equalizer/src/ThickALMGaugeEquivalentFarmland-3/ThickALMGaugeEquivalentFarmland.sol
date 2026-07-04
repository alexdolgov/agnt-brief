/**
 *Submitted for verification at SonicScan.org on 2025-01-01
*/

/**
 *Submitted for verification at basescan.org on 2024-06-23
*/

/**
 *Submitted for verification at basescan.org on 2024-02-10
*/

/**
 *Submitted for verification at ftmscan.com on 2024-01-21
*/

/**

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


   Thick Contributors:
    -   Uniswap.org
    -   543#3017 (Sam, @i543), ftm.guru, Eliteness.network




 *  Thick DEX : Concentrated Liquidity DEX
 *  ⇢ https://eliteness.network/thick
 *
 *  Equalizer : A Prominent Liquidity Hub on Fantom & Base!
 *  ⇢ https://equalizer.exchange
 *
 *  Equalizer Contributors:
 *   -   Synthetix Network
 *   -   Curve Finance
 *   -   Andre Cronje, Solidly.Exchange
 *   -   543 (Sam), ftm.guru, Eliteness.netowork & Equalizer.exchange
 *
 *
 *  Version: v3.3.4
 *  - Using Universal PriceGuru instead of Local TvlGuru
 *  - Publicize _guardCounter as interactions
 *
 *
 *  Version: v3.3.1
 *	- Thick DEX's ALM's Gauge-Equivalent Farmland
 *	- Supports Proxy pattern
 *	  - Initializable
 *	- Bug Fix
 *	  - Enable Enhanced Griefing Protection (EGPE) override
 *	  - Use 0 as default for APR & TVL
 *  - Reject new rewards in absence of depositors.
 *
 *
 *
 *
 ****************************************************************************
 *               IMPORTANT SAFETY DISCLOSURE : Proxied Usage                *
 ****************************************************************************
 *
 *	This Contract is RECOMMENEDED for use with an EIP1167 non-upgradable proxy.
 *	- ERC1167
 *	  - "Clones"
 *	  - NON-UPGRADABLE
 *	    - Immutable once deployed
 *	    - Admins CANT edit contract code.
 *	    - Admins DONT have hard rug powers.
 *	  - Cheaper to deploy
 *	    - Deployement costs ~70k gas
 *	    - Initialization costs ~300k gas
 *	    - Additional Setup costs may vary based on configs
 *    - HOW TO VERIFY?
 *      - Ensure the "Proxy pattern" is marked as "Minimal", "Clone" or "EIP-1167" on the Explorer!
 *      - Check if "implementation" contract is verfied on the Explorer!
 *      - Check if "implementation" has real source code which is not a proxy!
 *
 *
 *	This Contract can be used but is NOT recommeneded for use with EIP1967 unless really necessary.
 *	- ERC1967
 *	  - "UUPS" Universal Upgradable Proxy Standard
 *	  - UPGRADABLE
 *	    - NOT Immutable!
 *	    - Admins CAN edit contract code!
 *	    - Admins DO have hard rug powers! Make sure the admins are trustworthy!
 *	  - Expensive to deploy
 *	    - Deployement costs ~700k gas
 *	    - Initialization costs ~300k gas
 *	    - Additional Setup costs may vary based on configs
 *    - HOW TO VERIFY?
 *      - Ensure the "Proxy pattern" is marked as "Transparent", "UUPS" or "EIP-1967"!
 *      - Check if "implementation" contract is verfied on the Explorer!
 *      - Check if "implementation" has real source code which is not a proxy!
 *
 ****************************************************************************
 ****************************************************************************
 *
 *
 *  Version: v3.0.4
 *	- Fertilizer Gauge-Equivalent Farmland
 *
 *	Version: v3.0.3
 *
 *	Version: v3.0.0
 *	- Split `baseReward`
 *	  - veRewards Split Ratio
 *	  - SplitLockTime
 *	- Gauge Receipts (ERC20) Tracker
 *
 *
 *	SPDX-License-Identifier: UNLICENSED
*/


/**
 *v1.5.5
 *0xf438b2fdf46ea176ebf99ec7852c4699e8e38b1f
 *Submitted for verification at FtmScan.com on 2023-03-27
*/



pragma solidity 0.8.9;
//ftm.guru's Universal On-chain TVL Calculator
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

// File: contracts/interfaces/IGaugeFactory.sol

///interface IGaugeFactory {
    ///function createGauge(address, address, address, bool, address[] memory) external returns (address);
///}

// File: contracts/interfaces/IVotingEscrow.sol

interface IVotingEscrow {
    function token() external view returns (address);
    function team() external returns (address);
    function voter() external returns (address);
    function create_lock_for(uint, uint, address) external returns (uint);
}

// File: contracts/interfaces/IVoter.sol

interface IVoter {
    function _ve() external view returns (address);
    function protocolFeesTaker() external view returns (address);
    function protocolFeesPerMillion() external view returns (uint);
    function distribute(address _gauge) external;
    function bribes(address _gauge) external view returns (address);
}
// File: contracts/interfaces/IPair.sol

interface IPair {
    function claimFees() external;// returns (uint, uint);
    function transferFrom(address src, address dst, uint amount) external returns (bool);
}

// File: contracts/interfaces/IERC20.sol

interface IERC20 {
    function totalSupply() external view returns (uint256);
    function transfer(address recipient, uint amount) external returns (bool);
    function symbol() external view returns (string memory);
    function name() external view returns (string memory);
    function decimals() external view returns (uint8);
    function balanceOf(address) external view returns (uint);
    function transferFrom(address sender, address recipient, uint amount) external returns (bool);
    function allowance(address owner, address spender) external view returns (uint);
    function approve(address spender, uint value) external returns (bool);
}

// File: contracts/interfaces/IBribe.sol

interface IBribe {
    function notifyRewardAmount(address token, uint amount) external;
    function left(address token) external view returns (uint);
    function rewardsListLength() external view returns (uint);
    function rewards(uint) external view returns (address);
}

// File: contracts/interfaces/IPrice.sol

interface IPriceGuru {
    function getAssetPrice(address) external view returns (uint);
}


library Address {
    /**
     * @dev Returns true if `account` is a contract.
     *
     * This test is non-exhaustive, and there may be false-negatives: during the
     * execution of a contract's constructor, its address will be reported as
     * not containing a contract.
     *
     * > It is unsafe to assume that an address for which this function returns
     * false is an externally-owned account (EOA) and not a contract.
     */
    function isContract(address account) internal view returns (bool) {
        // This method relies in extcodesize, which returns 0 for contracts in
        // construction, since the code is only stored at the end of the
        // constructor execution.

        uint256 size;
        // solhint-disable-next-line no-inline-assembly
        assembly { size := extcodesize(account) }
        return size > 0;
    }
}

library Math {
    /**
     * @dev Returns the largest of two numbers.
     */
    function max(uint256 a, uint256 b) internal pure returns (uint256) {
        return a >= b ? a : b;
    }

    /**
     * @dev Returns the smallest of two numbers.
     */
    function min(uint256 a, uint256 b) internal pure returns (uint256) {
        return a < b ? a : b;
    }

    /**
     * @dev Returns the average of two numbers. The result is rounded towards
     * zero.
     */
    function average(uint256 a, uint256 b) internal pure returns (uint256) {
        // (a + b) / 2 can overflow, so we distribute
        return (a / 2) + (b / 2) + ((a % 2 + b % 2) / 2);
    }
}

contract ReentrancyGuard {
    /// @dev counter to allow mutex lock with only one SSTORE operation
    uint256 public interactions;

    /**
    /// constructor is useless in our initializable pattern.
    /// we set it up in the outermost initialization
    constructor () {
        // The counter starts at one to prevent changing it from zero to a non-zero
        // value, which is a more expensive operation.
        _guardCounter = 1;
    }
    **/

    /**
     * @dev Prevents a contract from calling itself, directly or indirectly.
     * Calling a `nonReentrant` function from another `nonReentrant`
     * function is not supported. It is possible to prevent this from happening
     * by making the `nonReentrant` function external, and make it call a
     * `private` function that does the actual work.
     */
    modifier nonReentrant() {
        interactions += 1;
        uint256 localCounter = interactions;
        _;
        require(localCounter == interactions, "RG!");
    }
}


library SafeERC20 {
    using SafeMath for uint256;
    using Address for address;

    function safeTransfer(IERC20 token, address to, uint256 value) internal {
        callOptionalReturn(token, abi.encodeWithSelector(token.transfer.selector, to, value));
    }

    function safeTransferFrom(IERC20 token, address from, address to, uint256 value) internal {
        callOptionalReturn(token, abi.encodeWithSelector(token.transferFrom.selector, from, to, value));
    }

    function safeApprove(IERC20 token, address spender, uint256 value) internal {
        // safeApprove should only be called when setting an initial allowance,
        // or when resetting it to zero. To increase and decrease it, use
        // 'safeIncreaseAllowance' and 'safeDecreaseAllowance'
        // solhint-disable-next-line max-line-length
        require((value == 0) || (token.allowance(address(this), spender) == 0),
            "SE0" //"SafeERC20: non-zero to non-zero"
        );
        callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, value));
    }

    function safeIncreaseAllowance(IERC20 token, address spender, uint256 value) internal {
        uint256 newAllowance = token.allowance(address(this), spender).add(value);
        callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, newAllowance));
    }

    function safeDecreaseAllowance(IERC20 token, address spender, uint256 value) internal {
        uint256 newAllowance = token.allowance(address(this), spender).sub(value);
        callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, newAllowance));
    }

    /**
     * @dev Imitates a Solidity high-level call (i.e. a regular function call to a contract), relaxing the requirement
     * on the return value: the return value is optional (but if data is returned, it must not be false).
     * @param token The token targeted by the call.
     * @param data The call data (encoded using abi.encode or one of its variants).
     */
    function callOptionalReturn(IERC20 token, bytes memory data) private {
        // We need to perform a low level call here, to bypass Solidity's return data size checking mechanism, since
        // we're implementing it ourselves.

        // A Solidity high level call has three parts:
        //  1. The target address is checked to verify it contains contract code
        //  2. The call itself is made, and success asserted
        //  3. The return value is decoded, which in turn checks the size of the returned data.
        // solhint-disable-next-line max-line-length
        require(address(token).isContract(), "SE1"); //SafeERC20: non-contract

        // solhint-disable-next-line avoid-low-level-calls
        (bool success, bytes memory returndata) = address(token).call(data);
        require(success, "SE2"); //low-level call fail

        if (returndata.length > 0) { // Return data is optional
            // solhint-disable-next-line max-line-length
            require(abi.decode(returndata, (bool)), "SE3"); //SafeERC20: !success
        }
    }
}

library SafeMath {
    /**
     * @dev Returns the addition of two unsigned integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `+` operator.
     *
     * Requirements:
     * - Addition cannot overflow.
     */
    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 c = a + b;
        require(c >= a, "+OF"); // addition overflow

        return c;
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting on
     * overflow (when the result is negative).
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     * - Subtraction cannot overflow.
     */
    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b <= a, "-OF"); // subtraction overflow
        uint256 c = a - b;

        return c;
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `*` operator.
     *
     * Requirements:
     * - Multiplication cannot overflow.
     */
    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
        // Gas optimization: this is cheaper than requiring 'a' not being zero, but the
        // benefit is lost if 'b' is also tested.
        // See: https://github.com/OpenZeppelin/openzeppelin-solidity/pull/522
        if (a == 0) {
            return 0;
        }

        uint256 c = a * b;
        require(c / a == b, "*OF"); // multiplication overflow

        return c;
    }

    /**
     * @dev Returns the integer division of two unsigned integers. Reverts on
     * division by zero. The result is rounded towards zero.
     *
     * Counterpart to Solidity's `/` operator. Note: this function uses a
     * `revert` opcode (which leaves remaining gas untouched) while Solidity
     * uses an invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     * - The divisor cannot be zero.
     */
    function div(uint256 a, uint256 b) internal pure returns (uint256) {
        // Solidity only automatically asserts when dividing by 0
        require(b > 0, "/0"); // division by zero
        uint256 c = a / b;
        // assert(a == b * c + a % b); // There is no case in which this doesn't hold

        return c;
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * Reverts when dividing by zero.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     * - The divisor cannot be zero.
     */
    function mod(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b != 0, "%0"); // modulo by zero"
        return a % b;
    }
}

contract ThickALMGaugeEquivalentFarmland is ReentrancyGuard {
    using SafeMath for uint256;
    using SafeERC20 for IERC20;

    /* ========== STATE VARIABLES ========== */

    struct Reward {
        address rewardsDistributor;
        uint256 rewardsDuration;
        uint256 periodFinish;
        uint256 rewardRate;
        uint256 lastUpdateTime;
        uint256 rewardPerTokenStored;
    }

	// Initializer
	bool internal _initialized;

    // Constants
    IERC20 public stake;
    IVotingEscrow public ve;
    IVoter public voter;
    //bool public isForPair;
    address public baseReward;

    bool public paused;
    mapping(address => Reward) public rewardData;
    address[] public rewardTokens;
    address[] public bribeTokens;
    address public gauge;
    IBribe public bribe;

    // user -> reward token -> amount
    mapping(address => mapping(address => uint256)) public userRewardPerTokenPaid;
    mapping(address => mapping(address => uint256)) public rewards;
    mapping(address => bool) public isReward;
    mapping(address => bool) public isBribeToken;

    uint256 private _totalSupply;
    mapping(address => uint256) private _balances;

    address public feeTaker;
    uint256 public splitRatio;	//per million
    uint256 public splitLocktime;

    mapping(address => uint) public payouts;
    mapping(address => uint) public payoutsNotified;
    mapping(address => mapping(address => uint)) public earnings;
    mapping(address => uint) public totalFeesPayouts;

    address public manager;
    address public tradeFeesCollector;

    /*
    mapping(address => address) public TvlGuru;
    mapping(address => bytes) public TvlPriceFeed;
    */
    IPriceGuru public PriceGuru;



    //////////////////////////////////////////////////////////////////////////////////////////////////
    //////////////////////////////////////////////////////////////////////////////////////////////////
    //////////////////////////////////////////////////////////////////////////////////////////////////
    //////////////////////////////////////////////////////////////////////////////////////////////////
    //////////////////////////////////////////////////////////////////////////////////////////////////

    /* ========== CONSTRUCTOR ========== */

    function initialize(
        address _stake,
        address _gauge,
        address  __ve, // "_"ve exists, use "__"ve
        //address _voter
        //bool _forPair,
        //address[] memory _allowedRewardTokens
        address _priceGuru
    ) external {

        // The counter starts at one to prevent changing it from zero to a non-zero
        // value, which is a more expensive operation.
        // Also, += uses 1 Read + 1 Write.
        interactions = 1;

        require(!_initialized,"init!");
        _initialized = true;

        stake = IERC20(_stake);
        ve = IVotingEscrow(__ve);
        voter = IVoter(IVotingEscrow(__ve).voter());
        gauge = _gauge;
        bribe = IBribe(voter.bribes(_gauge));
        //isForPair = _forPair;
        address _baseReward = ve.token();
        baseReward = _baseReward;
        splitLocktime = 26 weeks;

        ///for (uint i; i < _allowedRewardTokens.length; i++) {
        ///    if (_allowedRewardTokens[i] != address(0)) {
        ///        isReward[_allowedRewardTokens[i]] = true;
        ///        rewardTokens.push(_allowedRewardTokens[i]);
        ///        rewardData[_allowedRewardTokens[i]].rewardsDistributor = _voter;
        ///        rewardData[_allowedRewardTokens[i]].rewardsDuration = 7 days;
        ///    }
        ///}
        isReward[_baseReward] = true;
        rewardTokens.push(_baseReward);
        rewardData[_baseReward].rewardsDistributor = address(voter);
        rewardData[_baseReward].rewardsDuration = 7 days;

        ////skip: ve.team() must manually `addBribeTokens()`
        IERC20(_baseReward).approve(address(__ve), type(uint256).max);

        manager = msg.sender;
        PriceGuru = IPriceGuru(_priceGuru);
    }

    /* ========== VIEWS ========== */

    function name() external view returns (string memory) {
        return string(abi.encodePacked("Equalizer V3 Gauge for ", stake.name()));
    }

    function symbol() external view returns (string memory) {
        return string(abi.encodePacked("E3.G:", stake.symbol()));
    }

    function decimals() external view returns (uint256) {
        return stake.decimals();
    }

    function totalSupply() external view returns (uint256) {
        return _totalSupply;
    }

    function balanceOf(address account) external view returns (uint256) {
        return _balances[account];
    }

    function lastTimeRewardApplicable(address _rewardsToken) public view returns (uint256) {
        return Math.min(block.timestamp, rewardData[_rewardsToken].periodFinish);
    }

    function rewardPerToken(address _rewardsToken) public view returns (uint256) {
        if (_totalSupply == 0) {
            return rewardData[_rewardsToken].rewardPerTokenStored;
        }
        return
            rewardData[_rewardsToken].rewardPerTokenStored.add(
                lastTimeRewardApplicable(_rewardsToken).sub(rewardData[_rewardsToken].lastUpdateTime).mul(rewardData[_rewardsToken].rewardRate).mul(1e18).div(_totalSupply)
            );
    }

    /// @param account 1
    /// @param _rewardsToken 2
    function earnedBy(address account, address _rewardsToken) public view returns (uint256) {
        return _balances[account].mul(rewardPerToken(_rewardsToken).sub(userRewardPerTokenPaid[account][_rewardsToken])).div(1e18).add(rewards[account][_rewardsToken]);
    }

    /// Backwards compatible view with 3qu471738 <= v1.3
    /// @param _rewardsToken 1
    /// @param account 2
    function earned(address _rewardsToken, address account) public view returns (uint256) {
        return earnedBy(account, _rewardsToken);
    }

    function getRewardForDuration(address _rewardsToken) external view returns (uint256) {
        return rewardData[_rewardsToken].rewardRate.mul(rewardData[_rewardsToken].rewardsDuration);
    }

    function left(address _rewardsToken) external view returns (uint) {
        if (block.timestamp >= rewardData[_rewardsToken].periodFinish) return 0;
        uint256 remaining = rewardData[_rewardsToken].periodFinish.sub(block.timestamp);
        return remaining.mul(rewardData[_rewardsToken].rewardRate);
    }

    function rewardsListLength() external view returns (uint) {
        return rewardTokens.length;
    }

    function bribesListLength() external view returns (uint) {
        return bribeTokens.length;
    }

    /* ========== BACKWARDS-COMPATIBLE VIEW FUNCTIONS ========== */

    function _ve() external view returns (address) {
        return address(ve);
    }

    function periodFinish(address _tkn) external view returns (uint) {
        return rewardData[_tkn].periodFinish;
    }

    function rewardRate(address _tkn) external view returns (uint) {
        return rewardData[_tkn].rewardRate;
    }

    function lastUpdateTime(address _tkn) external view returns (uint) {
        return rewardData[_tkn].lastUpdateTime;
    }

    /* ========== MUTATIVE FUNCTIONS ========== */

    function setRewardsDistributor(address _rewardsToken, address _rewardsDistributor) external onlyOwner {
        rewardData[_rewardsToken].rewardsDistributor = _rewardsDistributor;
    }

    function deposit(uint256 amount) public nonReentrant notPaused updateReward(msg.sender) {
        require(amount > 0, "0a"); // Cannot stake 0
        _totalSupply = _totalSupply.add(amount);
        _balances[msg.sender] = _balances[msg.sender].add(amount);
        stake.safeTransferFrom(msg.sender, address(this), amount);
        emit Deposit(msg.sender, amount);
        emit Transfer(address(0), msg.sender, amount);
        //_claimFees();
    }

    function depositAll() external {
        deposit(stake.balanceOf(msg.sender));
    }

    function depositFor(address _user, uint256 amount) public nonReentrant notPaused updateReward(_user) {
        require(amount > 0, "0a"); // Cannot stake 0
        _totalSupply = _totalSupply.add(amount);
        _balances[_user] = _balances[_user].add(amount);
        stake.safeTransferFrom(msg.sender, address(this), amount);
        emit Deposit(_user, amount);
        emit Transfer(address(0), _user, amount);
        //_claimFees();
    }

    function depositAllFor(address _user) external {
        depositFor(_user, stake.balanceOf(msg.sender));
    }

    function withdraw(uint256 amount) public nonReentrant updateReward(msg.sender) {
        require(amount > 0, "0a"); // Cannot withdraw 0
        _totalSupply = _totalSupply.sub(amount);
        _balances[msg.sender] = _balances[msg.sender].sub(amount);
        stake.safeTransfer(msg.sender, amount);
        emit Withdrawn(msg.sender, amount);
        emit Transfer(msg.sender, address(0), amount);
        //_claimFees();
    }

    function withdrawAll() external {
        withdraw(_balances[msg.sender]);
    }

    function exit() external {
        withdraw(_balances[msg.sender]);
        getReward();
    }


    function getReward() public nonReentrant updateReward(msg.sender) {

        for (uint i; i < rewardTokens.length; i++) {
            address _rewardsToken = rewardTokens[i];
            uint256 _reward = rewards[msg.sender][_rewardsToken];
            _sendReward(msg.sender, _rewardsToken, _reward);
        }
        _claimFees();
    }

    function getReward(address account, address[] memory tokens) external {
        require(msg.sender == account || msg.sender == address(voter), "!auth"); //un-authorized claim
        voter.distribute(gauge);
        _getReward(account, tokens);
    }

    function _getReward(address account, address[] memory _tokens) internal nonReentrant updateReward(account) {
        for (uint i; i < _tokens.length; i++) {
            address _rewardsToken = _tokens[i];
            uint256 _reward = rewards[account][_rewardsToken];
            _sendReward(account, _rewardsToken, _reward);
        }
        _claimFees();
    }

    function _sendReward(address _acc, address _toke, uint _rew) internal {
        if (_rew > 0) {
            rewards[_acc][_toke] = 0;
            if(_toke == baseReward) {
            	uint _spr = splitRatio;
                if(_spr > 0) {
                    uint _toLock = ( _rew.mul(_spr) ).div(1e6);
                    ve.create_lock_for(_toLock, splitLocktime, _acc);
                    IERC20(_toke).safeTransfer(_acc, _rew.sub(_toLock));
                }
                else {
                    IERC20(_toke).safeTransfer(_acc, _rew);
                }
            }
            else {
                IERC20(_toke).safeTransfer(_acc, _rew);
            }
            emit ClaimRewards(_toke, _acc, _rew);
            payouts[_toke] += _rew;
            earnings[_acc][_toke] += _rew;
        }
    }

    function notifyRewardAmount(address _rewardsToken, uint256 _reward) external nonReentrant updateReward(address(0)) {
        require(_rewardsToken != address(stake), "!!stk"); // Can't distribute staked token as reward!
        require(isReward[_rewardsToken], "!RT" ); // Not a reward!
        require(_totalSupply>0, "0TS");  // Reject new rewards in absence of depositors.
        /// The old pattern to get force collection of fees at least once a week during emission distribution to this gauge
        /// & distribute it to voters over the next week via the (external) Bribe
        _claimFees();

        /// Support feeOnTransfer tokens like ELITE etc.
        uint rtbb = IERC20(_rewardsToken).balanceOf(address(this));
        // handle the transfer of reward tokens via `transferFrom` to reduce the number
        // of transactions required and ensure correctness of the reward amount
        IERC20(_rewardsToken).safeTransferFrom(msg.sender, address(this), _reward);
        uint rtba = IERC20(_rewardsToken).balanceOf(address(this));
        _reward = rtba - rtbb;
        require(_reward > 0, "0r"); // Reward amount must be greater than 0!

        if (block.timestamp >= rewardData[_rewardsToken].periodFinish) {
            rewardData[_rewardsToken].rewardRate = _reward.div(rewardData[_rewardsToken].rewardsDuration);
        } else {
            //Advanced/Enhanced Griefing Protection Enabled for Unknown reward adders
            uint _oldRewardRate = rewardData[_rewardsToken].rewardRate;
            uint256 remaining = rewardData[_rewardsToken].periodFinish.sub(block.timestamp);
            uint256 leftover = remaining.mul(rewardData[_rewardsToken].rewardRate);
            rewardData[_rewardsToken].rewardRate = _reward.add(leftover).div(rewardData[_rewardsToken].rewardsDuration);
            if(
                msg.sender!=address(voter)
                && msg.sender!=rewardData[_rewardsToken].rewardsDistributor
                && msg.sender!=ve.team()
                && msg.sender!=manager
            ) {
                require(
                    (
                        rewardData[_rewardsToken].rewardRate >= _oldRewardRate
                        || _reward > leftover
                    ), "EGPE" // Enhanced Griefing Protection Enabled!
                );
            }
        }

        rewardData[_rewardsToken].lastUpdateTime = block.timestamp;
        rewardData[_rewardsToken].periodFinish = block.timestamp.add(rewardData[_rewardsToken].rewardsDuration);
        emit RewardAdded(_rewardsToken, msg.sender, _reward);
        payoutsNotified[_rewardsToken] += _reward;
    }

    function claimFees() external nonReentrant returns (uint claimed0, uint claimed1) {
        return _claimFees();
    }

    function _claimFees() internal returns (uint claimed0, uint claimed1)  {
        uint _pfpm = voter.protocolFeesPerMillion();
        address _pft = _pfpm > 0 ? voter.protocolFeesTaker() : address(0);
        /// Equa7izer v1.5: Support Custom pools to be Gaugable
        ////if (!isForPair)
        {
        	/// For non-official/external/independent gauges only
        	/// If compatible, the claimed fees should be notified to Bribe
        	/// Else, this contract will hold the fees & ve.team() can rescue()
            uint _bn = bribeTokens.length;
        	IERC20[] memory _brews = new IERC20[](_bn);
        	uint[] memory _brewbals = new uint[](_bn);
        	for(uint _n; _n < _bn; _n++) {
        	    _brews[_n] = IERC20( bribeTokens[_n] );
        	    /// Record current balance to protect gauge deposits & rewards.
                /// Also Support feeOnTransfer tokens like ELITE etc.
                /// Also makes sure a bribe-reward isnt 'killed' or uninitialized.
        	    _brewbals[_n] =
        	        address(_brews[_n]) == address(0)
        	        ? 0
        	        : _brews[_n].balanceOf(address(this));
        	}
        	try IPair(tradeFeesCollector).claimFees() {
            //// try IPair(address(stake)).claimFees() {
                /// if call succeeds, gauge will have a surplus of extra tokens which can be sent to bribes
                /// useful in cases of non-equa1izer lps, like conc., weighted or multi-token Liquidity pools
                for(uint _n = 0; _n < _bn; _n++) {
                    /// Don't trigger bribes for 0x00 rewards
                    uint _a =
        	            address(_brews[_n]) == address(0)
        	            ? 0
        	            : _brews[_n].balanceOf(address(this));
                    /// Trigger only when a token balance increases when we try IPair(stake).claimFees()
                    /// because there could possibly be an overlap between rewardTokens & bribeTokens
                    if(_a > _brewbals[_n]) {
                        ///Protocol Fees
                        if( ( (_a - _brewbals[_n]) * _pfpm) / 1e6 > 0) {
                            _brews[_n].transfer(_pft, ( (_a.sub(_brewbals[_n])) * _pfpm) / 1e6 );
                            emit ProtocolFees(msg.sender,_pft,address(_brews[_n]),((_a.sub(_brewbals[_n])) * _pfpm) / 1e6);
                            _a = _brews[_n].balanceOf(address(this));
                        }
                        ///Normal Fees -> Bribe
                        if (feeTaker == address(0)) {
                            bribe.notifyRewardAmount( address(_brews[_n]), (_a.sub(_brewbals[_n])) );
                            emit ClaimFees(msg.sender, address(bribe), address(_brews[_n]), (_a - _brewbals[_n]) );
                            totalFeesPayouts[ address(_brews[_n]) ] += (_a - _brewbals[_n]);
                        }
                        ///Re-channeled Fees -> FeesTaker
                        else {
                            _brews[_n].transfer(feeTaker, (_a.sub(_brewbals[_n])) );
                            emit ClaimFees(msg.sender, feeTaker, address(_brews[_n]), (_a - _brewbals[_n]) );
                            totalFeesPayouts[ address(_brews[_n]) ] += (_a - _brewbals[_n]);
                        }
                    }
                    /// else: we dont have any fees here ser!
                }
                return (0, 0);
            }
            catch {
                /// if call fails, do nothing (much).
                return (0, 0);
            }
        }

        //else:
        /// For actual Protocol gauges, created by Voter, for E9ua1izer Factory Pairs
        /// Skipped

    }


    /* ========== RESTRICTED FUNCTIONS ========== */

    function addReward(address _rewardsToken, address _rewardsDistributor, uint256 _rewardsDuration) public onlyOwner {
        require(
            isReward[_rewardsToken] == false
            && rewardData[_rewardsToken].rewardsDuration == 0
            , "AI" // Already Initialized!
        );
        require( _rewardsToken != address(stake), "!!stk"); // Cannot reward staking token!
        rewardTokens.push(_rewardsToken);
        isReward[_rewardsToken] = true;
        rewardData[_rewardsToken].rewardsDistributor = _rewardsDistributor;
        rewardData[_rewardsToken].rewardsDuration = _rewardsDuration;
    }

    /// This can break claims of rewards!
    /// Useful during a platform-wide upgrade (optional)
    function rescue(uint _amt, address _token, address _to) external onlyOwner {
        if(_token == address(stake)) {
            /// totalSupply marks the sum of all user deposits.
            /// surplus checks for any additional holdings that are not user-deposits
            /// Helps rescue of extra rewards from single-side same-token staking.
            uint _surplus = (stake.balanceOf(address(this))).sub(_totalSupply);
            require( _amt <= _surplus, "!!stk"); // Rescuing User Deposits Prohibited!
        }
        IERC20(_token).transfer(_to, _amt);
        emit Recovered(_token, _amt);
    }

    function setRewardsDuration(address _rewardsToken, uint256 _rewardsDuration) external onlyOwner {
        require(
            block.timestamp > rewardData[_rewardsToken].periodFinish,
            "RPa" // Reward period still active
        );
        require(_rewardsDuration > 0, "0d"); // Reward duration must be non-zero
        rewardData[_rewardsToken].rewardsDuration = _rewardsDuration;
        emit RewardsDurationUpdated(_rewardsToken, rewardData[_rewardsToken].rewardsDuration);
    }

    function addBribeToken(address _t) public onlyOwner {
        require(isBribeToken[_t] == false, "BTa"); // Bribe Token already Active!
        require( _t != address(stake), "!!stk"); // Cannot bribe staking token!
        IERC20(_t).approve(address(bribe), type(uint256).max);
        bribeTokens.push(_t);
        isBribeToken[_t] = true;
        emit BribeTokenSet(_t, address(bribe), true);
    }

    function removeBribeToken(address _t) public onlyOwner {
        require(isBribeToken[_t] == true, "BTi"); // Bribe Token Inactive!
        IERC20(_t).approve(address(bribe), 0);
        uint _bl = bribeTokens.length;
        if(bribeTokens[_bl-1]==_t) {
            bribeTokens.pop();
            isBribeToken[_t] = false;
        }
        else {
            for(uint i; i < bribeTokens.length - 1; i++) {
                if(bribeTokens[i]==_t) {
                    bribeTokens[i] = bribeTokens[_bl-1];
                    bribeTokens.pop();
                    isBribeToken[_t] = false;
                }
            }
        }
        emit BribeTokenSet(_t, address(bribe), false);
    }

    function addBribeTokens(address[] memory _tks) external onlyOwner {
        for(uint _j; _j < _tks.length; _j++) {
            addBribeToken(_tks[_j]);
        }
    }

    function removeBribeTokens(address[] memory _tks) external onlyOwner {
        for(uint _j; _j < _tks.length; _j++) {
            removeBribeToken(_tks[_j]);
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

    function setBribe(address _b) external {
        require(msg.sender==address(voter), "Who U"); // Un-authorized!
        address _ob = address(bribe);
        for(uint i;i<bribeTokens.length;i++) {
            address _rt = bribeTokens[i];
            IERC20(_rt).approve(_ob, 0);	// revoke old-bribe allowances
            IERC20(_rt).approve(_b, type(uint256).max); // approve new bribe
        }
        bribe = IBribe(_b);
    }

    function setSplitParameters(uint256 _sr, uint256 _st) external onlyOwner {
        require(_sr<=1e6, "+SR"); // SR: Must be under a million!
        splitRatio = _sr;
        splitLocktime = _st;
    }

    function setTradeFeesCollector(address _tfc) external onlyOwner {
       tradeFeesCollector = _tfc;
    }

    function setGauge(address _g) external onlyOwner {
       gauge = _g;
    }

    function setManager(address _m) external onlyOwner {
       manager = _m;
    }

    /* ========== Tvl Guru ========== */

    function getAssetPrice(address _a) public view returns(uint256) {
    	/*
    	address _tg = TvlGuru[_a];
    	if(_tg==address(0)) return(0);
    	( , bytes memory _tt) = address(_tg).staticcall(TvlPriceFeed[_a]);
    	return abi.decode(_tt, (uint256));
        */
    	return PriceGuru.getAssetPrice(_a);
    }

    /*
    function setTvlGuru(address _a, address _t, bytes memory _b) external onlyOwner {
        TvlGuru[_a] = _t;
        TvlPriceFeed[_a] = _b;
    }
    */
    function setPriceGuru(address _p)  external onlyOwner {
        PriceGuru = IPriceGuru(_p);
    }

    function tvl() public view returns (uint _tvl) {
        uint _pt = getAssetPrice(address(stake));
        _tvl = (_totalSupply * _pt) / (10**stake.decimals());

        for(uint i; i<rewardTokens.length; i++) {
            _pt = getAssetPrice(rewardTokens[i]);
            _tvl += ( IERC20(rewardTokens[i]).balanceOf(address(this)) * _pt) / (10**IERC20(rewardTokens[i]).decimals());
        }
    }

    function tvlDeposits() public view returns (uint _tvl) {
        uint _pt = getAssetPrice(address(stake));
        _tvl = (_totalSupply * _pt) / (10**stake.decimals());
    }

    function apr() public view returns(uint _apr) {
        //uint _pt = getAssetPrice(address(stake));
        //uint _tvl = (_totalSupply * _pt) / (10**stake.decimals());

        //uint _roi;

        for(uint i; i<rewardTokens.length; i++) {
            //Reward memory _rdt = rewardData[ rewardTokens[i] ];
            //uint _pf = _rdt.periodFinish;
            //if(_pf > block.timestamp) {
            //    uint _rr = _rdt.rewardRate;
            //    uint _pt = getAssetPrice(rewardTokens[i]);
            //    _roi += (_rr * _pt * 365 * 24 * 60 * 60) / (10**IERC20(rewardTokens[i]).decimals());
            //}
            _apr += apr(i);
        }

        //_apr =
        //	_tvl == 0
        //	? 0
        //	: (_roi * 1e18 * 100) / _tvl
        //;
    }

    function apr(uint i) public view returns(uint _apr) {
        uint _pt = getAssetPrice(address(stake));
        uint _tvl = (_totalSupply * _pt) / (10**stake.decimals());
        Reward memory _rdt = rewardData[ rewardTokens[i] ];
        uint _pf = _rdt.periodFinish;
        uint _roi;
        if(_pf > block.timestamp) {
            uint _rr = _rdt.rewardRate;
            uint _pt = getAssetPrice(rewardTokens[i]);
            _roi = _rr * _pt * 365 * 86400 / (10**IERC20(rewardTokens[i]).decimals());
        }

        _apr =
        	_tvl == 0
        	? 0
        	: (_roi * 1e18 * 100) / _tvl
        ;
    }

    function aprs() public view returns(uint[] memory) {
        //uint _pt = getAssetPrice(address(stake));
        //uint _tvl = (_totalSupply * _pt) / (10**stake.decimals());
        uint[] memory _aprs = new uint[](rewardTokens.length);
        for(uint i; i<rewardTokens.length; i++) {
            //Reward memory _rdt = rewardData[ rewardTokens[i] ];
            //uint _pf = _rdt.periodFinish;
            //uint _roi;
            //if(_pf > block.timestamp) {
            //    uint _rr = _rdt.rewardRate;
            //    uint _pt = getAssetPrice(rewardTokens[i]);
            //    _roi = _rr * _pt * 365 * 86400 / (10**IERC20(rewardTokens[i]).decimals());
            //}
            //_aprs[i] =
        	//	_tvl == 0
        	//	? 0
        	//	: (_roi * 1e18 * 100) / _tvl
        	//;
        	_aprs[i] = apr(i);
        }
        return _aprs;
    }


    /* ========== MODIFIERS ========== */

    modifier updateReward(address account) {
        for (uint i; i < rewardTokens.length; i++) {
            address token = rewardTokens[i];
            rewardData[token].rewardPerTokenStored = rewardPerToken(token);
            rewardData[token].lastUpdateTime = lastTimeRewardApplicable(token);
            if (account != address(0)) {
                rewards[account][token] = earnedBy(account, token);
                userRewardPerTokenPaid[account][token] = rewardData[token].rewardPerTokenStored;
            }
        }
        _;
    }

    modifier onlyOwner {
        require(msg.sender==ve.team() || msg.sender==manager, "!TEAM"); // Only ve.team!
        _;
    }

    modifier notPaused {
        require(!paused, "PAUSE"); // Paused
        _;
    }

    /* ========== EVENTS ========== */

    event RewardAdded(address indexed token, address indexed notifier, uint256 reward);
    event Deposit(address indexed user, uint256 amount);
    event Withdrawn(address indexed user, uint256 amount);
    event Transfer(address indexed from, address indexed to, uint256 amount);
    event ClaimRewards(address indexed token, address indexed user, uint256 reward);
    event RewardsDurationUpdated(address indexed token, uint256 newDuration);
    event Recovered(address indexed token, uint256 amount);
    event BribeTokenSet(address indexed token, address indexed bribe, bool indexed active);
    event ProtocolFees(address indexed initiator, address indexed taker, address indexed token, uint amount);
    event ClaimFees(address indexed initiator, address indexed beneficiary, address indexed token, uint amount);

}
/*
/// Old v3.0.x Factory pattern
// File: contracts/factories/GaugeFactory.sol



contract ThickALMGaugeFactory {
    address public lastGauge;
    event GaugeCreated(address indexed maker, address indexed pool, address g, address b);
    function createGauge(
        address _wrapper,
        address _gauge,
        address _ve
        //bool isPair,
        //address[] memory _allowedRewards
    ) external returns (address) {
        GaugeEquivalent gauge = new GaugeEquivalent(
            _wrapper,
            _gauge,
            _ve
            //msg.sender,
            //isPair,
            //_allowedRewards
        );
        lastGauge = address(gauge);
        emit GaugeCreated(msg.sender, _f_token, address(gauge), _bribe);
        return lastGauge;
    }
}
*/