// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

import {SafeERC20} from "./SafeERC20.sol";
import {OwnableDelayModule} from "./OwnableDelayModule.sol";
import "./OracleLibrary.sol";
import {IERC20Extended as IERC20} from "./IERC20Extended.sol";
import {ISwapRouter} from "./ISwapRouter.sol";
import "./ArrayUtils.sol";
import {IAFiStorage} from "./IAFiStorage.sol";

interface IAerodromePool {
  struct Observation {
    uint256 timestamp;
    uint256 reserve0Cumulative;
    uint256 reserve1Cumulative;
  }

  function observations(uint256 index) external view returns (Observation memory);
  function observationLength() external view returns (uint256);
  function token0() external view returns (address);
  function token1() external view returns (address);
}

/// @notice Aerodrome Router interface with `Route` struct
interface IAerodromeRouter {
  function poolFor(
    address tokenA,
    address tokenB,
    bool stable,
    address _factory
  ) external view returns (address pool);
}

interface IAFiManager {
  function getUTokenProportion(
    address aFiContract,
    address aFiStorage
  ) external view returns (uint256[] memory, uint256);

  function rebalanceController() external view returns (address);
}

interface IAFi {
  function sendProfitOrFeeToManager(
    address wallet,
    uint profitShare,
    address oToken
  ) external;
  function getProportions() external view returns (uint[] memory, uint[] memory);
  function getReinitializeStatus() external view returns (bool vaultReInitialized);
  function updateCp(uint256[] memory newCp) external;
}

interface IUniswapOracleV3 {
  function getTotalProfit() external view returns (uint256);
  function getDaoProfit() external view returns (uint256);
}

interface IPendlePYLpOracle {
  function getLpToAssetRate(address market, uint32 duration) external view returns (uint256);
  function getPtToAssetRate(address market, uint32 duration) external view returns (uint256);
}

