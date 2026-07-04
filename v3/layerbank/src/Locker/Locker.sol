// Sources flattened with hardhat v2.11.1 https://hardhat.org

// File contracts/library/Constant.sol

// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.6.12;

library Constant {
  uint256 public constant CLOSE_FACTOR_MIN = 5e16;
  uint256 public constant CLOSE_FACTOR_MAX = 9e17;
  uint256 public constant COLLATERAL_FACTOR_MAX = 9e17;
  uint256 public constant LIQUIDATION_THRESHOLD_MAX = 9e17;
  uint256 public constant LIQUIDATION_BONUS_MAX = 5e17;

  enum EcoScorePreviewOption {
    LOCK,
    CLAIM,
    EXTEND,
    LOCK_MORE
  }

  enum LoanState {
    None,
    Active,
    Auction,
    Repaid,
    Defaulted
  }

  struct MarketInfo {
    bool isListed;
    uint256 supplyCap;
    uint256 borrowCap;
    uint256 collateralFactor;
  }

  struct BorrowInfo {
    uint256 borrow;
    uint256 interestIndex;
  }

  struct LoanData {
    uint256 loanId;
    LoanState state;
    address borrower;
    address gNft;
    address nftAsset;
    uint256 nftTokenId;
    uint256 borrowAmount;
    uint256 interestIndex;
    uint256 bidStartTimestamp;
    address bidderAddress;
    uint256 bidPrice;
    uint256 bidBorrowAmount;
    uint256 floorPrice;
    uint256 bidCount;
    address firstBidderAddress;
  }

  struct AccountSnapshot {
    uint256 gTokenBalance;
    uint256 borrowBalance;
    uint256 exchangeRate;
  }

  struct AccrueSnapshot {
    uint256 totalBorrow;
    uint256 totalReserve;
    uint256 accInterestIndex;
  }

  struct AccrueLoanSnapshot {
    uint256 totalBorrow;
    uint256 accInterestIndex;
  }

  struct DistributionInfo {
    uint256 supplySpeed;
    uint256 borrowSpeed;
    uint256 totalBoostedSupply;
    uint256 totalBoostedBorrow;
    uint256 accPerShareSupply;
    uint256 accPerShareBorrow;
    uint256 accruedAt;
  }

  struct DistributionAccountInfo {
    uint256 accuredLAB; // Unclaimed LAB rewards amount
    uint256 boostedSupply; // effective(boosted) supply balance of user  (since last_action)
    uint256 boostedBorrow; // effective(boosted) borrow balance of user  (since last_action)
    uint256 accPerShareSupply; // Last integral value of LAB rewards per share. ∫(LABRate(t) / totalShare(t) dt) from 0 till (last_action)
    uint256 accPerShareBorrow; // Last integral value of LAB rewards per share. ∫(LABRate(t) / totalShare(t) dt) from 0 till (last_action)
  }

  struct DistributionAPY {
    uint256 apySupplyLab;
    uint256 apyBorrowLab;
    uint256 apyAccountSupplyLab;
    uint256 apyAccountBorrowLab;
  }

  struct RebateCheckpoint {
    uint256 timestamp;
    uint256 totalScore;
    uint256 adminFeeRate;
    uint256 weeklyLabSpeed;
    uint256 additionalLabAmount;
    mapping(address => uint256) marketFees;
  }

  struct LockInfo {
    uint256 timestamp;
    uint256 amount;
    uint256 expiry;
  }
}


// File contracts/interfaces/ILABDistributor.sol

pragma solidity ^0.6.12;
pragma experimental ABIEncoderV2;

interface ILABDistributor {
  /* ========== EVENTS ========== */
  event DistributionSpeedUpdated(address indexed gToken, uint256 supplySpeed, uint256 borrowSpeed);
  event Claimed(address indexed user, uint256 amount);
  event Compound(address indexed user, uint256 amount);

  function accuredLAB(address[] calldata markets, address account) external view returns (uint);

  function distributionInfoOf(address market) external view returns (Constant.DistributionInfo memory);

  function accountDistributionInfoOf(
    address market,
    address account
  ) external view returns (Constant.DistributionAccountInfo memory);

  function apyDistributionOf(address market, address account) external view returns (Constant.DistributionAPY memory);

  function boostedRatioOf(
    address market,
    address account
  ) external view returns (uint boostedSupplyRatio, uint boostedBorrowRatio);

  function notifySupplyUpdated(address market, address user) external;

  function notifyBorrowUpdated(address market, address user) external;

  function notifyTransferred(address qToken, address sender, address receiver) external;

  function claim(address[] calldata markets, address account) external;

  function kick(address user) external;

