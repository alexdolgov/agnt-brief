// Sources flattened with hardhat v2.11.1 https://hardhat.org

// File contracts/library/SafeToken.sol

// SPDX-License-Identifier: UNLICENSED

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


// File contracts/interfaces/IPriceCalculator.sol

pragma solidity ^0.6.12;

interface IPriceCalculator {
  struct ReferenceData {
    uint256 lastData;
    uint256 lastUpdated;
  }

  function priceOf(address asset) external view returns (uint256);

  function pricesOf(address[] memory assets) external view returns (uint256[] memory);

  function priceOfETH() external view returns (uint256);

  function getUnderlyingPrice(address gToken) external view returns (uint256);

  function getUnderlyingPrices(address[] memory gTokens) external view returns (uint256[] memory);
}


// File contracts/interfaces/IBEP20.sol


pragma solidity >=0.4.0;

interface IBEP20 {
  /**
   * @dev Returns the amount of tokens in existence.
   */
  function totalSupply() external view returns (uint256);

  /**
   * @dev Returns the token decimals.
   */
  function decimals() external view returns (uint8);

  /**
   * @dev Returns the token symbol.
   */
  function symbol() external view returns (string memory);

  /**
   * @dev Returns the token name.
   */
  function name() external view returns (string memory);

  /**
   * @dev Returns the bep token owner.
   */
  function getOwner() external view returns (address);

  /**
   * @dev Returns the amount of tokens owned by `account`.
   */
  function balanceOf(address account) external view returns (uint256);

  /**
   * @dev Moves `amount` tokens from the caller's account to `recipient`.
   *
   * Returns a boolean value indicating whether the operation succeeded.
   *
   * Emits a {Transfer} event.
   */
  function transfer(address recipient, uint256 amount) external returns (bool);

  /**
   * @dev Returns the remaining number of tokens that `spender` will be
   * allowed to spend on behalf of `owner` through {transferFrom}. This is
   * zero by default.
   *
   * This value changes when {approve} or {transferFrom} are called.
   */
  function allowance(address _owner, address spender) external view returns (uint256);

  /**
   * @dev Sets `amount` as the allowance of `spender` over the caller's tokens.
   *
   * Returns a boolean value indicating whether the operation succeeded.
   *
   * IMPORTANT: Beware that changing an allowance with this method brings the risk
   * that someone may use both the old and the new allowance by unfortunate
   * transaction ordering. One possible solution to mitigate this race
   * condition is to first reduce the spender's allowance to 0 and set the
   * desired value afterwards:
   * https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
   *
   * Emits an {Approval} event.
   */
  function approve(address spender, uint256 amount) external returns (bool);

  /**
   * @dev Moves `amount` tokens from `sender` to `recipient` using the
   * allowance mechanism. `amount` is then deducted from the caller's
   * allowance.
   *
   * Returns a boolean value indicating whether the operation succeeded.
   *
   * Emits a {Transfer} event.
   */
  function transferFrom(address sender, address recipient, uint256 amount) external returns (bool);

  /**
   * @dev Emitted when `value` tokens are moved from one account (`from`) to
   * another (`to`).
   *
   * Note that `value` may be zero.
   */
  event Transfer(address indexed from, address indexed to, uint256 value);

  /**
   * @dev Emitted when the allowance of a `spender` for an `owner` is set by
   * a call to {approve}. `value` is the new allowance.
   */
  event Approval(address indexed owner, address indexed spender, uint256 value);
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


// File contracts/library/Constant.sol

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


// File contracts/interfaces/ILocker.sol

pragma solidity ^0.6.12;
pragma experimental ABIEncoderV2;

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


// File contracts/interfaces/ICore.sol

pragma solidity ^0.6.12;

interface ICore {
  /* ========== Event ========== */
  event MarketSupply(address user, address gToken, uint256 uAmount);
  event MarketRedeem(address user, address gToken, uint256 uAmount);

  event MarketListed(address gToken);
  event MarketEntered(address gToken, address account);
  event MarketExited(address gToken, address account);

  event CloseFactorUpdated(uint256 newCloseFactor);
  event CollateralFactorUpdated(address gToken, uint256 newCollateralFactor);
  event LiquidationIncentiveUpdated(uint256 newLiquidationIncentive);
  event SupplyCapUpdated(address indexed gToken, uint256 newSupplyCap);
  event BorrowCapUpdated(address indexed gToken, uint256 newBorrowCap);
  event KeeperUpdated(address newKeeper);
  event NftCoreUpdated(address newNftCore);
  event ValidatorUpdated(address newValidator);
  event LABDistributorUpdated(address newLABDistributor);
  event RebateDistributorUpdated(address newRebateDistributor);
  event FlashLoan(
    address indexed target,
    address indexed initiator,
    address indexed asset,
    uint256 amount,
    uint256 premium
  );

