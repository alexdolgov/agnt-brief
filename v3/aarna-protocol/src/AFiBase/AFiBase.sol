// SPDX-License-Identifier: GPL-3.0
pragma solidity =0.8.0;
pragma abicoder v2;
import {IAFiStorage} from "./IAFiStorage.sol";
import {SafeMath} from "./SafeMath.sol";
import {Ownable} from "./Ownable.sol";
import {ReentrancyGuard} from "./ReentrancyGuard.sol";
import {SafeERC20} from "./SafeERC20.sol";
import {AggregatorV3Interface} from "./AggregatorV3Interface.sol";
import {ILendingPool} from "./ILendingPool.sol";
import {IPoolAddressesProvider} from "./ILendingPoolAddressesProvider.sol";
import {ISwapRouter} from "./ISwapRouter.sol";
import "./IAFi.sol";
import "./IPassiveRebal.sol";
import "./ArrayUtils.sol";
import "./IUniswapV3Factory.sol";

interface Compound {
  function mint(uint mintAmount) external returns (uint);

  function redeem(uint redeemTokens) external returns (uint);

  function redeemUnderlying(uint redeemAmount) external returns (uint);

  function exchangeRateStored() external view returns (uint);
}

interface IAFiFactory {
  function setIfUserInvesting(address user, address afiContract) external;

  function hasUserInvestedAlready(
    address afiContract,
    address user
  ) external view returns (bool);

  function withdrawAndResetInvestmentStatus(address user, address afiContract) external;
}

struct Val {
  uint value;
}

enum ActionType {
  Deposit, // supply tokens
  Withdraw // borrow tokens
}

enum AssetDenomination {
  Wei // the amount is denominated in wei
}

enum AssetReference {
  Delta // the amount is given as a delta from the current value
}

struct AssetAmount {
  bool sign; // true if positive
  AssetDenomination denomination;
  AssetReference ref;
  uint value;
}

struct ActionArgs {
  ActionType actionType;
  uint accountId;
  AssetAmount amount;
  uint primaryMarketId;
  uint secondaryMarketId;
  address otherAddress;
  uint otherAccountId;
  bytes data;
}

struct Info {
  address owner; // The address that owns the account
  uint number; // A nonce that allows a single address to control many accounts
}

struct Wei {
  bool sign; // true if positive
  uint value;
}

abstract contract DyDx {
  function getAccountWei(
    Info memory account,
    uint marketId
  ) public view virtual returns (Wei memory);

  function operate(Info[] memory, ActionArgs[] memory) public virtual;
}

interface LendingPoolAddressesProvider {
  function getLendingPool() external view returns (address);

  function getLendingPoolCore() external view returns (address);
}

contract AFiVariableStorage {
  uint internal pool;
  address[] public token; // deposit stable coin
  mapping(address => address) internal compound; // compound address for various u tokens
  mapping(address => address) internal aaveToken; // aaveToken address for various u tokens
  mapping(address => address) internal priceOracles;
  mapping(address => address) internal underlyingUniPoolToken;
  mapping(address => mapping(address => address)) internal tokenUniPool;
  mapping(address => uint) internal dToken;
  uint8 internal constant FEE_PERCENT = 1;
  mapping(address => uint) public depositNAV;
  mapping(address => uint) internal _balances;
  address payable internal constant PLATFORM_WALLET =
    payable(0xB4c710a52228707338Cb0674101B1c5f511324fC);
  mapping(address => bool) public whitelistedTokens;
  address[] internal uTokens;
  uint[] internal uTokenProportions;
  uint[] internal defaultProportion;
}