  function updateAccountBoostedInfo(address user) external;

  function compound(address[] calldata markets, address account) external;
   
  function pause() external;

  function unpause() external;

  function approve(address _spender, uint256 amount) external returns (bool);
}


// File @openzeppelin/contracts/utils/Context.sol@v3.4.1

pragma solidity >=0.6.0 <0.8.0;

/*
 * @dev Provides information about the current execution context, including the
 * sender of the transaction and its data. While these are generally available
 * via msg.sender and msg.data, they should not be accessed in such a direct
 * manner, since when dealing with GSN meta-transactions the account sending and
 * paying for execution may not be the actual sender (as far as an application
 * is concerned).
 *
 * This contract is only required for intermediate, library-like contracts.
 */
abstract contract Context {
    function _msgSender() internal view virtual returns (address payable) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes memory) {
        this; // silence state mutability warning without generating bytecode - see https://github.com/ethereum/solidity/issues/2691
        return msg.data;
    }
}


// File @openzeppelin/contracts/access/Ownable.sol@v3.4.1

pragma solidity >=0.6.0 <0.8.0;

/**
 * @dev Contract module which provides a basic access control mechanism, where
 * there is an account (an owner) that can be granted exclusive access to
 * specific functions.
 *
 * By default, the owner account will be the one that deploys the contract. This
 * can later be changed with {transferOwnership}.
 *
 * This module is used through inheritance. It will make available the modifier
 * `onlyOwner`, which can be applied to your functions to restrict their use to
 * the owner.
 */
