// Sources flattened with hardhat v2.11.1 https://hardhat.org

// File contracts/interfaces/IBEP20.sol

// SPDX-License-Identifier: UNLICENSED

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


// File contracts/interfaces/ICore.sol

pragma solidity ^0.6.12;
pragma experimental ABIEncoderV2;

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


// File contracts/interfaces/ILABDistributor.sol

pragma solidity ^0.6.12;

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


// File contracts/staking/LABDistributor.sol

pragma solidity ^0.6.12;











contract LABDistributor is ILABDistributor, Ownable, ReentrancyGuard, Pausable {
  using SafeMath for uint256;
  using SafeToken for address;

  /* ========== CONSTANT VARIABLES ========== */

  uint public constant BOOST_PORTION = 150;
  uint public constant BOOST_MAX = 300;
  uint private constant LAUNCH_TIMESTAMP = 1689757200;

  /* ========== STATE VARIABLES ========== */

  address public LAB;
  ICore public core;
  ILocker public locker;
  IPriceCalculator public priceCalculator;

  bool public initialized;

  mapping(address => Constant.DistributionInfo) public distributions;
  mapping(address => mapping(address => Constant.DistributionAccountInfo)) public accountDistributions;

  /* ========== MODIFIERS ========== */

  modifier updateDistributionOf(address market) {
    Constant.DistributionInfo storage dist = distributions[market];
    if (dist.accruedAt == 0) {
      dist.accruedAt = block.timestamp;
    }

    uint timeElapsed = block.timestamp > dist.accruedAt ? block.timestamp.sub(dist.accruedAt) : 0;
    if (timeElapsed > 0) {
      if (dist.totalBoostedSupply > 0) {
        dist.accPerShareSupply = dist.accPerShareSupply.add(
          dist.supplySpeed.mul(timeElapsed).mul(1e18).div(dist.totalBoostedSupply)
        );
      }

      if (dist.totalBoostedBorrow > 0) {
        dist.accPerShareBorrow = dist.accPerShareBorrow.add(
          dist.borrowSpeed.mul(timeElapsed).mul(1e18).div(dist.totalBoostedBorrow)
        );
      }
    }
    dist.accruedAt = block.timestamp;
    _;
  }

  modifier onlyCore() {
    require(msg.sender == address(core), "LABDistributor: caller is not Core");
    _;
  }

  /* ========== EVENTS ========== */

  constructor() public {}

  function initialize(address _lab, address _core, address _locker, address _priceCalculator) external onlyOwner {
    require(initialized == false, "already initialized");
    require(_lab != address(0), "LABDistributor: lab address can't be zero");
    require(_core != address(0), "LABDistributor: core address can't be zero");
    require(_locker != address(0), "LABDistributor: locker address can't be zero");
    require(_priceCalculator != address(0), "LABDistributor: priceCalculator address can't be zero");
    require(address(locker) == address(0), "LABDistributor: locker already set");
    require(address(core) == address(0), "LABDistributor: core already set");

    LAB = _lab;
    core = ICore(_core);
    locker = ILocker(_locker);
    priceCalculator = IPriceCalculator(_priceCalculator);
    initialized = true;
  }

  /* ========== RESTRICTED FUNCTIONS ========== */

  function setDistributionSpeed(
    address qToken,
    uint supplySpeed,
    uint borrowSpeed
  ) external onlyOwner updateDistributionOf(qToken) {
    Constant.DistributionInfo storage dist = distributions[qToken];
    dist.supplySpeed = supplySpeed;
    dist.borrowSpeed = borrowSpeed;
    emit DistributionSpeedUpdated(qToken, supplySpeed, borrowSpeed);
  }

  function setPriceCalculator(address _priceCalculator) external onlyOwner {
    priceCalculator = IPriceCalculator(_priceCalculator);
  }

  function setLocker(address _locker) external onlyOwner {
    locker = ILocker(_locker);
  }

  // For reward distribution to different network (such as Klaytn)
  function withdrawReward(address receiver, uint amount) external onlyOwner {
    LAB.safeTransfer(receiver, amount);
  }

  function pause() external override onlyOwner {
    _pause();
  }

  function unpause() external override onlyOwner {
    _unpause();
  }

  function approve(address _spender, uint256 amount) external override onlyOwner returns (bool) {
    LAB.safeApprove(_spender, amount);
    return true;
  }

  /* ========== VIEWS ========== */

  function accuredLAB(address[] calldata markets, address account) external view override returns (uint) {
    uint amount = 0;
    for (uint i = 0; i < markets.length; i++) {
      amount = amount.add(_accruedLAB(markets[i], account));
    }
    return amount;
  }

  function distributionInfoOf(address market) external view override returns (Constant.DistributionInfo memory) {
    return distributions[market];
  }

  function accountDistributionInfoOf(
    address market,
    address account
  ) external view override returns (Constant.DistributionAccountInfo memory) {
    return accountDistributions[market][account];
  }

  function apyDistributionOf(
    address market,
    address account
  ) external view override returns (Constant.DistributionAPY memory) {
    (uint apySupplyLAB, uint apyBorrowLAB) = _calculateMarketDistributionAPY(market);
    (uint apyAccountSupplyLAB, uint apyAccountBorrowLAB) = _calculateAccountDistributionAPY(market, account);
    return Constant.DistributionAPY(apySupplyLAB, apyBorrowLAB, apyAccountSupplyLAB, apyAccountBorrowLAB);
  }

  function boostedRatioOf(
    address market,
    address account
  ) external view override returns (uint boostedSupplyRatio, uint boostedBorrowRatio) {
    uint accountSupply = ILToken(market).balanceOf(account);
    uint accountBorrow = ILToken(market).borrowBalanceOf(account).mul(1e18).div(ILToken(market).getAccInterestIndex());

    boostedSupplyRatio = accountSupply > 0
      ? accountDistributions[market][account].boostedSupply.mul(1e18).div(accountSupply)
      : 0;
    boostedBorrowRatio = accountBorrow > 0
      ? accountDistributions[market][account].boostedBorrow.mul(1e18).div(accountBorrow)
      : 0;
  }

  /* ========== MUTATIVE FUNCTIONS ========== */

  function notifySupplyUpdated(
    address market,
    address user
  ) external override nonReentrant onlyCore updateDistributionOf(market) {
    if (block.timestamp < LAUNCH_TIMESTAMP) return;

    Constant.DistributionInfo storage dist = distributions[market];
    Constant.DistributionAccountInfo storage userInfo = accountDistributions[market][user];

    if (userInfo.boostedSupply > 0) {
      uint accLabPerShare = dist.accPerShareSupply.sub(userInfo.accPerShareSupply);
      userInfo.accuredLAB = userInfo.accuredLAB.add(accLabPerShare.mul(userInfo.boostedSupply).div(1e18));
    }
    userInfo.accPerShareSupply = dist.accPerShareSupply;

    uint boostedSupply = _calculateBoostedSupply(market, user);
    dist.totalBoostedSupply = dist.totalBoostedSupply.add(boostedSupply).sub(userInfo.boostedSupply);
    userInfo.boostedSupply = boostedSupply;
  }

  function notifyBorrowUpdated(
    address market,
    address user
  ) external override nonReentrant onlyCore updateDistributionOf(market) {
    if (block.timestamp < LAUNCH_TIMESTAMP) return;

    Constant.DistributionInfo storage dist = distributions[market];
    Constant.DistributionAccountInfo storage userInfo = accountDistributions[market][user];

    if (userInfo.boostedBorrow > 0) {
      uint accLabPerShare = dist.accPerShareBorrow.sub(userInfo.accPerShareBorrow);
      userInfo.accuredLAB = userInfo.accuredLAB.add(accLabPerShare.mul(userInfo.boostedBorrow).div(1e18));
    }
    userInfo.accPerShareBorrow = dist.accPerShareBorrow;

    uint boostedBorrow = _calculateBoostedBorrow(market, user);
    dist.totalBoostedBorrow = dist.totalBoostedBorrow.add(boostedBorrow).sub(userInfo.boostedBorrow);
    userInfo.boostedBorrow = boostedBorrow;
  }

  function notifyTransferred(
    address qToken,
    address sender,
    address receiver
  ) external override nonReentrant onlyCore updateDistributionOf(qToken) {
    if (block.timestamp < LAUNCH_TIMESTAMP) return;

    require(sender != receiver, "QDistributor: invalid transfer");
    Constant.DistributionInfo storage dist = distributions[qToken];
    Constant.DistributionAccountInfo storage senderInfo = accountDistributions[qToken][sender];
    Constant.DistributionAccountInfo storage receiverInfo = accountDistributions[qToken][receiver];

    if (senderInfo.boostedSupply > 0) {
      uint accLabPerShare = dist.accPerShareSupply.sub(senderInfo.accPerShareSupply);
      senderInfo.accuredLAB = senderInfo.accuredLAB.add(accLabPerShare.mul(senderInfo.boostedSupply).div(1e18));
    }
    senderInfo.accPerShareSupply = dist.accPerShareSupply;

    if (receiverInfo.boostedSupply > 0) {
      uint accLabPerShare = dist.accPerShareSupply.sub(receiverInfo.accPerShareSupply);
      receiverInfo.accuredLAB = receiverInfo.accuredLAB.add(accLabPerShare.mul(receiverInfo.boostedSupply).div(1e18));
    }
    receiverInfo.accPerShareSupply = dist.accPerShareSupply;

    uint boostedSenderSupply = _calculateBoostedSupply(qToken, sender);
    uint boostedReceiverSupply = _calculateBoostedSupply(qToken, receiver);
    dist.totalBoostedSupply = dist
      .totalBoostedSupply
      .add(boostedSenderSupply)
      .add(boostedReceiverSupply)
      .sub(senderInfo.boostedSupply)
      .sub(receiverInfo.boostedSupply);
    senderInfo.boostedSupply = boostedSenderSupply;
    receiverInfo.boostedSupply = boostedReceiverSupply;
  }

  function claim(address[] calldata markets, address account) external override onlyCore whenNotPaused {
    uint amount = 0;
    uint userScore = locker.scoreOf(account);
    (uint totalScore, ) = locker.totalScore();

    for (uint i = 0; i < markets.length; i++) {
      amount = amount.add(_claimLab(markets[i], account, userScore, totalScore));
    }

    amount = Math.min(amount, IBEP20(LAB).balanceOf(address(this)));
    LAB.safeTransfer(account, amount);
    emit Claimed(account, amount);
  }

  function kick(address user) external override nonReentrant {
    if (block.timestamp < LAUNCH_TIMESTAMP) return;

    uint userScore = locker.scoreOf(user);
    require(userScore == 0, "LABDistributor: kick not allowed");
    (uint totalScore, ) = locker.totalScore();

    address[] memory markets = core.allMarkets();
    for (uint i = 0; i < markets.length; i++) {
      address market = markets[i];
      Constant.DistributionAccountInfo memory userInfo = accountDistributions[market][user];
      if (userInfo.boostedSupply > 0) _updateSupplyOf(market, user, userScore, totalScore);
      if (userInfo.boostedBorrow > 0) _updateBorrowOf(market, user, userScore, totalScore);
    }
  }

  function updateAccountBoostedInfo(address user) external override {
    require(user != address(0), "LABDistributor: compound: User account can't be zero address");
    _updateAccountBoostedInfo(user);
  }

  function compound(address[] calldata markets, address account) external override onlyCore {
    require(account != address(0), "LABDistributor: compound: User account can't be zero address");
    uint256 expiryOfAccount = locker.expiryOf(account);
    if (expiryOfAccount == 0) {
      expiryOfAccount = block.timestamp.add(30 days);
    }
    _compound(markets, account, expiryOfAccount);
  }

  /* ========== PRIVATE FUNCTIONS ========== */

  function _accruedLAB(address market, address user) private view returns (uint) {
    Constant.DistributionInfo memory dist = distributions[market];
    Constant.DistributionAccountInfo memory userInfo = accountDistributions[market][user];

    uint amount = userInfo.accuredLAB;
    uint accPerShareSupply = dist.accPerShareSupply;
    uint accPerShareBorrow = dist.accPerShareBorrow;

    uint timeElapsed = block.timestamp > dist.accruedAt ? block.timestamp.sub(dist.accruedAt) : 0;
    if (
      timeElapsed > 0 ||
      (accPerShareSupply != userInfo.accPerShareSupply) ||
      (accPerShareBorrow != userInfo.accPerShareBorrow)
    ) {
      if (dist.totalBoostedSupply > 0) {
        accPerShareSupply = accPerShareSupply.add(
          dist.supplySpeed.mul(timeElapsed).mul(1e18).div(dist.totalBoostedSupply)
        );

        uint pendingLab = userInfo.boostedSupply.mul(accPerShareSupply.sub(userInfo.accPerShareSupply)).div(1e18);
        amount = amount.add(pendingLab);
      }

      if (dist.totalBoostedBorrow > 0) {
        accPerShareBorrow = accPerShareBorrow.add(
          dist.borrowSpeed.mul(timeElapsed).mul(1e18).div(dist.totalBoostedBorrow)
        );

        uint pendingLab = userInfo.boostedBorrow.mul(accPerShareBorrow.sub(userInfo.accPerShareBorrow)).div(1e18);
        amount = amount.add(pendingLab);
      }
    }
    return amount;
  }

  function _claimLab(address market, address user, uint userScore, uint totalScore) private returns (uint amount) {
    Constant.DistributionAccountInfo storage userInfo = accountDistributions[market][user];

    if (userInfo.boostedSupply > 0) _updateSupplyOf(market, user, userScore, totalScore);
    if (userInfo.boostedBorrow > 0) _updateBorrowOf(market, user, userScore, totalScore);

    amount = amount.add(userInfo.accuredLAB);
    userInfo.accuredLAB = 0;

    return amount;
  }

  function _calculateMarketDistributionAPY(address market) private view returns (uint apySupplyLAB, uint apyBorrowLAB) {
    uint256 decimals = _getDecimals(market);
    // base supply LAB APY == average supply LAB APY * (Total balance / total Boosted balance)
    // base supply LAB APY == (LabRate * 365 days * price Of Lab) / (Total balance * exchangeRate * price of asset) * (Total balance / Total Boosted balance)
    // base supply LAB APY == (LabRate * 365 days * price Of Lab) / (Total boosted balance * exchangeRate * price of asset)
    {
      uint numerSupply = distributions[market].supplySpeed.mul(365 days).mul(priceCalculator.priceOf(LAB));
      uint denomSupply = distributions[market]
        .totalBoostedSupply
        .mul(10 ** (18 - decimals))
        .mul(ILToken(market).exchangeRate())
        .mul(priceCalculator.getUnderlyingPrice(market))
        .div(1e36);
      apySupplyLAB = denomSupply > 0 ? numerSupply.div(denomSupply) : 0;
    }

    // base borrow LAB APY == average borrow LAB APY * (Total balance / total Boosted balance)
    // base borrow LAB APY == (LabRate * 365 days * price Of Lab) / (Total balance * exchangeRate * price of asset) * (Total balance / Total Boosted balance)
    // base borrow LAB APY == (LabRate * 365 days * price Of Lab) / (Total boosted balance * exchangeRate * price of asset)
    {
      uint numerBorrow = distributions[market].borrowSpeed.mul(365 days).mul(priceCalculator.priceOf(LAB));
      uint denomBorrow = distributions[market]
        .totalBoostedBorrow
        .mul(10 ** (18 - decimals))
        .mul(ILToken(market).getAccInterestIndex())
        .mul(priceCalculator.getUnderlyingPrice(market))
        .div(1e36);
      apyBorrowLAB = denomBorrow > 0 ? numerBorrow.div(denomBorrow) : 0;
    }
  }

  function _calculateAccountDistributionAPY(
    address market,
    address account
  ) private view returns (uint apyAccountSupplyLAB, uint apyAccountBorrowLAB) {
    if (account == address(0)) return (0, 0);
    (uint apySupplyLAB, uint apyBorrowLAB) = _calculateMarketDistributionAPY(market);

    // user supply LAB APY == ((LabRate * 365 days * price Of Lab) / (Total boosted balance * exchangeRate * price of asset) ) * my boosted balance  / my balance
    uint accountSupply = ILToken(market).balanceOf(account);
    apyAccountSupplyLAB = accountSupply > 0
      ? apySupplyLAB.mul(accountDistributions[market][account].boostedSupply).div(accountSupply)
      : 0;

    // user borrow LAB APY == (LabRate * 365 days * price Of Lab) / (Total boosted balance * interestIndex * price of asset) * my boosted balance  / my balance
    uint accountBorrow = ILToken(market).borrowBalanceOf(account).mul(1e18).div(ILToken(market).getAccInterestIndex());
    apyAccountBorrowLAB = accountBorrow > 0
      ? apyBorrowLAB.mul(accountDistributions[market][account].boostedBorrow).div(accountBorrow)
      : 0;
  }

  function _calculateBoostedSupply(address market, address user) private view returns (uint) {
    uint defaultSupply = ILToken(market).balanceOf(user);
    uint boostedSupply = defaultSupply;

    uint userScore = locker.scoreOf(user);
    (uint totalScore, ) = locker.totalScore();
    if (userScore > 0 && totalScore > 0) {
      uint scoreBoosted = ILToken(market).totalSupply().mul(userScore).div(totalScore).mul(BOOST_PORTION).div(100);
      boostedSupply = boostedSupply.add(scoreBoosted);
    }
    return Math.min(boostedSupply, defaultSupply.mul(BOOST_MAX).div(100));
  }

  function _calculateBoostedBorrow(address market, address user) private view returns (uint) {
    uint accInterestIndex = ILToken(market).getAccInterestIndex();
    uint defaultBorrow = ILToken(market).borrowBalanceOf(user).mul(1e18).div(accInterestIndex);
    uint boostedBorrow = defaultBorrow;

    uint userScore = locker.scoreOf(user);
    (uint totalScore, ) = locker.totalScore();
    if (userScore > 0 && totalScore > 0) {
      uint totalBorrow = ILToken(market).totalBorrow().mul(1e18).div(accInterestIndex);
      uint scoreBoosted = totalBorrow.mul(userScore).div(totalScore).mul(BOOST_PORTION).div(100);
      boostedBorrow = boostedBorrow.add(scoreBoosted);
    }
    return Math.min(boostedBorrow, defaultBorrow.mul(BOOST_MAX).div(100));
  }

  function _calculateBoostedSupply(
    address market,
    address user,
    uint userScore,
    uint totalScore
  ) private view returns (uint) {
    uint defaultSupply = ILToken(market).balanceOf(user);
    uint boostedSupply = defaultSupply;

    if (userScore > 0 && totalScore > 0) {
      uint scoreBoosted = ILToken(market).totalSupply().mul(userScore).div(totalScore).mul(BOOST_PORTION).div(100);
      boostedSupply = boostedSupply.add(scoreBoosted);
    }
    return Math.min(boostedSupply, defaultSupply.mul(BOOST_MAX).div(100));
  }

  function _calculateBoostedBorrow(
    address market,
    address user,
    uint userScore,
    uint totalScore
  ) private view returns (uint) {
    uint accInterestIndex = ILToken(market).getAccInterestIndex();
    uint defaultBorrow = ILToken(market).borrowBalanceOf(user).mul(1e18).div(accInterestIndex);
    uint boostedBorrow = defaultBorrow;

    if (userScore > 0 && totalScore > 0) {
      uint totalBorrow = ILToken(market).totalBorrow().mul(1e18).div(accInterestIndex);
      uint scoreBoosted = totalBorrow.mul(userScore).div(totalScore).mul(BOOST_PORTION).div(100);
      boostedBorrow = boostedBorrow.add(scoreBoosted);
    }
    return Math.min(boostedBorrow, defaultBorrow.mul(BOOST_MAX).div(100));
  }

  function _updateSupplyOf(
    address market,
    address user,
    uint userScore,
    uint totalScore
  ) private updateDistributionOf(market) {
    Constant.DistributionInfo storage dist = distributions[market];
    Constant.DistributionAccountInfo storage userInfo = accountDistributions[market][user];

    if (userInfo.boostedSupply > 0) {
      uint accLabPerShare = dist.accPerShareSupply.sub(userInfo.accPerShareSupply);
      userInfo.accuredLAB = userInfo.accuredLAB.add(accLabPerShare.mul(userInfo.boostedSupply).div(1e18));
    }
    userInfo.accPerShareSupply = dist.accPerShareSupply;

    uint boostedSupply = _calculateBoostedSupply(market, user, userScore, totalScore);
    dist.totalBoostedSupply = dist.totalBoostedSupply.add(boostedSupply).sub(userInfo.boostedSupply);
    userInfo.boostedSupply = boostedSupply;
  }

  function _updateBorrowOf(
    address market,
    address user,
    uint userScore,
    uint totalScore
  ) private updateDistributionOf(market) {
    Constant.DistributionInfo storage dist = distributions[market];
    Constant.DistributionAccountInfo storage userInfo = accountDistributions[market][user];

    if (userInfo.boostedBorrow > 0) {
      uint accLabPerShare = dist.accPerShareBorrow.sub(userInfo.accPerShareBorrow);
      userInfo.accuredLAB = userInfo.accuredLAB.add(accLabPerShare.mul(userInfo.boostedBorrow).div(1e18));
    }
    userInfo.accPerShareBorrow = dist.accPerShareBorrow;

    uint boostedBorrow = _calculateBoostedBorrow(market, user, userScore, totalScore);
    dist.totalBoostedBorrow = dist.totalBoostedBorrow.add(boostedBorrow).sub(userInfo.boostedBorrow);
    userInfo.boostedBorrow = boostedBorrow;
  }

  function _updateAccountBoostedInfo(address user) private {
    if (block.timestamp < LAUNCH_TIMESTAMP) return;

    uint256 userScore = locker.scoreOf(user);
    (uint256 totalScore, ) = locker.totalScore();

    address[] memory markets = core.allMarkets();
    for (uint256 i = 0; i < markets.length; i++) {
      address market = markets[i];
      Constant.DistributionAccountInfo memory userInfo = accountDistributions[market][user];
      if (userInfo.boostedSupply > 0) _updateSupplyOf(market, user, userScore, totalScore);
      if (userInfo.boostedBorrow > 0) _updateBorrowOf(market, user, userScore, totalScore);
    }
  }

  function _getDecimals(address gToken) internal view returns (uint256 decimals) {
    address underlying = ILToken(gToken).underlying();
    if (underlying == address(0)) {
      decimals = 18;
    } else {
      decimals = IBEP20(underlying).decimals();
    }
  }

  function _compound(address[] calldata markets, address account, uint256 expiry) private {
    uint256 amount = 0;
    uint256 userScore = locker.scoreOf(account);
    (uint256 totalScore, ) = locker.totalScore();

    for (uint256 i = 0; i < markets.length; i++) {
      amount = amount.add(_claimLab(markets[i], account, userScore, totalScore));
    }
    locker.depositBehalf(account, amount, expiry);
    emit Compound(account, amount);
  }
}