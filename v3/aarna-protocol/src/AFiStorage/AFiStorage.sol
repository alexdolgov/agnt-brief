// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;
pragma abicoder v2;


/**
 * @title IAFiStorage.
 * @notice Interface of the AFiStorage.
 */

interface IIEarnManager {
  function recommend(
    address _token,
    address afiBase,
    address afiStorage
  ) external view returns (string memory choice, uint capr, uint aapr, uint dapr);
}

interface IAFiStorage {
  /**
   * @notice Struct representing investor details.
   * @param isPresent Boolean indicating whether an investor exists.
   * @param uTokenBalance Investor underlying token balance.
   * @param investedAmount Amount of StableCoin invested in the underlying token
   */
  struct Investor {
    bool isPresent;
    uint depositNAV;
    uint redemptionNAV;
  }

  struct RedemptionParams {
        address baseContract;
        uint r;
        address oToken;
        uint256 cSwapCounter;
        address[] uTokens;
        address[] iTokens;
        uint256 deadline;
        uint256[] minimumReturnAmount;
        uint256 _pool;
        uint256 tSupply;
        uint256 depositNAV;
    }

  /**
   * @notice Struct representing TeamWallet details.
   * @param isPresent Boolean indicating whether a wallet exists.
   * @param isActive Boolean indicating whether a wallet is active.
   * @param walletAddress Wallet address.
   */
  struct TeamWallet {
    bool isPresent;
    bool isActive;
    address walletAddress;
  }

  /**
   * @notice Struct representing Rebalance details.
   * @param scenario Scenario can be either of 0, 1 or 2.
   * @param rebalancedUToken Address of the underlying token that is rebalanced.
   * @param rebalancedToUTokens Array of addresses of underlying tokens to which the uToken has been rebalanced.
   */
  struct RebalanceDetails {
    uint8 scenario;
    address rebalancedUToken;
    address[] rebalancedToUTokens;
  }

  /**
   * @param walletAddress Address of the wallet.
   * @param isActive Boolean indicating wallet active status.
   */
  event TeamWalletActive(address indexed walletAddress, bool isActive);

  /**
   * @param walletAddress Address of the wallet.
   * @param isActive Boolean indicating wallet active status.
   */
  event TeamWalletAdd(address indexed walletAddress, bool isActive);

  /**
   * @notice Returns the team wallet details.
   * @param aFiContract Address of the AFi contract.
   * @param _wallet Wallet address
   * @return isPresent Boolean indicating the present status of the wallet.
   * @return isActive Boolean indicating whether to set the wallet to either active/inactive.
   */
  function getTeamWalletDetails(
    address aFiContract,
    address _wallet
  ) external view returns (bool isPresent, bool isActive);



   function handleRedemption(RedemptionParams memory params, uint _shares, uint swapMethod) external  returns (uint256 redemptionFromContract);

  /**
   * @notice To add a new team wallet.
   * @param aFiContract Address of the AFi contract.
   * @param _wallet Wallet address that has to be added in the `teamWallets` array.
   * @param isActive Boolean indicating whether to set the wallet to either active/inactive.
   * @param isPresent Boolean indicating the present status of the wallet.
   */
  function addTeamWallet(
    address aFiContract,
    address _wallet,
    bool isActive,
    bool isPresent
  ) external;

  /**
   * @notice Returns the team wallets for an AFi.
   * @param aFiContract Address of the AFi contract.
   * @return _teamWallets Array of teamWallets.
   */
  function getTeamWalletsOfAFi(
    address aFiContract
  ) external view returns (address[] memory _teamWallets);

  /**
   * @notice Sets the address for team wallets.
   * @param aFiContract Address of the AFi contract.
   * @param _teamWallets Array of addresses for the team wallets.
   */
  function setTeamWallets(address aFiContract, address[] memory _teamWallets) external;

  /**
   * @notice Sets the status for the AFi in the storage contract.
   * @param aFiContract Address of the AFi contract.
   * @param active status for afiContracts.
   */
  function setAFiActive(address aFiContract, bool active) external;

  /**
   * @notice Sets Active Rebalance status of an AFi.
   * @param aFiContract Address of the AFi contract.
   * @param status indicating active rebalance status of the AFi contract.
   */
  function setActiveRebalancedStatus(address aFiContract, bool status) external;

  /**
   * @notice gets Active Rebalance status of an AFi.
   * @param aFiContract Address of the AFi contract.
   * @return _isActiveRebalanced bool indicating active rebalance status of the AFi contract.
   */
  function isAFiActiveRebalanced(
    address aFiContract
  ) external view returns (bool _isActiveRebalanced);

  function getTotalActiveWallets(address aFiContract) external view returns (uint);

  function calcPoolValue(
    address tok,
    address afiContract
  ) external view returns (uint);

  function calculateBalanceOfUnderlying(
    address tok,
    address afiContract
  ) external view returns (uint);

  function calculatePoolInUsd(address afiContract) external view returns (uint);

  function afiSync(
    address afiContract,
    address tok,
    address aaveTok,
    address compV3Comet,
    address compTok
  ) external;

  function getPriceInUSDC(
    address tok
  ) external view returns (uint256, uint256);

  function validateAndGetDecimals(address tok) external view returns (uint256);

  function getStakedStatus(
    address aFiContract,
    address uToken
  ) external view returns (bool);

  function rearrange(address aFiContract,address[] memory underlyingTokens, uint256[] memory newProviders) external;

  function swapForOtherProduct(
    address afiContract,
    uint r,
    address oToken,
    uint deadline,
    uint[] memory minimumReturnAmount,
    address[] memory uToken
  ) external returns (uint256);

  function _withdrawAll(address afiContract, address tok) external returns(bool);
  function getAFiOracle() external view returns(address);

  function calculateRedemptionFromContract(
    address afiContract,
    address tok,
    uint256 r
  ) external view returns (uint256, bool, uint256, uint256, uint256);



  function tvlRead(
    address tok,
    address afiContract
  ) external view returns (uint, uint256);

  function getPreSwapDepositsTokens(
    address aFiContract,
    uint256 _cSwapCounter,
    address stableToken
  ) external view returns (uint256);

  function setPreDepositedInputToken(uint256 _cSwapCounter, uint256 _amount,address _oToken) external;
  function setPreDepositedInputTokenInRebalance(
    address aficontract,
    uint256 _cSwapCounter,
    uint256 _amount,
    address _oToken
  ) external;

  function convertInUSDAndTok(
    address tok,
    uint256 amt,
    bool usd
  ) external view returns (uint256);

  function calculateShares(
    address afiContract,
    uint256 amount,
    uint256 prevPool,
    uint256 _totalSupply,
    address iToken,
    uint256 currentDepositNAV
  ) external view returns (uint256 shares, uint256 newDepositNAV);

  function deletePreDepositedInputToken(
    address aFiContract,
    address oToken,
    uint256 currentCounter
  )external;

  function doSwapForThewhiteListRemoval(
    address tok,
    uint256 _cSwapCounter,
    address swapToken,
    uint256 deadline,
    uint256 minAmountOut
  ) external;
}



/**
 * @dev Interface of the ERC20 standard as defined in the EIP.
 */
interface IERC20 {
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

    /**
     * @dev Returns the amount of tokens in existence.
     */
    function totalSupply() external view returns (uint256);

    /**
     * @dev Returns the amount of tokens owned by `account`.
     */
    function balanceOf(address account) external view returns (uint256);

    /**
     * @dev Moves `amount` tokens from the caller's account to `to`.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transfer(address to, uint256 amount) external returns (bool);

    /**
     * @dev Returns the remaining number of tokens that `spender` will be
     * allowed to spend on behalf of `owner` through {transferFrom}. This is
     * zero by default.
     *
     * This value changes when {approve} or {transferFrom} are called.
     */
    function allowance(address owner, address spender) external view returns (uint256);

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
     * @dev Moves `amount` tokens from `from` to `to` using the
     * allowance mechanism. `amount` is then deducted from the caller's
     * allowance.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(
        address from,
        address to,
        uint256 amount
    ) external returns (bool);

     function decimals() external view returns (uint8);
}


/**
 * @title PassiveRebal.
 * @notice Interface of the Passive Rebalance contract.
 */
interface PassiveRebal {
  function applyRebalForProportions(
    address _aFiContract,
    address _aFiManager,
    address _aFiStorage,
    address[] memory _tokens,
    uint256 strategy
  ) external returns (uint[] memory proportions, uint256);

  function getPauseStatus() external returns (bool);

  function setPassiveRebalancedStatus(address aFiContract, bool status) external;

  function isAFiPassiveRebalanced(
    address aFiContract
  ) external returns (bool _isPassiveRebalanced);

  function getRebalStrategyNumber(address aFiContract) external returns (uint);
}

interface IAFiOracle {
  function uniswapV3Oracle(
    address afiContract,
    address _tokenIn,
    address _tokenOut,
    uint _amountIn,
    uint _maxTime,
    address middleToken,
    uint256 minimumReturnAmount
  ) external returns (bytes memory swapParams);
}

interface IAFiManager {
  function updateUTokenProportion(
    address aFiContract,
    address aFiStorage
  ) external returns (uint256[] memory);

  function inputTokenUSD(
    IAFi aFiContract,
    uint256 cSwapCounter,
    IAFiStorage _aFiStorage
  ) external view returns (uint256 totalPreDepositInUSD);

  function intializeData(
    address aFiContract,
    address[] memory underlyingTokens,
    uint[] memory underlyingProportion
  ) external;

  function uTokenslippage(
    address aFiContract,
    address uToken
  ) external view returns (uint uTokenSlippage);
}

interface IPassiveRebal {
  function applyRebalForProportions(
    address _aFiContract,
    address _aFiManager,
    address _aFiStorage,
    address[] memory _tokens,
    uint256 strategy
  ) external returns (uint[] memory proportions, uint256 totalProp);

  function getPauseStatus() external returns (bool);

  function setPassiveRebalancedStatus(address aFiContract, bool status) external;

  function isAFiPassiveRebalanced(
    address aFiContract
  ) external returns (bool _isPassiveRebalanced);

  function getRebalStrategyNumber(address aFiContract) external returns (uint);

  function uniswapV3Oracle(
    address afiContract,
    address _tokenIn,
    address _tokenOut,
    uint _amountIn,
    uint _maxTime,
    address middleToken,
    uint256 minimumReturnAmount
  ) external returns (bytes memory swapParams);

  function updateuniPool(address tok, address midTok) external;

  function getPool(address tok, address midTok) external view returns (address);

  function upDateInputTokPool(address[] memory iToken, bytes memory uniData) external;

  function getPriceOracle(address tok) external view returns (address);

  function updateOracleData(
    address _uToken,
    address _oracleAddress
  ) external;

   function removeToken(
    address[] memory _nonOverlappingITokens,
    address token
  ) external pure returns (address[] memory);

}

/**
 * @title IAFi.
 * @notice Interface of the AToken.
 */
interface IAFi {

  struct UnderlyingData {
    address[] _underlyingTokens; //uTokens
    address[] _underlyingUniPoolToken; //uToken - MiddleToken
  }

  struct PoolsData {
    address[] _depositStableCoin;
    address[] _depositCoinOracle;
    bytes underlyingData;
    address[] _compound;
    address[] _aaveToken;
    address[] _priceOracles;
    uint[] _underlyingTokensProportion;
    address[] compoundV3Comet;
    uint _typeOfProduct;
  }


  /**
   * @param account Address of the account that paused the contract.
   * @param isDeposit True if we want to pause deposit otherwise false if want to pause withdraw.
   */
  event Paused(address account, bool isDeposit);
  /**
   * @param account Address of the account that unpaused the contract.
   * @param isDeposit True if we want to unpause deposit otherwise false if want to unpause withdraw.
   */
  event Unpaused(address account, bool isDeposit);

  /**
   * @notice Function to initialize the data, owner and afi token related data.
   * @dev the function should be called once only by factory
   * @param newOwner indicates the owner of the created afi product.
   * @param _name indicates the name of the afi Token
   * @param _symbol indicates symbol of the the afi Token.
   * @param data indicates the encoded data that follows the PoolsData struct format.
   * @param _isActiveRebalanced indicates the active rebalance status of the afi contract.
   * @param _aFiStorage indicates the afi storage contract address.
   */
  function initialize(
    address newOwner,
    string memory _name,
    string memory _symbol,
    bytes memory data,
    bool _isActiveRebalanced,
    IAFiStorage _aFiStorage,
    address[] memory _commonInputTokens
  ) external;

  /**
   * @notice Function to initialize accepted tokens in deposit and withdraw functions.
   * @dev  the function should be called once only by factory
   * @param iToken indicates the array of the accepted token addressess.
   */
  function initializeToken(
    address[] memory iToken,
    address[] memory _teamWallets,
    IPassiveRebal _rebalContract,
    bool _isPassiveRebalanced,
    address _aFiManager
  ) external;

  function getcSwapCounter() external view returns(uint256);

  /**
   * @notice Returns the array of underlying tokens.
   * @return uTokensArray Array of underlying tokens.
   */
  function getUTokens() external view returns (address[] memory uTokensArray);

  function swapViaStorageOrManager(
    address from,
    address to,
    uint amount,
    uint deadline,
    address midTok,
    uint minimumReturnAmount
  ) external returns (uint256);

  /**
   * @notice Returns the paused status of the contract.
   */
  function isPaused() external view returns (bool, bool);

  function getProportions()
    external
    view
    returns (uint[] memory, uint[] memory);