  function nftCore() external view returns (address);

  function validator() external view returns (address);

  function rebateDistributor() external view returns (address);

  function allMarkets() external view returns (address[] memory);

  function marketListOf(address account) external view returns (address[] memory);

  function marketInfoOf(address gToken) external view returns (Constant.MarketInfo memory);

  function checkMembership(address account, address gToken) external view returns (bool);

  function accountLiquidityOf(
    address account
  ) external view returns (uint256 collateralInUSD, uint256 supplyInUSD, uint256 borrowInUSD);

  function closeFactor() external view returns (uint256);

  function liquidationIncentive() external view returns (uint256);

  function enterMarkets(address[] memory gTokens) external;

  function exitMarket(address gToken) external;

  function supply(address gToken, uint256 underlyingAmount) external payable returns (uint256);

  function redeemToken(address gToken, uint256 gTokenAmount) external returns (uint256 redeemed);

  function redeemUnderlying(address gToken, uint256 underlyingAmount) external returns (uint256 redeemed);

  function borrow(address gToken, uint256 amount) external;

  function nftBorrow(address gToken, address user, uint256 amount) external;

  function repayBorrow(address gToken, uint256 amount) external payable;

  function nftRepayBorrow(address gToken, address user, uint256 amount) external payable;

  function repayBorrowBehalf(address gToken, address borrower, uint256 amount) external payable;

  function liquidateBorrow(
    address gTokenBorrowed,
    address gTokenCollateral,
    address borrower,
    uint256 amount
  ) external payable;

  function claimLab() external;

  function claimLab(address market) external;

  function transferTokens(address spender, address src, address dst, uint256 amount) external;

  function compoundLab() external;
}


// File contracts/interfaces/ILToken.sol

pragma solidity ^0.6.12;

interface ILToken {
  function underlying() external view returns (address);

  function totalSupply() external view returns (uint256);

  function accountSnapshot(address account) external view returns (Constant.AccountSnapshot memory);

  function underlyingBalanceOf(address account) external view returns (uint256);

  function borrowBalanceOf(address account) external view returns (uint256);

  function totalBorrow() external view returns (uint256);

  function _totalBorrow() external view returns (uint256);

  function totalReserve() external view returns (uint256);

  function reserveFactor() external view returns (uint256);

  function lastAccruedTime() external view returns (uint256);

  function accInterestIndex() external view returns (uint256);

  function exchangeRate() external view returns (uint256);

  function getCash() external view returns (uint256);

  function getRateModel() external view returns (address);

  function getAccInterestIndex() external view returns (uint256);

  function accruedAccountSnapshot(address account) external returns (Constant.AccountSnapshot memory);

  function accruedBorrowBalanceOf(address account) external returns (uint256);

  function accruedTotalBorrow() external returns (uint256);

  function accruedExchangeRate() external returns (uint256);

  function approve(address spender, uint256 amount) external returns (bool);

  function allowance(address owner, address spender) external view returns (uint256);

  function balanceOf(address account) external view returns (uint256);

  function transfer(address dst, uint256 amount) external returns (bool);

  function transferFrom(address src, address dst, uint256 amount) external returns (bool);

  function supply(address account, uint256 underlyingAmount) external payable returns (uint256);

  function redeemToken(address account, uint256 gTokenAmount) external returns (uint256);

  function redeemUnderlying(address account, uint256 underlyingAmount) external returns (uint256);

  function borrow(address account, uint256 amount) external returns (uint256);

  function repayBorrow(address account, uint256 amount) external payable returns (uint256);

  function repayBorrowBehalf(address payer, address borrower, uint256 amount) external payable returns (uint256);

  function liquidateBorrow(
    address gTokenCollateral,
    address liquidator,
    address borrower,
    uint256 amount
  ) external payable returns (uint256 seizeGAmount, uint256 rebateGAmount, uint256 liquidatorGAmount);

  function seize(address liquidator, address borrower, uint256 gTokenAmount) external;

  function withdrawReserves() external;

