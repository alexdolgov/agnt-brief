// Sources flattened with hardhat v2.11.1 https://hardhat.org

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


// File contracts/interfaces/ILToken.sol

// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.6.12;
pragma experimental ABIEncoderV2;

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


// File contracts/CoreAdmin.sol

pragma solidity ^0.6.12;






abstract contract CoreAdmin is ICore, Ownable, ReentrancyGuard, Pausable {
  /* ========== STATE VARIABLES ========== */

  address public keeper;
  address public override nftCore;
  address public override validator;
  address public override rebateDistributor;
  ILABDistributor public labDistributor;
  IPriceCalculator public priceCalculator;

  address[] public markets; // gTokenAddress[]
  mapping(address => Constant.MarketInfo) public marketInfos; // (gTokenAddress => MarketInfo)

  uint256 public override closeFactor;
  uint256 public override liquidationIncentive;

  /* ========== MODIFIERS ========== */

  /// @dev sender 가 keeper address 인지 검증
  modifier onlyKeeper() {
    require(msg.sender == keeper || msg.sender == owner(), "Core: caller is not the owner or keeper");
    _;
  }

  /// @dev Market 에 list 된 gToken address 인지 검증
  /// @param gToken gToken address
  modifier onlyListedMarket(address gToken) {
    require(marketInfos[gToken].isListed, "Core: invalid market");
    _;
  }

  modifier onlyNftCore() {
    require(msg.sender == nftCore, "Core: caller is not the nft core");
    _;
  }

  /* ========== INITIALIZER ========== */

  function __Core_init() internal {
    closeFactor = 5e17; // 0.5
    liquidationIncentive = 115e16; // 1.15
  }

  /* ========== RESTRICTED FUNCTIONS ========== */

  function setPriceCalculator(address _priceCalculator) external onlyKeeper {
    require(_priceCalculator != address(0), "Core: invalid calculator address");
    priceCalculator = IPriceCalculator(_priceCalculator);
  }

  /// @notice keeper address 변경
  /// @dev keeper address 에서만 요청 가능
  /// @param _keeper 새로운 keeper address
  function setKeeper(address _keeper) external onlyKeeper {
    require(_keeper != address(0), "Core: invalid keeper address");
    keeper = _keeper;
    emit KeeperUpdated(_keeper);
  }

  function setNftCore(address _nftCore) external onlyKeeper {
    require(_nftCore != address(0), "Core: invalid nft core address");
    nftCore = _nftCore;
    emit NftCoreUpdated(_nftCore);
  }

  /// @notice validator 변경
  /// @dev keeper address 에서만 요청 가능
  /// @param _validator 새로운 validator address
  function setValidator(address _validator) external onlyKeeper {
    require(_validator != address(0), "Core: invalid validator address");
    validator = _validator;
    emit ValidatorUpdated(_validator);
  }

  /// @notice labDistributor 변경
  /// @dev keeper address 에서만 요청 가능
  /// @param _labDistributor 새로운 labDistributor address
  function setLABDistributor(address _labDistributor) external onlyKeeper {
    require(_labDistributor != address(0), "Core: invalid labDistributor address");
    labDistributor = ILABDistributor(_labDistributor);
    emit LABDistributorUpdated(_labDistributor);
  }

  function setRebateDistributor(address _rebateDistributor) external onlyKeeper {
    require(_rebateDistributor != address(0), "Core: invalid rebateDistributor address");
    rebateDistributor = _rebateDistributor;
    emit RebateDistributorUpdated(_rebateDistributor);
  }

  /// @notice close factor 변경
  /// @dev keeper address 에서만 요청 가능
  /// @param newCloseFactor 새로운 close factor 값 (TBD)
  function setCloseFactor(uint256 newCloseFactor) external onlyKeeper {
    require(
      newCloseFactor >= Constant.CLOSE_FACTOR_MIN && newCloseFactor <= Constant.CLOSE_FACTOR_MAX,
      "Core: invalid close factor"
    );
    closeFactor = newCloseFactor;
    emit CloseFactorUpdated(newCloseFactor);
  }

  /// @notice Market collateral factor (담보 인정 비율) 변경
  /// @dev keeper address 에서만 요청 가능
  /// @param gToken gToken address
  /// @param newCollateralFactor collateral factor (담보 인정 비율)
  function setCollateralFactor(
    address gToken,
    uint256 newCollateralFactor
  ) external onlyKeeper onlyListedMarket(gToken) {
    require(newCollateralFactor <= Constant.COLLATERAL_FACTOR_MAX, "Core: invalid collateral factor");
    if (newCollateralFactor != 0 && priceCalculator.getUnderlyingPrice(gToken) == 0) {
      revert("Core: invalid underlying price");
    }

    marketInfos[gToken].collateralFactor = newCollateralFactor;
    emit CollateralFactorUpdated(gToken, newCollateralFactor);
  }

  /// @notice 청산 인센티브 설정
  /// @dev keeper address 에서만 요청 가능
  /// @param newLiquidationIncentive 새로운 청산 인센티브 값 (TBD)
  function setLiquidationIncentive(uint256 newLiquidationIncentive) external onlyKeeper {
    liquidationIncentive = newLiquidationIncentive;
    emit LiquidationIncentiveUpdated(newLiquidationIncentive);
  }

  /// @notice Market supply cap 변경
  /// @dev keeper address 에서만 요청 가능
  /// @param gTokens gToken addresses
  /// @param newSupplyCaps new supply caps in array
  function setMarketSupplyCaps(address[] calldata gTokens, uint256[] calldata newSupplyCaps) external onlyKeeper {
    require(gTokens.length != 0 && gTokens.length == newSupplyCaps.length, "Core: invalid data");

    for (uint256 i = 0; i < gTokens.length; i++) {
      marketInfos[gTokens[i]].supplyCap = newSupplyCaps[i];
      emit SupplyCapUpdated(gTokens[i], newSupplyCaps[i]);
    }
  }

  /// @notice Market borrow cap 변경
  /// @dev keeper address 에서만 요청 가능
  /// @param gTokens gToken addresses
  /// @param newBorrowCaps new borrow caps in array
  function setMarketBorrowCaps(address[] calldata gTokens, uint256[] calldata newBorrowCaps) external onlyKeeper {
    require(gTokens.length != 0 && gTokens.length == newBorrowCaps.length, "Core: invalid data");

    for (uint256 i = 0; i < gTokens.length; i++) {
      marketInfos[gTokens[i]].borrowCap = newBorrowCaps[i];
      emit BorrowCapUpdated(gTokens[i], newBorrowCaps[i]);
    }
  }

  /// @notice Market 추가
  /// @dev keeper address 에서만 요청 가능
  /// @param gToken gToken address
  /// @param supplyCap supply cap
  /// @param borrowCap borrow cap
  /// @param collateralFactor collateral factor (담보 인정 비율)
  function listMarket(
    address payable gToken,
    uint256 supplyCap,
    uint256 borrowCap,
    uint256 collateralFactor
  ) external onlyKeeper {
    require(!marketInfos[gToken].isListed, "Core: already listed market");
    for (uint256 i = 0; i < markets.length; i++) {
      require(markets[i] != gToken, "Core: already listed market");
    }

    marketInfos[gToken] = Constant.MarketInfo({
      isListed: true,
      supplyCap: supplyCap,
      borrowCap: borrowCap,
      collateralFactor: collateralFactor
    });
    markets.push(gToken);
    emit MarketListed(gToken);
  }

  /// @notice Market 제거
  /// @dev keeper address 에서만 요청 가능
  /// @param gToken gToken address
  function removeMarket(address payable gToken) external onlyKeeper {
    require(marketInfos[gToken].isListed, "Core: unlisted market");
    require(ILToken(gToken).totalSupply() == 0 && ILToken(gToken).totalBorrow() == 0, "Core: cannot remove market");

    uint256 length = markets.length;
    for (uint256 i = 0; i < length; i++) {
      if (markets[i] == gToken) {
        markets[i] = markets[length - 1];
        markets.pop();
        delete marketInfos[gToken];
        break;
      }
    }
  }

  function pause() external onlyKeeper {
    _pause();
  }

  function unpause() external onlyKeeper {
    _unpause();
  }
}