  /**
   * @notice Updates the pool data during Active Rebalance.
   * @param data that follows PoolsData format indicates the data of the token being rebalanced in Active Rebalance.
   */
  function updatePoolData(bytes memory data) external;

  function sendProfitOrFeeToManager(
    address wallet,
    uint profitShare,
    address oToken
  ) external;

  function totalSupply() external view returns (uint);

  function _supplyCompV3(address tok, uint amount) external;

  function _supplyAave(address tok, uint amount) external;

  function _supplyCompound(address tok, uint amount) external;

  function _withdrawAave(address tok, uint amount) external;

  function _withdrawCompoundV3(address tok, uint amount) external;

  function _withdrawCompound(address tok, uint amount) external;

  function getTVLandRebalContractandType()
    external
    view
  returns (uint256, address, uint256);

  function getInputToken() external view returns (address[] memory, address[] memory);

  function swap(
    address inputToken,
    address uTok,
    uint256 amountAsPerProportion,
    uint _deadline,
    address middleToken,
    uint256 minimumReturnAmount
  ) external returns (uint256);

  function updateDp(
    uint256[] memory _defaultProportion,
    uint256[] memory _uTokensProportion,
    uint256 activeStrategy
  ) external;

  function updateuTokAndProp(
    address[] memory _uTokens
  ) external;

  function underlyingTokensStaking(address[] memory _depositTokens) external returns(uint256 _totalProp);

  function depositUserNav(address user) external view returns (uint256);

  function setUnstakeData(uint256 totalQueuedShares) external returns (address[] memory, address[] memory, uint256, uint256);

  function isOTokenWhitelisted(address oToken) external view returns (bool);

  function validateWithdraw(address user, address oToken, uint256 _shares) external view returns( uint ibalance);

  function updateLockedTokens(address user, uint256 amount, bool lock, bool updateBalance) external;

  function getVaultDetails() external view returns(string memory, string memory);

  function checkTVL(bool _updateTVL) external;

  function updateInputTokens(address[] memory _inputTokens) external;
}
/// @title The interface for the Uniswap V3 Factory
/// @notice The Uniswap V3 Factory facilitates creation of Uniswap V3 pools and control over the protocol fees
interface IUniswapV3Factory {
  /// @notice Emitted when the owner of the factory is changed
  /// @param oldOwner The owner before the owner was changed
  /// @param newOwner The owner after the owner was changed
  event OwnerChanged(address indexed oldOwner, address indexed newOwner);

  /// @notice Emitted when a pool is created
  /// @param token0 The first token of the pool by address sort order
  /// @param token1 The second token of the pool by address sort order
  /// @param fee The fee collected upon every swap in the pool, denominated in hundredths of a bip
  /// @param tickSpacing The minimum number of ticks between initialized ticks
  /// @param pool The address of the created pool
  event PoolCreated(
    address indexed token0,
    address indexed token1,
    uint24 indexed fee,
    int24 tickSpacing,
    address pool
  );

  /// @notice Emitted when a new fee amount is enabled for pool creation via the factory
  /// @param fee The enabled fee, denominated in hundredths of a bip
  /// @param tickSpacing The minimum number of ticks between initialized ticks for pools created with the given fee
  event FeeAmountEnabled(uint24 indexed fee, int24 indexed tickSpacing);

  /// @notice Returns the current owner of the factory
  /// @dev Can be changed by the current owner via setOwner
  /// @return The address of the factory owner
  function owner() external view returns (address);

  /// @notice Returns the tick spacing for a given fee amount, if enabled, or 0 if not enabled
  /// @dev A fee amount can never be removed, so this value should be hard coded or cached in the calling context
  /// @param fee The enabled fee, denominated in hundredths of a bip. Returns 0 in case of unenabled fee
  /// @return The tick spacing
  function feeAmountTickSpacing(uint24 fee) external view returns (int24);

  /// @notice Returns the pool address for a given pair of tokens and a fee, or address 0 if it does not exist
  /// @dev tokenA and tokenB may be passed in either token0/token1 or token1/token0 order
  /// @param tokenA The contract address of either token0 or token1
  /// @param tokenB The contract address of the other token
  /// @param fee The fee collected upon every swap in the pool, denominated in hundredths of a bip
  /// @return pool The pool address
  function getPool(
    address tokenA,
    address tokenB,
    uint24 fee
  ) external view returns (address pool);

  /// @notice Creates a pool for the given two tokens and fee
  /// @param tokenA One of the two tokens in the desired pool
  /// @param tokenB The other of the two tokens in the desired pool
  /// @param fee The desired fee for the pool
  /// @dev tokenA and tokenB may be passed in either order: token0/token1 or token1/token0. tickSpacing is retrieved
  /// from the fee. The call will revert if the pool already exists, the fee is invalid, or the token arguments
  /// are invalid.
  /// @return pool The address of the newly created pool
  function createPool(
    address tokenA,
    address tokenB,
    uint24 fee
  ) external returns (address pool);

  /// @notice Updates the owner of the factory
  /// @dev Must be called by the current owner
  /// @param _owner The new owner of the factory
  function setOwner(address _owner) external;

  /// @notice Enables a fee amount with the given tickSpacing
  /// @dev Fee amounts may never be removed once enabled
  /// @param fee The fee amount to enable, denominated in hundredths of a bip (i.e. 1e-6)
  /// @param tickSpacing The spacing between ticks to be enforced for all pools created with the given fee amount
  function enableFeeAmount(uint24 fee, int24 tickSpacing) external;
}

interface IUniswapV3Pool {
  function observe(
    uint32[] calldata secondsAgos
  ) external
    view
    returns (
      int56[] memory tickCumulatives,
      uint160[] memory secondsPerLiquidityCumulativeX128s
    );

  function increaseObservationCardinalityNext(uint16 observationCardinalityNext) external;
  function fee() external returns(uint24);
}


interface IUniswapOracleV3 {
  function PERIOD() external returns (uint256);
  function factory() external returns (address);
  function getTotalProfit() external view returns (uint256);
  function getDaoProfit() external view returns (uint256);
  function update(address _tokenIn, address _tokenOut) external;

  function quotePrice(IAFi aFiContract,address _tokenIn, address _depositToken, uint256 _amount) external view returns (uint256 price);


  function consult(
    address _tokenIn,
    uint256 _amountIn,
    address _tokenOut
  ) external view returns (uint256 _amountOut);

  function estimateAmountOut(
    address tokenIn,
    uint128 amountIn,
    address tokenOut
  ) external view returns (uint amountOut);

  function estimateAmountOutMin(
    address tokenIn,
    uint128 amountIn,
    address tokenOut,
    address pool
  ) external view returns (uint amountOut);

  function updateAndConsult(
    address _tokenIn,
    uint256 _amountIn,
    address _tokenOut
  ) external returns (uint256 _amountOut);

  function checkUnderlyingPool(address token) external view returns (bool hasPool);
  function getStalePriceDelay(address aFiContract, address uToken) external view returns(uint256);
  function getPriceAndDecimals(address aFiContract, address uToken, address feed) external view returns(int256 , uint8 );
  function getPriceInUSDC(address tok) external view returns (uint256, uint256);
  function getMidToken(address tok) external view returns (address);
  function updateMidToken(address[] memory tok, address[] memory midTok) external;
  function setRedeemData(address _oToken, uint256 _batchWithdrawCounter, uint256 _totalShares, uint256 _oTokenUnits) external;
  function getControllers(address afiContract) external view returns(address, address);
}

/**
 * @dev Wrappers over Solidity's uintXX/intXX casting operators with added overflow
 * checks.
 *
 * Downcasting from uint256/int256 in Solidity does not revert on overflow. This can
 * easily result in undesired exploitation or bugs, since developers usually
 * assume that overflows raise errors. `SafeCast` restores this intuition by
 * reverting the transaction when such an operation overflows.
 *
 * Using this library instead of the unchecked operations eliminates an entire
 * class of bugs, so it's recommended to use it always.
 *
 * Can be combined with {SafeMath} and {SignedSafeMath} to extend it to smaller types, by performing
 * all math on `uint256` and `int256` and then downcasting.
 */