  function transferTokensInternal(address spender, address src, address dst, uint256 amount) external;
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


// File contracts/staking/RebateDistributor.sol

pragma solidity ^0.6.12;










contract RebateDistributor is IRebateDistributor, Ownable, ReentrancyGuard, Pausable {
  using SafeMath for uint256;
  using SafeToken for address;

  /* ========== CONSTANT VARIABLES ========== */

  uint256 public constant MAX_ADMIN_FEE_RATE = 5e17;
  uint256 public constant REBATE_CYCLE = 1 weeks;
  address internal constant ETH = 0x0000000000000000000000000000000000000000;

  /* ========== STATE VARIABLES ========== */

  ICore public core;
  ILocker public locker;
  IPriceCalculator public priceCalc;
  address public lab;

  Constant.RebateCheckpoint[] public rebateCheckpoints;
  address public keeper;
  uint256 public adminFeeRate;
  uint256 public weeklyLabSpeed;

  mapping(address => uint256) private userCheckpoint;
  uint256 private adminCheckpoint;

  // initializer
  bool public initialized;

  /* ========== MODIFIERS ========== */

  /// @dev msg.sender 가 core address 인지 검증
  modifier onlyCore() {
    require(msg.sender == address(core), "RebateDistributor: only core contract");
    _;
  }

  modifier onlyKeeper() {
    require(msg.sender == keeper || msg.sender == owner(), "RebateDistributor: caller is not the owner or keeper");
    _;
  }

  /* ========== EVENTS ========== */

  event RebateClaimed(address indexed user, uint256[] marketFees, uint256 totalLabAmount);
  event AdminFeeRateUpdated(uint256 newAdminFeeRate);
  event AdminRebateTreasuryUpdated(address newTreasury);
  event KeeperUpdated(address newKeeper);
  event WeeklyLabSpeedUpdated(uint256 newWeeklyLabSpeed);

  /* ========== SPECIAL FUNCTIONS ========== */

  receive() external payable {}

  /* ========== INITIALIZER ========== */

  constructor() public {}

  function initialize(
    address _core,
    address _locker,
    address _priceCalc,
    address _lab,
    uint256 _weeklyLabSpeed
  ) external onlyOwner {
    require(initialized == false, "already initialized");
    require(_core != address(0), "RebateDistributor: invalid core address");
    require(_locker != address(0), "RebateDistributor: invalid locker address");
    require(_priceCalc != address(0), "RebateDistributor: invalid priceCalc address");

    core = ICore(_core);
    locker = ILocker(_locker);
    priceCalc = IPriceCalculator(_priceCalc);
    lab = _lab;

    adminCheckpoint = block.timestamp;
    adminFeeRate = 0;
    weeklyLabSpeed = _weeklyLabSpeed;

    if (rebateCheckpoints.length == 0) {
      rebateCheckpoints.push(
        Constant.RebateCheckpoint({
          timestamp: _truncateTimestamp(block.timestamp),
          totalScore: _getTotalScoreAtTruncatedTime(),
          adminFeeRate: adminFeeRate,
          weeklyLabSpeed: _weeklyLabSpeed,
          additionalLabAmount: 0
        })
      );
    }

    initialized = true;
  }

  /* ========== RESTRICTED FUNCTIONS ========== */

  function pause() external override onlyOwner {
    _pause();
  }

  function unpause() external override onlyOwner {
    _unpause();
  }

  function setPriceCalculator(address _priceCalculator) external onlyOwner {
    require(_priceCalculator != address(0), "RebateDistributor: invalid priceCalculator address");
    priceCalc = IPriceCalculator(_priceCalculator);
  }

  function setLocker(address _locker) external onlyOwner {
    require(_locker != address(0), "RebateDistributor: invalid locker address");
    locker = ILocker(_locker);
  }

  /// @notice set keeper address
  /// @param _keeper new keeper address
  function setKeeper(address _keeper) external override onlyKeeper {
    require(_keeper != address(0), "RebateDistributor: invalid keeper address");
    keeper = _keeper;
    emit KeeperUpdated(_keeper);
  }

  function updateAdminFeeRate(uint256 newAdminFeeRate) external override onlyKeeper {
    require(newAdminFeeRate <= MAX_ADMIN_FEE_RATE, "RebateDisbtirubor: Invalid fee rate");
    adminFeeRate = newAdminFeeRate;
    emit AdminFeeRateUpdated(newAdminFeeRate);
  }

  function updateWeeklyLabSpeed(uint256 newWeeklyLabSpeed) external onlyKeeper {
    weeklyLabSpeed = newWeeklyLabSpeed;
    emit WeeklyLabSpeedUpdated(newWeeklyLabSpeed);
  }

  /// @notice Claim accured admin rebates
  function claimAdminRebates()
    external
    override
    nonReentrant
    onlyKeeper
    returns (uint256 addtionalLabAmount, uint256[] memory marketFees)
  {
    (addtionalLabAmount, marketFees) = accruedAdminRebate();
    Constant.RebateCheckpoint memory lastCheckpoint = rebateCheckpoints[rebateCheckpoints.length - 1];
    adminCheckpoint = _truncateTimestamp(lastCheckpoint.timestamp.sub(REBATE_CYCLE));

    address(lab).safeTransfer(msg.sender, addtionalLabAmount);
  }

  /* ========== VIEWS ========== */

  /// @notice Accured rebate amount of account
  /// @param account account address
  function accruedRebates(
    address account
  ) public view override returns (uint256 labAmount, uint256 additionalLabAmount, uint256[] memory marketFees) {
    Constant.RebateCheckpoint memory lastCheckpoint = rebateCheckpoints[rebateCheckpoints.length - 1];
    address[] memory markets = core.allMarkets();
    marketFees = new uint256[](markets.length);

    if (locker.lockInfoOf(account).length == 0) return (labAmount, additionalLabAmount, marketFees);

    for (
      uint256 nextTimestamp = _truncateTimestamp(
        userCheckpoint[account] != 0 ? userCheckpoint[account] : locker.lockInfoOf(account)[0].timestamp
      ).add(REBATE_CYCLE);
      nextTimestamp <= lastCheckpoint.timestamp.sub(REBATE_CYCLE);
      nextTimestamp = nextTimestamp.add(REBATE_CYCLE)
    ) {
      uint256 votingPower = _getUserVPAt(account, nextTimestamp);
      if (votingPower == 0) continue;

      Constant.RebateCheckpoint storage currentCheckpoint = rebateCheckpoints[_getCheckpointIdxAt(nextTimestamp)];
      labAmount = labAmount.add(currentCheckpoint.weeklyLabSpeed.mul(votingPower).div(1e18));
      additionalLabAmount = additionalLabAmount.add(
        currentCheckpoint
          .additionalLabAmount
          .mul(uint256(1e18).sub(currentCheckpoint.adminFeeRate).mul(votingPower))
          .div(1e36)
      );

      for (uint256 i = 0; i < markets.length; i++) {
        if (currentCheckpoint.marketFees[markets[i]] > 0) {
          uint256 marketFee = currentCheckpoint
            .marketFees[markets[i]]
            .mul(uint256(1e18).sub(currentCheckpoint.adminFeeRate).mul(votingPower))
            .div(1e36);
          marketFees[i] = marketFees[i].add(marketFee);
        }
      }
    }
  }

  /// @notice Accrued rebate amount of admin
  function accruedAdminRebate() public view returns (uint256 additionalLabAmount, uint256[] memory marketFees) {
    Constant.RebateCheckpoint memory lastCheckpoint = rebateCheckpoints[rebateCheckpoints.length - 1];
    address[] memory markets = core.allMarkets();
    marketFees = new uint256[](markets.length);

    for (
      uint256 nextTimestamp = _truncateTimestamp(adminCheckpoint).add(REBATE_CYCLE);
      nextTimestamp <= lastCheckpoint.timestamp.sub(REBATE_CYCLE);
      nextTimestamp = nextTimestamp.add(REBATE_CYCLE)
    ) {
      uint256 checkpointIdx = _getCheckpointIdxAt(nextTimestamp);
      Constant.RebateCheckpoint storage currentCheckpoint = rebateCheckpoints[checkpointIdx];
      additionalLabAmount = additionalLabAmount.add(
        currentCheckpoint.additionalLabAmount.mul(currentCheckpoint.adminFeeRate).div(1e18)
      );

      for (uint256 i = 0; i < markets.length; i++) {
        if (currentCheckpoint.marketFees[markets[i]] > 0) {
          marketFees[i] = marketFees[i].add(
            currentCheckpoint.marketFees[markets[i]].mul(currentCheckpoint.adminFeeRate).div(1e18)
          );
        }
      }
    }
  }

  function totalAccruedRevenue() public view returns (uint256[] memory marketFees, address[] memory markets) {
    Constant.RebateCheckpoint memory lastCheckpoint = rebateCheckpoints[rebateCheckpoints.length - 1];
    markets = core.allMarkets();
    marketFees = new uint256[](markets.length);

    for (
      uint256 nextTimestamp = _truncateTimestamp(rebateCheckpoints[0].timestamp);
      nextTimestamp <= lastCheckpoint.timestamp.sub(REBATE_CYCLE);
      nextTimestamp = nextTimestamp.add(REBATE_CYCLE)
    ) {
      uint256 checkpointIdx = _getCheckpointIdxAt(nextTimestamp);
      Constant.RebateCheckpoint storage currentCheckpoint = rebateCheckpoints[checkpointIdx];
      for (uint256 i = 0; i < markets.length; i++) {
        if (currentCheckpoint.marketFees[markets[i]] > 0) {
          marketFees[i] = marketFees[i].add(currentCheckpoint.marketFees[markets[i]]);
        }
      }
    }
  }

  function weeklyRebatePool() public view override returns (uint256 labAmount) {
    Constant.RebateCheckpoint storage lastCheckpoint = rebateCheckpoints[rebateCheckpoints.length - 1];
    labAmount = labAmount.add(lastCheckpoint.weeklyLabSpeed).add(
      lastCheckpoint.additionalLabAmount.mul(uint256(1e18).sub(lastCheckpoint.adminFeeRate)).div(1e18)
    );
  }

  function weeklyProfitOfVP(uint256 vp) public view override returns (uint256 labAmount) {
    require(vp >= 0 && vp <= 1e18, "RebateDistributor: Invalid VP");
    uint256 weeklyLabAmount = weeklyRebatePool();
    labAmount = weeklyLabAmount.mul(vp).div(1e18);
  }

  function weeklyProfitOf(address account) external view override returns (uint256) {
    uint256 vp = _getUserVPAt(account, block.timestamp.add(REBATE_CYCLE));
    return weeklyProfitOfVP(vp);
  }

  function indicativeYearProfit() external view override returns (uint256) {
    (uint256 totalScore, ) = locker.totalScore();
    if (totalScore == 0) {
      return 0;
    }

    uint256 preScore = locker.preScoreOf(
      address(0),
      1e18,
      uint256(block.timestamp).add(365 days),
      Constant.EcoScorePreviewOption.LOCK
    );
    uint256 vp = preScore.mul(1e18).div(totalScore);
    uint256 weeklyProfit = weeklyProfitOfVP(vp >= 1e18 ? 1e18 : vp);

    return weeklyProfit.mul(52);
  }

  /* ========== MUTATIVE FUNCTIONS ========== */

  /// @notice Add checkpoint if needed and supply supluses
  function checkpoint() external override onlyKeeper nonReentrant {
    Constant.RebateCheckpoint memory lastRebateScore = rebateCheckpoints[rebateCheckpoints.length - 1];
    address[] memory markets = core.allMarkets();

    uint256 nextTimestamp = lastRebateScore.timestamp.add(REBATE_CYCLE);
    while (block.timestamp >= nextTimestamp) {
      (uint256 totalScore, uint256 slope) = locker.totalScore();
      uint256 newTotalScore = totalScore == 0 ? 0 : totalScore.add(slope.mul(block.timestamp.sub(nextTimestamp)));
      rebateCheckpoints.push(
        Constant.RebateCheckpoint({
          totalScore: newTotalScore,
          timestamp: nextTimestamp,
          adminFeeRate: adminFeeRate,
          weeklyLabSpeed: weeklyLabSpeed,
          additionalLabAmount: 0
        })
      );
      nextTimestamp = nextTimestamp.add(REBATE_CYCLE);

      for (uint256 i = 0; i < markets.length; i++) {
        ILToken(markets[i]).withdrawReserves();
        address underlying = ILToken(markets[i]).underlying();

        if (underlying == address(ETH)) {
          SafeToken.safeTransferETH(msg.sender, address(this).balance);
        } else {
          underlying.safeTransfer(msg.sender, SafeToken.myBalance(underlying));
        }
      }
    }
  }

  function addLABToRebatePool(uint256 amount) external override nonReentrant {
    Constant.RebateCheckpoint storage lastCheckpoint = rebateCheckpoints[rebateCheckpoints.length - 1];
    lastCheckpoint.additionalLabAmount = lastCheckpoint.additionalLabAmount.add(amount);
    address(lab).safeTransferFrom(msg.sender, address(this), amount);
  }

  function addMarketUTokenToRebatePool(address lToken, uint256 uAmount) external payable override nonReentrant {
    Constant.RebateCheckpoint storage lastCheckpoint = rebateCheckpoints[rebateCheckpoints.length - 1];
    address underlying = ILToken(lToken).underlying();

    if (underlying == ETH && msg.value > 0) {
      lastCheckpoint.marketFees[lToken] = lastCheckpoint.marketFees[lToken].add(msg.value);
    } else if (underlying != ETH) {
      address(underlying).safeTransferFrom(msg.sender, address(this), uAmount);
      lastCheckpoint.marketFees[lToken] = lastCheckpoint.marketFees[lToken].add(uAmount);
    }
  }

  /// @notice Claim accured all rebates
  function claimRebates()
    external
    override
    nonReentrant
    whenNotPaused
    returns (uint256 labAmount, uint256 additionalLabAmount, uint256[] memory marketFees)
  {
    (labAmount, additionalLabAmount, marketFees) = accruedRebates(msg.sender);
    Constant.RebateCheckpoint memory lastCheckpoint = rebateCheckpoints[rebateCheckpoints.length - 1];
    userCheckpoint[msg.sender] = _truncateTimestamp(lastCheckpoint.timestamp.sub(REBATE_CYCLE));

    address(lab).safeTransfer(msg.sender, labAmount.add(additionalLabAmount));

    emit RebateClaimed(msg.sender, marketFees, labAmount.add(additionalLabAmount));
  }

  /* ========== PRIVATE FUNCTIONS ========== */

  /// @notice Find checkpoint index of timestamp
  /// @param timestamp checkpoint timestamp
  function _getCheckpointIdxAt(uint256 timestamp) private view returns (uint256) {
    timestamp = _truncateTimestamp(timestamp);

    for (uint256 i = rebateCheckpoints.length - 1; i < uint256(-1); i--) {
      if (rebateCheckpoints[i].timestamp == timestamp) {
        return i;
      }
    }

    revert("RebateDistributor: checkpoint index error");
  }

  /// @notice Get total score at timestamp
  /// @dev Get from
  function _getTotalScoreAt(uint256 timestamp) private view returns (uint256) {
    for (uint256 i = rebateCheckpoints.length - 1; i < uint256(-1); i--) {
      if (rebateCheckpoints[i].timestamp == timestamp) {
        return rebateCheckpoints[i].totalScore;
      }
    }

    if (rebateCheckpoints[rebateCheckpoints.length - 1].timestamp < timestamp) {
      (uint256 totalScore, uint256 slope) = locker.totalScore();

      if (totalScore == 0 || slope == 0) {
        return 0;
      } else if (block.timestamp > timestamp) {
        return totalScore.add(slope.mul(block.timestamp.sub(timestamp)));
      } else if (block.timestamp < timestamp) {
        return totalScore.sub(slope.mul(timestamp.sub(block.timestamp)));
      } else {
        return totalScore;
      }
    }

    revert("RebateDistributor: checkpoint index error");
  }

  /// @notice Get total score at truncated current time
  function _getTotalScoreAtTruncatedTime() private view returns (uint256 score) {
    (uint256 totalScore, uint256 slope) = locker.totalScore();
    uint256 lastTimestmp = _truncateTimestamp(block.timestamp);
    score = 0;

    if (totalScore > 0 && slope > 0) {
      score = totalScore.add(slope.mul(block.timestamp.sub(lastTimestmp)));
    }
  }

  /// @notice Get user voting power at timestamp
  /// @param account account address
  /// @param timestamp timestamp
  function _getUserVPAt(address account, uint256 timestamp) private view returns (uint256) {
    timestamp = _truncateTimestamp(timestamp);
    uint256 userScore = locker.scoreOfAt(account, timestamp);
    uint256 totalScore = _getTotalScoreAt(timestamp);

    return totalScore != 0 ? userScore.mul(1e18).div(totalScore).div(1e8).mul(1e8) : 0;
  }

  /// @notice Truncate timestamp to adjust to rebate checkpoint
  function _truncateTimestamp(uint256 timestamp) private pure returns (uint256) {
    return timestamp.div(REBATE_CYCLE).mul(REBATE_CYCLE);
  }

  /// @notice View underlying token decimals by gToken address
  /// @param gToken gToken address
  function _getDecimals(address gToken) private view returns (uint256 decimals) {
    address underlying = ILToken(gToken).underlying();
    if (underlying == address(0)) {
      decimals = 18;
    } else {
      decimals = IBEP20(underlying).decimals();
    }
  }
}