// File contracts/interfaces/IValidator.sol

pragma solidity ^0.6.12;

interface IValidator {
  function redeemAllowed(address gToken, address redeemer, uint256 redeemAmount) external returns (bool);

  function borrowAllowed(address gToken, address borrower, uint256 borrowAmount) external returns (bool);

  function liquidateAllowed(
    address gTokenBorrowed,
    address borrower,
    uint256 repayAmount,
    uint256 closeFactor
  ) external returns (bool);

  function gTokenAmountToSeize(
    address gTokenBorrowed,
    address gTokenCollateral,
    uint256 actualRepayAmount
  ) external returns (uint256 seizeGAmount, uint256 rebateGAmount, uint256 liquidatorGAmount);

  function getAccountLiquidity(
    address account
  ) external view returns (uint256 collateralInUSD, uint256 supplyInUSD, uint256 borrowInUSD);
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


// File contracts/Core.sol

pragma solidity ^0.6.12;



contract Core is CoreAdmin {
  using SafeMath for uint256;

  /* ========== CONSTANT VARIABLES ========== */

  address internal constant ETH = 0x0000000000000000000000000000000000000000;

  /* ========== STATE VARIABLES ========== */

  mapping(address => address[]) public marketListOfUsers; // (account => gTokenAddress[])
  mapping(address => mapping(address => bool)) public usersOfMarket; // (gTokenAddress => (account => joined))

  // initializer
  bool public initialized;

  /* ========== INITIALIZER ========== */

  constructor() public {}

  function initialize(address _priceCalculator) external onlyOwner {
    require(initialized == false, "already initialized");

    __Core_init();
    priceCalculator = IPriceCalculator(_priceCalculator);

    initialized = true;
  }

  /* ========== MODIFIERS ========== */

  /// @dev sender 가 해당 gToken 의 Market Enter 되어있는 상태인지 검사
  /// @param gToken 검사할 Market 의 gToken address
  modifier onlyMemberOfMarket(address gToken) {
    require(usersOfMarket[gToken][msg.sender], "Core: must enter market");
    _;
  }

  /// @dev caller 가 market 인지 검사
  modifier onlyMarket() {
    bool fromMarket = false;
    for (uint256 i = 0; i < markets.length; i++) {
      if (msg.sender == markets[i]) {
        fromMarket = true;
        break;
      }
    }
    require(fromMarket == true, "Core: caller should be market");
    _;
  }

  /* ========== VIEWS ========== */

  /// @notice market addresses 조회
  /// @return markets address[]
  function allMarkets() external view override returns (address[] memory) {
    return markets;
  }

  /// @notice gToken 의 marketInfo 조회
  /// @param gToken gToken address
  /// @return Market info
  function marketInfoOf(address gToken) external view override returns (Constant.MarketInfo memory) {
    return marketInfos[gToken];
  }

  /// @notice account 의 market addresses
  /// @param account account address
  /// @return Market addresses of account
  function marketListOf(address account) external view override returns (address[] memory) {
    return marketListOfUsers[account];
  }

  /// @notice account market enter 상태인지 여부 조회
  /// @param account account address
  /// @param gToken gToken address
  /// @return Market enter 여부에 대한 boolean value
  function checkMembership(address account, address gToken) external view override returns (bool) {
    return usersOfMarket[gToken][account];
  }

  /// @notice !TBD
  function accountLiquidityOf(
    address account
  ) external view override returns (uint256 collateralInUSD, uint256 supplyInUSD, uint256 borrowInUSD) {
    return IValidator(validator).getAccountLiquidity(account);
  }

  /* ========== MUTATIVE FUNCTIONS ========== */

  /// @notice 여러 token 에 대하여 Enter Market 수행
  /// @dev 해당 Token 을 대출하거나, 담보로 enable 하기 위해서는 Enter Market 이 필요함
  /// @param gTokens gToken addresses
  function enterMarkets(address[] memory gTokens) public override {
    for (uint256 i = 0; i < gTokens.length; i++) {
      _enterMarket(payable(gTokens[i]), msg.sender);
    }
  }

  /// @notice 하나의 token 에 대하여 Market Exit 수행
  /// @dev Market 에서 제거할 시에 해당 토큰이 담보물에서 제거되어 청산되지 않음
  /// @param gToken Token address
  function exitMarket(address gToken) external override onlyListedMarket(gToken) onlyMemberOfMarket(gToken) {
    Constant.AccountSnapshot memory snapshot = ILToken(gToken).accruedAccountSnapshot(msg.sender);
    require(snapshot.borrowBalance == 0, "Core: borrow balance must be zero");
    require(IValidator(validator).redeemAllowed(gToken, msg.sender, snapshot.gTokenBalance), "Core: cannot redeem");

    _removeUserMarket(gToken, msg.sender);
    emit MarketExited(gToken, msg.sender);
  }

  /// @notice 담보 제공 트랜잭션
  /// @param gToken 담보 gToken address
  /// @param uAmount 담보 gToken amount
  /// @return gAmount
  function supply(
    address gToken,
    uint256 uAmount
  ) external payable override onlyListedMarket(gToken) nonReentrant whenNotPaused returns (uint256) {
    uAmount = ILToken(gToken).underlying() == address(ETH) ? msg.value : uAmount;
    uint256 supplyCap = marketInfos[gToken].supplyCap;
    require(
      supplyCap == 0 ||
        ILToken(gToken).totalSupply().mul(ILToken(gToken).exchangeRate()).div(1e18).add(uAmount) <= supplyCap,
      "Core: supply cap reached"
    );

    uint256 gAmount = ILToken(gToken).supply{value: msg.value}(msg.sender, uAmount);
    labDistributor.notifySupplyUpdated(gToken, msg.sender);

    emit MarketSupply(msg.sender, gToken, uAmount);
    return gAmount;
  }

  /// @notice 담보로 제공한 토큰을 전부 Redeem All
  /// @param gToken 담보 gToken address
  /// @param gAmount 담보 gToken redeem amount
  /// @return uAmountRedeem
  function redeemToken(
    address gToken,
    uint256 gAmount
  ) external override onlyListedMarket(gToken) nonReentrant whenNotPaused returns (uint256) {
    uint256 uAmountRedeem = ILToken(gToken).redeemToken(msg.sender, gAmount);
    labDistributor.notifySupplyUpdated(gToken, msg.sender);

    emit MarketRedeem(msg.sender, gToken, uAmountRedeem);
    return uAmountRedeem;
  }

  /// @notice 담보로 제공한 토큰 중 일부를 Redeem
  /// @param gToken 담보 gToken address
  /// @param uAmount 담보 gToken redeem amount
  /// @return uAmountRedeem
  function redeemUnderlying(
    address gToken,
    uint256 uAmount
  ) external override onlyListedMarket(gToken) nonReentrant whenNotPaused returns (uint256) {
    uint256 uAmountRedeem = ILToken(gToken).redeemUnderlying(msg.sender, uAmount);
    labDistributor.notifySupplyUpdated(gToken, msg.sender);

    emit MarketRedeem(msg.sender, gToken, uAmountRedeem);
    return uAmountRedeem;
  }

  /// @notice 원하는 자산을 Borrow 하는 트랜잭션
  /// @param gToken 빌리는 gToken address
  //labDistributort 빌리는 underlying token amount
  function borrow(
    address gToken,
    uint256 amount
  ) external override onlyListedMarket(gToken) nonReentrant whenNotPaused {
    _enterMarket(gToken, msg.sender);
    require(IValidator(validator).borrowAllowed(gToken, msg.sender, amount), "Core: cannot borrow");

    ILToken(payable(gToken)).borrow(msg.sender, amount);
    labDistributor.notifyBorrowUpdated(gToken, msg.sender);
  }

  function nftBorrow(
    address gToken,
    address user,
    uint256 amount
  ) external override onlyListedMarket(gToken) onlyNftCore nonReentrant whenNotPaused {
    require(ILToken(gToken).underlying() == address(ETH), "Core: invalid underlying asset");
    _enterMarket(gToken, msg.sender);
    ILToken(payable(gToken)).borrow(msg.sender, amount);
    labDistributor.notifyBorrowUpdated(gToken, user);
  }

  /// @notice 대출한 자산을 상환하는 트랜잭션
  /// @dev UI 에서의 Repay All 도 본 트랜잭션을 사용함
  ///      amount 를 넉넉하게 주면 repay 후 초과분은 환불함
  /// @param gToken 상환하려는 gToken address
  /// @param amount 상환하려는 gToken amount
  function repayBorrow(
    address gToken,
    uint256 amount
  ) external payable override onlyListedMarket(gToken) nonReentrant whenNotPaused {
    ILToken(payable(gToken)).repayBorrow{value: msg.value}(msg.sender, amount);
    labDistributor.notifyBorrowUpdated(gToken, msg.sender);
  }

  function nftRepayBorrow(
    address gToken,
    address user,
    uint256 amount
  ) external payable override onlyListedMarket(gToken) onlyNftCore nonReentrant whenNotPaused {
    require(ILToken(gToken).underlying() == address(ETH), "Core: invalid underlying asset");
    ILToken(payable(gToken)).repayBorrow{value: msg.value}(msg.sender, amount);
    labDistributor.notifyBorrowUpdated(gToken, user);
  }

  /// @notice 본인이 아닌 특정한 주소의 대출을 청산시키는 트랜잭션
  /// @dev UI 에서 본 트랜잭션 호출을 확인하지 못했음
  /// @param gToken 상환하려는 gToken address
  /// @param amount 상환하려는 gToken amount
  function repayBorrowBehalf(
    address gToken,
    address borrower,
    uint256 amount
  ) external payable override onlyListedMarket(gToken) nonReentrant whenNotPaused {
    ILToken(payable(gToken)).repayBorrowBehalf{value: msg.value}(msg.sender, borrower, amount);
    labDistributor.notifyBorrowUpdated(gToken, borrower);
  }

  /// @notice 본인이 아닌 특정한 주소의 대출을 청산시키는 트랜잭션
  /// @dev UI 에서 본 트랜잭션 호출을 확인하지 못했음
  function liquidateBorrow(
    address gTokenBorrowed,
    address gTokenCollateral,
    address borrower,
    uint256 amount
  ) external payable override nonReentrant whenNotPaused {
    amount = ILToken(gTokenBorrowed).underlying() == address(ETH) ? msg.value : amount;
    require(marketInfos[gTokenBorrowed].isListed && marketInfos[gTokenCollateral].isListed, "Core: invalid market");
    require(usersOfMarket[gTokenCollateral][borrower], "Core: not a collateral");
    require(marketInfos[gTokenCollateral].collateralFactor > 0, "Core: not a collateral");
    require(
      IValidator(validator).liquidateAllowed(gTokenBorrowed, borrower, amount, closeFactor),
      "Core: cannot liquidate borrow"
    );

    (, uint256 rebateGAmount, uint256 liquidatorGAmount) = ILToken(gTokenBorrowed).liquidateBorrow{value: msg.value}(
      gTokenCollateral,
      msg.sender,
      borrower,
      amount
    );

    ILToken(gTokenCollateral).seize(msg.sender, borrower, liquidatorGAmount);
    labDistributor.notifyTransferred(gTokenCollateral, borrower, msg.sender);

    if (rebateGAmount > 0) {
      ILToken(gTokenCollateral).seize(rebateDistributor, borrower, rebateGAmount);
      labDistributor.notifyTransferred(gTokenCollateral, borrower, rebateDistributor);
    }

    labDistributor.notifyBorrowUpdated(gTokenBorrowed, borrower);
  }

  /// @notice 모든 마켓의 Reward LAB 클레임 트랜잭션
  function claimLab() external override nonReentrant {
    labDistributor.claim(markets, msg.sender);
  }

  /// @notice 하나의 market 의 Reward LAB 클레임 트랜잭션
  //labDistributort 클레임 하는 market 의 address
  function claimLab(address market) external override nonReentrant {
    address[] memory _markets = new address[](1);
    _markets[0] = market;
    labDistributor.claim(_markets, msg.sender);
  }

  /// @notice 쌓인 보상을 Locker에 바로 deposit
  function compoundLab() external override {
    labDistributor.compound(markets, msg.sender);
  }

  /// @notice Called when gToken has transfered
  /// @dev gToken 에서 grvDistributor 의 메서드를 호출하기 위해 중간 역할을 함
  ///      gToken -> Core -> gToken, grvDistributor
  function transferTokens(
    address spender,
    address src,
    address dst,
    uint256 amount
  ) external override nonReentrant onlyMarket {
    ILToken(msg.sender).transferTokensInternal(spender, src, dst, amount);
    labDistributor.notifyTransferred(msg.sender, src, dst);
  }

  /* ========== PRIVATE FUNCTIONS ========== */

  /// @notice Enter Market
  /// @dev 해당 Token 을 대출하거나, 담보로 enable 하기 위해서는 Enter Market 이 필요함
  /// @param gToken Token address
  /// @param _account Market 에 Enter 할 account address
  function _enterMarket(address gToken, address _account) internal onlyListedMarket(gToken) {
    if (!usersOfMarket[gToken][_account]) {
      usersOfMarket[gToken][_account] = true;
      marketListOfUsers[_account].push(gToken);
      emit MarketEntered(gToken, _account);
    }
  }

  /// @notice remove user from market
  /// @dev Market 에서 제거할 시에 해당 토큰이 담보물에서 제거되어 청산되지 않음
  /// @param gTokenToExit Token address
  /// @param _account Market 에 제거할 account address
  function _removeUserMarket(address gTokenToExit, address _account) private {
    require(marketListOfUsers[_account].length > 0, "Core: cannot pop user market");
    delete usersOfMarket[gTokenToExit][_account];

    uint256 length = marketListOfUsers[_account].length;
    for (uint256 i = 0; i < length; i++) {
      if (marketListOfUsers[_account][i] == gTokenToExit) {
        marketListOfUsers[_account][i] = marketListOfUsers[_account][length - 1];
        marketListOfUsers[_account].pop();
        break;
      }
    }
  }
}