library SafeCast {
    /**
     * @dev Returns the downcasted uint248 from uint256, reverting on
     * overflow (when the input is greater than largest uint248).
     *
     * Counterpart to Solidity's `uint248` operator.
     *
     * Requirements:
     *
     * - input must fit into 248 bits
     *
     * _Available since v4.7._
     */
    function toUint248(uint256 value) internal pure returns (uint248) {
        require(value <= type(uint248).max, "SafeCast: value doesn't fit in 248 bits");
        return uint248(value);
    }

    /**
     * @dev Returns the downcasted uint240 from uint256, reverting on
     * overflow (when the input is greater than largest uint240).
     *
     * Counterpart to Solidity's `uint240` operator.
     *
     * Requirements:
     *
     * - input must fit into 240 bits
     *
     * _Available since v4.7._
     */
    function toUint240(uint256 value) internal pure returns (uint240) {
        require(value <= type(uint240).max, "SafeCast: value doesn't fit in 240 bits");
        return uint240(value);
    }

    /**
     * @dev Returns the downcasted uint232 from uint256, reverting on
     * overflow (when the input is greater than largest uint232).
     *
     * Counterpart to Solidity's `uint232` operator.
     *
     * Requirements:
     *
     * - input must fit into 232 bits
     *
     * _Available since v4.7._
     */
    function toUint232(uint256 value) internal pure returns (uint232) {
        require(value <= type(uint232).max, "SafeCast: value doesn't fit in 232 bits");
        return uint232(value);
    }

    /**
     * @dev Returns the downcasted uint224 from uint256, reverting on
     * overflow (when the input is greater than largest uint224).
     *
     * Counterpart to Solidity's `uint224` operator.
     *
     * Requirements:
     *
     * - input must fit into 224 bits
     *
     * _Available since v4.2._
     */
    function toUint224(uint256 value) internal pure returns (uint224) {
        require(value <= type(uint224).max, "SafeCast: value doesn't fit in 224 bits");
        return uint224(value);
    }

    /**
     * @dev Returns the downcasted uint216 from uint256, reverting on
     * overflow (when the input is greater than largest uint216).
     *
     * Counterpart to Solidity's `uint216` operator.
     *
     * Requirements:
     *
     * - input must fit into 216 bits
     *
     * _Available since v4.7._
     */
    function toUint216(uint256 value) internal pure returns (uint216) {
        require(value <= type(uint216).max, "SafeCast: value doesn't fit in 216 bits");
        return uint216(value);
    }

    /**
     * @dev Returns the downcasted uint208 from uint256, reverting on
     * overflow (when the input is greater than largest uint208).
     *
     * Counterpart to Solidity's `uint208` operator.
     *
     * Requirements:
     *
     * - input must fit into 208 bits
     *
     * _Available since v4.7._
     */
    function toUint208(uint256 value) internal pure returns (uint208) {
        require(value <= type(uint208).max, "SafeCast: value doesn't fit in 208 bits");
        return uint208(value);
    }

    /**
     * @dev Returns the downcasted uint200 from uint256, reverting on
     * overflow (when the input is greater than largest uint200).
     *
     * Counterpart to Solidity's `uint200` operator.
     *
     * Requirements:
     *
     * - input must fit into 200 bits
     *
     * _Available since v4.7._
     */
    function toUint200(uint256 value) internal pure returns (uint200) {
        require(value <= type(uint200).max, "SafeCast: value doesn't fit in 200 bits");
        return uint200(value);
    }

    /**
     * @dev Returns the downcasted uint192 from uint256, reverting on
     * overflow (when the input is greater than largest uint192).
     *
     * Counterpart to Solidity's `uint192` operator.
     *
     * Requirements:
     *
     * - input must fit into 192 bits
     *
     * _Available since v4.7._
     */
    function toUint192(uint256 value) internal pure returns (uint192) {
        require(value <= type(uint192).max, "SafeCast: value doesn't fit in 192 bits");
        return uint192(value);
    }

    /**
     * @dev Returns the downcasted uint184 from uint256, reverting on
     * overflow (when the input is greater than largest uint184).
     *
     * Counterpart to Solidity's `uint184` operator.
     *
     * Requirements:
     *
     * - input must fit into 184 bits
     *
     * _Available since v4.7._
     */
    function toUint184(uint256 value) internal pure returns (uint184) {
        require(value <= type(uint184).max, "SafeCast: value doesn't fit in 184 bits");
        return uint184(value);
    }

    /**
     * @dev Returns the downcasted uint176 from uint256, reverting on
     * overflow (when the input is greater than largest uint176).
     *
     * Counterpart to Solidity's `uint176` operator.
     *
     * Requirements:
     *
     * - input must fit into 176 bits
     *
     * _Available since v4.7._
     */
    function toUint176(uint256 value) internal pure returns (uint176) {
        require(value <= type(uint176).max, "SafeCast: value doesn't fit in 176 bits");
        return uint176(value);
    }

    /**
     * @dev Returns the downcasted uint168 from uint256, reverting on
     * overflow (when the input is greater than largest uint168).
     *
     * Counterpart to Solidity's `uint168` operator.
     *
     * Requirements:
     *
     * - input must fit into 168 bits
     *
     * _Available since v4.7._
     */
    function toUint168(uint256 value) internal pure returns (uint168) {
        require(value <= type(uint168).max, "SafeCast: value doesn't fit in 168 bits");
        return uint168(value);
    }

    /**
     * @dev Returns the downcasted uint160 from uint256, reverting on
     * overflow (when the input is greater than largest uint160).
     *
     * Counterpart to Solidity's `uint160` operator.
     *
     * Requirements:
     *
     * - input must fit into 160 bits
     *
     * _Available since v4.7._
     */
    function toUint160(uint256 value) internal pure returns (uint160) {
        require(value <= type(uint160).max, "SafeCast: value doesn't fit in 160 bits");
        return uint160(value);
    }

    /**
     * @dev Returns the downcasted uint152 from uint256, reverting on
     * overflow (when the input is greater than largest uint152).
     *
     * Counterpart to Solidity's `uint152` operator.
     *
     * Requirements:
     *
     * - input must fit into 152 bits
     *
     * _Available since v4.7._
     */
    function toUint152(uint256 value) internal pure returns (uint152) {
        require(value <= type(uint152).max, "SafeCast: value doesn't fit in 152 bits");
        return uint152(value);
    }

    /**
     * @dev Returns the downcasted uint144 from uint256, reverting on
     * overflow (when the input is greater than largest uint144).
     *
     * Counterpart to Solidity's `uint144` operator.
     *
     * Requirements:
     *
     * - input must fit into 144 bits
     *
     * _Available since v4.7._
     */
    function toUint144(uint256 value) internal pure returns (uint144) {
        require(value <= type(uint144).max, "SafeCast: value doesn't fit in 144 bits");
        return uint144(value);
    }

    /**
     * @dev Returns the downcasted uint136 from uint256, reverting on
     * overflow (when the input is greater than largest uint136).
     *
     * Counterpart to Solidity's `uint136` operator.
     *
     * Requirements:
     *
     * - input must fit into 136 bits
     *
     * _Available since v4.7._
     */
    function toUint136(uint256 value) internal pure returns (uint136) {
        require(value <= type(uint136).max, "SafeCast: value doesn't fit in 136 bits");
        return uint136(value);
    }

    /**
     * @dev Returns the downcasted uint128 from uint256, reverting on
     * overflow (when the input is greater than largest uint128).
     *
     * Counterpart to Solidity's `uint128` operator.
     *
     * Requirements:
     *
     * - input must fit into 128 bits
     *
     * _Available since v2.5._
     */
    function toUint128(uint256 value) internal pure returns (uint128) {
        require(value <= type(uint128).max, "SafeCast: value doesn't fit in 128 bits");
        return uint128(value);
    }

    /**
     * @dev Returns the downcasted uint120 from uint256, reverting on
     * overflow (when the input is greater than largest uint120).
     *
     * Counterpart to Solidity's `uint120` operator.
     *
     * Requirements:
     *
     * - input must fit into 120 bits
     *
     * _Available since v4.7._
     */
    function toUint120(uint256 value) internal pure returns (uint120) {
        require(value <= type(uint120).max, "SafeCast: value doesn't fit in 120 bits");
        return uint120(value);
    }

    /**
     * @dev Returns the downcasted uint112 from uint256, reverting on
     * overflow (when the input is greater than largest uint112).
     *
     * Counterpart to Solidity's `uint112` operator.
     *
     * Requirements:
     *
     * - input must fit into 112 bits
     *
     * _Available since v4.7._
     */
    function toUint112(uint256 value) internal pure returns (uint112) {
        require(value <= type(uint112).max, "SafeCast: value doesn't fit in 112 bits");
        return uint112(value);
    }

    /**
     * @dev Returns the downcasted uint104 from uint256, reverting on
     * overflow (when the input is greater than largest uint104).
     *
     * Counterpart to Solidity's `uint104` operator.
     *
     * Requirements:
     *
     * - input must fit into 104 bits
     *
     * _Available since v4.7._
     */
    function toUint104(uint256 value) internal pure returns (uint104) {
        require(value <= type(uint104).max, "SafeCast: value doesn't fit in 104 bits");
        return uint104(value);
    }

    /**
     * @dev Returns the downcasted uint96 from uint256, reverting on
     * overflow (when the input is greater than largest uint96).
     *
     * Counterpart to Solidity's `uint96` operator.
     *
     * Requirements:
     *
     * - input must fit into 96 bits
     *
     * _Available since v4.2._
     */
    function toUint96(uint256 value) internal pure returns (uint96) {
        require(value <= type(uint96).max, "SafeCast: value doesn't fit in 96 bits");
        return uint96(value);
    }

    /**
     * @dev Returns the downcasted uint88 from uint256, reverting on
     * overflow (when the input is greater than largest uint88).
     *
     * Counterpart to Solidity's `uint88` operator.
     *
     * Requirements:
     *
     * - input must fit into 88 bits
     *
     * _Available since v4.7._
     */
    function toUint88(uint256 value) internal pure returns (uint88) {
        require(value <= type(uint88).max, "SafeCast: value doesn't fit in 88 bits");
        return uint88(value);
    }

    /**
     * @dev Returns the downcasted uint80 from uint256, reverting on
     * overflow (when the input is greater than largest uint80).
     *
     * Counterpart to Solidity's `uint80` operator.
     *
     * Requirements:
     *
     * - input must fit into 80 bits
     *
     * _Available since v4.7._
     */
    function toUint80(uint256 value) internal pure returns (uint80) {
        require(value <= type(uint80).max, "SafeCast: value doesn't fit in 80 bits");
        return uint80(value);
    }

    /**
     * @dev Returns the downcasted uint72 from uint256, reverting on
     * overflow (when the input is greater than largest uint72).
     *
     * Counterpart to Solidity's `uint72` operator.
     *
     * Requirements:
     *
     * - input must fit into 72 bits
     *
     * _Available since v4.7._
     */
    function toUint72(uint256 value) internal pure returns (uint72) {
        require(value <= type(uint72).max, "SafeCast: value doesn't fit in 72 bits");
        return uint72(value);
    }

    /**
     * @dev Returns the downcasted uint64 from uint256, reverting on
     * overflow (when the input is greater than largest uint64).
     *
     * Counterpart to Solidity's `uint64` operator.
     *
     * Requirements:
     *
     * - input must fit into 64 bits
     *
     * _Available since v2.5._
     */
    function toUint64(uint256 value) internal pure returns (uint64) {
        require(value <= type(uint64).max, "SafeCast: value doesn't fit in 64 bits");
        return uint64(value);
    }

    /**
     * @dev Returns the downcasted uint56 from uint256, reverting on
     * overflow (when the input is greater than largest uint56).
     *
     * Counterpart to Solidity's `uint56` operator.
     *
     * Requirements:
     *
     * - input must fit into 56 bits
     *
     * _Available since v4.7._
     */
    function toUint56(uint256 value) internal pure returns (uint56) {
        require(value <= type(uint56).max, "SafeCast: value doesn't fit in 56 bits");
        return uint56(value);
    }

    /**
     * @dev Returns the downcasted uint48 from uint256, reverting on
     * overflow (when the input is greater than largest uint48).
     *
     * Counterpart to Solidity's `uint48` operator.
     *
     * Requirements:
     *
     * - input must fit into 48 bits
     *
     * _Available since v4.7._
     */
    function toUint48(uint256 value) internal pure returns (uint48) {
        require(value <= type(uint48).max, "SafeCast: value doesn't fit in 48 bits");
        return uint48(value);
    }

    /**
     * @dev Returns the downcasted uint40 from uint256, reverting on
     * overflow (when the input is greater than largest uint40).
     *
     * Counterpart to Solidity's `uint40` operator.
     *
     * Requirements:
     *
     * - input must fit into 40 bits
     *
     * _Available since v4.7._
     */
    function toUint40(uint256 value) internal pure returns (uint40) {
        require(value <= type(uint40).max, "SafeCast: value doesn't fit in 40 bits");
        return uint40(value);
    }

    /**
     * @dev Returns the downcasted uint32 from uint256, reverting on
     * overflow (when the input is greater than largest uint32).
     *
     * Counterpart to Solidity's `uint32` operator.
     *
     * Requirements:
     *
     * - input must fit into 32 bits
     *
     * _Available since v2.5._
     */
    function toUint32(uint256 value) internal pure returns (uint32) {
        require(value <= type(uint32).max, "SafeCast: value doesn't fit in 32 bits");
        return uint32(value);
    }

    /**
     * @dev Returns the downcasted uint24 from uint256, reverting on
     * overflow (when the input is greater than largest uint24).
     *
     * Counterpart to Solidity's `uint24` operator.
     *
     * Requirements:
     *
     * - input must fit into 24 bits
     *
     * _Available since v4.7._
     */
    function toUint24(uint256 value) internal pure returns (uint24) {
        require(value <= type(uint24).max, "SafeCast: value doesn't fit in 24 bits");
        return uint24(value);
    }

    /**
     * @dev Returns the downcasted uint16 from uint256, reverting on
     * overflow (when the input is greater than largest uint16).
     *
     * Counterpart to Solidity's `uint16` operator.
     *
     * Requirements:
     *
     * - input must fit into 16 bits
     *
     * _Available since v2.5._
     */
    function toUint16(uint256 value) internal pure returns (uint16) {
        require(value <= type(uint16).max, "SafeCast: value doesn't fit in 16 bits");
        return uint16(value);
    }

    /**
     * @dev Returns the downcasted uint8 from uint256, reverting on
     * overflow (when the input is greater than largest uint8).
     *
     * Counterpart to Solidity's `uint8` operator.
     *
     * Requirements:
     *
     * - input must fit into 8 bits
     *
     * _Available since v2.5._
     */
    function toUint8(uint256 value) internal pure returns (uint8) {
        require(value <= type(uint8).max, "SafeCast: value doesn't fit in 8 bits");
        return uint8(value);
    }

    /**
     * @dev Converts a signed int256 into an unsigned uint256.
     *
     * Requirements:
     *
     * - input must be greater than or equal to 0.
     *
     * _Available since v3.0._
     */
    function toUint256(int256 value) internal pure returns (uint256) {
        require(value >= 0, "SafeCast: value must be positive");
        return uint256(value);
    }

    /**
     * @dev Returns the downcasted int248 from int256, reverting on
     * overflow (when the input is less than smallest int248 or
     * greater than largest int248).
     *
     * Counterpart to Solidity's `int248` operator.
     *
     * Requirements:
     *
     * - input must fit into 248 bits
     *
     * _Available since v4.7._
     */
    function toInt248(int256 value) internal pure returns (int248 downcasted) {
        downcasted = int248(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 248 bits");
    }

    /**
     * @dev Returns the downcasted int240 from int256, reverting on
     * overflow (when the input is less than smallest int240 or
     * greater than largest int240).
     *
     * Counterpart to Solidity's `int240` operator.
     *
     * Requirements:
     *
     * - input must fit into 240 bits
     *
     * _Available since v4.7._
     */
    function toInt240(int256 value) internal pure returns (int240 downcasted) {
        downcasted = int240(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 240 bits");
    }

    /**
     * @dev Returns the downcasted int232 from int256, reverting on
     * overflow (when the input is less than smallest int232 or
     * greater than largest int232).
     *
     * Counterpart to Solidity's `int232` operator.
     *
     * Requirements:
     *
     * - input must fit into 232 bits
     *
     * _Available since v4.7._
     */
    function toInt232(int256 value) internal pure returns (int232 downcasted) {
        downcasted = int232(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 232 bits");
    }

    /**
     * @dev Returns the downcasted int224 from int256, reverting on
     * overflow (when the input is less than smallest int224 or
     * greater than largest int224).
     *
     * Counterpart to Solidity's `int224` operator.
     *
     * Requirements:
     *
     * - input must fit into 224 bits
     *
     * _Available since v4.7._
     */
    function toInt224(int256 value) internal pure returns (int224 downcasted) {
        downcasted = int224(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 224 bits");
    }

    /**
     * @dev Returns the downcasted int216 from int256, reverting on
     * overflow (when the input is less than smallest int216 or
     * greater than largest int216).
     *
     * Counterpart to Solidity's `int216` operator.
     *
     * Requirements:
     *
     * - input must fit into 216 bits
     *
     * _Available since v4.7._
     */
    function toInt216(int256 value) internal pure returns (int216 downcasted) {
        downcasted = int216(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 216 bits");
    }

    /**
     * @dev Returns the downcasted int208 from int256, reverting on
     * overflow (when the input is less than smallest int208 or
     * greater than largest int208).
     *
     * Counterpart to Solidity's `int208` operator.
     *
     * Requirements:
     *
     * - input must fit into 208 bits
     *
     * _Available since v4.7._
     */
    function toInt208(int256 value) internal pure returns (int208 downcasted) {
        downcasted = int208(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 208 bits");
    }

    /**
     * @dev Returns the downcasted int200 from int256, reverting on
     * overflow (when the input is less than smallest int200 or
     * greater than largest int200).
     *
     * Counterpart to Solidity's `int200` operator.
     *
     * Requirements:
     *
     * - input must fit into 200 bits
     *
     * _Available since v4.7._
     */
    function toInt200(int256 value) internal pure returns (int200 downcasted) {
        downcasted = int200(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 200 bits");
    }

    /**
     * @dev Returns the downcasted int192 from int256, reverting on
     * overflow (when the input is less than smallest int192 or
     * greater than largest int192).
     *
     * Counterpart to Solidity's `int192` operator.
     *
     * Requirements:
     *
     * - input must fit into 192 bits
     *
     * _Available since v4.7._
     */
    function toInt192(int256 value) internal pure returns (int192 downcasted) {
        downcasted = int192(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 192 bits");
    }

    /**
     * @dev Returns the downcasted int184 from int256, reverting on
     * overflow (when the input is less than smallest int184 or
     * greater than largest int184).
     *
     * Counterpart to Solidity's `int184` operator.
     *
     * Requirements:
     *
     * - input must fit into 184 bits
     *
     * _Available since v4.7._
     */
    function toInt184(int256 value) internal pure returns (int184 downcasted) {
        downcasted = int184(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 184 bits");
    }

    /**
     * @dev Returns the downcasted int176 from int256, reverting on
     * overflow (when the input is less than smallest int176 or
     * greater than largest int176).
     *
     * Counterpart to Solidity's `int176` operator.
     *
     * Requirements:
     *
     * - input must fit into 176 bits
     *
     * _Available since v4.7._
     */
    function toInt176(int256 value) internal pure returns (int176 downcasted) {
        downcasted = int176(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 176 bits");
    }

    /**
     * @dev Returns the downcasted int168 from int256, reverting on
     * overflow (when the input is less than smallest int168 or
     * greater than largest int168).
     *
     * Counterpart to Solidity's `int168` operator.
     *
     * Requirements:
     *
     * - input must fit into 168 bits
     *
     * _Available since v4.7._
     */
    function toInt168(int256 value) internal pure returns (int168 downcasted) {
        downcasted = int168(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 168 bits");
    }

    /**
     * @dev Returns the downcasted int160 from int256, reverting on
     * overflow (when the input is less than smallest int160 or
     * greater than largest int160).
     *
     * Counterpart to Solidity's `int160` operator.
     *
     * Requirements:
     *
     * - input must fit into 160 bits
     *
     * _Available since v4.7._
     */
    function toInt160(int256 value) internal pure returns (int160 downcasted) {
        downcasted = int160(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 160 bits");
    }

    /**
     * @dev Returns the downcasted int152 from int256, reverting on
     * overflow (when the input is less than smallest int152 or
     * greater than largest int152).
     *
     * Counterpart to Solidity's `int152` operator.
     *
     * Requirements:
     *
     * - input must fit into 152 bits
     *
     * _Available since v4.7._
     */
    function toInt152(int256 value) internal pure returns (int152 downcasted) {
        downcasted = int152(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 152 bits");
    }

    /**
     * @dev Returns the downcasted int144 from int256, reverting on
     * overflow (when the input is less than smallest int144 or
     * greater than largest int144).
     *
     * Counterpart to Solidity's `int144` operator.
     *
     * Requirements:
     *
     * - input must fit into 144 bits
     *
     * _Available since v4.7._
     */
    function toInt144(int256 value) internal pure returns (int144 downcasted) {
        downcasted = int144(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 144 bits");
    }

    /**
     * @dev Returns the downcasted int136 from int256, reverting on
     * overflow (when the input is less than smallest int136 or
     * greater than largest int136).
     *
     * Counterpart to Solidity's `int136` operator.
     *
     * Requirements:
     *
     * - input must fit into 136 bits
     *
     * _Available since v4.7._
     */
    function toInt136(int256 value) internal pure returns (int136 downcasted) {
        downcasted = int136(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 136 bits");
    }

    /**
     * @dev Returns the downcasted int128 from int256, reverting on
     * overflow (when the input is less than smallest int128 or
     * greater than largest int128).
     *
     * Counterpart to Solidity's `int128` operator.
     *
     * Requirements:
     *
     * - input must fit into 128 bits
     *
     * _Available since v3.1._
     */
    function toInt128(int256 value) internal pure returns (int128 downcasted) {
        downcasted = int128(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 128 bits");
    }

    /**
     * @dev Returns the downcasted int120 from int256, reverting on
     * overflow (when the input is less than smallest int120 or
     * greater than largest int120).
     *
     * Counterpart to Solidity's `int120` operator.
     *
     * Requirements:
     *
     * - input must fit into 120 bits
     *
     * _Available since v4.7._
     */
    function toInt120(int256 value) internal pure returns (int120 downcasted) {
        downcasted = int120(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 120 bits");
    }

    /**
     * @dev Returns the downcasted int112 from int256, reverting on
     * overflow (when the input is less than smallest int112 or
     * greater than largest int112).
     *
     * Counterpart to Solidity's `int112` operator.
     *
     * Requirements:
     *
     * - input must fit into 112 bits
     *
     * _Available since v4.7._
     */
    function toInt112(int256 value) internal pure returns (int112 downcasted) {
        downcasted = int112(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 112 bits");
    }

    /**
     * @dev Returns the downcasted int104 from int256, reverting on
     * overflow (when the input is less than smallest int104 or
     * greater than largest int104).
     *
     * Counterpart to Solidity's `int104` operator.
     *
     * Requirements:
     *
     * - input must fit into 104 bits
     *
     * _Available since v4.7._
     */
    function toInt104(int256 value) internal pure returns (int104 downcasted) {
        downcasted = int104(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 104 bits");
    }

    /**
     * @dev Returns the downcasted int96 from int256, reverting on
     * overflow (when the input is less than smallest int96 or
     * greater than largest int96).
     *
     * Counterpart to Solidity's `int96` operator.
     *
     * Requirements:
     *
     * - input must fit into 96 bits
     *
     * _Available since v4.7._
     */
    function toInt96(int256 value) internal pure returns (int96 downcasted) {
        downcasted = int96(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 96 bits");
    }

    /**
     * @dev Returns the downcasted int88 from int256, reverting on
     * overflow (when the input is less than smallest int88 or
     * greater than largest int88).
     *
     * Counterpart to Solidity's `int88` operator.
     *
     * Requirements:
     *
     * - input must fit into 88 bits
     *
     * _Available since v4.7._
     */
    function toInt88(int256 value) internal pure returns (int88 downcasted) {
        downcasted = int88(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 88 bits");
    }

    /**
     * @dev Returns the downcasted int80 from int256, reverting on
     * overflow (when the input is less than smallest int80 or
     * greater than largest int80).
     *
     * Counterpart to Solidity's `int80` operator.
     *
     * Requirements:
     *
     * - input must fit into 80 bits
     *
     * _Available since v4.7._
     */
    function toInt80(int256 value) internal pure returns (int80 downcasted) {
        downcasted = int80(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 80 bits");
    }

    /**
     * @dev Returns the downcasted int72 from int256, reverting on
     * overflow (when the input is less than smallest int72 or
     * greater than largest int72).
     *
     * Counterpart to Solidity's `int72` operator.
     *
     * Requirements:
     *
     * - input must fit into 72 bits
     *
     * _Available since v4.7._
     */
    function toInt72(int256 value) internal pure returns (int72 downcasted) {
        downcasted = int72(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 72 bits");
    }

    /**
     * @dev Returns the downcasted int64 from int256, reverting on
     * overflow (when the input is less than smallest int64 or
     * greater than largest int64).
     *
     * Counterpart to Solidity's `int64` operator.
     *
     * Requirements:
     *
     * - input must fit into 64 bits
     *
     * _Available since v3.1._
     */
    function toInt64(int256 value) internal pure returns (int64 downcasted) {
        downcasted = int64(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 64 bits");
    }

    /**
     * @dev Returns the downcasted int56 from int256, reverting on
     * overflow (when the input is less than smallest int56 or
     * greater than largest int56).
     *
     * Counterpart to Solidity's `int56` operator.
     *
     * Requirements:
     *
     * - input must fit into 56 bits
     *
     * _Available since v4.7._
     */
    function toInt56(int256 value) internal pure returns (int56 downcasted) {
        downcasted = int56(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 56 bits");
    }

    /**
     * @dev Returns the downcasted int48 from int256, reverting on
     * overflow (when the input is less than smallest int48 or
     * greater than largest int48).
     *
     * Counterpart to Solidity's `int48` operator.
     *
     * Requirements:
     *
     * - input must fit into 48 bits
     *
     * _Available since v4.7._
     */
    function toInt48(int256 value) internal pure returns (int48 downcasted) {
        downcasted = int48(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 48 bits");
    }

    /**
     * @dev Returns the downcasted int40 from int256, reverting on
     * overflow (when the input is less than smallest int40 or
     * greater than largest int40).
     *
     * Counterpart to Solidity's `int40` operator.
     *
     * Requirements:
     *
     * - input must fit into 40 bits
     *
     * _Available since v4.7._
     */
    function toInt40(int256 value) internal pure returns (int40 downcasted) {
        downcasted = int40(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 40 bits");
    }

    /**
     * @dev Returns the downcasted int32 from int256, reverting on
     * overflow (when the input is less than smallest int32 or
     * greater than largest int32).
     *
     * Counterpart to Solidity's `int32` operator.
     *
     * Requirements:
     *
     * - input must fit into 32 bits
     *
     * _Available since v3.1._
     */
    function toInt32(int256 value) internal pure returns (int32 downcasted) {
        downcasted = int32(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 32 bits");
    }

    /**
     * @dev Returns the downcasted int24 from int256, reverting on
     * overflow (when the input is less than smallest int24 or
     * greater than largest int24).
     *
     * Counterpart to Solidity's `int24` operator.
     *
     * Requirements:
     *
     * - input must fit into 24 bits
     *
     * _Available since v4.7._
     */
    function toInt24(int256 value) internal pure returns (int24 downcasted) {
        downcasted = int24(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 24 bits");
    }

    /**
     * @dev Returns the downcasted int16 from int256, reverting on
     * overflow (when the input is less than smallest int16 or
     * greater than largest int16).
     *
     * Counterpart to Solidity's `int16` operator.
     *
     * Requirements:
     *
     * - input must fit into 16 bits
     *
     * _Available since v3.1._
     */
    function toInt16(int256 value) internal pure returns (int16 downcasted) {
        downcasted = int16(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 16 bits");
    }

    /**
     * @dev Returns the downcasted int8 from int256, reverting on
     * overflow (when the input is less than smallest int8 or
     * greater than largest int8).
     *
     * Counterpart to Solidity's `int8` operator.
     *
     * Requirements:
     *
     * - input must fit into 8 bits
     *
     * _Available since v3.1._
     */
    function toInt8(int256 value) internal pure returns (int8 downcasted) {
        downcasted = int8(value);
        require(downcasted == value, "SafeCast: value doesn't fit in 8 bits");
    }

    /**
     * @dev Converts an unsigned uint256 into a signed int256.
     *
     * Requirements:
     *
     * - input must be less than or equal to maxInt256.
     *
     * _Available since v3.0._
     */
    function toInt256(uint256 value) internal pure returns (int256) {
        // Note: Unsafe cast below is okay because `type(int256).max` is guaranteed to be positive
        require(value <= uint256(type(int256).max), "SafeCast: value doesn't fit in an int256");
        return int256(value);
    }
}

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

    constructor() {
        _status = _NOT_ENTERED;
    }

    /**
     * @dev Prevents a contract from calling itself, directly or indirectly.
     * Calling a `nonReentrant` function from another `nonReentrant`
     * function is not supported. It is possible to prevent this from happening
     * by making the `nonReentrant` function external, and making it call a
     * `private` function that does the actual work.
     */
    modifier nonReentrant() {
        _nonReentrantBefore();
        _;
        _nonReentrantAfter();
    }

    function _nonReentrantBefore() private {
        // On the first call to nonReentrant, _status will be _NOT_ENTERED
        require(_status != _ENTERED, "ReentrancyGuard: reentrant call");

        // Any calls to nonReentrant after this point will fail
        _status = _ENTERED;
    }

    function _nonReentrantAfter() private {
        // By storing the original value once again, a refund is triggered (see
        // https://eips.ethereum.org/EIPS/eip-2200)
        _status = _NOT_ENTERED;
    }
}

/**
 * @dev Provides information about the current execution context, including the
 * sender of the transaction and its data. While these are generally available
 * via msg.sender and msg.data, they should not be accessed in such a direct
 * manner, since when dealing with meta-transactions the account sending and
 * paying for execution may not be the actual sender (as far as an application
 * is concerned).
 *
 * This contract is only required for intermediate, library-like contracts.
 */
abstract contract Context {
    function _msgSender() internal view virtual returns (address) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes calldata) {
        return msg.data;
    }
}
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
    constructor() {
        _transferOwnership(_msgSender());
    }

    /**
     * @dev Throws if called by any account other than the owner.
     */
    modifier onlyOwner() {
        _checkOwner();
        _;
    }

    /**
     * @dev Returns the address of the current owner.
     */
    function owner() public view virtual returns (address) {
        return _owner;
    }

    /**
     * @dev Throws if the sender is not the owner.
     */
    function _checkOwner() internal view virtual {
        require(owner() == _msgSender(), "Ownable: caller is not the owner");
    }

    /**
     * @dev Leaves the contract without owner. It will not be possible to call
     * `onlyOwner` functions anymore. Can only be called by the current owner.
     *
     * NOTE: Renouncing ownership will leave the contract without an owner,
     * thereby removing any functionality that is only available to the owner.
     */
    function renounceOwnership() public virtual onlyOwner {
        _transferOwnership(address(0));
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Can only be called by the current owner.
     */
    function transferOwnership(address newOwner) public virtual onlyOwner {
        require(newOwner != address(0), "Ownable: new owner is the zero address");
        _transferOwnership(newOwner);
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Internal function without access restriction.
     */
    function _transferOwnership(address newOwner) internal virtual {
        address oldOwner = _owner;
        _owner = newOwner;
        emit OwnershipTransferred(oldOwner, newOwner);
    }
}

/**
 * @dev Contract module which provides access control mechanism, where
 * there is an account (an owner) that can be granted exclusive access to
 * specific functions.
 *
 * By default, the owner account will be the one that deploys the contract. This
 * can later be changed with {transferOwnership} and {acceptOwnership}.
 *
 * This module is used through inheritance. It will make available all functions
 * from parent (Ownable).
 */
abstract contract Ownable2Step is Ownable {
    address internal _pendingOwner;

    event OwnershipTransferStarted(address indexed previousOwner, address indexed newOwner);

    /**
     * @dev Returns the address of the pending owner.
     */
    function pendingOwner() public view virtual returns (address) {
        return _pendingOwner;
    }

    // /**
    //  * @dev Starts the ownership transfer of the contract to a new account. Replaces the pending transfer if there is one.
    //  * Can only be called by the current owner.
    //  */
    // function transferOwnership(address newOwner) public virtual override onlyOwner {
    //     _pendingOwner = newOwner;
    //     emit OwnershipTransferStarted(owner(), newOwner);
    // }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`) and deletes any pending owner.
     * Internal function without access restriction.
     */
    function _transferOwnership(address newOwner) internal virtual override {
        delete _pendingOwner;
        super._transferOwnership(newOwner);
    }

    /**
     * @dev The new owner accepts the ownership transfer.
     */
    function acceptOwnership() external {
        address sender = _msgSender();
        require(pendingOwner() == sender, "Ownable2Step: caller is not the new owner");
        _transferOwnership(sender);
    }
}

contract OwnableDelayModule is Ownable2Step {
  address internal delayModule;

  constructor() {
    delayModule = msg.sender;
  }

  function isDelayModule() internal view {
    require(msg.sender == delayModule, "NA");
  }

  function setDelayModule(address _delayModule) external {
    isDelayModule();
    require(_delayModule != address(0), "ODZ");
    delayModule = _delayModule;
  }

  function getDelayModule() external view returns (address) {
    return delayModule;
  }

  /**
   * @dev Starts the ownership transfer of the contract to a new account. Replaces the pending transfer if there is one.
   * Can only be called by the current owner.
   */
  function transferOwnership(address newOwner) public override {
    isDelayModule();
    _pendingOwner = newOwner;
    emit OwnershipTransferStarted(owner(), newOwner);
  }
}


// Reference: https://github.com/cryptofinlabs/cryptofin-solidity/blob/master/contracts/array-utils/AddressArrayUtils.sol
library ArrayUtils {
  /**
   * Deletes address at index and fills the spot with the last address.
   * Order is preserved.
   */
  // solhint-disable-next-line var-name-mixedcase
  function sPopAddress(address[] storage A, uint index) internal {
    uint length = A.length;
    if (index >= length) {
      revert("Error: index out of bounds");
    }

    for (uint i = index; i < length - 1; i++) {
      A[i] = A[i + 1];
    }
    A.pop();
  }

  // solhint-disable-next-line var-name-mixedcase
  function sPopUint256(uint[] storage A, uint index) internal {
    uint length = A.length;
    if (index >= length) {
      revert("Error: index out of bounds");
    }

    for (uint i = index; i < length - 1; i++) {
      A[i] = A[i + 1];
    }
    A.pop();
  }

  // solhint-disable-next-line var-name-mixedcase
  function sumOfMArrays(
    uint[] memory A,
    uint[] memory B
  ) internal pure returns (uint[] memory sum) {
    sum = new uint[](A.length);
    for (uint i = 0; i < A.length; i++) {
      sum[i] = A[i] + B[i];
    }
    return sum;
  }

  /**
   * Finds the index of the first occurrence of the given element.
   * @param A The input array to search
   * @param a The value to find
   * @return Returns (index and isIn) for the first occurrence starting from index 0
   */
  function indexOf(address[] memory A, address a) internal pure returns (uint, bool) {
    uint length = A.length;
    for (uint i = 0; i < length; i++) {
      if (A[i] == a) {
        return (i, true);
      }
    }
    return (type(uint).max, false);
  }

  /**
   * Returns true if the value is present in the list. Uses indexOf internally.
   * @param A The input array to search
   * @param a The value to find
   * @return Returns isIn for the first occurrence starting from index 0
   */
  function contains(address[] memory A, address a) internal pure returns (bool) {
    (, bool isIn) = indexOf(A, a);
    return isIn;
  }

  /**
   * Returns true if there are 2 elements that are the same in an array
   * @param A The input array to search
   * @return Returns boolean for the first occurrence of a duplicate
   */
  function hasDuplicate(address[] memory A) internal pure returns (bool) {
    require(A.length > 0, "A is empty");

    for (uint i = 0; i < A.length - 1; i++) {
      address current = A[i];
      for (uint j = i + 1; j < A.length; j++) {
        if (current == A[j]) {
          return true;
        }
      }
    }
    return false;
  }

  /**
   * @param A The input array to search
   * @param a The address to remove
   * @return Returns the array with the object removed.
   */
  function remove(
    address[] memory A,
    address a
  ) internal pure returns (address[] memory) {
    (uint index, bool isIn) = indexOf(A, a);
    if (!isIn) {
      revert("Address not in array.");
    } else {
      (address[] memory _A, ) = pop(A, index);
      return _A;
    }
  }

  /**
   * @param A The input array to search
   * @param a The address to remove
   */
  function removeStorage(address[] storage A, address a) internal {
    (uint index, bool isIn) = indexOf(A, a);
    if (!isIn) {
      revert("Address not in array.");
    } else {
      uint lastIndex = A.length - 1; // If the array would be empty, the previous line would throw, so no underflow here
      if (index != lastIndex) {
        A[index] = A[lastIndex];
      }
      A.pop();
    }
  }

  /**
   * Removes specified index from array
   * @param A The input array to search
   * @param index The index to remove
   * @return Returns the new array and the removed entry
   */
  function pop(
    address[] memory A,
    uint index
  ) internal pure returns (address[] memory, address) {
    uint length = A.length;
    require(index < A.length, "Index must be < A length");
    address[] memory newAddresses = new address[](length - 1);
    for (uint i = 0; i < index; i++) {
      newAddresses[i] = A[i];
    }
    for (uint j = index + 1; j < length; j++) {
      newAddresses[j - 1] = A[j];
    }
    return (newAddresses, A[index]);
  }

  /**
   * Returns the combination of the two arrays
   * @param A The first array
   * @param B The second array
   * @return Returns A extended by B
   */
  function extend(
    address[] memory A,
    address[] memory B
  ) internal pure returns (address[] memory) {
    uint aLength = A.length;
    uint bLength = B.length;
    address[] memory newAddresses = new address[](aLength + bLength);
    for (uint i = 0; i < aLength; i++) {
      newAddresses[i] = A[i];
    }
    for (uint j = 0; j < bLength; j++) {
      newAddresses[aLength + j] = B[j];
    }
    return newAddresses;
  }

  /**
   * Validate that address and uint array lengths match. Validate address array is not empty
   * and contains no duplicate elements.
   *
   * @param A         Array of addresses
   * @param B         Array of uint
   */
  function validatePairsWithArray(address[] memory A, uint[] memory B) internal pure {
    require(A.length == B.length, "Array length mismatch");
    _validateLengthAndUniqueness(A);
  }

  /**
   * Validate that address and bool array lengths match. Validate address array is not empty
   * and contains no duplicate elements.
   *
   * @param A         Array of addresses
   * @param B         Array of bool
   */
  function validatePairsWithArray(address[] memory A, bool[] memory B) internal pure {
    require(A.length == B.length, "Array length mismatch");
    _validateLengthAndUniqueness(A);
  }

  /**
   * Validate that address and string array lengths match. Validate address array is not empty
   * and contains no duplicate elements.
   *
   * @param A         Array of addresses
   * @param B         Array of strings
   */
  function validatePairsWithArray(address[] memory A, string[] memory B) internal pure {
    require(A.length == B.length, "Array length mismatch");
    _validateLengthAndUniqueness(A);
  }

  /**
   * Validate that address array lengths match, and calling address array are not empty
   * and contain no duplicate elements.
   *
   * @param A         Array of addresses
   * @param B         Array of addresses
   */
  function validatePairsWithArray(
    address[] memory A,
    address[] memory B
  ) internal pure {
    require(A.length == B.length, "Array length mismatch");
    _validateLengthAndUniqueness(A);
  }

  /**
   * Validate that address and bytes array lengths match. Validate address array is not empty
   * and contains no duplicate elements.
   *
   * @param A         Array of addresses
   * @param B         Array of bytes
   */
  function validatePairsWithArray(address[] memory A, bytes[] memory B) internal pure {
    require(A.length == B.length, "Array length mismatch");
    _validateLengthAndUniqueness(A);
  }

  /**
   * Validate address array is not empty and contains no duplicate elements.
   *
   * @param A          Array of addresses
   */
  function _validateLengthAndUniqueness(address[] memory A) internal pure {
    require(A.length > 0, "Array length must be > 0");
    require(!hasDuplicate(A), "Cannot duplicate addresses");
  }
}

interface AggregatorInterface {
  function latestAnswer() external view returns (int256);
  function latestTimestamp() external view returns (uint256);
  function latestRound() external view returns (uint256);
  function getAnswer(uint256 roundId) external view returns (int256);
  function getTimestamp(uint256 roundId) external view returns (uint256);

  event AnswerUpdated(int256 indexed current, uint256 indexed roundId, uint256 updatedAt);
  event NewRound(uint256 indexed roundId, address indexed startedBy, uint256 startedAt);
}

interface AggregatorV2V3Interface is AggregatorInterface
{
}


interface AggregatorV3Interface {

  struct Phase {
    uint16 id;
    AggregatorV2V3Interface aggregator;
  }

  function decimals() external view returns (uint8);

  function description() external view returns (string memory);

  function version() external view returns (uint256);

  function getRoundData(uint80 _roundId)
    external
    view
    returns (
      uint80 roundId,
      int256 answer,
      uint256 startedAt,
      uint256 updatedAt,
      uint80 answeredInRound
    );

  function latestRoundData()
    external
    view
    returns (
      uint80 roundId,
      int256 answer,
      uint256 startedAt,
      uint256 updatedAt,
      uint80 answeredInRound
    );
  
  /**
   * @notice returns the current phase's aggregator address.
   */
  function aggregator()
    external
    view
    returns (address);

  function minAnswer() external view returns(uint);

  function maxAnswer() external view returns(uint);

}

interface IAFiFactory {
    event TokenCreated(address indexed token, string name, string symbol);
    event AddUnderlyingTokens(address indexed afiContract, address utoken);

    function allUnderlyingTokensLength() external view returns (uint256);

    function afiProductsCount() external view returns (uint256);
    
    function getPricePerFullShare(address afiContract, address afiStorage) external view returns (uint256);

    function afiContractInitUpdate(address aFiContract, uint256 order) external;

    function getAFiInitStatus(address aFiContract) external view returns (bool, bool);

    function getAFiTokenStatus(address _aFiContract) external view returns (bool);
}


interface Compound {
  function exchangeRateStored() external view returns (uint);
}

/**
 * @title AFiStorage.
 * @notice Storage conntract for storing investors and teamwallets details and performig the storage changes.
 * @dev Error codes: AFS01: Cannot be address zero. AFS02: Unauthorized caller.
 */
contract AFiStorage is OwnableDelayModule, IAFiStorage, ReentrancyGuard {
  using SafeCast for uint256;
  using ArrayUtils for uint[];
  using ArrayUtils for address[];

  address private aFiManager;
  // List of TeamWallets, helpful when fetching team wallets report
  mapping(address => address[]) internal teamWalletsOfAFi;
  // aFiContract => investor => Investor Struct
  mapping(address => mapping(address => Investor)) internal investorInAFi;
  // aFiContract => teamWallet => TeamWallet Struct
  mapping(address => mapping(address => TeamWallet)) internal teamWalletInAFi;
  mapping(address => uint) internal totalActiveTeamWallets;
  mapping(address => bool) internal onlyOnce;
  mapping(address => bool) public isAFiActive;
  mapping(address => RebalanceDetails[]) internal _rebalanceDetails;
  mapping(address => mapping(uint256 => mapping(address => uint256)))
  public preDepositedInputTokens;
  uint256 internal preDep;

  mapping(address => uint256) public stablesWithdrawalLimit; // Amount in USD that can be withdrawn in between cumulative swaps
  mapping(address => mapping(uint256 => uint256)) public stablesWithdrawn; // Amount in USD that has been withdrawn in between cumulative swaps
  uint256 public maxSwapFee; // We set this parameter in % to calculate max fee that can be deducted in a swap

  uint256 internal redFromContract;
  mapping(address => uint256) internal lastSwapTime;
  address internal rebal;
  address internal _afiTemp;

  //synData
  mapping(address => mapping(address => address)) public aaveTokenCopy; // aaveToken address for various u tokens
  mapping(address => mapping(address => address)) public compoundCometCopy;
  mapping(address => mapping(address => address))public compoundCopy;
  mapping(address => mapping(address => uint)) public provider; // Protocol where each u token is invested
  mapping(address => mapping(address => bool)) internal _isStaked;

  address private constant USDC = 0xA0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48;
  address private constant WETH = 0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2;
  address private constant USDC_ORACLE = 0x8fFfFfd4AfB6115b954Bd326cbe7B4BA576818f6;
  address public immutable uniswapOracleV3;
  address public immutable aFiFactory; 

  /*
    Is underlying token staked
    isUTokenStaked: AFi => UToken `isUTokenStaked[AFi][UToken]`
    isRebalanced: AFi `isRebalanced[AFi]`
  */
  mapping(address => bool) internal isActiveRebalanced;

  event SetActiveRebalancedStatus(address indexed aFiContract, bool status);
  event SetAFiActive(address indexed aFiContract, bool status);
  event ReActivateTeamWallet(address aFiContract, address wallet);
  event DeactivateTeamWallet(address aFiContract, address wallet);
  event SetAFiManager(address indexed afiContract, address manager);
  event ProfitShareDistributed(
    address indexed aFiContract,
    address indexed teamWallet,
    uint256 amount
  );
  
  constructor(address _aFiManager, address oracleV3,address _passiveRebal,address _aFiFactory) {
    validateAddress(_aFiManager, address(0));
    validateAddress(_aFiFactory, address(0));
    validateAddress(oracleV3, address(0));
    aFiManager = _aFiManager;
    uniswapOracleV3 = oracleV3;
    rebal = _passiveRebal;
    aFiFactory = _aFiFactory;
  }

  function validateAddress(address addA, address addB) internal pure {
    require(addA != addB, "AFS01");
  }

  function aFiVaultCaller(address aFiContract, address _owner1) internal view {
    require(IAFiFactory(aFiFactory).getAFiTokenStatus(aFiContract) || msg.sender == _owner1,"AFS09");
  }


  /**
   * @notice To add a new team wallet.
   * @param aFiContract Address of the AFi contract.
   * @param wallet Wallet address that has to be added in the `teamWallets` array.
   * @param isActive Boolean indicating whether to set the wallet to either active/inactive.
   * @param isPresent Boolean indicating the present status of the wallet.
   */
  function addTeamWallet(
    address aFiContract,
    address wallet,
    bool isActive,
    bool isPresent
  ) external override nonReentrant {
    validateFlag(isAFiActive[aFiContract]);
    validateCaller(msg.sender, aFiManager);
    validateAddress(wallet, address(0));
    require(totalActiveTeamWallets[aFiContract] > 0, "AFS05");
    if (!teamWalletInAFi[aFiContract][wallet].isPresent && isPresent) {
      teamWalletsOfAFi[aFiContract].push(wallet);
      teamWalletInAFi[aFiContract][wallet].isPresent = isPresent;

      // Write to contract storage
      if (!teamWalletInAFi[aFiContract][wallet].isActive && isActive) {
        teamWalletInAFi[aFiContract][wallet].isActive = isActive;
        totalActiveTeamWallets[aFiContract]++;
      }
      teamWalletInAFi[aFiContract][wallet].walletAddress = wallet;
    }
    emit TeamWalletAdd(wallet, true);
  }

  /**
   * @notice To deactivate a team wallet.
   * @param aFiContract Address of the AFi contract.
   * @param wallet Wallet address that has to be deactivated.
   */
  function deactivateTeamWallet(
    address aFiContract,
    address wallet
  ) external onlyOwner nonReentrant {
    // solhint-disable-next-line reason-string

    validateFlag(isAFiActive[aFiContract]);
    validateFlag(teamWalletInAFi[aFiContract][wallet].isActive);
    totalActiveTeamWallets[aFiContract]--;

    // Write to contract storage
    teamWalletInAFi[aFiContract][wallet].isActive = false;
    emit DeactivateTeamWallet(aFiContract, wallet);
  }

  /**
   * @notice To reactivated a team wallet.
   * @param aFiContract Address of the AFi contract.
   * @param wallet address that has to be reactivated.
   */
  function reActivateTeamWallet(
    address aFiContract,
    address wallet
  ) external onlyOwner nonReentrant {
    // solhint-disable-next-line reason-string

    validateFlag(isAFiActive[aFiContract]);
    validateFlag(teamWalletInAFi[aFiContract][wallet].isPresent);
    validateFlag(!teamWalletInAFi[aFiContract][wallet].isActive);
    totalActiveTeamWallets[aFiContract]++;

    // Write to contract storage
    teamWalletInAFi[aFiContract][wallet].isActive = true;
    emit ReActivateTeamWallet(aFiContract, wallet);
  }

  function getTotalActiveWallets(
    address aFiContract
  ) public view override returns (uint) {
    return totalActiveTeamWallets[aFiContract];
  }

  /**
   * @notice To add given wallet address to the contract storage.
   * @param aFiContract Address of the AFi contract.
   * @param _teamWallets An array of wallet addresses.
   */
  function setTeamWallets(
    address aFiContract,
    address[] memory _teamWallets
  ) external override nonReentrant {
    validateFlag(!onlyOnce[aFiContract]);
    validateCaller(msg.sender, aFiContract);
    uint tWalletLength = _teamWallets.length;

    // Check if the team wallets have already been set
    require(totalActiveTeamWallets[aFiContract] == 0, "AFS12");

    totalActiveTeamWallets[aFiContract] = tWalletLength;

    for (uint i = 0; i < tWalletLength; i++) {
      address wallet = _teamWallets[i];

      TeamWallet memory tWallet = teamWalletInAFi[aFiContract][wallet];

      if (!tWallet.isPresent) {
        teamWalletsOfAFi[aFiContract].push(wallet);
        tWallet.isPresent = true;
        tWallet.isActive = true;
        tWallet.walletAddress = wallet;

        // Write to contract storage
        teamWalletInAFi[aFiContract][wallet] = tWallet;

        emit TeamWalletActive(wallet, true);
      } else {
        // only for duplicacy
        totalActiveTeamWallets[aFiContract]--;
      }
    }
    onlyOnce[aFiContract] = true;
  }

  function setActiveRebalancedStatus(
    address aFiContract,
    bool status
  ) external override {
    aFiVaultCaller(aFiContract, aFiManager);
    isActiveRebalanced[aFiContract] = status;
    emit SetActiveRebalancedStatus(aFiContract, status);
  }

  /**
   * @notice Returns the team wallet details.
   * @param aFiContract Address of the AFi contract.
   * @param _wallet Team wallet address.
   * @return isActive Boolean indicating whether to set the wallet to either active/inactive.
   * @return isPresent Boolean indicating the present status of the wallet.
   */
  function getTeamWalletDetails(
    address aFiContract,
    address _wallet
  ) public view override returns (bool isActive, bool isPresent) {
    return (
      teamWalletInAFi[aFiContract][_wallet].isActive,
      teamWalletInAFi[aFiContract][_wallet].isPresent
    );
  }

  /**
   * @notice Returns the array of team wallet addresses.
   * @param aFiContract Address of the AFi contract.
   * @return _teamWallets Array of teamWallets.
   */
  function getTeamWalletsOfAFi(
    address aFiContract
  ) public view override returns (address[] memory _teamWallets) {
    _teamWallets = teamWalletsOfAFi[aFiContract];
  }

  function isAFiActiveRebalanced(
    address aFiContract
  ) external view override returns (bool _isActiveRebalanced) {
    _isActiveRebalanced = isActiveRebalanced[aFiContract];
  }

  /**
   * @notice To set the AFi contract status.
   * @dev Requirements: It can be invoked only by the contract owner.
   * @param aFiContract Address of the AFiContract.
   * @param active status for afiContracts.
   */
  function setAFiActive(address aFiContract, bool active) external override {
    require(msg.sender == aFiContract || msg.sender == owner(), "AFS04");
    // Check if the contract is already active and trying to activate it again
    require(active != isAFiActive[aFiContract], "AFS14");
    isAFiActive[aFiContract] = active;
    emit SetAFiActive(aFiContract, isAFiActive[aFiContract]);
  }

  /**
   * @notice syncs the pool data of a token to the pool data of aficontract.
   * @param afiContract address of the afi contract.
   * @param tok address of the token to sync the pool data.
   * @param aaveTok address of the aave pool.
   * @param compComet compound v3 comet address of tok.
   * @param compTok address of the compound pool.
   */
  function afiSync(
    address afiContract,
    address tok,
    address aaveTok,
    address compComet,
    address compTok
  ) external override {
    validateCaller(msg.sender, afiContract);
    aaveTokenCopy[afiContract][tok] = aaveTok;
    compoundCometCopy[afiContract][tok] = compComet;
    compoundCopy[afiContract][tok] = compTok;
  }

  function balanceCompound(
    address tok,
    address afiContract
  ) internal view returns (uint) {
    return IERC20(compoundCopy[afiContract][tok]).balanceOf(afiContract);
  }

  function balanceCompoundInToken(
    address tok,
    address afiContract
  ) internal view returns (uint) {
    // Mantisa 1e18 to decimals
    uint b = balanceCompound(tok, afiContract);
    if (b >= 1) {
      b = b*(Compound(compoundCopy[afiContract][tok]).exchangeRateStored())/(
        1e18
      );
    }
    return b;
  }

  /**
   * @notice Returns the balance of Aave tokens in the AFi contract for a specific token.
   * @param tok The address of the token.
   * @param afiContract The address of the AFi contract.
   * @return The Aave token balance.
   */
  function balanceAave(address tok, address afiContract) internal view returns (uint) {
    return IERC20(aaveTokenCopy[afiContract][tok]).balanceOf(afiContract);
  }

  /**
   * @notice Returns the balance of a specific token in the AFi contract.
   * @param tok The address of the token.
   * @param afiContract The address of the AFi contract.
   * @return The token balance.
   */
  function balance(address tok, address afiContract) internal view returns (uint) {
    return IERC20(tok).balanceOf(afiContract);
  }

  /**
   * @notice Returns the balance of compound v3 wrapper tokens in the AFi contract for a specific token.
   * @param tok The address of the token.
   * @param afiContract The address of the AFi contract.
   * @return bal cUSDCv3 token balance.
   */
  function balanceCompV3(address tok, address afiContract) public view returns (uint256 bal) {
    if (compoundCometCopy[afiContract][tok] != address(0)) {
      bal = IERC20(compoundCometCopy[afiContract][tok]).balanceOf(afiContract);
    }
  }

  /**
   * @notice To set the AFiManager contract address.
   * @dev Requirements: It can be invoked only by the platform wallet.
   * @param _aFiManager Address of the AFiManager contract.
   */
  function setAFiManager(address _aFiManager) external onlyOwner {
    validateAddress(_aFiManager, address(0));
    aFiManager = _aFiManager;
    emit SetAFiManager(address(this), _aFiManager);
  }

  /**
   * @notice Calculates the total value of a token locked by the AFi contract in USD.
   * @param tok The address of the token.
   * @param afiContract The address of the AFi contract.
   * @return The total value of the token in USD.
   */
  function calcPoolValue(
    address tok,
    address afiContract
  ) public view override returns (uint) {
    (uint256 price, uint256 multiplier) = getPriceInUSDC(tok);
    (uint256 bal, uint256 uTokensDecimal) = tvlRead(tok, afiContract);
    if (price != 0) {
      bal = (bal)*(uint(price));
      bal = ((bal*(10 ** uTokensDecimal))/(multiplier));
    }
    return bal;
  }

  function tvlRead(
    address tok,
    address afiContract
  ) public override view returns (uint, uint256) {
    uint uTokensDecimal = IERC20(tok).decimals();
    validateGreaterEqual(18, uTokensDecimal);
    uTokensDecimal = 18 - uTokensDecimal;
    uint bal = balanceOfUnderlyingInPoolsAndContract(tok, afiContract);
    return (bal, uTokensDecimal);
  }

  /**
   * @notice Calculates the balance of underlying tokens in the AFi contract for a specific token.
   * @param tok The address of the token.
   * @param afiContract The address of the AFi contract.
   * @return The balance of underlying tokens.
   */
  function calculateBalanceOfUnderlying(
    address tok,
    address afiContract
  ) external view override returns (uint) {
    return balanceOfUnderlyingInPoolsAndContract(tok, afiContract);
  }

  /**
   * @notice Calculates the balance of underlying tokens in the AFi contract for a specific token.
   * @param tok The address of the token.
   * @param afiContract The address of the AFi contract.
   * @return bal balance of underlying tokens.
   */
  function balanceOfUnderlyingInPoolsAndContract(
    address tok,
    address afiContract
  ) internal view returns (uint256 bal) {

    if (compoundCopy[afiContract][tok] != address(0) && provider[afiContract][tok] == 1) {
      bal += balanceCompoundInToken(tok, afiContract);
    }
    if (aaveTokenCopy[afiContract][tok] != address(0) && provider[afiContract][tok] == 2) {
      bal += balanceAave(tok, afiContract);
    }
    if (compoundCometCopy[afiContract][tok] != address(0) && provider[afiContract][tok] == 3){
      bal += balanceCompV3(tok, afiContract);
    }
    bal = (bal + balance(tok, afiContract));
  }

  // returns the TVL by the external protocols
  function calcPoolValueSomeRead(
    address tok,
    address afiContract,
    uint256 price,
    uint256 multiplier
  ) internal view returns (uint) {
    (uint bal, uint256 uTokensDecimal)  = tvlRead(tok, afiContract);
    if (price != 0) {
      bal = (bal-(balance(tok, afiContract)))*(uint(price));
      bal = ((bal*(10 ** uTokensDecimal))/(multiplier));
    }
    return bal;
  }

  /**
   * @notice Calculates the total value of all tokens locked by the AFi contract in USD.
   * @param afiContract The address of the AFi contract.
   * @return The total value of all tokens in USD.
   */
  function calculatePoolInUsd(
    address afiContract
  )
    external
    view
    override
    returns (
      uint
    )
  {
    uint bal = 0;
    address[] memory uToken = new address[](IAFi(afiContract).getUTokens().length);
    uToken = IAFi(afiContract).getUTokens();
    (, address[] memory iToken) = IAFi(afiContract).getInputToken();
    uint uLen = uToken.length > iToken.length ? uToken.length : iToken.length;
    uint256 cSwapCounter = IAFi(afiContract).getcSwapCounter();
    uint256 preDepositStableBalance;
    for (uint i = 0; i < uLen; i++) {
      if (uLen == iToken.length) {
        if (i < uToken.length) {
          bal = bal+(calcPoolValue(uToken[i], afiContract));
        }
        preDepositStableBalance = convertInUSDAndTok(iToken[i], preDepositedInputTokens[afiContract][cSwapCounter][iToken[i]], false);
        bal = bal+(preDepositStableBalance);
      } else {
        if (i < iToken.length) {
        preDepositStableBalance = convertInUSDAndTok(iToken[i], preDepositedInputTokens[afiContract][cSwapCounter][iToken[i]], false);
        bal = bal+(preDepositStableBalance);
        }
        bal = bal+(calcPoolValue(uToken[i], afiContract));
      }
    }
    return bal;
  }

  /**
   * @notice Validates and returns the number of decimals for a given token.
   * @param tok The address of the token.
   * @return The number of decimals.
   */
  function validateAndGetDecimals(address tok) public view override returns (uint256) {
    uint uTokensDecimal = IERC20(tok).decimals();
    validateGreaterEqual(18, uTokensDecimal);
    return (18 - uTokensDecimal);
  }

  /**
   * @notice Validates that two addresses are equal.
   * @param add1 The first address.
   * @param add2 The second address.
   */
  function validateCaller(address add1, address add2) internal pure {
    require(add1 == add2, "AFS27");
  }

  /**
   * @notice Validates a boolean flag.
   * @param flag The boolean flag to validate.
   */
  function validateFlag(bool flag) internal pure {
    require(flag, "AFS28");
  }

  /**
   * @notice Validates that one value is greater than or equal to another.
   * @param val1 The first value.
   * @param val2 The second value.
   */
  function validateGreaterEqual(uint256 val1, uint256 val2) internal pure {
    require(val1 >= val2, "AFS19");
  }

  /**
   * @notice Rearranges the staking of uTokens, withdrawing from existing pools and staking in recommended pools.
   * @param aFiContract The address of the AFi contract.
   */
  //90% uTokens will be staked on pool and 10% remain on contract
  function rearrange(
    address aFiContract,
    address[] memory underlyingTokens,
    uint256[] memory newProviders
  ) external override {
    (, , uint256 productType ) = IAFi(aFiContract).getTVLandRebalContractandType();
    if(productType == 2) {
      validateCaller(msg.sender, uniswapOracleV3);
      require(underlyingTokens.length == newProviders.length, "AFS03");
      for (uint i = 0; i < underlyingTokens.length; i++) {
        address uToken = underlyingTokens[i];
        uint256 newProvider = newProviders[i];

        // Assuming provider is now a mapping to uint
        if (newProvider != provider[aFiContract][uToken]) {
          _isStaked[aFiContract][uToken] = false;
          _withdrawAll(aFiContract, uToken);
        }

        if (balance(uToken, aFiContract) > 0) {
          // 1 for COMPOUND II, 2 for AAVE, 3 for COMPOUND III

          if (newProvider == 2) {
            // AAVE
            if (aaveTokenCopy[aFiContract][uToken] != address(0)) {
              _isStaked[aFiContract][uToken] = true;
              IAFi(aFiContract)._supplyAave(
                uToken,
                (balance(uToken, aFiContract)*(90))/(100)
              );
            }
          }
          else if (newProvider == 3) {
            // Compound III
            if (compoundCometCopy[aFiContract][uToken] != address(0)) {
              _isStaked[aFiContract][uToken] = true;

              IAFi(aFiContract)._supplyCompV3(
                uToken,
                (balance(uToken, aFiContract)*(90))/(100)
              );
            }
          } else if (newProvider == 1) {
            // COMPOUND II
            if (compoundCopy[aFiContract][uToken] != address(0)) {
              _isStaked[aFiContract][uToken] = true;
              IAFi(aFiContract)._supplyCompound(
                uToken,
                (balance(uToken, aFiContract)*(90)/(100))
              );
            }
          } 
        }

        provider[aFiContract][uToken] = newProvider;
      }
    }
  }

  /**
   * @notice Checks the staked status of a uToken.
   * @param aFiContract The address of the AFi contract.
   * @param uToken The address of the uToken.
   * @return Whether the uToken is staked or not.
   */
  function getStakedStatus(
    address aFiContract,
    address uToken
  ) public view override returns (bool) {
    return _isStaked[aFiContract][uToken];
  }

   function calculateShares(
    address afiContract,
    uint256 amount,
    uint256 prevPool,
    uint256 _totalSupply,
    address iToken,
    uint256 currentDepositNAV
  ) external view override returns (uint256 shares, uint256 newDepositNAV) {
    validateAddress(afiContract, address(0));
    validateCaller(msg.sender, afiContract);
    (uint256 price, uint256 dec) = getPriceInUSDC(iToken);
    uint8 decimals = 18 - IERC20(iToken).decimals();
    uint256 amountCheck = (amount * price * (10 ** decimals)) / dec;

    if (_totalSupply == 0) {
      shares = amountCheck / 100;
    } else {
      require(prevPool > 0, "AFB00007");
      shares = (amountCheck * _totalSupply) / prevPool;
    }

    if (currentDepositNAV == 0) {
      if (_totalSupply == 0) {
        newDepositNAV = 1000000;
      } else {
        newDepositNAV = (prevPool * 10000) / _totalSupply;
      }
    } else {
      uint256 newNav = (prevPool * 10000) / _totalSupply;
      newDepositNAV =
        ((currentDepositNAV * _totalSupply) + (shares * newNav)) /
        (_totalSupply + shares);
    }
  }


  function handleRedemption(RedemptionParams memory params, uint _shares, uint swapMethod) external override returns (uint256 redemptionFromContract) {
    validateAddress(params.baseContract, address(0));
    aFiVaultCaller(msg.sender, params.baseContract);
    if (swapMethod == 1) {
      redemptionFromContract = checkUnderlyingToken(
        params.baseContract, 
        params.r, 
        params.oToken, 
        params.cSwapCounter, 
        params.uTokens, 
        params.deadline, 
        params.minimumReturnAmount
      );
    } else if (swapMethod == 2) {
      redemptionFromContract = checkiToken(
        params.r, 
        params.oToken, 
        params.cSwapCounter, 
        params.iTokens, 
        params.deadline, 
        params.minimumReturnAmount
      );
    } else {
      redemptionFromContract = swapForOtherProduct(
        params.baseContract, 
        params.r, 
        params.oToken, 
        params.deadline, 
        params.minimumReturnAmount, 
        params.uTokens
      );
    }

    uint256 redemptionNAV = (params._pool * 10000) / params.tSupply;
    if (redemptionNAV > params.depositNAV) {
      redemptionFromContract -= _distributeProfitShare(
        params.baseContract, 
        _shares, 
        params.oToken, 
        params.depositNAV, 
        redemptionNAV
      );
    }

    return redemptionFromContract;
  }

  /**
   * @notice Swaps tokens in the AFi contract for another product.
   * @param afiContract The address of the AFi contract.
   * @param r A parameter for the swap.
   * @param oToken The address of the output token.
   * @param deadline The deadline for the swap.
   * @return The total amount swapped from the contract.
   */
  function swapForOtherProduct(
    address afiContract,
    uint r,
    address oToken,
    uint deadline,
    uint[] memory minimumReturnAmount,
    address[] memory uToken
  ) public override returns (uint256) {
    validateAddress(afiContract, address(0));
    aFiVaultCaller(afiContract,uniswapOracleV3);
    (, rebal, ) = IAFi(afiContract).getTVLandRebalContractandType();
    redFromContract = 0;
    _afiTemp = afiContract;

    preDep = IAFiManager(aFiManager).inputTokenUSD(IAFi(afiContract), IAFi(afiContract).getcSwapCounter(), IAFiStorage(address(this)));
    checkIfTokenPresent(
      uToken,
      r,
      oToken,
      deadline,
      afiContract,
      minimumReturnAmount
    );
    swapInternal(uToken, r, oToken, deadline, minimumReturnAmount);

    return redFromContract;
  }

  function calculateRedemptionFromContract(
    address afiContract,
    address tok,
    uint256 r
  )
    public
    view
    override
    returns (
      uint256 price,
      bool stakedStatus,
      uint256 redemptionValueFromContract,
      uint256 multiplier,
      uint256 tvl
    )
  {
    validateAddress(afiContract, address(0));
    (price, multiplier) = getPriceInUSDC(tok);
    (tvl, , ) = IAFi(afiContract).getTVLandRebalContractandType();
    uint256 tokPreDep = preDepositedInputTokens[afiContract][IAFi(afiContract).getcSwapCounter()][tok];
    if (price != 0) {
      uint256 uTokensDecimal  = validateAndGetDecimals(tok);
      uint256 tokPredepInUSD = (tokPreDep)*(uint(price));
      tokPredepInUSD = ((tokPredepInUSD*(10 ** uTokensDecimal))/(multiplier));
      redemptionValueFromContract = (((r)*(calcPoolValue(tok, afiContract) - tokPredepInUSD))*(multiplier));
      redemptionValueFromContract = (redemptionValueFromContract)/(
        ((tvl - preDep)*(uint(price))*(10 ** (validateAndGetDecimals(tok))))
      );
      tvl -= preDep;
      return (
        price,
        getStakedStatus(afiContract, tok),
        redemptionValueFromContract,
        multiplier,
        tvl
      );
    }
  }

  /**
   * @notice Withdraws funds from pools and performs an internal swap.
   * @param tok The address of the token.
   * @param r A parameter for the withdrawal.
   * @param oToken The address of the output token.
   * @param redemptionFromContract The redemption amount from the contract.
   * @param deadline The deadline for the withdrawal.
   */
  function withdrawFromPools(
    address tok,
    uint r,
    address oToken,
    uint redemptionFromContract,
    uint deadline,
    uint256 price,
    uint256 multiplier,
    uint256 minimumReturnAmount,
    uint256 tvl
  ) internal {
    address midTok = IUniswapOracleV3(uniswapOracleV3).getMidToken(tok);
    {
      uint256 redemptionFromPool = calcPoolValueSomeRead(
        tok,
        _afiTemp,
        price,
        multiplier
      );
      redemptionFromPool = redemptionFromPool*(r)*(multiplier);
      redemptionFromPool = (redemptionFromPool)/(
        (tvl)*(uint(price))*(10 ** validateAndGetDecimals(tok))
      );

      _withdrawSome(_afiTemp, tok, redemptionFromPool);
    }

    if (midTok == oToken) {
      //update unipool
      IPassiveRebal(rebal).updateuniPool(tok, midTok);
    }

    internalSwap(_afiTemp, tok, oToken, midTok, deadline, redemptionFromContract,
    minimumReturnAmount);
  }

  function internalSwap(
    address afiContract,
    address tok,
    address oToken,
    address midTok,
    uint deadline,
    uint redeem,
    uint minimumReturnAmount
  ) internal {
    if (tok != oToken) {
      if (IERC20(tok).balanceOf(afiContract) > 0) {
        redFromContract += IAFi(afiContract).swapViaStorageOrManager(
          tok,
          oToken,
          redeem,
          deadline,
          midTok,
          minimumReturnAmount
        );
      }
    } else {
      redFromContract = redFromContract + redeem;
    }
  }

  /**
   * @notice Returns pool to invest in, amount to invest and
   * deducted amount if there is a fluctuation or insufficient balance(rare case).
   */
  function _withdrawSome(
    address afiContract,
    address tok,
    uint _amount
  ) internal returns (bool withdrawal) {
    if (aaveTokenCopy[afiContract][tok] != address(0) && provider[afiContract][tok] == 2) {
      if (balanceAave(tok, afiContract) >= 1) {
        if (_amount > balanceAave(tok, afiContract)) {
          revert("Insufficient redemption balance!");
        } else {
          IAFi(afiContract)._withdrawAave(tok, _amount);
        }
      }
      return true;
    }

    if (compoundCopy[afiContract][tok] != address(0) && provider[afiContract][tok] == 1) {
      if (balanceCompound(tok, afiContract) >= 1) {
        if (_amount > balanceCompoundInToken(tok, afiContract)) {
          revert("Insufficient redemption balance!");
        } else {
          IAFi(afiContract)._withdrawCompound(tok, _amount);
        }
      }
      return true;
    }

    if (compoundCometCopy[afiContract][tok] != address(0) && provider[afiContract][tok] == 3) {
      if (balanceCompV3(tok, afiContract) >= 1) {
        if (_amount > balanceCompV3(tok, afiContract)) {
          revert("Insufficient redemption balance!");
        } else {
          IAFi(afiContract)._withdrawCompoundV3(tok, _amount);
        }
      }
      return true;
    }
  }

  /**
   * @notice Checks if a token is of type USDC and retrieves its price and multiplier.
   * @param tok The address of the token.
   * @return The token's price and multiplier.
   */
  function getPriceInUSDC(
    address tok
  ) public view override returns (uint256, uint256) {
    return (IUniswapOracleV3(uniswapOracleV3).getPriceInUSDC(tok));
  }

  /**
   * @notice Checks if a specific token is present, calculates redemption, and withdraws from pools.
   * @param uToken An array of token addresses.
   * @param r A parameter for calculation.
   * @param oToken The address of the output token.
   * @param deadline The deadline for the swap.
   * @param afiContract The address of the AFi contract.
   */
  function checkIfTokenPresent(
    address[] memory uToken,
    uint r,
    address oToken,
    uint deadline,
    address afiContract,
    uint[] memory minimumReturnAmount
  ) internal {
    uint256 redemptionFromContract;
    bool stakedStatus;
    uint256 price;
    uint256 multiplier;
    uint256 tvl;
    {
      (uint index, bool present) = ArrayUtils.indexOf(uToken, oToken);
      if (present) {
        (
          price,
          stakedStatus,
          redemptionFromContract,
          multiplier,
          tvl
        ) = calculateRedemptionFromContract(afiContract, uToken[index], r);
        if (!stakedStatus) {
          redFromContract += redemptionFromContract;
        }
        if (stakedStatus) {
          if (price != 0) {
            withdrawFromPools(
              uToken[index],
              r,
              oToken,
              redemptionFromContract,
              deadline,
              price,
              multiplier,
              minimumReturnAmount[index],
              tvl
            );
          }
        }
      }
    }
  }

  function swapInternal(
    address[] memory uToken,
    uint r,
    address oToken,
    uint deadline,
    uint[] memory minimumReturnAmount
  ) internal {
    address midTok;
    uint256 price;
    bool stakedStatus;
    uint256 redemptionFromContract;
    uint256 multiplier;
    uint256 tvl;
    unchecked {
      for (uint n = 0; n < uToken.length; n++) {
        (
          price,
          stakedStatus,
          redemptionFromContract,
          multiplier,
          tvl
        ) = calculateRedemptionFromContract(_afiTemp, uToken[n], r);

        if (!stakedStatus && uToken[n] != oToken) {
          if (IERC20(uToken[n]).balanceOf(_afiTemp) > 0) {
            midTok = IUniswapOracleV3(uniswapOracleV3).getMidToken(uToken[n]);

            if (midTok == oToken) {
              //update unipool
              IPassiveRebal(rebal).updateuniPool(uToken[n], midTok);
            }
            if (redemptionFromContract <= IERC20(uToken[n]).balanceOf(_afiTemp)) {
              redFromContract += IAFi(_afiTemp).swapViaStorageOrManager(
                uToken[n],
                oToken,
                redemptionFromContract,
                deadline,
                midTok,
                minimumReturnAmount[n]
              );
            } else {
              redFromContract += IAFi(_afiTemp).swapViaStorageOrManager(
                uToken[n],
                oToken,
                IERC20(uToken[n]).balanceOf(_afiTemp),
                deadline,
                midTok,
                minimumReturnAmount[n]
              );
            }
          }
          continue;
        }
        if (stakedStatus && uToken[n] != oToken) {
          if (price != 0) {
            withdrawFromPools(
              uToken[n],
              r,
              oToken,
              redemptionFromContract,
              deadline,
              price,
              multiplier,
              minimumReturnAmount[n],
              tvl
            );
          }
        }
      }
    }
  }

  /**
   * @notice _withdrawAll Function withdraws whole diposited balance from the pools(protocols).
   * @dev It should only be called by the AFiManager, AFiStorage contracts.
   * @param tok address of the token to withdraw from protocols.
   */
  function _withdrawAll(
    address afiContract,
    address tok
  ) public override returns (bool) {
    require(msg.sender == uniswapOracleV3 || msg.sender == aFiManager, "AFS02");
    uint poolBal;
    if (provider[afiContract][tok] == 1 && compoundCopy[afiContract][tok] != address(0)) {
      if (balanceCompound(tok, afiContract) >= 1) {
        IAFi(afiContract)._withdrawCompound(
          tok,
          balanceCompoundInToken(tok, afiContract)-(1)
        );
      }
    }
    if (provider[afiContract][tok] == 2 && aaveTokenCopy[afiContract][tok] != address(0)) {
      poolBal = balanceAave(tok, afiContract);
      if (poolBal >= 1) {
        IAFi(afiContract)._withdrawAave(tok, poolBal);
      }
    }
    if (provider[afiContract][tok] == 3 && compoundCometCopy[afiContract][tok] != address(0)) {
      poolBal = balanceCompV3(tok, afiContract);
      if (poolBal >= 1) {
        IAFi(afiContract)._withdrawCompoundV3(tok, poolBal);
      }
    }
    return true;
  }

  function getAFiOracle() external view override returns (address) {
    return uniswapOracleV3;
  }

  function checkUnderlyingToken(
    address afiContract,
    uint r,
    address oToken,
    uint256 _cSwapCounter,
    address[] memory uTokens,
    uint256 deadline,
    uint256[] memory minimumAmountOut
  ) internal returns (uint256 available) {
    uint256 redemptionFromContract;
    uint256 balToConsider;
    preDep = IAFiManager(aFiManager).inputTokenUSD(IAFi(afiContract), IAFi(afiContract).getcSwapCounter(), IAFiStorage(address(this)));

    for (uint i; i < uTokens.length; i++) {

      (, , redemptionFromContract, ,) = calculateRedemptionFromContract(
        afiContract,
        uTokens[i],
        r
      );

      balToConsider =
        IERC20(uTokens[i]).balanceOf(afiContract) - preDepositedInputTokens[afiContract][_cSwapCounter][uTokens[i]];
      if (balToConsider >= redemptionFromContract && uTokens[i] != oToken) {
        available += IAFi(afiContract).swapViaStorageOrManager(
          uTokens[i],
          oToken,
          redemptionFromContract,
          deadline,
          WETH,
          minimumAmountOut[i]
        );
      } else if (balToConsider >= redemptionFromContract && uTokens[i] == oToken) {
        available += redemptionFromContract;
      } else {
        revert("Insufficient balance!");
      }
    }
  }

  /**
   * @notice Distributes the profit share amongst team wallets.
   * @dev Only a specific address can call this function.
   * @param aFiContract Address of the aFi contract.
   * @param share The profit amount that is distributed amongst team wallets.
   * @param oToken Output token.
   * @param depositNAV NAV (Net Asset Value) at the time of deposit.
   * @param redemptionNAV NAV at the time of redemption.
   * @return totalProfitShare Returns the total profit share that was distributed amongst the team wallets.
   */
  function _distributeProfitShare(
    address aFiContract,
    uint share,
    address oToken,
    uint256 depositNAV,
    uint256 redemptionNAV
  ) internal  returns (uint totalProfitShare) {
    uint256 profitShare;
    (uint256 price, uint256 multiplier) = getPriceInUSDC(oToken);

    if (price != 0) {
      profitShare = ((redemptionNAV-(depositNAV))*(share)*(multiplier))/(
        (
          (uint(price))*(
            10 ** (validateAndGetDecimals(oToken))
          )
        )*(10000)
      );
      totalProfitShare =  profitDistribution(
        aFiContract,
        profitShare,
        oToken
      );
    }
  }

   function profitDistribution(
    address aFiContract,
    uint256 profitShare,
    address oToken
  ) internal returns (uint totalProfitShare) {
    // Investor has made a profit, let us distribute the profit share amongst team wallet
    address[] memory _teamWallets = getTeamWalletsOfAFi(
      aFiContract
    );
    uint256 teamProfitShare;
    uint256 totalProfit = IUniswapOracleV3(uniswapOracleV3).getTotalProfit();
    uint256 daoProfit = IUniswapOracleV3(uniswapOracleV3).getDaoProfit();
    // Alpha Creator gets 4% of gain

    uint totalActive = getTotalActiveWallets(aFiContract);
    if (totalActive > 1) {
      teamProfitShare = (profitShare*(totalProfit - daoProfit))/(
        (totalActive - 1)*(100)
      );
    }

    for (uint i = 0; i < _teamWallets.length; i++) {
      (bool isActive, ) = getTeamWalletDetails(
        aFiContract,
        _teamWallets[i]
      );

      if (isActive) {
        if (i == 0) {
          // /**
          //   Always at i==0 address must be of Aarna Dao
          //   Aarna DAO gets 6% of gain
          // */
          uint256 daoProfitShare = (profitShare*(daoProfit))/(100);
          profitShare = daoProfitShare;
        } else {
          profitShare = teamProfitShare;
        }
        
        totalProfitShare = totalProfitShare + profitShare;
        
        IAFi(aFiContract).sendProfitOrFeeToManager(
          _teamWallets[i],
          profitShare,
          oToken
        );
        
        emit ProfitShareDistributed(aFiContract, _teamWallets[i], profitShare);
      }
    }
  }


 

  function setStablesWithdrawalLimit(address afiContract, uint256 limit) external onlyOwner {
    require(limit > 0, "AFS07");

    stablesWithdrawalLimit[afiContract] = limit;
  }

  function setMaxSwapFee(uint256 fee) external onlyOwner {
    require(fee > 0 && fee < 10000, "AFS08");
    maxSwapFee = fee; // 100 = 1%
  }


  /**
   * @notice Checks the iToken and performs necessary deductions.
   * @dev This external function checks the iToken and performs deductions based on specified conditions.
   * @param r The redemption amount to be deducted.
   * @param oToken The address of the output token.
   * @param deadline The deadline for the transaction.
   * @return redemptionBalance The amount to be deducted.
   */
  function checkiToken(
    uint r,
    address oToken,
    uint256 _cSwapCounter,
    address[] memory token,
    uint256 deadline,
    uint256[] memory minimumReturnAmount
  ) internal returns (uint256 redemptionBalance) {
    redemptionBalance = preDepositedInputTokens[msg.sender][_cSwapCounter][oToken];
    uint temp = convertInUSDAndTok(oToken, redemptionBalance, false);

    if (temp >= r) {
      redemptionBalance = convertInUSDAndTok(oToken, r, true);
      preDepositedInputTokens[msg.sender][_cSwapCounter][oToken] -= redemptionBalance;
    } else {
      temp = r - temp;
      uint temp1;
      for (uint i; i < token.length; i++) {
        if (
          preDepositedInputTokens[msg.sender][_cSwapCounter][token[i]] > 0 &&
          token[i] != oToken
        ) {
          temp1 = convertInUSDAndTok(token[i], temp, true);
          if (temp1 > preDepositedInputTokens[msg.sender][_cSwapCounter][token[i]]) {
            redemptionBalance += IAFi(msg.sender).swapViaStorageOrManager(
              token[i],
              oToken,
              preDepositedInputTokens[msg.sender][_cSwapCounter][token[i]],
              deadline,
              WETH,
              minimumReturnAmount[i]
            );
            temp -= convertInUSDAndTok(token[i], preDepositedInputTokens[msg.sender][_cSwapCounter][token[i]], false);
            delete preDepositedInputTokens[msg.sender][_cSwapCounter][token[i]];
          } else {
            redemptionBalance += IAFi(msg.sender).swapViaStorageOrManager(
              token[i],
              oToken,
              temp1,
              deadline,
              WETH,
              minimumReturnAmount[i]
            );
            preDepositedInputTokens[msg.sender][_cSwapCounter][token[i]] -= temp1;
            delete temp;
            break;
          }

        }
      }
    }
    temp = (convertInUSDAndTok(oToken, r, true) * (10000 - maxSwapFee)) / 10000;
    if (
      redemptionBalance < temp || 
      (stablesWithdrawn[msg.sender][_cSwapCounter] + temp) > stablesWithdrawalLimit[msg.sender]
    ) {
      revert("Insufficient balance!");
    } else {
      stablesWithdrawn[msg.sender][_cSwapCounter] += temp;
    }
  }

  function convertInUSDAndTok(
    address tok,
    uint256 amt,
    bool usd
  ) public view override returns (uint256) {
    (uint256 price, uint256 decimal) = getPriceInUSDC(
      tok
    );
    uint iTokenDecimal = 18 - IERC20(tok).decimals();
    if (!usd) {
      return (
        ((amt)*(price))*(10 ** iTokenDecimal)/(decimal)
      );
    } else {
      return
        amt*(decimal)/((price)*(10 ** iTokenDecimal));
    }
  }

  function setPreDepositedInputToken(
    uint256 _cSwapCounter,
    uint256 _amount,
    address _oToken
  ) external override {
    preDepositedInputTokens[msg.sender][_cSwapCounter][_oToken] += _amount;
  }

  /**
   * @notice sets the pre-swap deposits of a specific stable token and request should come from afimanager.
   * @param aficontract Address of the afi vault.
   * @param _cSwapCounter value of the current cswap counter of the aficontract.
   * @param _amount of oToken.
   * @param _oToken address of oToken.
   */
  function setPreDepositedInputTokenInRebalance(
    address aficontract,
    uint256 _cSwapCounter,
    uint256 _amount,
    address _oToken
  ) external override {
    validateCaller(msg.sender, aFiManager);
    preDepositedInputTokens[aficontract][_cSwapCounter][_oToken] += _amount;
  }

  function deletePreDepositedInputToken(
    address aFiContract,
    address oToken,
    uint256 currentCounter
  ) external override {
    validateCaller(msg.sender, aFiManager);
    delete preDepositedInputTokens[aFiContract][currentCounter][oToken];
  }
  
  /**
   * @notice Returns the pre-swap deposits of a specific stable token.
   * @param stableToken Address of the stable token.
   * @return The amount of pre-swap deposits for the specified stable token.
   */
  function getPreSwapDepositsTokens(
    address aFiContract,
    uint256 _cSwapCounter,
    address stableToken
  ) external view override returns (uint256) {
    return preDepositedInputTokens[aFiContract][_cSwapCounter][stableToken];
  }

  function doSwapForThewhiteListRemoval(
    address tok,
    uint256 _cSwapCounter,
    address swapToken,
    uint256 deadline,
    uint256 minAmountOut
  ) external override {
    uint256 redemptionBalance = preDepositedInputTokens[msg.sender][_cSwapCounter][tok];
    uint256 balToConsider = IERC20(swapToken).balanceOf(msg.sender);
    IAFi(msg.sender).swapViaStorageOrManager(
      tok,
      swapToken,
      redemptionBalance,
      deadline,
      WETH,
      minAmountOut
    );
    balToConsider = IERC20(swapToken).balanceOf(msg.sender) - balToConsider;
    delete preDepositedInputTokens[msg.sender][_cSwapCounter][tok];
    preDepositedInputTokens[msg.sender][_cSwapCounter][swapToken] += balToConsider;
  }
}