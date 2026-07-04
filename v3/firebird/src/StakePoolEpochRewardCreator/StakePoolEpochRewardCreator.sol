pragma abicoder v2;
pragma solidity >=0.7.6;


// SPDX-License-Identifier: MIT
interface IStakePoolCreator {
    function version() external returns (uint);

    function create() external returns (address);
    function initialize(address poolAddress, address pair, address rewardToken, address timelock, address stakePoolRewardFund, bytes calldata data) external;
}

// helper methods for interacting with ERC20 tokens and sending ETH that do not consistently return true/false
library TransferHelper {
    function safeApprove(address token, address to, uint value) internal {
        // bytes4(keccak256(bytes('approve(address,uint256)')));
        (bool success, bytes memory data) = token.call(abi.encodeWithSelector(0x095ea7b3, to, value));
        require(success && (data.length == 0 || abi.decode(data, (bool))), 'TransferHelper: APPROVE_FAILED');
    }

    function safeTransfer(address token, address to, uint value) internal {
        // bytes4(keccak256(bytes('transfer(address,uint256)')));
        (bool success, bytes memory data) = token.call(abi.encodeWithSelector(0xa9059cbb, to, value));
        require(success && (data.length == 0 || abi.decode(data, (bool))), 'TransferHelper: TRANSFER_FAILED');
    }

    function safeTransferFrom(address token, address from, address to, uint value) internal {
        // bytes4(keccak256(bytes('transferFrom(address,address,uint256)')));
        (bool success, bytes memory data) = token.call(abi.encodeWithSelector(0x23b872dd, from, to, value));
        require(success && (data.length == 0 || abi.decode(data, (bool))), 'TransferHelper: TRANSFER_FROM_FAILED');
    }

    function safeTransferETH(address to, uint value) internal {
        (bool success,) = to.call{value:value}(new bytes(0));
        require(success, 'TransferHelper: ETH_TRANSFER_FAILED');
    }
}

/**
 * @dev Wrappers over Solidity's arithmetic operations with added overflow
 * checks.
 *
 * Arithmetic operations in Solidity wrap on overflow. This can easily result
 * in bugs, because programmers usually assume that an overflow raises an
 * error, which is the standard behavior in high level programming languages.
 * `SafeMath` restores this intuition by reverting the transaction when an
 * operation overflows.
 *
 * Using this library instead of the unchecked operations eliminates an entire
 * class of bugs, so it's recommended to use it always.
 */