abstract contract Ownable is Context {
    address private _owner;

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    /**
     * @dev Initializes the contract setting the deployer as the initial owner.
     */
    constructor () internal {
        address msgSender = _msgSender();
        _owner = msgSender;
        emit OwnershipTransferred(address(0), msgSender);
    }

    /**
     * @dev Returns the address of the current owner.
     */
    function owner() public view virtual returns (address) {
        return _owner;
    }

    /**
     * @dev Throws if called by any account other than the owner.
     */
    modifier onlyOwner() {
        require(owner() == _msgSender(), "Ownable: caller is not the owner");
        _;
    }

    /**
     * @dev Leaves the contract without owner. It will not be possible to call
     * `onlyOwner` functions anymore. Can only be called by the current owner.
     *
     * NOTE: Renouncing ownership will leave the contract without an owner,
     * thereby removing any functionality that is only available to the owner.
     */
    function renounceOwnership() public virtual onlyOwner {
        emit OwnershipTransferred(_owner, address(0));
        _owner = address(0);
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Can only be called by the current owner.
     */
    function transferOwnership(address newOwner) public virtual onlyOwner {
        require(newOwner != address(0), "Ownable: new owner is the zero address");
        emit OwnershipTransferred(_owner, newOwner);
        _owner = newOwner;
    }
}


// File contracts/library/Whitelist.sol

pragma solidity ^0.6.12;

contract Whitelist is Ownable {
  mapping(address => bool) private _whitelist;
  bool private _disable; // default - false means whitelist feature is working on. if true no more use of whitelist

  event Whitelisted(address indexed _address, bool whitelist);
  event EnableWhitelist();
  event DisableWhitelist();

  modifier onlyWhitelisted() {
    require(_disable || _whitelist[msg.sender], "Whitelist: caller is not on the whitelist");
    _;
  }

  function isWhitelist(address _address) public view returns (bool) {
    return _whitelist[_address];
  }

  function setWhitelist(address _address, bool _on) external onlyOwner {
    _whitelist[_address] = _on;

    emit Whitelisted(_address, _on);
  }

  function disableWhitelist(bool disable) external onlyOwner {
    _disable = disable;
    if (disable) {
      emit DisableWhitelist();
    } else {
      emit EnableWhitelist();
    }
  }

  uint256[49] private __gap;
}


// File contracts/library/SafeToken.sol

pragma solidity ^0.6.12;

interface ERC20Interface {
  function balanceOf(address user) external view returns (uint256);
}

library SafeToken {
  function myBalance(address token) internal view returns (uint256) {
    return ERC20Interface(token).balanceOf(address(this));
  }

  function balanceOf(address token, address user) internal view returns (uint256) {
    return ERC20Interface(token).balanceOf(user);
  }

  function safeApprove(address token, address to, uint256 value) internal {
    // bytes4(keccak256(bytes('approve(address,uint256)')));
    (bool success, bytes memory data) = token.call(abi.encodeWithSelector(0x095ea7b3, to, value));
    require(success && (data.length == 0 || abi.decode(data, (bool))), "!safeApprove");
  }

  function safeTransfer(address token, address to, uint256 value) internal {
    // bytes4(keccak256(bytes('transfer(address,uint256)')));
    (bool success, bytes memory data) = token.call(abi.encodeWithSelector(0xa9059cbb, to, value));
    require(success && (data.length == 0 || abi.decode(data, (bool))), "!safeTransfer");
  }

  function safeTransferFrom(address token, address from, address to, uint256 value) internal {
    // bytes4(keccak256(bytes('transferFrom(address,address,uint256)')));
    (bool success, bytes memory data) = token.call(abi.encodeWithSelector(0x23b872dd, from, to, value));
    require(success && (data.length == 0 || abi.decode(data, (bool))), "!safeTransferFrom");
  }

  function safeTransferETH(address to, uint256 value) internal {
    (bool success, ) = to.call{value: value}(new bytes(0));
    require(success, "!safeTransferETH");
  }
}


// File contracts/interfaces/ILocker.sol

pragma solidity ^0.6.12;

interface ILocker {
  event LABDistributorUpdated(address newLABDistributor);

  event Pause();

  event Unpause();

  event Deposit(address indexed account, uint256 amount, uint256 expiry);

  event ExtendLock(address indexed account, uint256 nextExpiry);

  event Withdraw(address indexed account);

  event WithdrawAndLock(address indexed account, uint256 expiry);

  event DepositBehalf(address caller, address indexed account, uint256 amount, uint256 expiry);

  event WithdrawBehalf(address caller, address indexed account);

  event WithdrawAndLockBehalf(address caller, address indexed account, uint256 expiry);

  function scoreOfAt(address account, uint256 timestamp) external view returns (uint256);

  function lockInfoOf(address account) external view returns (Constant.LockInfo[] memory);

  function firstLockTimeInfoOf(address account) external view returns (uint256);

  function setLABDistributor(address _labDistributor) external;

  function pause() external;

  function unpause() external;

  function totalBalance() external view returns (uint256);

  function balanceOf(address account) external view returns (uint256);

  function expiryOf(address account) external view returns (uint256);

  function availableOf(address account) external view returns (uint256);

  function getLockUnitMax() external view returns (uint256);

  function totalScore() external view returns (uint256 score, uint256 slope);

  function scoreOf(address account) external view returns (uint256);

  function truncateExpiry(uint256 time) external view returns (uint256);

  function deposit(uint256 amount, uint256 unlockTime) external;

  function extendLock(uint256 expiryTime) external;

  function withdraw() external;

  function withdrawAndLock(uint256 expiry) external;

  function depositBehalf(address account, uint256 amount, uint256 unlockTime) external;

  function withdrawBehalf(address account) external;

  function withdrawAndLockBehalf(address account, uint256 expiry) external;

  function preScoreOf(
    address account,
    uint256 amount,
    uint256 expiry,
    Constant.EcoScorePreviewOption option
  ) external view returns (uint256);

  function remainExpiryOf(address account) external view returns (uint256);

  function preRemainExpiryOf(uint256 expiry) external view returns (uint256);
}


// File contracts/interfaces/IRebateDistributor.sol

pragma solidity ^0.6.12;

interface IRebateDistributor {
  function setKeeper(address _keeper) external;

  function pause() external;

  function unpause() external;

  function updateAdminFeeRate(uint256 newAdminFeeRate) external;

  function checkpoint() external;

  function weeklyRebatePool() external view returns (uint256);

  function weeklyProfitOfVP(uint256 vp) external view returns (uint256);

  function weeklyProfitOf(address account) external view returns (uint256);

  function indicativeYearProfit() external view returns (uint256);

  function accruedRebates(address account) external view returns (uint256, uint256, uint256[] memory);

  function claimRebates() external returns (uint256, uint256, uint256[] memory);

  function claimAdminRebates() external returns (uint256, uint256[] memory);

  function addLABToRebatePool(uint256 amount) external;

  function addMarketUTokenToRebatePool(address lToken, uint256 uAmount) external payable;
}


// File @openzeppelin/contracts/math/Math.sol@v3.4.1

pragma solidity >=0.6.0 <0.8.0;

/**
 * @dev Standard math utilities missing in the Solidity language.
 */
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


// File @openzeppelin/contracts/math/SafeMath.sol@v3.4.1

pragma solidity >=0.6.0 <0.8.0;

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


// File @openzeppelin/contracts/utils/ReentrancyGuard.sol@v3.4.1

pragma solidity >=0.6.0 <0.8.0;

/**
 * @dev Contract module that helps prevent reentrant calls to a function.
 *
 * Inheriting from `ReentrancyGuard` will make the {nonReentrant} modifier
 * available, which can be applied to functions to make sure there are no nested
 * (reentrant) calls to them.
 *
 * Note that because there is a single `nonReentrant` guard, functions marked as
 * `nonReentrant` may not call one another. This can be worked around by making
 * those functions `private`, and then adding `external` `nonReentrant` entry
 * points to them.
 *
 * TIP: If you would like to learn more about reentrancy and alternative ways
 * to protect against it, check out our blog post
 * https://blog.openzeppelin.com/reentrancy-after-istanbul/[Reentrancy After Istanbul].
 */
abstract contract ReentrancyGuard {
    // Booleans are more expensive than uint256 or any type that takes up a full
    // word because each write operation emits an extra SLOAD to first read the
    // slot's contents, replace the bits taken up by the boolean, and then write
    // back. This is the compiler's defense against contract upgrades and
    // pointer aliasing, and it cannot be disabled.

    // The values being non-zero value makes deployment a bit more expensive,
    // but in exchange the refund on every call to nonReentrant will be lower in
    // amount. Since refunds are capped to a percentage of the total
    // transaction's gas, it is best to keep them low in cases like this one, to
    // increase the likelihood of the full refund coming into effect.
    uint256 private constant _NOT_ENTERED = 1;
    uint256 private constant _ENTERED = 2;

    uint256 private _status;

    constructor () internal {
        _status = _NOT_ENTERED;
    }

    /**
     * @dev Prevents a contract from calling itself, directly or indirectly.
     * Calling a `nonReentrant` function from another `nonReentrant`
     * function is not supported. It is possible to prevent this from happening
     * by making the `nonReentrant` function external, and make it call a
     * `private` function that does the actual work.
     */
    modifier nonReentrant() {
        // On the first call to nonReentrant, _notEntered will be true
        require(_status != _ENTERED, "ReentrancyGuard: reentrant call");

        // Any calls to nonReentrant after this point will fail
        _status = _ENTERED;

        _;

        // By storing the original value once again, a refund is triggered (see
        // https://eips.ethereum.org/EIPS/eip-2200)
        _status = _NOT_ENTERED;
    }
}


// File @openzeppelin/contracts/utils/Pausable.sol@v3.4.1

pragma solidity >=0.6.0 <0.8.0;

/**
 * @dev Contract module which allows children to implement an emergency stop
 * mechanism that can be triggered by an authorized account.
 *
 * This module is used through inheritance. It will make available the
 * modifiers `whenNotPaused` and `whenPaused`, which can be applied to
 * the functions of your contract. Note that they will not be pausable by
 * simply including this module, only once the modifiers are put in place.
 */
abstract contract Pausable is Context {
    /**
     * @dev Emitted when the pause is triggered by `account`.
     */
    event Paused(address account);

    /**
     * @dev Emitted when the pause is lifted by `account`.
     */
    event Unpaused(address account);

    bool private _paused;

    /**
     * @dev Initializes the contract in unpaused state.
     */
    constructor () internal {
        _paused = false;
    }

    /**
     * @dev Returns true if the contract is paused, and false otherwise.
     */
    function paused() public view virtual returns (bool) {
        return _paused;
    }

    /**
     * @dev Modifier to make a function callable only when the contract is not paused.
     *
     * Requirements:
     *
     * - The contract must not be paused.
     */
    modifier whenNotPaused() {
        require(!paused(), "Pausable: paused");
        _;
    }

    /**
     * @dev Modifier to make a function callable only when the contract is paused.
     *
     * Requirements:
     *
     * - The contract must be paused.
     */
    modifier whenPaused() {
        require(paused(), "Pausable: not paused");
        _;
    }

    /**
     * @dev Triggers stopped state.
     *
     * Requirements:
     *
     * - The contract must not be paused.
     */
    function _pause() internal virtual whenNotPaused {
        _paused = true;
        emit Paused(_msgSender());
    }

    /**
     * @dev Returns to normal state.
     *
     * Requirements:
     *
     * - The contract must be paused.
     */
    function _unpause() internal virtual whenPaused {
        _paused = false;
        emit Unpaused(_msgSender());
    }
}


// File contracts/staking/Locker.sol

pragma solidity ^0.6.12;








contract Locker is ILocker, Whitelist, ReentrancyGuard, Pausable {
  using SafeMath for uint256;
  using SafeToken for address;

  /* ========== CONSTANTS ============= */

  uint256 public constant LOCK_UNIT_BASE = 7 days;
  uint256 public constant LOCK_UNIT_MAX = 365 days; // 1 years
  uint256 public constant LOCK_UNIT_MIN = 4 weeks; // 4 weeks = 1 month

  /* ========== STATE VARIABLES ========== */

  address public LAB;
  ILABDistributor public labDistributor;
  IRebateDistributor public rebateDistributor;

  mapping(address => uint256) public balances;
  mapping(address => uint256) public expires;

  uint256 public override totalBalance;

  uint256 private _lastTotalScore;
  uint256 private _lastSlope;
  uint256 private _lastTimestamp;
  mapping(uint256 => uint256) private _slopeChanges; // Timestamp => Expire amount / Max Period
  mapping(address => Constant.LockInfo[]) private _lockHistory;
  mapping(address => uint256) private _firstLockTime;

  // initializer
  bool public initialized;

  /* ========== INITIALIZER ========== */

  constructor() public {
    _lastTimestamp = block.timestamp;
  }

  function initialize(address _labTokenAddress) external onlyOwner {
    require(initialized == false, "already initialized");

    require(_labTokenAddress != address(0), "Locker: LAB address can't be zero");
    LAB = _labTokenAddress;

    initialized = true;
  }

  /* ========== RESTRICTED FUNCTIONS ========== */

  /// @notice labDistributor 변경
  /// @dev owner address 에서만 요청 가능
  /// @param _labDistributor 새로운 labDistributor address
  function setLABDistributor(address _labDistributor) external override onlyOwner {
    require(_labDistributor != address(0), "Locker: invalid labDistributor address");
    labDistributor = ILABDistributor(_labDistributor);
    emit LABDistributorUpdated(_labDistributor);
  }

  /// @notice 긴급상황시 Deposit, Withdraw를 막기 위한 pause
  function pause() external override onlyOwner {
    _pause();
    emit Pause();
  }

  function unpause() external override onlyOwner {
    _unpause();
    emit Unpause();
  }

  /* ========== VIEWS ========== */

  /// @notice View amount of locked LAB
  /// @param account Account address
  function balanceOf(address account) external view override returns (uint256) {
    return balances[account];
  }

  /// @notice View lock expire time of account
  /// @param account Account address
  function expiryOf(address account) external view override returns (uint256) {
    return expires[account];
  }

  /// @notice View withdrawable amount that lock had been expired
  /// @param account Account address
  function availableOf(address account) external view override returns (uint256) {
    return expires[account] < block.timestamp ? balances[account] : 0;
  }

  /// @notice View Lock Unit Max value
  function getLockUnitMax() external view override returns (uint256) {
    return LOCK_UNIT_MAX;
  }

  /// @notice View total score
  /// @dev 마지막 계산된 total score 시점에서부터 지난 시간 만큼의 deltaScore을 구한 뒤 차감하여, 현재의 total score 값을 구하여 반환한다.
  function totalScore() public view override returns (uint256 score, uint256 slope) {
    score = _lastTotalScore;
    slope = _lastSlope;

    uint256 prevTimestamp = _lastTimestamp;
    uint256 nextTimestamp = _onlyTruncateExpiry(_lastTimestamp).add(LOCK_UNIT_BASE);
    while (nextTimestamp < block.timestamp) {
      uint256 deltaScore = nextTimestamp.sub(prevTimestamp).mul(slope);
      score = score < deltaScore ? 0 : score.sub(deltaScore);
      slope = slope.sub(_slopeChanges[nextTimestamp]);

      prevTimestamp = nextTimestamp;
      nextTimestamp = nextTimestamp.add(LOCK_UNIT_BASE);
    }
    uint256 deltaScore = block.timestamp > prevTimestamp ? block.timestamp.sub(prevTimestamp).mul(slope) : 0;
    score = score > deltaScore ? score.sub(deltaScore) : 0;
  }

  /// @notice Calculate time-weighted balance of account (유저의 현재 score 반환)
  /// @dev 남은시간 대비 현재까지의 score 계산
  ///      Expiry time 에 가까워질수록 score 감소
  ///      if 만료일 = 현재시간, score = 0
  /// @param account Account of which the balance will be calculated
  function scoreOf(address account) external view override returns (uint256) {
    if (expires[account] < block.timestamp) return 0;
    return expires[account].sub(block.timestamp).mul(balances[account].div(LOCK_UNIT_MAX));
  }

  /// @notice 남은 만료 기간 반환
  /// @param account user address
  function remainExpiryOf(address account) external view override returns (uint256) {
    if (expires[account] < block.timestamp) return 0;
    return expires[account].sub(block.timestamp);
  }

  /// @notice 예상 만료일에 따른 남은 만료 기간 반환
  /// @param expiry lock period
  function preRemainExpiryOf(uint256 expiry) external view override returns (uint256) {
    if (expiry <= block.timestamp) return 0;
    expiry = _truncateExpiry(expiry);
    require(
      expiry > block.timestamp && expiry <= _truncateExpiry(block.timestamp + LOCK_UNIT_MAX),
      "Locker: preRemainExpiryOf: invalid expiry"
    );
    return expiry.sub(block.timestamp);
  }

  /// @notice Pre-Calculate time-weighted balance of account (유저의 예상 score 반환)
  /// @dev 주어진 LAB 수량과 연장만료일에 따라 사전에 미리 ve 점수를 구하기 위함
  /// @param account Account of which the balance will be calculated
  /// @param amount Amount of LAB, Lock LAB 또는 Claim LAB 수량을 전달받는다.
  /// @param expiry Extended expiry, 연장될 만료일을 전달 받는다.
  /// @param option 0 = lock, 1 = claim, 2 = extend, 3 = lock more
  function preScoreOf(
    address account,
    uint256 amount,
    uint256 expiry,
    Constant.EcoScorePreviewOption option
  ) external view override returns (uint256) {
    if (option == Constant.EcoScorePreviewOption.EXTEND && expires[account] < block.timestamp) return 0;
    uint256 expectedAmount = balances[account];
    uint256 expectedExpires = expires[account];

    if (option == Constant.EcoScorePreviewOption.LOCK) {
      expectedAmount = expectedAmount.add(amount);
      expectedExpires = _truncateExpiry(expiry);
    } else if (option == Constant.EcoScorePreviewOption.LOCK_MORE) {
      expectedAmount = expectedAmount.add(amount);
    } else if (option == Constant.EcoScorePreviewOption.EXTEND) {
      expectedExpires = _truncateExpiry(expiry);
    }
    if (expectedExpires <= block.timestamp) {
      return 0;
    }
    return expectedExpires.sub(block.timestamp).mul(expectedAmount.div(LOCK_UNIT_MAX));
  }

  /// @notice account 의 특정 시점의 score 를 계산
  /// @param account account address
  /// @param timestamp timestamp
  function scoreOfAt(address account, uint256 timestamp) external view override returns (uint256) {
    uint256 count = _lockHistory[account].length;
    if (count == 0 || _lockHistory[account][count - 1].expiry <= timestamp) return 0;

    for (uint256 i = count - 1; i < uint256(-1); i--) {
      Constant.LockInfo storage lock = _lockHistory[account][i];

      if (lock.timestamp <= timestamp) {
        return lock.expiry <= timestamp ? 0 : lock.expiry.sub(timestamp).mul(lock.amount).div(LOCK_UNIT_MAX);
      }
    }
    return 0;
  }

  function lockInfoOf(address account) external view override returns (Constant.LockInfo[] memory) {
    return _lockHistory[account];
  }

  function firstLockTimeInfoOf(address account) external view override returns (uint256) {
    return _firstLockTime[account];
  }

  /// @notice 전달받은 expiry 기간과 가까운 목요일을 기준 만료일로 정한 후 7일 더 추가하여 최종 만료일을 반환한다.
  /// @param time expiry time
  function truncateExpiry(uint256 time) external view override returns (uint256) {
    return _truncateExpiry(time);
  }

  /* ========== MUTATIVE FUNCTIONS ========== */

  /// @notice Deposit LAB (Lock)
  /// @dev deposit amount와 만료일을 받아 해당 내용 업데이트, total score 업데이트, total balance 업데이트 , 유저 정보 업데이트
  /// @param amount LAB token amount to deposit
  /// @param expiry Lock expire time
  function deposit(uint256 amount, uint256 expiry) external override nonReentrant whenNotPaused {
    require(amount > 0, "Locker: invalid amount");
    expiry = balances[msg.sender] == 0 ? _truncateExpiry(expiry) : expires[msg.sender];
    require(
      block.timestamp < expiry && expiry <= _truncateExpiry(block.timestamp + LOCK_UNIT_MAX),
      "Locker: deposit: invalid expiry"
    );
    if (balances[msg.sender] == 0) {
      uint256 lockPeriod = expiry > block.timestamp ? expiry.sub(block.timestamp) : 0;
      require(lockPeriod >= LOCK_UNIT_MIN, "Locker: The expiry does not meet the minimum period");
      _firstLockTime[msg.sender] = block.timestamp;
    }
    _slopeChanges[expiry] = _slopeChanges[expiry].add(amount.div(LOCK_UNIT_MAX));
    _updateTotalScore(amount, expiry);

    LAB.safeTransferFrom(msg.sender, address(this), amount);
    totalBalance = totalBalance.add(amount);

    balances[msg.sender] = balances[msg.sender].add(amount);
    expires[msg.sender] = expiry;

    _updateLABDistributorBoostedInfo(msg.sender);

    _lockHistory[msg.sender].push(
      Constant.LockInfo({timestamp: block.timestamp, amount: balances[msg.sender], expiry: expires[msg.sender]})
    );

    emit Deposit(msg.sender, amount, expiry);
  }

  /**
   * @notice Extend for expiry of `msg.sender`
   * @param nextExpiry New Lock expire time
   */
  function extendLock(uint256 nextExpiry) external override nonReentrant whenNotPaused {
    uint256 amount = balances[msg.sender];
    require(amount > 0, "Locker: zero balance");

    uint256 prevExpiry = expires[msg.sender];
    nextExpiry = _truncateExpiry(nextExpiry);
    require(block.timestamp < prevExpiry, "Locker: expired lock");
    require(
      Math.max(prevExpiry, block.timestamp) < nextExpiry &&
        nextExpiry <= _truncateExpiry(block.timestamp + LOCK_UNIT_MAX),
      "Locker: invalid expiry time"
    );

    uint256 slopeChange = (_slopeChanges[prevExpiry] < amount.div(LOCK_UNIT_MAX))
      ? _slopeChanges[prevExpiry]
      : amount.div(LOCK_UNIT_MAX);
    _slopeChanges[prevExpiry] = _slopeChanges[prevExpiry].sub(slopeChange);
    _slopeChanges[nextExpiry] = _slopeChanges[nextExpiry].add(slopeChange);
    _updateTotalScoreExtendingLock(amount, prevExpiry, nextExpiry);
    expires[msg.sender] = nextExpiry;

    _updateLABDistributorBoostedInfo(msg.sender);

    _lockHistory[msg.sender].push(
      Constant.LockInfo({timestamp: block.timestamp, amount: balances[msg.sender], expiry: expires[msg.sender]})
    );

    emit ExtendLock(msg.sender, nextExpiry);
  }

  /**
   * @notice Withdraw all tokens for `msg.sender`
   * @dev Only possible if the lock has expired
   */
  function withdraw() external override nonReentrant whenNotPaused {
    require(balances[msg.sender] > 0 && block.timestamp >= expires[msg.sender], "Locker: invalid state");
    _updateTotalScore(0, 0);

    uint256 amount = balances[msg.sender];
    totalBalance = totalBalance.sub(amount);
    delete balances[msg.sender];
    delete expires[msg.sender];
    delete _firstLockTime[msg.sender];
    LAB.safeTransfer(msg.sender, amount);

    _updateLABDistributorBoostedInfo(msg.sender);

    emit Withdraw(msg.sender);
  }

  /**
   * @notice Withdraw all tokens for `msg.sender` and Lock again until given expiry
   *  @dev Only possible if the lock has expired
   * @param expiry Lock expire time
   */
  function withdrawAndLock(uint256 expiry) external override nonReentrant whenNotPaused {
    uint256 amount = balances[msg.sender];
    require(amount > 0 && block.timestamp >= expires[msg.sender], "Locker: invalid state");

    expiry = _truncateExpiry(expiry);
    require(
      block.timestamp < expiry && expiry <= _truncateExpiry(block.timestamp + LOCK_UNIT_MAX),
      "Locker: withdrawAndLock: invalid expiry"
    );

    _slopeChanges[expiry] = _slopeChanges[expiry].add(amount.div(LOCK_UNIT_MAX));
    _updateTotalScore(amount, expiry);

    expires[msg.sender] = expiry;

    _updateLABDistributorBoostedInfo(msg.sender);
    _firstLockTime[msg.sender] = block.timestamp;

    _lockHistory[msg.sender].push(
      Constant.LockInfo({timestamp: block.timestamp, amount: balances[msg.sender], expiry: expires[msg.sender]})
    );

    emit WithdrawAndLock(msg.sender, expiry);
  }

  /// @notice whiteList 유저가 타인의 Deposit을 대신 해주는 함수
  function depositBehalf(
    address account,
    uint256 amount,
    uint256 expiry
  ) external override onlyWhitelisted nonReentrant whenNotPaused {
    require(amount > 0, "Locker: invalid amount");

    expiry = balances[account] == 0 ? _truncateExpiry(expiry) : expires[account];
    require(
      block.timestamp < expiry && expiry <= _truncateExpiry(block.timestamp + LOCK_UNIT_MAX),
      "Locker: depositBehalf: invalid expiry"
    );

    if (balances[account] == 0) {
      uint256 lockPeriod = expiry > block.timestamp ? expiry.sub(block.timestamp) : 0;
      require(lockPeriod >= LOCK_UNIT_MIN, "Locker: The expiry does not meet the minimum period");
      _firstLockTime[account] = block.timestamp;
    }

    _slopeChanges[expiry] = _slopeChanges[expiry].add(amount.div(LOCK_UNIT_MAX));
    _updateTotalScore(amount, expiry);

    LAB.safeTransferFrom(msg.sender, address(this), amount);
    totalBalance = totalBalance.add(amount);

    balances[account] = balances[account].add(amount);
    expires[account] = expiry;

    _updateLABDistributorBoostedInfo(account);
    _lockHistory[account].push(
      Constant.LockInfo({timestamp: block.timestamp, amount: balances[account], expiry: expires[account]})
    );

    emit DepositBehalf(msg.sender, account, amount, expiry);
  }

  /// @notice WhiteList 유저가 타인의 Withdraw 를 대신 해주는 함수
  function withdrawBehalf(address account) external override onlyWhitelisted nonReentrant whenNotPaused {
    require(balances[account] > 0 && block.timestamp >= expires[account], "Locker: invalid state");
    _updateTotalScore(0, 0);

    uint256 amount = balances[account];
    totalBalance = totalBalance.sub(amount);
    delete balances[account];
    delete expires[account];
    delete _firstLockTime[account];
    LAB.safeTransfer(account, amount);

    _updateLABDistributorBoostedInfo(account);

    emit WithdrawBehalf(msg.sender, account);
  }

  /**
   * @notice Withdraw and Lock 을 대신해주는 함수
   *  @dev Only possible if the lock has expired
   * @param expiry Lock expire time
   */
  function withdrawAndLockBehalf(
    address account,
    uint256 expiry
  ) external override onlyWhitelisted nonReentrant whenNotPaused {
    uint256 amount = balances[account];
    require(amount > 0 && block.timestamp >= expires[account], "Locker: invalid state");

    expiry = _truncateExpiry(expiry);
    require(
      block.timestamp < expiry && expiry <= _truncateExpiry(block.timestamp + LOCK_UNIT_MAX),
      "Locker: withdrawAndLockBehalf: invalid expiry"
    );

    _slopeChanges[expiry] = _slopeChanges[expiry].add(amount.div(LOCK_UNIT_MAX));
    _updateTotalScore(amount, expiry);

    expires[account] = expiry;

    _updateLABDistributorBoostedInfo(account);
    _firstLockTime[account] = block.timestamp;

    _lockHistory[account].push(
      Constant.LockInfo({timestamp: block.timestamp, amount: balances[account], expiry: expires[account]})
    );

    emit WithdrawAndLockBehalf(msg.sender, account, expiry);
  }

  /* ========== PRIVATE FUNCTIONS ========== */

  /// @notice total score update
  /// @dev 2년기준으로 deposit amount에 해당하는 unit score을 계산한뒤 선택한 expiry 기간 만큼의 score로 계산하여 total score에 추가, slop은 2년 기준으로 나눴을때 시간단위의 amount양을 나타내는것으로 보임
  /// @param newAmount LAB amount
  /// @param nextExpiry lockup period
  function _updateTotalScore(uint256 newAmount, uint256 nextExpiry) private {
    (uint256 score, uint256 slope) = totalScore();

    if (newAmount > 0) {
      uint256 slopeChange = newAmount.div(LOCK_UNIT_MAX);
      uint256 newAmountDeltaScore = nextExpiry.sub(block.timestamp).mul(slopeChange);

      slope = slope.add(slopeChange);
      score = score.add(newAmountDeltaScore);
    }

    _lastTotalScore = score;
    _lastSlope = slope;
    _lastTimestamp = block.timestamp;
  }

  function _updateTotalScoreExtendingLock(uint256 amount, uint256 prevExpiry, uint256 nextExpiry) private {
    (uint256 score, uint256 slope) = totalScore();

    uint256 deltaScore = nextExpiry.sub(prevExpiry).mul(amount.div(LOCK_UNIT_MAX));
    score = score.add(deltaScore);

    _lastTotalScore = score;
    _lastSlope = slope;
    _lastTimestamp = block.timestamp;
  }

  function _updateLABDistributorBoostedInfo(address user) private {
    labDistributor.updateAccountBoostedInfo(user);
  }

  function _truncateExpiry(uint256 time) private view returns (uint256) {
    if (time > block.timestamp.add(LOCK_UNIT_MAX)) {
      time = block.timestamp.add(LOCK_UNIT_MAX);
    }
    return (time.div(LOCK_UNIT_BASE).mul(LOCK_UNIT_BASE)).add(LOCK_UNIT_BASE);
  }

  function _onlyTruncateExpiry(uint256 time) private pure returns (uint256) {
    return time.div(LOCK_UNIT_BASE).mul(LOCK_UNIT_BASE);
  }
}