contract AtvPassiveRebalanceStrategies is OwnableDelayModule {
  using SafeERC20 for IERC20;
  using ArrayUtils for uint[];
  using ArrayUtils for address[];

  address public afiManager;
  address public afiStorage;
  address public aFiOracle;
  address public atvStakingManager;
  bool internal paused;

  uint32 internal secondsAgo = 900;
  uint256 internal stalePricewindowLimit = 1 hours;
  uint256 internal preSwapDepositLimit;

  mapping(address => uint) internal stalePriceDelay;
  mapping(address => uint) internal strategyNumber;
  mapping(address => mapping(address => address)) internal tokenUniPool;
  mapping(address => address) internal priceOracles;
  mapping(address => mapping(address => DexChoice)) public tokenPairToDex;
  mapping(address => address) internal pauseDepositController;
  mapping(address => mapping(address => address)) public directPool;
  mapping(address => mapping(address => bool)) public directPoolExist;
  mapping(address => address) internal underlyingUniPoolToken;
  mapping(address => mapping(uint => bool)) public swapMethodPaused; // Mapping to keep track of paused swap methods
  mapping(address => mapping(address => uint24)) public _fee;

  address private constant WETH = 0x4200000000000000000000000000000000000006;
  address public constant PendlePYLpOracle = 0x9a9Fa8338dd5E5B2188006f1Cd2Ef26d921650C2;
  address public immutable aerodromeRouter = 0xcF77a3Ba9A5CA399B7c97c74d54e5b1Beb874E43;
  address public immutable aerodromeFactory = 0x420DD381b31aEf6683db6B902084cB0FFECe40Da;
  
  uint32 public duration = 900;
  // Enum for supported DEXs
  enum DexChoice {
    AERODROME,
    ONEINCH,
    NONE
  }

  struct StablePools {
    address[] _pools;
  }

  struct UniPoolData {
    address[] _underlyingTokens; //uTokens
    address[] _underlyingUniPoolToken; //uToken - MiddleToken
    address[] _underlyingUniPool; //uToken - Middle Token Pool
    address[] _underlyingPoolWithWETH; //uToken pool with WETH
    StablePools[] stablePools; //Stable - Middle pool
    address[] stableWethPool; //Stalbe - WETH Token
  }

  /**
   * @param account Address of the account that paused the contract.
   */
  event Paused(address account);
  /**
   * @param account Address of the account that unpaused the contract.
   */
  event Unpaused(address account);
  event UpdateOracleData(address _uToken, address _oracleAddress);
  event IntializeStalePriceDelay(address[] underlyingTokens, uint256[] _stalePriceDelay);
  event SetstalepriceWindowLimit(uint256 _stalePWindow);
  event UpdateRebalStrategyNumberByOwner(address indexed aFiContract,uint updatedStrategy);
  event SetPauseDepositController(address indexed afiContract, address _pauseDepositController);
  event UpdatePreSwapDepositLimit(uint256 _preSwapDepositLimit);
  event UpdateSecAgo(uint32 sec);
  event SetStorage(address _afiStorage);
  event SetManager(address _aFiManager);
  event SetOracle(address _aFiOracle);
  event UpdateGlobalFees(
    address[] tokenA,
    address[] tokenB,
    uint24[] fees
  );
  event PauseSwapMethods(
    address afiContract,
    uint[] methods,
    bool[] statuses
  );
  event SetPriceOracle(
    address[] iToken,
    address[] underlyingToken,
    address[] iTokenOracle,
    address[] underlyingTokenOracle
  );


  modifier contractUnpaused() {
    require(!paused, "AFP02");
    _;
  }

  modifier contractPaused() {
    require(paused, "AFP03");
    _;
  }

  modifier onlySpecificAddress(address _addr) {
    require(msg.sender == _addr, "AFPR: Not authorized"); //solhint-disable-line reason-string
    _;
  }

  function addressZero(address add1) internal pure {
    require(add1 != address(0), "AF03");
  }

  function greaterEqualComparison(uint256 valA, uint256 valB) internal pure {
    require(valA >= valB, "AB24");
  }

  /**
   * @notice To pause the contract.
   * @dev Requirements: It can only be invoked by owner.
   */
  function pause() external contractUnpaused onlyOwner {
    paused = true;
    emit Paused(msg.sender);
  }

  /**
   * @notice To resume/unpause the contract.
   * @dev Requirements: It can only be invoked by the owner.
   */
  function unPause() external contractPaused onlyOwner {
    paused = false;
    emit Unpaused(msg.sender);
  }

  /**
   * @notice Returns a new proportions according to the strategy
   * @param _aFiContract AFi Contract.
   * @param _aFiManager AFi Manager.
   * @param _aFiStorage AFi Storage.
   * @param _tokens underlying tokens.
   * @return proportions i.e. a new proportions array according to the strategy.
   */
  function applyRebalForProportions(
    address _aFiContract,
    address _aFiManager,
    address _aFiStorage,
    address[] memory _tokens,
    uint256 strategy
  ) public view returns (uint[] memory proportions, uint256 totalProp) {
    uint[] memory uTokenProportions = new uint[](_tokens.length);
    if (strategy == 1) {
      (uTokenProportions, totalProp) = IAFiManager(_aFiManager).getUTokenProportion(
        _aFiContract,
        _aFiStorage
      );
    }
    return (uTokenProportions, totalProp);
  }

  /**
   * @notice Returns the pause status of the contract.
   * @return bool pause status of the contract.
   */
  function getPauseStatus() external view returns (bool) {
    return paused;
  }

  /**
   * @notice Returns current enabled strategy for passive rebalance.
   * @param aFiContract afi Contract.
   * @return uint strategy number.
   */
  function getRebalStrategyNumber(address aFiContract) public view returns (uint) {
    return strategyNumber[aFiContract];
  }

  /**
   * @notice Updates the current enabled strategy for passive rebalance for an afi contract.
   * @dev The contract must not be paused. It can only be invoked by owner of the contract.
   * @param aFiContract afi Contract.
   * @param updatedStrategy uint new strategy numebr to update.
   */
  function updateRebalStrategyNumberByOwner(
    address aFiContract,
    uint updatedStrategy
  ) external contractUnpaused onlyOwner {
    addressZero(aFiContract);
    strategyNumber[aFiContract] = updatedStrategy;
    emit UpdateRebalStrategyNumberByOwner(aFiContract, updatedStrategy);
  }

  /**
   * @notice Sets the address of the AFiStorage contract.
   * @dev Only the owner of the contract can invoke this function.
   * @param _afiStorage The address of the AFiStorage contract.
   */
  function setStorage(address _afiStorage) external onlyOwner {
    addressZero(_afiStorage);
    afiStorage = _afiStorage;
    emit SetStorage(_afiStorage);
  }

  /**
   * @notice Sets the address of the AFiManager contract.
   * @dev Only the owner of the contract can invoke this function.
   * @param _aFiManager The address of the AFiManager contract.
   */
  function setManager(address _aFiManager) external onlyOwner {
    addressZero(_aFiManager);
    afiManager = _aFiManager;
    emit SetManager(_aFiManager);
  }

   /**
   * @notice Sets the address of the AFiManager contract.
   * @dev Only the owner of the contract can invoke this function.
   * @param _aFiOracle The address of the AFiManager contract.
   */
  function setOracle(address _aFiOracle) external onlyOwner {
    addressZero(_aFiOracle);
    aFiOracle = _aFiOracle;
    emit SetOracle(_aFiOracle);
  }

  
   /**
   * @notice Sets the address of the AtvStakingManager contract.
   * @dev Only the owner of the contract can invoke this function.
   * @param _atvStakingManager The address of the AtvStakingManager contract.
   */
  function setAtvStakingManager(address _atvStakingManager) external onlyOwner {
    require(_atvStakingManager != address(0), "AFP05");
    atvStakingManager = _atvStakingManager;
  }

  /**
   * @notice Retrieves the UniSwap pool address for a given pair of tokens.
   * @param tok The address of the first token in the pair.
   * @param midTok The address of the second token in the pair.
   * @return Pool address.
   */
  function getPool(address tok, address midTok) public view returns (address) {
    return tokenUniPool[tok][midTok];
  }

  function setDuration(uint32 _duration) external {
    require(
      msg.sender == owner() ||
        msg.sender == IAFiManager(afiManager).rebalanceController(),
      "NA"
    );
    duration = _duration;
  }

  function getPtToAssetRate(address market) external view returns (uint256) {
    uint256 rawRate = IPendlePYLpOracle(PendlePYLpOracle).getPtToAssetRate(market, duration);
    return rawRate;
  }

  function getNormalizedLpToAssetRate(address market) external view returns (uint256) {
    uint256 rawRate = IPendlePYLpOracle(PendlePYLpOracle).getLpToAssetRate(market, duration);
    return rawRate;
  }

  // the purpose of the function is to encode the pool data that follows the structure declared in IAFi.sol
  function swapData(
    ISwapRouter.ExactInputSingleParams memory swapData
  ) internal pure returns (bytes memory) {
    return (abi.encode(swapData));
  }

  function swapDataMultiHop(
    ISwapRouter.ExactInputParams memory swapData
  ) internal pure returns (bytes memory) {
    return (abi.encode(swapData));
  }

  function initUniStructure(
    address[] memory inputTokens,
    bytes memory _poolData
  ) external {
    require(
      msg.sender == owner() ||
        msg.sender == IAFiManager(afiManager).rebalanceController() ||
        msg.sender == afiManager,
      "AFP00"
    );
    UniPoolData memory pooldata = abi.decode(_poolData, (UniPoolData));
    uint pLen = pooldata._underlyingUniPoolToken.length;
    uint iLen = pooldata.stablePools.length;

    unchecked {
      for (uint i = 0; i < pLen; i++) {
        updateUniTok(
          pooldata._underlyingTokens[i],
          pooldata._underlyingUniPoolToken[i],
          pooldata._underlyingUniPool[i]
        );
        updateUniTok(
          pooldata._underlyingUniPoolToken[i],
          pooldata._underlyingTokens[i],
          pooldata._underlyingUniPool[i]
        );
        updateUniTok(
          pooldata._underlyingTokens[i],
          WETH,
          pooldata._underlyingPoolWithWETH[i]
        );
        updateUniTok(
          WETH,
          pooldata._underlyingTokens[i],
          pooldata._underlyingPoolWithWETH[i]
        );
      }
    }
    unchecked {
      for (uint i = 0; i < iLen; i++) {
        for (uint j = 0; j < pLen; j++) {
          updateUniTok(
            inputTokens[i],
            pooldata._underlyingUniPoolToken[j],
            pooldata.stablePools[i]._pools[j]
          );
          updateUniTok(
            pooldata._underlyingUniPoolToken[j],
            inputTokens[i],
            pooldata.stablePools[i]._pools[j]
          );
        }
        updateUniTok(inputTokens[i], WETH, pooldata.stableWethPool[i]);
        updateUniTok(WETH, inputTokens[i], pooldata.stableWethPool[i]);
      }
    }
  }

  function updateUniTok(address tok, address midTok, address uniPool) internal {
    tokenUniPool[tok][midTok] = uniPool;
  }

  function encodePoolData(
    UniPoolData memory pooldata
  ) external pure returns (bytes memory) {
    return (abi.encode(pooldata));
  }

  function setPriceOracle(
    address[] memory iToken,
    address[] memory underlyingToken,
    address[] memory iTokenOracle,
    address[] memory underlyingTokenOracle
  ) external onlyOwner {
    uint256 iTokenLength = iToken.length;
    uint256 underlyingTokenLength = underlyingToken.length;
    uint uLen = underlyingTokenLength > iTokenLength
      ? underlyingTokenLength
      : iTokenLength;
    priceOracles[WETH] = 0x71041dddad3595F9CEd3DcCFBe3D1F4b0a16Bb70;
    for (uint256 i = 0; i < uLen; i++) {
      if (iTokenLength == uLen) {
        if (i < underlyingTokenLength) {
          priceOracles[underlyingToken[i]] = underlyingTokenOracle[i];
        }
        priceOracles[iToken[i]] = iTokenOracle[i];
      } else {
        if (i < iTokenLength) {
          priceOracles[iToken[i]] = iTokenOracle[i];
        }
        priceOracles[underlyingToken[i]] = underlyingTokenOracle[i];
      }
    }
    emit SetPriceOracle(
      iToken,
      underlyingToken,
      iTokenOracle,
      underlyingTokenOracle
    );
  }

  function setDexForTokenPair(
    address tokenIn,
    address tokenOut,
    DexChoice dex
  ) external {
    require(msg.sender == IAFiManager(afiManager).rebalanceController(), "AFP09");
    require(tokenIn != address(0) && tokenOut != address(0), "Invalid token address");
    require(dex != DexChoice.NONE, "Invalid DEX choice");
    tokenPairToDex[tokenIn][tokenOut] = dex;
  }

  function getDexType(
    address tokenIn,
    address tokenOut
  ) external view returns (DexChoice) {
    DexChoice dex = tokenPairToDex[tokenIn][tokenOut];
    return dex == DexChoice.NONE ? DexChoice.AERODROME : dex; // Default to aerodrom
  }

  function getPriceOracle(address tok) external view returns (address) {
    return priceOracles[tok];
  }

  function removeToken(
    address[] memory tokens,
    address token
  ) external pure returns (address[] memory) {
    (, bool isPresent) = ArrayUtils.indexOf(tokens, token);
    if (isPresent) {
      return ArrayUtils.remove(tokens, token);
    }
    return tokens;
  }

  function getMinimumAmountOut(
    address _tokenIn,
    uint256 _amountIn,
    address _tokenOut,
    address _uniPool
  ) public view returns (uint256 amountOut) {
    address uniPool;

    if (_tokenIn == (WETH) || _tokenOut == (WETH)) {
      amountOut = estimateAmountOut(_tokenIn, uint128(_amountIn), _tokenOut, false);
    } else if (
      _tokenIn == underlyingUniPoolToken[_tokenIn] ||
      _tokenOut == underlyingUniPoolToken[_tokenIn]
    ) {
      uniPool = getPool(_tokenIn, underlyingUniPoolToken[_tokenIn]);
      if (_uniPool != address(0)) {
        uniPool = _uniPool;
      }
      amountOut = estimateAmounts(
        _tokenIn,
        _amountIn,
        underlyingUniPoolToken[_tokenIn],
        uniPool
      );
    } else if (directPoolExist[_tokenIn][_tokenOut] && directPool[_tokenIn][_tokenOut] != address(0)){
      amountOut = estimateAmountOut(_tokenIn, uint128(_amountIn), _tokenOut, true);
    } else {
      uniPool = getPool(_tokenIn, underlyingUniPoolToken[_tokenIn]);
      address unipoolOut = getPool(_tokenOut, underlyingUniPoolToken[_tokenIn]);
    
      amountOut = estimateAmounts(
        _tokenIn,
        _amountIn,
        underlyingUniPoolToken[_tokenIn],
        uniPool
      );
      amountOut = estimateAmounts(
        underlyingUniPoolToken[_tokenIn],
        amountOut,
        _tokenOut,
        unipoolOut
      );
    }
  }

  function estimateAmounts(
    address intok,
    uint256 amt,
    address outTok,
    address uniPool
  ) internal view returns (uint256) {
    uint256 _amountOut = estimateAmountOutMin(intok, uint128(amt), outTok, uniPool);
    return _amountOut;
  }

  /**
   * @notice To get the number of USDC tokens for aFi vault.
   * @param tokenIn Address of underlying token from set.
   * @param amountIn Amount of underlying token
   * @param tokenOut Address of the underlying token for aFi contract(USDC).
   */
  function estimateAmountOut(
    address tokenIn,
    uint128 amountIn,
    address tokenOut,
    bool isDirectPool
  ) public view returns (uint amountOut) {
    address _pool = tokenUniPool[tokenIn][tokenOut];
    if(isDirectPool){
      _pool = directPool[tokenIn][tokenOut];
    }
    addressZero(_pool);
    amountOut = getAmountOutMin(tokenIn, amountIn, tokenOut, _pool);
  }

  function estimateAmountOutMin(
    address tokenIn,
    uint128 amountIn,
    address tokenOut,
    address poolToConsider
  ) public view returns (uint amountOut) {
    address _pool = tokenUniPool[tokenIn][tokenOut];
    addressZero(_pool);
    amountOut = getAmountOutMin(tokenIn, amountIn, tokenOut, _pool);
  }
  function getTWAP(
    address tokenIn,
    address tokenOut,
    uint256 window,
    address _pool
) public view returns (uint256 price) {
    require(_pool != address(0), "Pool not registered");

    IAerodromePool pool = IAerodromePool(_pool);
    uint256 len = pool.observationLength();
    require(len >= 2, "Not enough observations");

    IAerodromePool.Observation memory latest = pool.observations(len - 1);
    IAerodromePool.Observation memory older = _findOldestWithinWindow(pool, window);

    uint256 delta0 = latest.reserve0Cumulative - older.reserve0Cumulative;
    uint256 delta1 = latest.reserve1Cumulative - older.reserve1Cumulative;

    require(delta0 > 0 && delta1 > 0, "Invalid deltas");

    address token0 = pool.token0();
    address token1 = pool.token1();

    uint8 dec0 = IERC20(token0).decimals();
    uint8 dec1 = IERC20(token1).decimals();

    if (tokenIn == token0 && tokenOut == token1) {
      price = (delta1 * (10 ** dec1)) / delta0;
    } else if (tokenIn == token1 && tokenOut == token0) {
      price = (delta0 * (10 ** dec0)) / delta1;
    } else {
      revert("Token pair not in pool");
    }
}

  function getAmountOut(
    address tokenIn,
    address tokenOut,
    uint256 amountIn,
    address _pool
  ) public view returns (uint256 amountOut) {
    uint256 price = getTWAP(tokenIn, tokenOut, 1800, _pool); // scaled by 1e18
    amountOut = (amountIn * price) / 1e18; // Final result in tokenOut's decimals
  }

  function _findOldestWithinWindow(IAerodromePool pool, uint256 window) internal view returns (IAerodromePool.Observation memory) {
    uint256 len = pool.observationLength();
    uint256 cutoff = block.timestamp - window;

    uint256 left = 0;
    uint256 right = len - 2;
    uint256 closest = right;

    while (left <= right) {
      uint256 mid = (left + right) / 2;
      IAerodromePool.Observation memory obs = pool.observations(mid);

      if (obs.timestamp <= cutoff) {
        closest = mid;
        left = mid + 1;
      } else {
        if (mid == 0) break;
        right = mid - 1;
      }
    }

    IAerodromePool.Observation memory result = pool.observations(closest);
    require(result.timestamp <= cutoff, "Window too long");
    return result;
  }

  function _scale(uint8 fromDecimals, uint8 toDecimals) internal pure returns (uint256) {
    if (fromDecimals >= toDecimals) {
      return 10 ** (18 + fromDecimals - toDecimals);
    } else {
      return 10 ** (18 - (toDecimals - fromDecimals));
    }
  }

  function getAmountOutMin(
    address tokenIn,
    uint128 amountIn,
    address tokenOut,
    address poolToConsider
  ) internal view returns (uint amountOut) {
    amountOut = getAmountOut( tokenIn, tokenOut, amountIn, poolToConsider);
  }

  function directPools(
    address[] memory inputTokens,
    address[] memory directPairWith,
    address[] memory pool
  ) external {
    require(
      msg.sender == owner() ||
        msg.sender == IAFiManager(afiManager).rebalanceController() ||
        msg.sender == afiManager,
      "AFP00"
    );

    require(
      inputTokens.length == directPairWith.length && 
      directPairWith.length == pool.length,
      "AFP001"
    );
  
    unchecked {
      for (uint i = 0; i < inputTokens.length; i++) {
        require(inputTokens[i] != address(0) && directPairWith[i] != address(0), "AFP000");
        directPoolExist[inputTokens[i]][directPairWith[i]] = true;
        directPoolExist[directPairWith[i]][inputTokens[i]] = true;
        directPool[inputTokens[i]][directPairWith[i]] = pool[i];
        directPool[directPairWith[i]][inputTokens[i]] = pool[i];
      }
    }
  }

  function updateMidToken(address[] memory tok, address[] memory midTok) external {
    require(
      msg.sender == owner() ||
        msg.sender == afiManager ||
        msg.sender == IAFiManager(afiManager).rebalanceController(),
      "NA"
    );
    for (uint i; i < tok.length; i++) {
      addressZero(tok[i]);
      addressZero(midTok[i]);
      underlyingUniPoolToken[tok[i]] = midTok[i];
    }
  }

  /**
   * @notice Updates the time interval in seconds for retrieving historical prices.
   * @dev Only the contract owner can call this function.
   * @param sec New time interval in seconds.
   */
  function updateSecAgo(uint32 sec) external onlyOwner {
    secondsAgo = sec;
    emit UpdateSecAgo(sec);
  }

  function getSecAgo() external view returns (uint256) {
    return secondsAgo;
  }

  function getMidToken(address tok) external view returns (address) {
    return underlyingUniPoolToken[tok];
  }

  /**
   * @notice Updates the global fees for Uniswap V3 pool operations.
   * @dev Only the contract owner can call this function.
   * @param fees New fee value to set for the token pair.
   */
  function updateGlobalFees(
    address[] memory tokenA,
    address[] memory tokenB,
    uint24[] memory fees
  ) external onlyOwner {
    for (uint i; i < fees.length; i++) {
      _fee[tokenA[i]][tokenB[i]] = fees[i];
    }
    emit UpdateGlobalFees(
      tokenA,
      tokenB,
      fees
    );
  }

  /**
   * @notice updateOracleData Function updates the oracle address of the new underlying token
   * @dev it should be called by the AFiManager contract only.
   * @param _uToken  i.e the new underlying token.
   * @param _oracleAddress i.e the address of the oracle contract.
   */
  function updateOracleData(address _uToken, address _oracleAddress) external {
    addressZero(_uToken);
    require(msg.sender == owner() || msg.sender == afiManager, "AFP01");
    priceOracles[_uToken] = _oracleAddress;
    emit UpdateOracleData(_uToken, _oracleAddress);
  }

  function setPauseDepositController(
    address afiContract,
    address _pauseDepositController
  ) external onlyOwner {
    require(_pauseDepositController != address(0) && afiContract != address(0), "AFP08");
    pauseDepositController[afiContract] = _pauseDepositController;
    emit SetPauseDepositController(
      afiContract,
      _pauseDepositController
    );
  }

  function getPauseDepositController(
    address afiContract
  ) external view returns (address) {
    return pauseDepositController[afiContract];
  }

  /**
   * @notice Initializes the stale price delay for multiple underlying tokens.
   * @dev Only the contract owner can call this function.
   * @param underlyingTokens Array of underlying tokens.
   * @param _stalePriceDelay Array of stale price delays corresponding to each underlying token.
   */
  function intializeStalePriceDelay(
    address[] memory underlyingTokens,
    uint256[] memory _stalePriceDelay
  ) external {
    require(
      msg.sender == owner() ||
        msg.sender == IAFiManager(afiManager).rebalanceController(),
      "NA"
    );
    require(underlyingTokens.length == _stalePriceDelay.length, "AFP07");
    for (uint i = 0; i < underlyingTokens.length; i++) {
      addressZero(underlyingTokens[i]);
      setSPDelay(underlyingTokens[i], _stalePriceDelay[i]);
    }
    emit IntializeStalePriceDelay(
      underlyingTokens,
      _stalePriceDelay
    );
  }

  function validateAndApplyRebalanceStrategy(
    address afiContract,
    address[] memory uTokens,
    uint256 toSwap,
    uint256 cSwapCounter
  ) external onlySpecificAddress(aFiOracle) returns (uint256) {
    greaterEqualComparison(toSwap, preSwapDepositLimit);

    (uint256[] memory uTokenProportions, ) = IAFi(afiContract).getProportions();

    bool vaultReInitialized = IAFi(afiContract).getReinitializeStatus();

    uint strategy = getRebalStrategyNumber(afiContract);
    uint256 _totalProp;
    // Rebal block starts
    if (strategy == 1 && cSwapCounter > 0 && !vaultReInitialized) {
      (uTokenProportions, _totalProp) = applyRebalForProportions(
        afiContract,
        afiManager,
        afiStorage,
        uTokens,
        strategy
      );
      IAFi(afiContract).updateCp(uTokenProportions);
    } else if (cSwapCounter == 0 || vaultReInitialized) {
      _totalProp = 10000000;
    }
    return (_totalProp);
  }

  function setSPDelay(address uToken, uint256 _stalePriceDelay) internal {
    require(_stalePriceDelay > stalePricewindowLimit, "AFP06");
    stalePriceDelay[uToken] = _stalePriceDelay;
  }

  function setstalepriceWindowLimit(uint256 _stalePWindow) external onlyOwner {
    stalePricewindowLimit = _stalePWindow;
    emit SetstalepriceWindowLimit(_stalePWindow);
  }

  function getstalepriceWindowLimit() external view returns (uint256) {
    return stalePricewindowLimit;
  }

  /**
   * @notice Gets the stale price delay for a specific underlying token.
   * @param uToken Address of the underlying token.
   * @return The stale price delay for the specified underlying token.
   */
  function getStalePriceDelay(address uToken) external view returns (uint256) {
    return stalePriceDelay[uToken];
  }

  /**
   * @notice Pauses / unpauses specific swap methods in the contract.
   * @dev Requirements: Can only be invoked by the Delay Module.
   * @param methods An array of swap method IDs to be paused or unpaused.
   * @param statuses The status to set (true to pause, false to unpause).
   */
  function pauseSwapMethods(
    address afiContract,
    uint[] memory methods,
    bool[] memory statuses
  ) external {
    require(msg.sender == delayModule, "Caller is not the Delay Module"); // Ensures only the Delay Module can call this function
    addressZero(afiContract);
    for (uint i = 0; i < methods.length; i++) {
      swapMethodPaused[afiContract][methods[i]] = statuses[i];
    }
    emit PauseSwapMethods(
      afiContract,
      methods,
      statuses
    );
  }

  /**
   * @notice Check if a swap method is paused.
   * @dev This function can be used in the `withdraw` function to validate if a swap method is paused.
   * @param swapMethod The ID of the swap method to check.
   */
  function isSwapMethodPaused(
    address afiContract,
    uint swapMethod
  ) public view returns (bool) {
    return swapMethodPaused[afiContract][swapMethod];
  }

  /**
   * @notice Updates the limit for pre-swap deposits.
   * @dev Only the contract owner can call this function.
   * @param _preSwapDepositLimit New limit for pre-swap deposits.
   */
  function updatePreSwapDepositLimit(uint256 _preSwapDepositLimit) external onlyOwner {
    preSwapDepositLimit = _preSwapDepositLimit;
    emit UpdatePreSwapDepositLimit(_preSwapDepositLimit);
  }

  function getPreSwapDepositLimit() external view returns (uint256) {
    return preSwapDepositLimit;
  }
}