contract AFiBase is ReentrancyGuard, Ownable, AFiVariableStorage, IAFi {
  using SafeERC20 for IERC20;
  using ArrayUtils for uint[];
  using ArrayUtils for address[];
  using SafeMath for uint;
  IPassiveRebal internal rebalContract;
  IAFiStorage internal aFiStorage;
  uint internal lastRebalTime;
  address public aFiManager;
  bool internal depositPaused;
  bool internal withdrawPaused;
  uint internal typeOfProduct; // 1: one type product, 2: second and 3: for Algo
  address internal aarnaEngine;
  bool internal isBase;
  string private _name;
  string private _symbol;
  uint internal _totalSupply;
  uint internal afterSwap;
  address public factory;
  address internal _uniPool;
  uint8 internal slippageOrder;

  address private constant WETH = 0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2;
  address private constant poolAddressProvider =
    0x2f39d218133AFaB8F2B819B1066c7E434Ad94E9e;
  ISwapRouter internal constant UNISWAP_EXCHANGE =
    ISwapRouter(0xE592427A0AEce92De3Edee1F18E0157C05861564);
  address private constant dydx = 0x1E0447b19BB6EcFdAe1e4AE1694b0C3659614e4e;

  address internal tLContract;
  mapping(address => uint256) public userLockedAmount;

  event Deposit(address indexed investor, uint256 amount, address depToken);
  event Withdraw(address indexed investor, uint256 amount, address withdrawnToken);
  event Initialized(address indexed afiContract);
  event InitializedPlatformData(address indexed afiContract);
  event InitializedToken(address indexed afiContract);
  event SetAFiManager(address indexed afiContract, address manager);
  event SupplyDydx(address indexed afiContract, address tok, uint amount);
  event SupplyAave(address indexed afiContract, address tok, uint amount);
  event SupplyCompound(address indexed afiContract, address tok, uint amount);
  event WithdrawAave(address indexed afiContract, address tok, uint amount);
  event WithdrawCompound(address indexed afiContract, address tok, uint amount);
  event WithdrawDydx(address indexed afiContract, address tok, uint amount);
  event UpdatePoolData(address indexed afiContract, bytes data);
  event WithdrawRebalanceAmount(address indexed afiContract, address uTokenToRemove);
  event SetInitialValues(address indexed afiContract);
  event UpdateTimeLockContract(address indexed afiContract, address newTL);
  event UpdateShares(address indexed user, uint256 amount, bool lock);
  event SlippageFactorUpdated(uint256 sFactor);

  function onlySpecificAddress(address _addr) internal view {
    require(msg.sender == _addr, "AB09");
  }

  function nonBase() internal view {
    require(!isBase, "AB03");
  }

  function isValid(bool isDeposit, uint amount, address tok) internal view {
    require(amount > 0, "AB06");
    require(whitelistedTokens[tok], "AB07"); // Added validation to check if the token is whitelisted
    if (isDeposit) {
      require(!depositPaused, "AB28");
    } else {
      require(!withdrawPaused, "AB29");
    }
  }

  function initialize(
    address newOwner,
    string memory tokenName,
    string memory tokenSymbol,
    bytes memory data,
    bool _isActiveRebalanced,
    IAFiStorage _aFiStorage
  ) external override nonReentrant {
    nonBase();
    require(newOwner != address(0), "AB04");

    _name = tokenName;
    _symbol = tokenSymbol;
    _transferOwnership(newOwner);
    aFiStorage = _aFiStorage;

    IAFi.PoolsData memory pooldata = abi.decode(data, (IAFi.PoolsData));
    typeOfProduct = pooldata._typeOfProduct;
    lastRebalTime = block.timestamp;
    factory = msg.sender;
    setInitialValues(data);

    defaultProportion = uTokenProportions;
    IAFiStorage(_aFiStorage).setAFiActive(address(this), true);

    IAFiStorage(_aFiStorage).setActiveRebalancedStatus(
      address(this),
      _isActiveRebalanced
    );
    IAFiStorage(_aFiStorage).setAPR(address(this), pooldata._apr);
    IAFiStorage(_aFiStorage).afiContractInitUpdate(address(this), 1);

    emit Initialized(address(this));
  }

  function initializeToken(
    address[] memory iToken,
    address[] memory iTokenOracle,
    bytes memory _poolData
  ) external override nonReentrant {
    nonBase();
    uint iLen = iToken.length;
    IAFi.UnderlyingData memory pooldata = abi.decode(_poolData, (IAFi.UnderlyingData));
    uint pLen = pooldata._underlyingUniPoolToken.length;
    unchecked {
      for (uint i = 0; i < iLen; i++) {
        token.push(iToken[i]);
        whitelistedTokens[iToken[i]] = true;
        priceOracles[iToken[i]] = iTokenOracle[i];
        for (uint j = 0; j < pLen; j++) {
          updateUniTok(
            iToken[i],
            pooldata._underlyingUniPoolToken[j],
            pooldata.stablePools[i]._pools[j]
          );
        }
        updateUniTok(iToken[i], WETH, pooldata.stableWethPool[i]);
      }
    }
    priceOracles[WETH] = 0x5f4eC3Df9cbd43714FE2740f5E3616155c5b8419;
    aFiStorage.afiContractInitUpdate(address(this), 2);
    isBase = true;
    emit InitializedToken(address(this));
  }

  function initializePlatformData(
    address[] memory _teamWallets,
    IPassiveRebal _rebalContract,
    bool _isPassiveRebalanced,
    address _aFiManager,
    address _aarnaEngine
  ) external override nonReentrant {
    nonBase();
    aFiManager = _aFiManager;
    aarnaEngine = _aarnaEngine;
    rebalContract = _rebalContract;
    rebalContract.setPassiveRebalancedStatus(address(this), _isPassiveRebalanced);
    aFiStorage.setTeamWallets(address(this), _teamWallets);
    aFiStorage.afiContractInitUpdate(address(this), 3);

    emit InitializedPlatformData(address(this));
  }

  /**
   * @notice To pause the contract.
   * @dev Requirements: It can only be invoked by the Owner wallet.
   * @param isDeposit True if we want to pause deposit otherwise false if want to pause withdraw.
   */
  function pause(bool isDeposit) external onlyOwner {
    if (isDeposit) {
      depositPaused = true;
    } else {
      withdrawPaused = true;
    }
    emit Paused(msg.sender, isDeposit);
  }

  /**
   * @notice To resume/unpause the contract.
   * @dev Requirements: It can only be invoked by the Owner wallet.
   * @param isDeposit True if we want to pause deposit otherwise false if want to pause withdraw.
   */
  function unPause(bool isDeposit) external onlyOwner {
    if (isDeposit) {
      depositPaused = false;
    } else {
      withdrawPaused = false;
    }
    emit Unpaused(msg.sender, isDeposit);
  }

  /**
   * @notice Returns the paused status of the contract.
   */
  function isPaused() external view override returns (bool, bool) {
    return (depositPaused, withdrawPaused);
  }

  /**
   * @notice To set the AFiManager contract address.
   * @dev Requirements: It can be invoked only by the platform wallet.
   * @param _aFiManager Address of the AFiManager contract.
   */
  function setAFiManager(address _aFiManager) external {
    onlySpecificAddress(PLATFORM_WALLET);
    require(_aFiManager != address(0), "AB05"); //solhint-disable-line reason-string
    aFiManager = _aFiManager;
    emit SetAFiManager(address(this), _aFiManager);
  }

  function updateuniPool(address tok, address midTok) external override {
    require(msg.sender == address(aFiStorage) || msg.sender == aFiManager, "NA");
    _uniPool = tokenUniPool[tok][midTok];
  }

  function getRebalContract() external view override returns (address) {
    return address(rebalContract);
  }

  function getTVL() external view override returns (uint256) {
    return pool;
  }

  function getMidToken(address tok) external view override returns (address) {
    return underlyingUniPoolToken[tok];
  }

  function getPool(
    address tok,
    address midTok
  ) external view override returns (address) {
    return tokenUniPool[tok][midTok];
  }

  function deposit(
    uint amount,
    address iToken,
    uint deadline,
    uint[] memory slippageFactor
  ) external nonReentrant {
    isValid(true, amount, iToken);
    IERC20(iToken).safeTransferFrom(msg.sender, address(this), amount);
    amount = amount.sub(takeFee(amount, iToken));
    uint shares = 0;
    uint256 amountCheck;
    applySwapsAndPassiveRebal(iToken, amount, deadline, slippageFactor);

    if (typeOfProduct == 2) {
      aFiStorage.rearrange(address(this));
    }

    pool = aFiStorage.calculatePoolInUsd(address(this));

    if (_totalSupply == 0) {
      shares = (pool).div(100);
    } else {
      amountCheck = pool - afterSwap;
      shares = (amountCheck.mul(_totalSupply)).div(afterSwap);
    }
    require(shares >= 1e17, "AB10");
    uint256 tsupplybefore = _totalSupply;
    uint256 totalSupplyafter = _totalSupply.add(shares);

    if (depositNAV[msg.sender] == 0) {
      if (_totalSupply == 0) {
        depositNAV[msg.sender] = 1000000;
      } else {
        depositNAV[msg.sender] = (afterSwap.mul(10000)).div(tsupplybefore);
      }
    } else {
      uint256 newNav = (afterSwap.mul(10000)).div(tsupplybefore);
      depositNAV[msg.sender] =
        ((depositNAV[msg.sender] * tsupplybefore) + (shares * newNav)) /
        (totalSupplyafter);
    }

    afterSwap = pool;
    _totalSupply = totalSupplyafter;
    _balances[msg.sender] = _balances[msg.sender].add(shares);

    if (!(IAFiFactory(factory).hasUserInvestedAlready(msg.sender, address(this)))) {
      IAFiFactory(factory).setIfUserInvesting(msg.sender, address(this));
    }

    emit Deposit(msg.sender, amount, iToken);
  }

  function applySwapsAndPassiveRebal(
    address iToken,
    uint amount,
    uint _deadline,
    uint256[] memory slippageFactor
  ) internal {
    bool isPassiveRebalEnabled = rebalContract.isAFiPassiveRebalanced(address(this));
    uint strategy = rebalContract.getRebalStrategyNumber(address(this));

    uint256 uTokenLen = uTokens.length;
    uint[] memory tokenProportions = new uint[](uTokenLen);
    tokenProportions = uTokenProportions;

    if (isPassiveRebalEnabled && strategy == 0) {
      tokenProportions = defaultProportion;
    }

    unchecked {
      for (uint i = 0; i < uTokenLen; i++) {
        // For all inactive tokens uTokenProportions[i] == 0
        if (uTokenProportions[i] >= 1) {
          uint amountAsPerProportion = (amount.mul(tokenProportions[i])).div(10000000);
          // Initiate Swap via OneInchExchange

          if (underlyingUniPoolToken[uTokens[i]] == iToken) {
            _uniPool = tokenUniPool[uTokens[i]][underlyingUniPoolToken[uTokens[i]]];
          }
          if (iToken != uTokens[i]) {
            updateSlippageOrder(1);
            uniswapV3Router(
              iToken,
              uTokens[i],
              amountAsPerProportion,
              _deadline,
              underlyingUniPoolToken[uTokens[i]],
              slippageFactor
            );
          }
        }
      }
    }

    uint rebalPeriod = rebalContract.getRebalPeriod(address(this));
    // Rebel block starts
    if (
      typeOfProduct == 2 &&
      isPassiveRebalEnabled &&
      (block.timestamp - lastRebalTime >= rebalPeriod) &&
      strategy == 1
    ) {
      uTokenProportions = rebalContract.applyRebalForProportions(
        address(this),
        aFiManager,
        address(aFiStorage),
        strategy,
        uTokens
      );
      lastRebalTime = block.timestamp;
    }
  }

  function withdraw(
    uint _shares,
    address oToken,
    uint deadline,
    uint[] memory slippageFactor
  ) external nonReentrant {
    isValid(false, _shares, oToken);
    uint ibalance = _balances[msg.sender];
    require(ibalance.sub(userLockedAmount[msg.sender]) >= _shares, "AB11");
    require(_shares >= 1e17,"AB31");
    pool = aFiStorage.calculatePoolInUsd(address(this));
    updateSlippageOrder(2);

    // Calc to redeem before updating balances
    uint r = (pool.mul(_shares)).div(_totalSupply);

    uint256 redFromContract = aFiStorage.swapForOtherProduct(
      address(this),
      r,
      oToken,
      deadline,
      slippageFactor
    );

    uint256 redemptionNAV = ((pool).mul(10000)).div(_totalSupply);
    if(redemptionNAV > depositNAV[msg.sender] ){    
    redFromContract -=  IAFiManager(aFiManager)._distributeProfitShare(
        address(aFiStorage),
        address(this),
        _shares,
        oToken,
        depositNAV[msg.sender],
        redemptionNAV
      );
    }

    _totalSupply = _totalSupply.sub(_shares);
    _balances[msg.sender] = _balances[msg.sender].sub(_shares);
    require(IERC20(oToken).balanceOf(address(this)) >= redFromContract, "AB00");
    IERC20(oToken).safeTransfer(msg.sender, redFromContract);

    // When all invested tokens are withdrawn reset depositNAV
    if (_balances[msg.sender] == 0 && userLockedAmount[msg.sender] == 0) {
      depositNAV[msg.sender] = 0;
      IAFiFactory(factory).withdrawAndResetInvestmentStatus(msg.sender, address(this));
    }
    
    afterSwap = aFiStorage.calculatePoolInUsd(address(this));
    emit Withdraw(msg.sender, _shares, oToken);
  }

  function swapViAFiStorage(
    address from,
    address to,
    uint amount,
    uint deadline,
    address midTok,
    uint[] memory slippageFactor,
    uint8 counter
  ) external override returns (uint256) {
    require(msg.sender == address(aFiStorage) || msg.sender == aFiManager, "AB12");
    updateSlippageOrder(counter);
    uint256 _amountOut = uniswapV3Router(
      from,
      to,
      amount,
      deadline,
      midTok,
      slippageFactor
    );
    return _amountOut;
  }

  function getUTokenIndex(address uToken) internal view returns (uint256) {
    (uint uTokenIndex, ) = uTokens.indexOf(uToken);
    return uTokenIndex;
  }

  /**
   * @notice To initiate a swap via the Uniswap exchange contract.
   * @dev The contract must not be paused. It can only be invoked by the AFiManager contract.
   * @param _tokenIn The source token which is swapped for the destination token.
   * @param _tokenOut The destination token to which the from token is swapped into.
   * @param _amountIn Amount of from token for swapping.
   * @param _maxTime max time for swaps.
   */
  function uniswapV3Router(
    address _tokenIn,
    address _tokenOut,
    uint _amountIn,
    uint _maxTime,
    address middleToken,
    uint256[] memory slippageFactor
  ) internal returns (uint amountOut) {
    //approval
    approval(_tokenIn, address(UNISWAP_EXCHANGE), _amountIn);
    uint256 slippageAmount;

    if(slippageOrder == 1){
      slippageAmount  = (_amountIn.mul(slippageFactor[0])).div(100);
    }else if(slippageOrder == 2){
      slippageAmount  = (_amountIn.mul(slippageFactor[getUTokenIndex(_tokenIn)])).div(100);
    }else if(slippageOrder == 3){
      slippageAmount = IAFiManager(aFiManager).uTokenslippage(address(this), _tokenIn);
      slippageAmount  = (_amountIn.mul(slippageAmount)).div(100);
    }

    slippageAmount = _amountIn - slippageAmount;
   
    uint256 minimumAmountOut = aFiStorage.caculateMinOutForUniswap(address(this), _tokenIn, _tokenOut, slippageAmount, middleToken, _uniPool);
  
    if (minimumAmountOut > 0) {
      if (_tokenIn == WETH || _tokenOut == WETH) {
        address poolTok;
        if(_tokenIn == WETH){
          poolTok = _tokenOut;
        }else{
          poolTok = _tokenIn;
        }
        ISwapRouter.ExactInputSingleParams memory params = ISwapRouter
          .ExactInputSingleParams({
            tokenIn: _tokenIn,
            tokenOut: _tokenOut,
            // pool fee 
            fee: IUniswapV3Pool(tokenUniPool[poolTok][WETH]).fee(),
            recipient: address(this),
            deadline: _maxTime,
            amountIn: _amountIn,
            amountOutMinimum: minimumAmountOut,
            // NOTE: In production, this value can be used to set the limit
            // for the price the swap will push the pool to,
            // which can help protect against price impact
            sqrtPriceLimitX96: 0
          });
        amountOut = UNISWAP_EXCHANGE.exactInputSingle(params);
      } else if (_tokenIn == middleToken || _tokenOut == middleToken) {
        ISwapRouter.ExactInputSingleParams memory params = ISwapRouter
          .ExactInputSingleParams({
            tokenIn: _tokenIn,
            tokenOut: _tokenOut,
            // pool fee 
            fee: IUniswapV3Pool(_uniPool).fee(),
            recipient: address(this),
            deadline: _maxTime,
            amountIn: _amountIn,
            amountOutMinimum: minimumAmountOut,
            // NOTE: In production, this value can be used to set the limit
            // for the price the swap will push the pool to,
            // which can help protect against price impact
            sqrtPriceLimitX96: 0
          });
        amountOut = UNISWAP_EXCHANGE.exactInputSingle(params);
      } else {
        ISwapRouter.ExactInputParams memory params = ISwapRouter.ExactInputParams({
          path: abi.encodePacked(
            _tokenIn,
            IUniswapV3Pool(tokenUniPool[_tokenIn][middleToken]).fee(),
            middleToken,
            IUniswapV3Pool(tokenUniPool[_tokenOut][middleToken]).fee(),
            _tokenOut
          ),
          recipient: address(this),
          deadline: _maxTime,
          amountIn: _amountIn,
          amountOutMinimum: minimumAmountOut
        });
        amountOut = UNISWAP_EXCHANGE.exactInput(params);
      }
    }
    require(amountOut >= minimumAmountOut, "AB15");
    _uniPool = address(0);
    updateSlippageOrder(0);
  }

  /**
   * @notice To take fee.
   * @param amount Deposit amount.
   * @param iToken whitelisted ERC20 token to refer for payment.
   */
  function takeFee(uint amount, address iToken) internal returns (uint fee) {
    // Deduct Fees from amount
    transfers(PLATFORM_WALLET, amount.mul(FEE_PERCENT).div(100), iToken);
    return (amount.mul(FEE_PERCENT)).div(100);
  }

  /**
   * @notice Function sends profit to wallets in the process of proffir share.
   * @param wallet address to send profit to.
   * @param profitShare i.e. amount to be transferred.
   * @param oToken address of the token to consider for amount deduction.
   */
  function sendProfitOrFeeToManager(
    address wallet,
    uint profitShare,
    address oToken
  ) external override {
    onlySpecificAddress(aFiManager);
    transfers(wallet, profitShare, oToken);
  }

  function transfers(
    address wallet,
    uint amt,
    address tok
  ) internal {
    IERC20(tok).safeTransfer(wallet, amt);
  }

  function updateSlippageOrder(uint8 order) internal {
    slippageOrder = order;
  }

  /**
   * @notice _supplyDydx function supply the fund of token to DYDX protocol for yield generation.
   * @dev this function should be called by AFiStorage only
   * @param tok address of the token to consider for supply.
   * @param amount i.e calculated amount of token to invest.
   */
  function _supplyDydx(address tok, uint amount) external override {
    onlySpecificAddress(address(aFiStorage));
    //approval
    approval(tok, dydx, amount);
    Info[] memory infos = new Info[](1);
    infos[0] = Info(address(this), 0);

    AssetAmount memory amt = AssetAmount(
      true,
      AssetDenomination.Wei,
      AssetReference.Delta,
      amount
    );
    ActionArgs memory act;
    act.actionType = ActionType.Deposit;
    act.accountId = 0;
    act.amount = amt;
    act.primaryMarketId = dToken[tok];
    act.otherAddress = address(this);

    ActionArgs[] memory args = new ActionArgs[](1);
    args[0] = act;

    DyDx(dydx).operate(infos, args);

    emit SupplyDydx(address(this), tok, amount);
  }

  /**
   * @notice _supplyAave function supply the fund of token to AAVe protocol for yield generation.
   * @dev this function should be called by AFiStorage only
   * @param tok address of the token to consider for supply.
   * @param amount i.e calculated amount of token to invest.
   */
  function _supplyAave(address tok, uint amount) external override {
    onlySpecificAddress(address(aFiStorage));
    //approval
    approval(tok, address(_lendingPool()), amount);
    _lendingPool().deposit(tok, amount, address(this), 0);
    emit SupplyAave(address(this), tok, amount);
  }

  /**
   * @notice _supplyCompound function supply the fund of token to Compound protocol for yield generation.
   * @dev this function should be called by AFiStorage only
   * @param tok address of the token to consider for supply.
   * @param amount i.e calculated amount of token to invest.
   */
  function _supplyCompound(address tok, uint amount) external override {
    onlySpecificAddress(address(aFiStorage));
    //approval
    approval(tok, compound[tok], amount);
    require(Compound(compound[tok]).mint(amount) == 0, "AB18");
    emit SupplyCompound(address(this), tok, amount);
  }

  function approval(address tok, address sender, uint256 amount) internal {
    uint256 allowance = IERC20(tok).allowance(address(this), sender);
    if (allowance < amount) {
      IERC20(tok).safeIncreaseAllowance(sender, (amount - allowance));
    }
  }

  /**
   * @notice _withdrawAave function withdraws the fund of token from AAve protocol.
   * @param tok address of the token to consider to withdraw.
   * @param amount i.e calculated amount of token to withdraw.
   */
  function _withdrawAave(address tok, uint amount) external override {
    onlySpecificAddress(address(aFiStorage));
    _lendingPool().withdraw(tok, amount, address(this));
    emit WithdrawAave(address(this), tok, amount);
  }

  /**
   * @notice _withdrawCompound function withdraws the fund of token from Compound protocol.
   * @param tok address of the token to consider to withdraw.
   * @param amount i.e calculated amount of token to withdraw.
   */
  function _withdrawCompound(address tok, uint amount) external override {
    onlySpecificAddress(address(aFiStorage));
    require(aFiStorage.balanceCompoundInToken(tok, address(this)) >= amount, "AB19");
    require(Compound(compound[tok]).redeemUnderlying(amount) == 0, "AB20");
    emit WithdrawCompound(address(this), tok, amount);
  }

  /**
   * @notice _withdrawDydx function withdraws the fund of token from DYDX protocol.
   * @param tok address of the token to consider to withdraw.
   * @param amount i.e calculated amount of token to withdraw.
   */
  function _withdrawDydx(address tok, uint amount) external override {
    onlySpecificAddress(address(aFiStorage));
    Info[] memory infos = new Info[](1);
    infos[0] = Info(address(this), 0);

    AssetAmount memory amt = AssetAmount(
      false,
      AssetDenomination.Wei,
      AssetReference.Delta,
      amount
    );
    ActionArgs memory act;
    act.actionType = ActionType.Withdraw;
    act.accountId = 0;
    act.amount = amt;
    act.primaryMarketId = dToken[tok];
    act.otherAddress = address(this);

    ActionArgs[] memory args = new ActionArgs[](1);
    args[0] = act;

    DyDx(dydx).operate(infos, args);
    emit WithdrawDydx(address(this), tok, amount);
  }

  /**
   * @notice updatePoolData function updates the pool data in the process of rebalance.
   * @param data encoded data to update.
   */
  function updatePoolData(bytes memory data) external override nonReentrant {
    require(msg.sender == aFiManager || msg.sender == owner(), "AB30");
    setInitialValues(data);
    emit UpdatePoolData(address(this), data);
  }

  /**
   * @notice Returns the array of underlying tokens.
   * @return uTokensArray Array of underlying tokens.
   */
  function getUTokens() external view override returns (address[] memory uTokensArray) {
    return uTokens;
  }

  function getProportionsAndRebalTime()
    external
    view
    override
    returns (uint[] memory, uint[] memory, uint)
  {
    return (uTokenProportions, defaultProportion, lastRebalTime);
  }

  function totalSupply() external view override returns (uint) {
    return _totalSupply;
  }

  function balanceOf(address account) external view returns (uint) {
    return _balances[account];
  }

  function getPriceOracle(address tok) external view override returns (address) {
    return priceOracles[tok];
  }

  /**
   * @notice setInitialValues function initialises the pool and afi product data
   * @param data  i.e encoded data that contains pool, product data.
   */
  function setInitialValues(bytes memory data) internal {
    IAFi.PoolsData memory pooldata = abi.decode(data, (IAFi.PoolsData));
    IAFi.UnderlyingData memory uData = abi.decode(
      pooldata.underlyingData,
      (IAFi.UnderlyingData)
    );

    address tok;
    uint uLen = uData._underlyingTokens.length;
    for (uint i = 0; i < uLen; i++) {
      tok = uData._underlyingTokens[i];
      uTokens.push(uData._underlyingTokens[i]);
      uTokenProportions.push(pooldata._underlyingTokensProportion[i]);
      aaveToken[tok] = pooldata._aaveToken[i];
      compound[tok] = pooldata._compound[i];
      dToken[tok] = pooldata._dToken[i];
      priceOracles[tok] = pooldata._priceOracles[i];
      underlyingUniPoolToken[tok] = uData._underlyingUniPoolToken[i];
      updateUniTok(tok, uData._underlyingUniPoolToken[i], uData._underlyingUniPool[i]);
      updateUniTok(tok, WETH, uData._underlyingPoolWithWETH[i]);
      aFiStorage.afiSync(
        address(this),
        tok,
        aaveToken[tok],
        dToken[tok],
        compound[tok]
      );
    }

    emit SetInitialValues(address(this));
  }

  /**
   * @notice updateUnderlyingData Function updates the underlying tokens, token proportion and default proportion after rebalance
   * @dev it should be called by the AFiManager contract only.
   * @param _uTokens  i.e array of new underlying tokens after rebalance.
   * @param _uTokenProportion i.e array of new token proportion.
   * @param _defaultProportion i.e array of new default proportion
   */
  function updateUnderlyingData(
    address[] memory _uTokens,
    uint256[] memory _uTokenProportion,
    uint256[] memory _defaultProportion
  ) external override {
    onlySpecificAddress(aFiManager);
    uTokens = _uTokens;
    uTokenProportions = _uTokenProportion;
    defaultProportion = _defaultProportion;
  }

  /**
   * @notice updateOracleData Function updates the oracle address of the new underlying token
   * @dev it should be called by the AFiManager contract only.
   * @param _uToken  i.e the new underlying token.
   * @param _oracleAddress i.e the address of the oracle contract.
   */
  function updateOracleData(
    address _uToken,
    address _oracleAddress,
    address _underlyingMidToken,
    address uniPool
  ) external override {
    require(msg.sender == owner() || msg.sender == aFiManager, "AB21");
    underlyingUniPoolToken[_uToken] = _underlyingMidToken;
    updateUniTok(_uToken, _underlyingMidToken, uniPool);
    priceOracles[_uToken] = _oracleAddress;
  }

  function upDateInputTokPool(bytes memory uniData) external override {
    require(msg.sender == owner() || msg.sender == aFiManager, "AB22");
    IAFi.UnderlyingData memory pooldata = abi.decode(uniData, (IAFi.UnderlyingData));
    uint iLen = pooldata.stablePools.length;
    uint pLen = pooldata._underlyingUniPoolToken.length;
    unchecked {
      for (uint i = 0; i < iLen; i++) {
        for (uint j = 0; j < pLen; j++) {
          updateUniTok(
            token[i],
            pooldata._underlyingUniPoolToken[j],
            pooldata.stablePools[i]._pools[j]
          );
        }
        updateUniTok(token[i], WETH, pooldata.stableWethPool[i]);
      }
    }
  }

  function updateUniTok(address tok, address midTok, address uniPool) internal {
    tokenUniPool[tok][midTok] = uniPool;
  }

  /// @notice Retrieves Aave LendingPool address
  /// @return A reference to LendingPool interface
  function _lendingPool() public view returns (ILendingPool) {
    return ILendingPool(IPoolAddressesProvider(poolAddressProvider).getPool());
  }

  /**
   * @notice updateShares Function locks/unlocks afi token
   * @dev it should be called by the time lock contract only.
   * @param user address to lock the afi token from.
   * @param amount i.e. amount to be locked/unlocked.
   * @param lock i.e. status if amount should be locked or unlocked.
   */
  function stakeShares(address user, uint256 amount, bool lock) external {
    require(user != tLContract, "AB23");
    require(msg.sender == tLContract, "AB25");
    if (lock) {
      require((_balances[user]).sub(userLockedAmount[user]) >= amount, "AB24");
      userLockedAmount[user] = userLockedAmount[user].add(amount);
    } else {
      require(amount <= userLockedAmount[user], "AB26");
      userLockedAmount[user] = userLockedAmount[user].sub(amount);
    }
    emit UpdateShares(user, amount, lock);
  }

  /**
   * @notice updateTimeLockContract Function updates timelock contract address.
   * @param newTL address of the timelock contract.
   */
  function updateTimeLockContract(address newTL) external onlyOwner {
    require(newTL != address(0), "AB27");
    tLContract = newTL;
    emit UpdateTimeLockContract(address(this), newTL);
  }

  function getTypeOfProduct() external view override returns (uint256) {
    return typeOfProduct;
  }

  function emergencyWithdraw(address tok, address wallet) external onlyOwner {
    (, bool present) = uTokens.indexOf(tok);
    require(!present, "AB32");
    transfers(wallet, IERC20(tok).balanceOf(address(this)), tok);
  }
}