library SafeMath {
    /**
     * @dev Returns the addition of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
     */
    function tryAdd(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        uint256 c = a + b;
        if (c < a) return (false, 0);
        return (true, c);
    }

    /**
     * @dev Returns the substraction of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
     */
    function trySub(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        if (b > a) return (false, 0);
        return (true, a - b);
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
     */
    function tryMul(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        // Gas optimization: this is cheaper than requiring 'a' not being zero, but the
        // benefit is lost if 'b' is also tested.
        // See: https://github.com/OpenZeppelin/openzeppelin-contracts/pull/522
        if (a == 0) return (true, 0);
        uint256 c = a * b;
        if (c / a != b) return (false, 0);
        return (true, c);
    }

    /**
     * @dev Returns the division of two unsigned integers, with a division by zero flag.
     *
     * _Available since v3.4._
     */
    function tryDiv(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        if (b == 0) return (false, 0);
        return (true, a / b);
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers, with a division by zero flag.
     *
     * _Available since v3.4._
     */
    function tryMod(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        if (b == 0) return (false, 0);
        return (true, a % b);
    }

    /**
     * @dev Returns the addition of two unsigned integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `+` operator.
     *
     * Requirements:
     *
     * - Addition cannot overflow.
     */
    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 c = a + b;
        require(c >= a, "SafeMath: addition overflow");
        return c;
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting on
     * overflow (when the result is negative).
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     *
     * - Subtraction cannot overflow.
     */
    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b <= a, "SafeMath: subtraction overflow");
        return a - b;
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `*` operator.
     *
     * Requirements:
     *
     * - Multiplication cannot overflow.
     */
    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
        if (a == 0) return 0;
        uint256 c = a * b;
        require(c / a == b, "SafeMath: multiplication overflow");
        return c;
    }

    /**
     * @dev Returns the integer division of two unsigned integers, reverting on
     * division by zero. The result is rounded towards zero.
     *
     * Counterpart to Solidity's `/` operator. Note: this function uses a
     * `revert` opcode (which leaves remaining gas untouched) while Solidity
     * uses an invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function div(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b > 0, "SafeMath: division by zero");
        return a / b;
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * reverting when dividing by zero.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function mod(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b > 0, "SafeMath: modulo by zero");
        return a % b;
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting with custom message on
     * overflow (when the result is negative).
     *
     * CAUTION: This function is deprecated because it requires allocating memory for the error
     * message unnecessarily. For custom revert reasons use {trySub}.
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     *
     * - Subtraction cannot overflow.
     */
    function sub(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        require(b <= a, errorMessage);
        return a - b;
    }

    /**
     * @dev Returns the integer division of two unsigned integers, reverting with custom message on
     * division by zero. The result is rounded towards zero.
     *
     * CAUTION: This function is deprecated because it requires allocating memory for the error
     * message unnecessarily. For custom revert reasons use {tryDiv}.
     *
     * Counterpart to Solidity's `/` operator. Note: this function uses a
     * `revert` opcode (which leaves remaining gas untouched) while Solidity
     * uses an invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function div(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        require(b > 0, errorMessage);
        return a / b;
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * reverting with custom message when dividing by zero.
     *
     * CAUTION: This function is deprecated because it requires allocating memory for the error
     * message unnecessarily. For custom revert reasons use {tryMod}.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function mod(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        require(b > 0, errorMessage);
        return a % b;
    }
}

contract TimeLock {
    using SafeMath for uint256;
    event NewAdmin(address indexed newAdmin);
    event NewPendingAdmin(address indexed newPendingAdmin);
    event NewDelay(uint indexed newDelay);
    event CancelTransaction(bytes32 indexed txHash, address indexed target, uint value, string signature, bytes data, uint eta);
    event ExecuteTransaction(bytes32 indexed txHash, address indexed target, uint value, string signature, bytes data, uint eta);
    event QueueTransaction(bytes32 indexed txHash, address indexed target, uint value, string signature, bytes data, uint eta);

    uint public constant GRACE_PERIOD = 14 days;
    uint public constant MINIMUM_DELAY = 1 days;
    uint public constant MAXIMUM_DELAY = 30 days;
    bool private _initialized;
    address public admin;
    address public pendingAdmin;
    uint public delay;
    bool public admin_initialized;
    mapping(bytes32 => bool) public queuedTransactions;

    constructor() public {
        admin_initialized = false;
        _initialized = false;
    }

    function initialize(address _admin, uint _delay) public {
        require(_initialized == false, "Timelock::constructor: Initialized must be false.");
        require(_delay >= MINIMUM_DELAY, "Timelock::setDelay: Delay must exceed minimum delay.");
        require(_delay <= MAXIMUM_DELAY, "Timelock::setDelay: Delay must not exceed maximum delay.");
        delay = _delay;
        admin = _admin;
        _initialized = true;
        emit NewAdmin(admin);
        emit NewDelay(delay);
    }

    receive() external payable {}

    function setDelay(uint _delay) public {
        require(msg.sender == address(this), "Timelock::setDelay: Call must come from Timelock.");
        require(_delay >= MINIMUM_DELAY, "Timelock::setDelay: Delay must exceed minimum delay.");
        require(_delay <= MAXIMUM_DELAY, "Timelock::setDelay: Delay must not exceed maximum delay.");
        delay = _delay;
        emit NewDelay(delay);
    }

    function acceptAdmin() public {
        require(msg.sender == pendingAdmin, "Timelock::acceptAdmin: Call must come from pendingAdmin.");
        admin = msg.sender;
        pendingAdmin = address(0);
        emit NewAdmin(admin);
    }

    function setPendingAdmin(address _pendingAdmin) public {
        // allows one time setting of admin for deployment purposes
        if (admin_initialized) {
            require(msg.sender == address(this), "Timelock::setPendingAdmin: Call must come from Timelock.");
        } else {
            require(msg.sender == admin, "Timelock::setPendingAdmin: First call must come from admin.");
            admin_initialized = true;
        }
        pendingAdmin = _pendingAdmin;

        emit NewPendingAdmin(pendingAdmin);
    }

    function queueTransaction(address target, uint value, string memory signature, bytes memory data, uint eta) public returns (bytes32) {
        require(msg.sender == admin, "Timelock::queueTransaction: Call must come from admin.");
        require(eta >= getBlockTimestamp().add(delay), "Timelock::queueTransaction: Estimated execution block must satisfy delay.");

        bytes32 txHash = keccak256(abi.encode(target, value, signature, data, eta));
        queuedTransactions[txHash] = true;

        emit QueueTransaction(txHash, target, value, signature, data, eta);
        return txHash;
    }

    function cancelTransaction(address target, uint value, string memory signature, bytes memory data, uint eta) public {
        require(msg.sender == admin, "Timelock::cancelTransaction: Call must come from admin.");

        bytes32 txHash = keccak256(abi.encode(target, value, signature, data, eta));
        queuedTransactions[txHash] = false;

        emit CancelTransaction(txHash, target, value, signature, data, eta);
    }

    function executeTransaction(address target, uint value, string memory signature, bytes memory data, uint eta) public payable returns (bytes memory) {
        require(msg.sender == admin, "Timelock::executeTransaction: Call must come from admin.");

        bytes32 txHash = keccak256(abi.encode(target, value, signature, data, eta));
        require(queuedTransactions[txHash], "Timelock::executeTransaction: Transaction hasn't been queued.");
        require(getBlockTimestamp() >= eta, "Timelock::executeTransaction: Transaction hasn't surpassed time lock.");
        require(getBlockTimestamp() <= eta.add(GRACE_PERIOD), "Timelock::executeTransaction: Transaction is stale.");

        queuedTransactions[txHash] = false;

        bytes memory callData;

        if (bytes(signature).length == 0) {
            callData = data;
        } else {
            callData = abi.encodePacked(bytes4(keccak256(bytes(signature))), data);
        }

        // solium-disable-next-line security/no-call-value
        (bool success, bytes memory returnData) = target.call{value : value}(callData);
        require(success, "Timelock::executeTransaction: Transaction execution reverted.");

        emit ExecuteTransaction(txHash, target, value, signature, data, eta);

        return returnData;
    }

    function getBlockTimestamp() internal view returns (uint) {
        return block.timestamp;
    }
}

interface IEpochController {
    function epoch() external view returns (uint256);

    function nextEpochPoint() external view returns (uint256);

    function nextEpochLength() external view returns (uint256);

    function nextEpochAllocatedReward(address _pool) external view returns (uint256);
}

interface IStakePoolEpochReward {
    event AllocateReward(uint256 blocktime, uint256 amount);
    event Deposit(address indexed account, uint256 amount);
    event PayRewardPool(uint256 indexed poolId, address indexed rewardToken, address indexed account, uint256 pendingReward, uint256 rebaseAmount, uint256 paidReward);
    event Withdraw(address indexed account, uint256 amount);

    function version() external view returns (uint256);
    function stakeToken() external view returns (address);
    function rewardToken() external view returns (address);
    function rewardFund() external view returns (address);
    function epochController() external view returns (address);

    function allowRecoverRewardToken(address _token) external view returns (bool);

    function epoch() external view returns (uint256);

    function nextEpochPoint() external view returns (uint256);

    function nextEpochLength() external view returns (uint256);

    function nextEpochAllocatedReward() external view returns (uint256);

    function earned(address _account) external view returns (uint256);

    function unlockWithdrawEpoch(address _account) external view returns (uint256);

    function unlockRewardEpoch(address _account) external view returns (uint256);

    function stake(uint256) external;

    function stakeFor(address _account) external;

    function withdraw(uint256) external;

    function claimReward() external;

    function emergencyWithdraw() external;

    function setEpochController(address) external;

    function setLockUp(uint256 _withdrawLockupEpochs, uint256 _rewardLockupEpochs) external;

    function allocateReward(uint256 _amount) external;
}

interface IStakePoolController {
    event MasterCreated(address indexed farm, address indexed stakeToken, uint version, address timelock, address stakePoolRewardFund, uint totalStakePool);
    event SetWhitelistStakingFor(address indexed contractAddress, bool value);
    event SetWhitelistStakePool(address indexed contractAddress, int8 value);
    event SetStakePoolCreator(address indexed contractAddress, uint verion);
    event SetWhitelistRewardRebaser(address indexed contractAddress, bool value);
    event SetWhitelistRewardMultiplier(address indexed contractAddress, bool value);
    event SetStakePoolVerifier(address indexed contractAddress, bool value);
    event ChangeGovernance(address indexed governance);
    event SetFeeCollector(address indexed feeCollector);
    event SetFeeToken(address indexed token);
    event SetFeeAmount(uint indexed amount);
    event SetExtraFeeRate(uint indexed amount);



    function allStakePools(uint) external view returns (address stakePool);

    function isStakePool(address contractAddress) external view returns (bool);
    function isStakePoolVerifier(address contractAddress) external view returns (bool);

    function isWhitelistStakingFor(address contractAddress) external view returns (bool);
    function isWhitelistStakePool(address contractAddress) external view returns (int8);
    function setStakePoolVerifier(address contractAddress, bool state) external;
    function setWhitelistStakingFor(address contractAddress, bool state) external;

    function setWhitelistStakePool(address contractAddress, int8 state) external;
    function addStakePoolCreator(address contractAddress) external;

    function isWhitelistRewardRebaser(address contractAddress) external view returns (bool);
    function isAllowEmergencyWithdrawStakePool(address _address) external view returns (bool);
    function setWhitelistRewardRebaser(address contractAddress, bool state) external;

    function isWhitelistRewardMultiplier(address contractAddress) external view returns (bool);
    function setAllowEmergencyWithdrawStakePool(address _address, bool state) external;
    function setWhitelistRewardMultiplier(address contractAddress, bool state) external;
    function setEnableWhitelistRewardRebaser(bool value) external;
    function setEnableWhitelistRewardMultiplier(bool value) external;
    function allStakePoolsLength() external view returns (uint);

    function create(uint version, address stakeToken, address rewardToken, uint rewardFundAmount, uint delayTimeLock, bytes calldata data) external returns (address);

    function setGovernance(address) external;

    function setFeeCollector(address _address) external;
    function setFeeToken(address _token) external;
    function setFeeAmount(uint _token) external;
    function setExtraFeeRate(uint _extraFeeRate) external;

}

interface IStakePoolRewardRebaser {
    function getRebaseAmount(address rewardToken, uint baseAmount) external view returns (uint);
}

interface IStakePoolRewardMultiplier {
    function getRewardMultiplier(uint _start, uint _end, uint _from, uint _to, uint _rewardPerBlock) external view returns (uint);
}

interface IERC20 {
    event Approval(address indexed owner, address indexed spender, uint value);
    event Transfer(address indexed from, address indexed to, uint value);

    function name() external view returns (string memory);
    function symbol() external view returns (string memory);
    function decimals() external view returns (uint8);
    function totalSupply() external view returns (uint);
    function balanceOf(address owner) external view returns (uint);
    function allowance(address owner, address spender) external view returns (uint);

    function approve(address spender, uint value) external returns (bool);
    function transfer(address to, uint value) external returns (bool);
    function transferFrom(address from, address to, uint value) external returns (bool);
}

interface IStakePoolRewardFund {
    function initialize(address _stakePool, address _timelock) external;

    function safeTransfer(address _token, address _to, uint _value) external;
}

// This implements BPool contract, and allows for generalized staking, yield farming (by epoch), and token distribution.
contract StakePoolEpochReward is IStakePoolEpochReward {
    using SafeMath for uint;
    uint public override version;

    /* ========== DATA STRUCTURES ========== */

    struct UserInfo {
        uint256 amount;
        uint256 lastSnapshotIndex;
        uint256 rewardEarned;
        uint256 epochTimerStart;
    }

    struct Snapshot {
        uint256 time;
        uint256 rewardReceived;
        uint256 rewardPerShare;
    }

    /* ========== STATE VARIABLES ========== */

    address public override epochController;
    address public override rewardToken;

    uint256 public withdrawLockupEpochs;
    uint256 public rewardLockupEpochs;

    mapping(address => UserInfo) public userInfo;
    Snapshot[] public snapshotHistory;

    address public override stakeToken;
    address public override rewardFund;
    address public timelock;
    address public controller;

    uint public balance;
    uint private _unlocked = 1;
    bool private _initialized = false;
    uint256 public constant BLOCKS_PER_DAY = 28800;

    constructor(address _controller, uint _version) public {
        controller = _controller;
        timelock = msg.sender;
        version = _version;
        Snapshot memory genesisSnapshot = Snapshot({time : block.number, rewardReceived : 0, rewardPerShare : 0});
        snapshotHistory.push(genesisSnapshot);
    }

    modifier lock() {
        require(_unlocked == 1, 'StakePoolEpochReward: LOCKED');
        _unlocked = 0;
        _;
        _unlocked = 1;
    }

    modifier onlyTimeLock() {
        require(msg.sender == timelock, "StakePoolEpochReward: !timelock");
        _;
    }

    modifier onlyEpochController() {
        require(msg.sender == epochController, "StakePoolEpochReward: !epochController");
        _;
    }

    modifier updateReward(address _account) {
        if (_account != address(0)) {
            UserInfo storage user = userInfo[_account];
            user.rewardEarned = earned(_account);
            user.lastSnapshotIndex = latestSnapshotIndex();
        }
        _;
    }

    // called once by the factory at time of deployment
    function initialize(address _stakeToken, address _rewardFund, address _timelock, address _epochController, address _rewardToken,  uint256 _withdrawLockupEpochs, uint256 _rewardLockupEpochs) external {
        require(_initialized == false, "StakePoolEpochReward: Initialize must be false.");
        stakeToken = _stakeToken;
        rewardToken = _rewardToken;
        rewardFund = _rewardFund;
        setEpochController(_epochController);
        setLockUp(_withdrawLockupEpochs, _rewardLockupEpochs);
        timelock = _timelock;
        _initialized = true;
    }

    /* ========== GOVERNANCE ========== */

    function setEpochController(address _epochController) public override lock onlyTimeLock {
        epochController = _epochController;
        epoch();
        nextEpochPoint();
        nextEpochLength();
        nextEpochAllocatedReward();
    }

    function setLockUp(uint256 _withdrawLockupEpochs, uint256 _rewardLockupEpochs) public override lock onlyTimeLock {
        require(_withdrawLockupEpochs >= _rewardLockupEpochs && _withdrawLockupEpochs <= 56, "_withdrawLockupEpochs: out of range"); // <= 2 week
        withdrawLockupEpochs = _withdrawLockupEpochs;
        rewardLockupEpochs = _rewardLockupEpochs;
    }

    function allocateReward(uint256 _amount) external override lock onlyEpochController {
        require(_amount > 0, "StakePoolEpochReward: Cannot allocate 0");
        uint256 _before = IERC20(rewardToken).balanceOf(address(rewardFund));
        TransferHelper.safeTransferFrom(rewardToken, msg.sender, rewardFund, _amount);
        if (balance > 0) {
            uint256 _after = IERC20(rewardToken).balanceOf(address(rewardFund));
            _amount = _after.sub(_before);

            // Create & add new snapshot
            uint256 _prevRPS = getLatestSnapshot().rewardPerShare;
            uint256 _nextRPS = _prevRPS.add(_amount.mul(1e18).div(balance));

            Snapshot memory _newSnapshot = Snapshot({
                time: block.number,
                rewardReceived: _amount,
                rewardPerShare: _nextRPS
            });
            emit AllocateReward(block.number, _amount);
            snapshotHistory.push(_newSnapshot);
        }
    }

    function allowRecoverRewardToken(address _token) external view override returns (bool) {
        if (rewardToken == _token) {
            // do not allow to drain reward token if less than 1 week after LatestSnapshot
            if (block.number < (getLatestSnapshot().time + (BLOCKS_PER_DAY * 7))) {
                return false;
            }
        }
        return true;
    }

    // =========== Epoch getters

    function epoch() public override view returns (uint256) {
        return IEpochController(epochController).epoch();
    }

    function nextEpochPoint() public override view returns (uint256) {
        return IEpochController(epochController).nextEpochPoint();
    }

    function nextEpochLength() public override view returns (uint256) {
        return IEpochController(epochController).nextEpochLength();
    }

    function nextEpochAllocatedReward() public override view returns (uint256) {
        return IEpochController(epochController).nextEpochAllocatedReward(address(this));
    }

    // =========== Snapshot getters

    function latestSnapshotIndex() public view returns (uint256) {
        return snapshotHistory.length.sub(1);
    }

    function getLatestSnapshot() internal view returns (Snapshot memory) {
        return snapshotHistory[latestSnapshotIndex()];
    }

    function getLastSnapshotIndexOf(address _account) public view returns (uint256) {
        return userInfo[_account].lastSnapshotIndex;
    }

    function getLastSnapshotOf(address _account) internal view returns (Snapshot memory) {
        return snapshotHistory[getLastSnapshotIndexOf(_account)];
    }

    // =========== _account getters

    function rewardPerShare() public view returns (uint256) {
        return getLatestSnapshot().rewardPerShare;
    }

    function earned(address _account) public override view returns (uint256) {
        uint256 latestRPS = getLatestSnapshot().rewardPerShare;
        uint256 storedRPS = getLastSnapshotOf(_account).rewardPerShare;

        UserInfo memory user = userInfo[_account];
        return user.amount.mul(latestRPS.sub(storedRPS)).div(1e18).add(user.rewardEarned);
    }

    function canWithdraw(address _account) external view returns (bool) {
        return userInfo[_account].epochTimerStart.add(withdrawLockupEpochs) <= epoch();
    }

    function canClaimReward(address _account) external view returns (bool) {
        return userInfo[_account].epochTimerStart.add(rewardLockupEpochs) <= epoch();
    }

    function unlockWithdrawEpoch(address _account) public override view returns (uint) {
        return userInfo[_account].epochTimerStart.add(withdrawLockupEpochs);
    }

    function unlockRewardEpoch(address _account) public override view returns (uint) {
        return userInfo[_account].epochTimerStart.add(rewardLockupEpochs);
    }

    /* ========== MUTATIVE FUNCTIONS ========== */

    function stake(uint _amount) external lock override {
        TransferHelper.safeTransferFrom(stakeToken, msg.sender, address(this), _amount);
        _stakeFor(msg.sender);
    }

    function stakeFor(address _account) external lock override {
        require(IStakePoolController(controller).isWhitelistStakingFor(msg.sender), "StakePoolEpochReward: Invalid sender");
        _stakeFor(_account);
    }

    function _stakeFor(address _account) internal {
        uint _amount = IERC20(stakeToken).balanceOf(address(this)).sub(balance);
        require(_amount > 0, "StakePoolEpochReward: Invalid balance");
        balance = balance.add(_amount);
        UserInfo storage user = userInfo[_account];
        user.epochTimerStart = epoch(); // reset timer
        user.amount = user.amount.add(_amount);
        emit Deposit(_account, _amount);
    }

    function removeStakeInternal(uint _amount) internal {
        UserInfo storage user = userInfo[msg.sender];
        uint256 _epoch = epoch();
        require(user.epochTimerStart.add(withdrawLockupEpochs) <= _epoch, "StakePoolEpochReward: still in withdraw lockup");
        require(user.amount >= _amount, "StakePoolEpochReward: invalid withdraw amount");
        _claimReward(false);
        balance = balance.sub(_amount);
        user.epochTimerStart = _epoch; // reset timer
        user.amount = user.amount.sub(_amount);
    }

    function withdraw(uint _amount) public lock override {
        removeStakeInternal(_amount);
        TransferHelper.safeTransfer(stakeToken, msg.sender, _amount);
        emit Withdraw(msg.sender, _amount);
    }

    function exit() external {
        withdraw(userInfo[msg.sender].amount);
    }

    function _claimReward(bool _lockChecked) internal updateReward(msg.sender) {
        UserInfo storage user = userInfo[msg.sender];
        uint256 _reward = user.rewardEarned;
        if (_reward > 0) {
            if (_lockChecked) {
                uint256 _epoch = epoch();
                require(user.epochTimerStart.add(rewardLockupEpochs) <= _epoch, "StakePoolEpochReward: still in reward lockup");
                user.epochTimerStart = _epoch; // reset timer
            }
            user.rewardEarned = 0;
            // Safe reward transfer, just in case if rounding error causes pool to not have enough reward amount
            uint256 _rewardBalance = IERC20(rewardToken).balanceOf(rewardFund);
            uint256 _paidAmount = _rewardBalance > _reward ? _reward : _rewardBalance;
            IStakePoolRewardFund(rewardFund).safeTransfer(rewardToken, msg.sender, _paidAmount);
            emit PayRewardPool(0, rewardToken, msg.sender, _reward, _reward, _paidAmount);
        }
    }

    function claimReward() public override {
        _claimReward(true);
    }

    // Withdraw without caring about rewards. EMERGENCY ONLY.
    function emergencyWithdraw() external lock override {
        require(IStakePoolController(controller).isAllowEmergencyWithdrawStakePool(address(this)),"StakePoolEpochReward: Not allow emergencyWithdraw");
        UserInfo storage user = userInfo[msg.sender];
        uint amount = user.amount;
        balance = balance.sub(amount);
        user.amount = 0;
        user.rewardEarned = 0;
        TransferHelper.safeTransfer(stakeToken, msg.sender, amount);
    }
}

contract StakePoolEpochRewardCreator is IStakePoolCreator {
    uint public override version = 4001;
    struct PoolRewardInfo {
        address epochController;
        uint256 withdrawLockupEpochs;
        uint256 rewardLockupEpochs;

    }
    function create() external override returns (address) {
        StakePoolEpochReward pool = new StakePoolEpochReward(msg.sender, version);
        return address(pool);
    }
    function initialize(address poolAddress, address pair, address rewardToken, address timelock, address stakePoolRewardFund, bytes calldata data) external override {
        StakePoolEpochReward pool = StakePoolEpochReward(poolAddress);
//
        PoolRewardInfo memory poolRewardInfo = abi.decode(data,(PoolRewardInfo));
        pool.initialize(
            pair,
            address(stakePoolRewardFund),
            address(timelock),
            poolRewardInfo.epochController,
            rewardToken,
            poolRewardInfo.withdrawLockupEpochs,
            poolRewardInfo.rewardLockupEpochs
        );
    }
}