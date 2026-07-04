// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;
pragma abicoder v2;

import "./IAFiStorage.sol";
import "./IAFi.sol";
import "./IUniswapV3.sol";
import {SafeCast} from "./SafeCast.sol";
import {ReentrancyGuard} from "./ReentrancyGuard.sol";
import {OwnableDelayModule} from "./OwnableDelayModule.sol";
import "./ArrayUtils.sol";
import {AggregatorV3Interface} from "./AggregatorV3Interface.sol";
import "./IPassiveRebal.sol";
import "./IAFiFactory.sol";
import "./IStakingManager.sol";
import "./IATVAdapter.sol";
interface IMErc20 {
  function mint(uint mintAmount) external returns (uint);
  function redeem(uint redeemTokens) external returns (uint);
  function redeemUnderlying(uint redeemAmount) external returns (uint);
  function balanceOf(address owner) external view returns (uint);
  function balanceOfUnderlying(address owner) external returns (uint);
  function exchangeRateCurrent() external returns (uint);
  function exchangeRateStored() external view returns (uint);
  function accrueInterest() external returns (uint);
  function getAccountSnapshot(address account) external view returns (uint, uint, uint, uint);
  function borrowBalanceStored(address account) external view returns (uint);
  function borrowBalanceCurrent(address account) external returns (uint);
}

/**
 * @title AtvStorage.
 * @dev Error codes: AFS01: Cannot be address zero. AFS02: Unauthorized caller.
 */
contract AtvStorage is OwnableDelayModule, IAFiStorage, ReentrancyGuard {
  using SafeCast for uint256;
  using ArrayUtils for uint[];
  using ArrayUtils for address[];

  address public aFiManager;
  address public immutable stakingManager;

  uint256 internal preDep;
  uint256 internal tempStorage;
  uint256 internal tempMultiplier;
  uint256 internal redFromContract;
  address internal rebal;
  address internal _afiTemp;
  address public immutable uniswapOracleV3;
  address public immutable aFiFactory;

  struct SwapContext {
    address uTok;
    bool extraToken;
  }

  mapping(address => bool) public leveragePositionClosed;

  uint256 public tempCounter;
  mapping(address => uint256) public stakingPercentage;
  address public atvAdapter;

  mapping(address => bool) internal onlyOnce;
  address internal _oTokenTemp;  
  uint256 internal _rTemp;
  mapping(address => mapping(uint256 => mapping(address => uint256)))
    internal preDepositedInputTokens;
  mapping(address => mapping(address => uint256)) public stablesWithdrawalLimit; // Amount in USD that can be withdrawn in between cumulative swaps
  mapping(address => mapping(address => mapping(uint256 => uint256)))
    public stablesWithdrawn; // Amount in USD that has been withdrawn in between cumulative swaps

  //synData
  mapping(address => mapping(address => address)) public aaveTokenCopy; // aaveToken address for various u tokens
  mapping(address => mapping(address => address)) public pendleMarketPlace;
  mapping(address => mapping(address => address)) public moonwellToken;
  mapping(address => mapping(address => address)) public morphoVault;
  mapping(address => mapping(address => uint)) public provider; // Protocol where each u token is invested
  mapping(address => mapping(address => uint)) public finalProvider; // Protocol where each u token is invested
  mapping(address => mapping(address => bool)) internal _isStaked;
  mapping(address => mapping(address => bool)) public isPendleStaked;
  mapping(address => mapping(address => bool)) public usePTToken; // vault => token => true(PT) / false(LP)
  mapping(address => mapping(address => address)) public pendlePTToken; // vault => underlying => PT token address
  mapping(address => mapping(address => address)) public pendlePTUnderlyingToken; // vault =>  PT token  => PT underlying
  // vault => marketToken (LP/PT) => underlying
  mapping(address => mapping(address => address)) public pendleMarketUnderlyingToken;
  address private constant WETH = 0x4200000000000000000000000000000000000006;
  event SetAFiManager(address indexed afiContract, address manager);
  event ProfitShareDistributed(
    address indexed aFiContract,
    address indexed teamWallet,
    uint256 amount
  );

  constructor(
    address _aFiManager,
    address oracleV3,
    address _passiveRebal,
    address _aFiFactory,
    address _stakingManager,
    address _adapter
  ) {
    validateAddress(_aFiManager, address(0));
    validateAddress(_aFiFactory, address(0));
    validateAddress(oracleV3, address(0));
    validateAddress(_stakingManager, address(0));
    validateAddress(_passiveRebal, address(0));
    validateAddress(_adapter, address(0));
    aFiManager = _aFiManager;
    uniswapOracleV3 = oracleV3;
    rebal = _passiveRebal;
    aFiFactory = _aFiFactory;
    stakingManager = _stakingManager;
    atvAdapter = _adapter;
  }

  function validateAddress(address addA, address addB) internal pure {
    require(addA != addB, "AFS01");
  }

  function aFiVaultCaller(address aFiContract, address _owner1) internal view {
    require(
      IAFiFactory(aFiFactory).getAFiTokenStatus(aFiContract) &&
        (msg.sender == _owner1 || msg.sender == aFiContract),
      "AFS09"
    );
  }

  function updateATvAdapter(address _atvAdapter) external onlyOwner {
    validateAddress(_atvAdapter, address(0));
    atvAdapter = _atvAdapter;
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
    IATVAdapter(atvAdapter).setTeamWallets(aFiContract, _teamWallets);
  }

  function setActiveRebalancedStatus(
    address aFiContract,
    bool status
  ) external override {
    aFiVaultCaller(aFiContract, aFiManager);
    IATVAdapter(atvAdapter).setActiveRebalancedStatus(aFiContract, status);
  }

  /**
   * @notice To set the AFi contract status.
   * @dev Requirements: It can be invoked only by the contract owner.
   * @param aFiContract Address of the AFiContract.
   * @param active status for afiContracts.
   */
  function setAFiActive(address aFiContract, bool active) external override {
    compareTwoAddresses(aFiContract, owner());
    IATVAdapter(atvAdapter).setAFiActive(aFiContract, active);
  }

  function compareTwoAddresses(address add1, address add2) internal view {
    require(msg.sender == add1 || msg.sender == add2, "AFS04");
  }

  /**
   * @notice syncs the pool data of a token to the pool data of aficontract.
   * @param afiContract address of the afi contract.
   * @param tok address of the token to sync the pool data.
   * @param aaveTok address of the aave pool.
   * @param moonwellMToken Moonwell address of tok.
   * @param _pendleMarketPlace address of the pendle pool.
   */
  function afiSync(
    address afiContract,
    address tok,
    address aaveTok,
    address moonwellMToken,
    address _pendleMarketPlace,
    address _morphoVault
  ) external override {
    compareTwoAddresses(getController(afiContract), afiContract);
    aaveTokenCopy[afiContract][tok] = aaveTok;
    moonwellToken[afiContract][tok] = moonwellMToken;
    pendleMarketPlace[afiContract][tok] = _pendleMarketPlace;
    morphoVault[afiContract][tok] = _morphoVault;
  }

  function setPendleMarketUnderlyingToken(
    address afiContract,
    address marketToken,
    address underlying
  ) external onlyOwner {
    pendleMarketUnderlyingToken[afiContract][marketToken] = underlying;
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
    return IStakingManager(stakingManager).calcPoolValue(tok, afiContract);
  }

  function tvlRead(
    address tok,
    address afiContract
  ) public view override returns (uint, uint256) {
    uint256 uTokensDecimal = validateAndGetDecimals(tok);
    uint bal = IStakingManager(stakingManager).balanceOfUnderlyingInPoolsAndContract(tok, afiContract);
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
    return IStakingManager(stakingManager).balanceOfUnderlyingInPoolsAndContract(tok, afiContract);
  }

  // returns the TVL by the external protocols
  function calcPoolValueSomeRead(
    address tok,
    address afiContract,
    uint256 price,
    uint256 multiplier,
    bool isExtra
  ) internal view returns (uint) {
    return IStakingManager(stakingManager).calcPoolValueSomeRead(tok, afiContract, price, multiplier, isExtra);
  }

  /**
   * @notice Calculates the total value of all tokens locked by the AFi contract in USD.
   * @param afiContract The address of the AFi contract.
   * @return The total value of all tokens in USD.
   */
  function calculatePoolInUsd(
    address afiContract
  ) external view override returns (uint) {
    uint bal = 0;
    address[] memory uToken = new address[](getUTokensFromVault(afiContract).length);
    uToken = getUTokensFromVault(afiContract);
    (, address[] memory iToken) = IAFi(afiContract).getInputToken();
    uint uLen = uToken.length > iToken.length ? uToken.length : iToken.length;
    uint256 cSwapCounter = getCSwapCounterFromVault(afiContract);
    uint256 preDepositStableBalance;

    for (uint i = 0; i < uLen; i++) {
      if (uLen == iToken.length) {
        if (i < uToken.length) {
          bal = bal + (calcPoolValue(uToken[i], afiContract));
        }
        preDepositStableBalance = convertInUSDAndTok(
          iToken[i],
          preDepositedInputTokens[afiContract][cSwapCounter][iToken[i]],
          false
        );
        bal = bal + (preDepositStableBalance);
      } else {
        if (i < iToken.length) {
          preDepositStableBalance = convertInUSDAndTok(
            iToken[i],
            preDepositedInputTokens[afiContract][cSwapCounter][iToken[i]],
            false
          );
          bal = bal + (preDepositStableBalance);
        }
        bal = bal + (calcPoolValue(uToken[i], afiContract));
      }
    }
    
    bool levEnable = getLeverageStatus(afiContract);
    uint256 collateralAmount;
    uint256 loanAmount;
    if (levEnable) {
      if(!getLendingStatus(afiContract)){
        bal += calculateExtraTokenBal(afiContract);
      } 
      (collateralAmount, loanAmount, ) = getMorphoTVLData(afiContract);      
    }
   
    return (bal + collateralAmount - loanAmount);
  }

  function getLendingStatus(address afiContract) internal view returns(bool) {
    return IAFi(afiContract).getIfLandingPoolSame();
  }

  function getMorphoTVLData(address afiContract) internal view returns(uint256, uint256, address){
    return IStakingManager(stakingManager).getAtvMorphoTVL(afiContract);
  }

  function getUTokensFromVault(address afiContract) internal view returns(address[] memory){
    return IAFi(afiContract).getUTokens();
  }

  function calculateExtraTokenBal(address afiContract) internal view returns(uint256){
    uint256 bal;
    address[] memory uToken = new address[](getUTokensFromVault(afiContract).length);
    uToken = getUTokensFromVault(afiContract);
    (, address[] memory iToken) = IAFi(afiContract).getInputToken();
    address[] memory extraTokens = getExtraTokens(afiContract) ;
    for (uint j = 0; j < extraTokens.length; j++) {
      if (!_existsIn(extraTokens[j], uToken) && !_existsIn(extraTokens[j], iToken)) {
        bal += getHelperTokenTVL(afiContract, extraTokens[j]);
      }
    }
    return bal;
  }

  function getHelperTokenTVL(address _vault, address tok) internal view returns(uint256) {
    return IStakingManager(stakingManager).calcPoolValueForHelperToken(tok, _vault);
  }

  function _existsIn(address token, address[] memory arr) internal pure returns (bool) {
    for (uint i = 0; i < arr.length; i++) {
      if (arr[i] == token) return true;
    }
    return false;
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
   */
  function validateGreater(uint256 val1) internal pure {
    require(val1 > 0, "AFS19");
  }

  /**
   * @notice Validates that one value is greater than or equal to another.
   * @param val1 The first value.
   * @param val2 The second value.
   */
  function validateGreaterEqual(uint256 val1, uint256 val2) internal pure {
    require(val1 >= val2, "AFS20");
  }

  function withdrawAll( address aFiContract, address uToken, bytes calldata pendleData) internal returns(bool status) {
    status = IStakingManager(stakingManager).withdrawAll(aFiContract, uToken, pendleData);
  }

  /**
  * @notice Rearranges the staking of uTokens, withdrawing from existing pools and staking in recommended pools.
  * @param aFiContract The address of the AFi contract.
  * @param underlyingTokens Array of underlying tokens to rearrange.
  * @param newProviders Array of new provider IDs for each token.
  * @param pendleData Encoded data for Pendle operations.
  * @param enableLeverage Boolean to enable leverage flow through Pendle PT -> Morpho.
  */
  function rearrange(
    address aFiContract,
    address[] memory underlyingTokens,
    uint256[] memory newProviders,
    bytes[] calldata pendleData,
    bool enableLeverage 
  ) external override returns (uint256 lpOut) {
    (, , uint256 productType) = getVaultData(aFiContract);
    if (productType == 2) {
      validateCaller(msg.sender, uniswapOracleV3);
    
      for (uint i = 0; i < underlyingTokens.length; i++) {
        address uToken = underlyingTokens[i];
        uint256 newProvider = newProviders[i];

        if (newProvider != provider[aFiContract][uToken] && !getLeverageStatus(aFiContract)) {
          _isStaked[aFiContract][uToken] = false;
          // Delegate to StakingManager
          withdrawAll(aFiContract, uToken, pendleData[0]);
        }
        
        uint256 stakeAmount = (balance(uToken, aFiContract) * stakingPercentage[aFiContract]) / 100;
        provider[aFiContract][uToken] = newProvider;

        if (stakeAmount > 0) {
          if (enableLeverage) {
            lpOut += leverageLoop(aFiContract, uToken, stakeAmount, newProvider, newProviders, pendleData);
          } else {
            // Direct staking logic
            if (newProvider == 2 && aaveTokenCopy[aFiContract][uToken] != address(0)) {
              _isStaked[aFiContract][uToken] = true;
              IStakingManager(stakingManager).supplyAave(aFiContract, uToken, stakeAmount);
              isPendleStaked[aFiContract][uToken] = false;
            } else if (newProvider == 3 && moonwellToken[aFiContract][uToken] != address(0)) {
              _isStaked[aFiContract][uToken] = true;
              IStakingManager(stakingManager).supplyMoonwell(aFiContract, uToken, stakeAmount);
            } else if (newProvider == 1 && pendleMarketPlace[aFiContract][uToken] != address(0)) {
              _isStaked[aFiContract][uToken] = true;
              lpOut = IStakingManager(stakingManager).supplyPendle(aFiContract, uToken, stakeAmount, pendleData[0]);
              isPendleStaked[aFiContract][uToken] = true;
            } else if (newProvider == 4 && morphoVault[aFiContract][uToken] != address(0)) {
              _isStaked[aFiContract][uToken] = true;
              IStakingManager(stakingManager).supplyMorpho(aFiContract, uToken, stakeAmount);
            }
          }
        }

      }
    }
    return lpOut;
  }

  function leverageLoop(address aFiContract, address uToken,  uint256 stakeAmount, uint256 newProvider, uint256[] memory newProviders, bytes[] calldata pendleData) internal returns (uint256){
    uint256 fProvider;
    address lTok;
    uint256 outAmount;
    _isStaked[aFiContract][uToken] = true;
    (outAmount, fProvider, lTok) = IStakingManager(stakingManager).supplyWithLeverage(
      aFiContract,
      uToken,
      stakeAmount,
      newProviders,
      pendleData
    );

    finalProvider[aFiContract][lTok] = fProvider;

    // Set appropriate staking flags based on final provider
    if (newProvider == 1) {
      isPendleStaked[aFiContract][uToken] = true;
    } else {
      isPendleStaked[aFiContract][uToken] = false;
    }

    if (fProvider == 1) {
      isPendleStaked[aFiContract][lTok] = true;
    } else {
      isPendleStaked[aFiContract][lTok] = false;
    }

    return outAmount;
  }

  // Function to update staking percentage
  function setStakingPercentage(address _vault, uint256 newPercentage) external onlyOwner{
    validateGreaterEqual(100, newPercentage);
    stakingPercentage[_vault] = newPercentage;
  }

  function updateFinalProvider(address _vault, address tok, uint256 _provider) external {
    validateCaller(msg.sender, stakingManager);
    finalProvider[_vault][tok] = _provider;
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
    if (!getLeverageStatus(aFiContract)){
      return _isStaked[aFiContract][uToken];
    }else {
      return (finalProvider[aFiContract][uToken] > 0 ? true : false) ;
    }
  }

  function getLeverageStatus(address aFiContract) internal view returns(bool){
    return IStakingManager(stakingManager).isLeverageEnable(aFiContract);
  }

  function setPreDepositedInputTokenInReInitialize(
    address aficontract,
    uint256 _cSwapCounter,
    uint256 _amount,
    address _oToken
  ) external override {
    validateCaller(msg.sender, aFiManager);
    preDepositedInputTokens[aficontract][_cSwapCounter][_oToken] -= _amount;
  }

  function calculateShares(
    address afiContract,
    uint256 amount,
    uint256 prevPool,
    uint256 _totalSupply,
    address iToken,
    uint256 currentDepositNAV,
    uint256 prevBalance
  ) external view override returns (uint256 shares, uint256 newDepositNAV) {
    validateAddress(afiContract, address(0));
    validateCaller(msg.sender, afiContract);
    (uint256 price, uint256 dec) = getPriceInUSD(iToken);
    uint256 decimals = validateAndGetDecimals(iToken);
    uint256 amountCheck = (amount * price * (10 ** decimals)) / (10 ** dec);
    if (_totalSupply == 0) {
      shares = amountCheck / 100;
    } else {
      validateGreater(prevPool);
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
        ((currentDepositNAV * prevBalance) + (shares * newNav)) /
        (prevBalance + shares);
    }
  }

  function setTempVars(address oToken, uint256 rValue) external {
    validateCaller(msg.sender, uniswapOracleV3);
    _oTokenTemp = oToken;
    _rTemp = rValue;
  }

  function handleRedemption(
    RedemptionParams memory params,
    uint _shares,
    uint swapMethod,
    bytes[] calldata pendleWithdrawData,
    bytes[] calldata swapData
  ) external override returns (uint256 redemptionFromContract) {
    validateAddress(params.baseContract, address(0));
    aFiVaultCaller(msg.sender, params.baseContract);
    validateFlag(!leveragePositionClosed[params.baseContract]);
    
    // Store oToken and r globally for use in nested functions
    _oTokenTemp = params.oToken;
    _rTemp = params.r;
    
    if (swapMethod == 1) {

      redemptionFromContract = withdrawStableTokens(
        params.baseContract,
        params.r,
        params.oToken,
        params.iTokens,
        params.deadline,
        params.minimumReturnAmount,
        swapData
      );
        
    } else {

      swapForOtherProduct(
        params.baseContract,
        params.deadline,
        params.minimumReturnAmount,
        params.uTokens,
        pendleWithdrawData[0],
        swapData
      );
      redemptionFromContract = redFromContract;
    }

    if (getLeverageStatus(params.baseContract)) {
      redemptionFromContract = deleverageLoop(
        params.baseContract,
        redemptionFromContract,
        params.uTokens[0],
        pendleWithdrawData,
        swapData[0]
      );
    }

    {
      uint256 redemptionNAV = (params._pool * 10000) / params.tSupply;
      if (redemptionNAV > params.depositNAV) {
        redemptionFromContract -= _distributeProfitShare(
          params.baseContract,
          _shares,
          _oTokenTemp,
          params.depositNAV,
          redemptionNAV
        );
      }
    }

    // Clear temporary storage
    _oTokenTemp = address(0);
    _rTemp = 0;
    
    return redemptionFromContract;
  }

  function deleverageLoop(
    address afiContract,
    uint256 redemption,
    address tok,
    bytes[] calldata pendleWithdrawData,
    bytes calldata swapData
  ) internal returns (uint256) {
    if (!getLeverageStatus(afiContract)) {
      return redemption;
    }
    
    uint256 debtInUSD;
    address loanToken;
    
    {
      (, debtInUSD, loanToken) = getMorphoTVLData(afiContract);
      if (debtInUSD == 0) {
        return redemption;
      }
    }
    
    {
      uint256 collectedInUSD = convertInUSDAndTok(loanToken, redemption, false);
      
      if (_rTemp >= debtInUSD) {
        return _handleFullClosure(
          afiContract,
          tok,
          pendleWithdrawData[1],
          swapData
        );
      } else {
        uint256 shortfallInToken = 0;
        
        if (_rTemp > collectedInUSD) {
          uint256 shortfallInUSD = _rTemp - collectedInUSD;
          shortfallInToken = convertInUSDAndTok(loanToken, shortfallInUSD, true);
        }
          
        return _handlePartialDeleverage(
          afiContract,
          tok,
          redemption,
          shortfallInToken,
          pendleWithdrawData,
          swapData
        );
      }
    }
  }

  function _handlePartialDeleverage(
    address afiContract,
    address tok,
    uint256 currentRedemption,
    uint256 shortfall,
    bytes[] calldata pendleWithdrawData,
    bytes calldata swapData
  ) internal returns (uint256) {
    uint256 deleveragedAmount;
    if (shortfall > 0) {
      deleveragedAmount = IStakingManager(stakingManager).partialDeleverage(
        afiContract,
        tok,
        currentRedemption,
        shortfall,
        pendleWithdrawData,
        false
      );
    } else {
      if (currentRedemption > 0) {
        deleveragedAmount = IStakingManager(stakingManager).partialDeleverage(
          afiContract,
          tok,
          currentRedemption,
          currentRedemption,
          pendleWithdrawData,
          true
        );
      }
    }
    
    if (tok != _oTokenTemp) {
      deleveragedAmount = doSwapUsingDex(
        afiContract,
        tok,
        _oTokenTemp,  // Use global oToken
        deleveragedAmount,
        tempStorage,
        0,
        swapData
      );
    }
    
    return deleveragedAmount;
  }

  function getMidToken(address tok) internal view returns(address) {
    return IPassiveRebal(rebal).getMidToken(tok);
  }

  function _handleFullClosure(
    address afiContract,
    address tok,
    bytes calldata pendleWithdrawData,
    bytes calldata swapData
  ) internal returns (uint256) {
    uint256 finalRedemption;
    
    (finalRedemption, ) = perfomrFullCloser(
        afiContract,
        _oTokenTemp,  // Use global oToken
        tok,
        pendleWithdrawData,
        swapData
    );
    
    uint256 targetRedemption = convertInUSDAndTok(_oTokenTemp, _rTemp, true);
    return finalRedemption < targetRedemption ? finalRedemption : targetRedemption;
  }


  function perfomrFullCloser(
    address afiContract,
    address oToken,
    address tok,
    bytes calldata pendleWithdrawData,
    bytes calldata swapData
  ) internal returns(uint256, uint256)
  {
    // Block 1: Handle staking manager operations
    uint256 seededFund;
    {
      address uTok;
      (, , uTok, , seededFund) = IStakingManager(stakingManager).closeLeverage(afiContract);
      validateCaller(uTok, tok);
    }
    
    // Withdraw all from first lending protocol
    if(provider[afiContract][tok] > 0){
      withdrawAll(afiContract, tok, pendleWithdrawData);
    }
    
    // Block 2: Calculate and convert funds
    uint256 totalAvailable;
    {
      // Get current swap counter
      uint256 swapCounter = getCSwapCounterFromVault(afiContract);
      
      // Calculate total available funds
      totalAvailable = balance(tok, afiContract) - 
        preDepositedInputTokens[afiContract][swapCounter][tok];
      
      // Convert to output token if needed
      if (tok != oToken && totalAvailable > 0) {
        totalAvailable = doSwapUsingDex(
          afiContract,
          tok,
          oToken,
          totalAvailable,
          tempStorage,
          0,
          swapData
        );
      }
    }
    
    return (totalAvailable, seededFund);
  }

  function getVaultData(address afiContract) internal view returns(uint256 tvl, address rebalContract, uint256 productType) {
    (tvl, rebalContract, productType) = IAFi(afiContract).getTVLandRebalContractandType();
  }

  /**
   * @notice Swaps tokens in the AFi contract for another product.
   * @param afiContract The address of the AFi contract.
   * @return The total amount swapped from the contract.
   */
   function swapForOtherProduct(
    address afiContract,
    uint deadline,
    uint[] memory minimumReturnAmount,
    address[] memory uToken,
    bytes calldata pendleWithdrawData,
    bytes[] calldata swapData
  ) public override returns (uint256) {
    validateAddress(afiContract, address(0));
    aFiVaultCaller(afiContract, uniswapOracleV3);

    (, rebal, ) = getVaultData(afiContract);
    redFromContract = 0;
    _afiTemp = afiContract;

    preDep = IAFiManager(aFiManager).inputTokenUSD(
      IAFi(afiContract),
     getCSwapCounterFromVault(afiContract),
      IAFiStorage(address(this))
    );

    tempStorage = deadline;
    
    checkIfTokenPresent(uToken, afiContract, minimumReturnAmount, pendleWithdrawData, swapData);
    if(!getLeverageStatus(afiContract)){
      swapInternal(uToken, minimumReturnAmount, pendleWithdrawData, swapData); // uToken needs to be loan token in case of leverage on
    }
    return redFromContract; //in LoanToken in case of leverage enabled
  }

  function getCSwapCounterFromVault(
    address afiContract
  ) internal view returns (uint256) {
    return IAFi(afiContract).getcSwapCounter();
  }

  function calculateRedemptionFromContract(
    address afiContract,
    address tok,
    bool isExtra
  )
    public
    view
    returns (RedemptionData memory data)
  {

    validateAddress(afiContract, address(0));
    (data.price, data.multiplier) = getPriceInUSD(tok);
    (data.tvl, , ) = getVaultData(afiContract);
    uint256 tokPreDep = preDepositedInputTokens[afiContract][
      getCSwapCounterFromVault(afiContract)
    ][tok];
    uint256 totalBal;
    if (data.price != 0) {
      uint256 uTokensDecimal = validateAndGetDecimals(tok);
      uint256 tokPredepInUSD = (tokPreDep) * (uint(data.price));

      tokPredepInUSD = ((tokPredepInUSD * (10 ** uTokensDecimal)) / (10 ** data.multiplier));
      if(getLeverageStatus(afiContract)) {
        totalBal = getHelperTokenTVL(afiContract, tok);
      }else {
        totalBal = calcPoolValue(tok, afiContract);
      }

      uint256 red = (((_rTemp) * ((totalBal) - tokPredepInUSD)));

      red = (red) / ((data.tvl - preDep));
      red =
        (red * (10 ** data.multiplier)) /
        (((uint(data.price)) * (10 ** (validateAndGetDecimals(tok)))));
              
      data.redemptionFromContract = red;
      data.tvl -= preDep;
      data.stakedStatus = getStakedStatus(afiContract, tok);
    }
  }

  /**
   * @notice Withdraws funds from pools and performs an internal swap.
   * @param tok The address of the token.
   * @param redemptionFromContract The redemption amount from the contract.
   */
  function withdrawFromPools(
    address tok,
    uint redemptionFromContract,
    uint256 minimumReturnAmount,
    uint256 tvl,
    bytes calldata pendleWithdrawData,
    bool isExtra,
    bytes calldata _swapData
  ) internal {
    // Block 1: Get price and calculate redemption from pool
    uint256 redemptionFromPool;
    {
      (uint256 price, ) = getPriceInUSD(tok);
      
      redemptionFromPool = calcPoolValueSomeRead(
        tok,
        _afiTemp,
        price,
        tempMultiplier,
        isExtra
      );

      redemptionFromPool = redemptionFromPool * _rTemp * (10 ** tempMultiplier);
      redemptionFromPool = redemptionFromPool / 
          (tvl * price * (10 ** validateAndGetDecimals(tok)));

      _withdrawSome(_afiTemp, tok, redemptionFromPool, pendleWithdrawData);
    }

    // Block 2: Perform swap
    {
     
      internalSwap(
        _afiTemp,
        tok,
        getMidToken(tok),
        tempStorage,
        redemptionFromContract,
        minimumReturnAmount,
        _swapData
      );
    }
  }

  function internalSwap(
    address afiContract,
    address tok,
    address midTok,
    uint deadline,
    uint redeem,
    uint minimumReturnAmount,
    bytes calldata swapData
  ) internal {
    if(!IStakingManager(stakingManager).isLeverageEnable(_afiTemp)) {
      if (tok != _oTokenTemp) {
        if (balance(tok, afiContract) > 0) {
          redFromContract += doSwapUsingDex(
            afiContract,
            tok,
            _oTokenTemp,
            redeem,
            deadline,
            minimumReturnAmount,
            swapData
          );
        }
      }else {
        redFromContract = redFromContract + redeem;
      } 
    }else {
      redFromContract = redFromContract + redeem; // loan token for leverage product
    }
  }
  
  /**
   * @notice Returns pool to invest in, amount to invest and
   * deducted amount if there is a fluctuation or insufficient balance(rare case).
   */
  function _withdrawSome(
    address afiContract,
    address tok,
    uint _amount,
    bytes calldata pendleWithdrawData
  ) internal returns (bool withdrawal) {
    return IStakingManager(stakingManager).withdrawSome(afiContract, tok, _amount, pendleWithdrawData);
  }

  /**
   * @notice Checks if a token is of type USDC and retrieves its price and multiplier.
   * @param tok The address of the token.
   * @return The token's price and multiplier.
   */
  function getPriceInUSD(address tok) public view override returns (uint256, uint256) {
    return (IUniswapOracleV3(uniswapOracleV3).getPriceInUSD(tok));
  }

  function checkIfTokenPresent(
    address[] memory uToken,
    address afiContract,
    uint[] memory minimumReturnAmount,
    bytes calldata pendleWithdrawData,
    bytes[] calldata swapData
  ) internal {
    address uTok;
    uint index;
    bool present;
    
    (index, present) = ArrayUtils.indexOf(uToken, _oTokenTemp);
    
    if (getLeverageStatus(afiContract)) {
      (, , uTok) = IStakingManager(stakingManager).getAtvMorphoTVL(afiContract);
      // When leverage is enabled, use loanToken regardless of presence
    } else {
      if (!present) {
        return;
      }
      uTok = uToken[index];
    }

    if (present) {
      RedemptionData memory data = calculateRedemptionFromContract(afiContract, uTok, false);
      tempMultiplier = data.multiplier;

      if (!data.stakedStatus) {
        redFromContract += data.redemptionFromContract;
      } else if (data.price != 0) {
        // Use simplified withdrawFromPools with fewer parameters
        withdrawFromPools(
          uTok,
          data.redemptionFromContract,
          minimumReturnAmount[index],
          data.tvl,
          pendleWithdrawData,
          false,
          swapData[index]
        );
      }
    }
  }

  function swapInternal(
    address[] memory uToken,
    uint[] memory minimumReturnAmount,
    bytes calldata pendleWithdrawData,
    bytes[] calldata swapData
  ) internal {
    address[] memory extraTokens = getExtraTokens(_afiTemp);
    address oToken = _oTokenTemp;

    unchecked {
      uint uLen = uToken.length;
      uint eLen = extraTokens.length;

      for (uint n = 0; n < uLen + eLen; n++) {
        SwapContext memory ctx;

        if (n >= uLen) {
          ctx.uTok = extraTokens[n - uLen];
          ctx.extraToken = true;
        } else {
          ctx.uTok = uToken[n];
          ctx.extraToken = false;
        }

        RedemptionData memory data = calculateRedemptionFromContract(
          _afiTemp,
          ctx.uTok,
          ctx.extraToken
        );

        tempMultiplier = data.multiplier;

        // Handle landing pool same condition
        if (getLendingStatus(_afiTemp) && !ctx.extraToken) {
          data.redemptionFromContract = 0;
        }

        if (ctx.uTok == oToken) {
          continue;
        }

        if (!data.stakedStatus) {
          _handleUnstakedToken(
            ctx.uTok,
            data.redemptionFromContract,
            minimumReturnAmount[n],
            swapData[n],
            oToken
          );
        } else {
          _handleStakedToken(
            ctx.uTok,
            data,
            minimumReturnAmount[n],
            pendleWithdrawData,
            swapData[n],
            ctx.extraToken
          );
        }
      }
    }
  }


  function _handleUnstakedToken(
    address uTok,
    uint redemptionAmount,
    uint minReturn,
    bytes calldata swapData,
    address oToken
  ) internal {
    if (redemptionAmount > 0) {
      uint256 tokenBalance = balance(uTok, _afiTemp);

      if (tokenBalance > 0) {
        uint256 amountToSwap = redemptionAmount <= tokenBalance
          ? redemptionAmount
          : tokenBalance;

        redFromContract += doSwapUsingDex(
          _afiTemp,
          uTok,
          oToken,
          amountToSwap,
          tempStorage,
          minReturn,
          swapData
        );
      }
    }
  }

  function _handleStakedToken(
    address uTok,
    RedemptionData memory data,
    uint minReturn,
    bytes calldata pendleWithdrawData,
    bytes calldata swapData,
    bool extraToken
  ) internal {
    if (data.redemptionFromContract > 0 && data.price != 0) {
      withdrawFromPools(
        uTok,
        data.redemptionFromContract,
        minReturn,
        data.tvl,
        pendleWithdrawData,
        extraToken,
        swapData
      );
    }
  }

  /**
   * @notice _withdrawAll Function withdraws whole diposited balance from the pools(protocols).
   * @dev It should only be called by the AFiManager, AFiStorage contracts.
   * @param tok address of the token to withdraw from protocols.
   */
  function _withdrawAll(
    address afiContract,
    address tok,
    bytes calldata pendleWithdrawData
  ) public override returns (bool) {
    checkOracleAndManager();
    bool result = withdrawAll(afiContract, tok, pendleWithdrawData);
    
    // Reset Pendle staking flag if it was staked
    if (provider[afiContract][tok] == 1 && isPendleStaked[afiContract][tok]) {
      isPendleStaked[afiContract][tok] = false;
    }
    
    return result;
  }

  function getAFiOracle() external view override returns (address) {
    return uniswapOracleV3;
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
  ) internal returns (uint totalProfitShare) {
    return IStakingManager(stakingManager).distributeProfitShare(
      aFiContract,
      share,
      oToken,
      depositNAV,
      redemptionNAV
    );
  }

  function setStablesWithdrawalLimit(
    address afiContract,
    address iToken,
    uint256 limit
  ) external onlyOwner {
    validateGreater(limit);
    stablesWithdrawalLimit[afiContract][iToken] = limit;
  }

  function doSwapUsingDex(
    address aFiContract,
    address tok,
    address oToken,
    uint256 amount,
    uint256 deadline,
    uint256 _minimumReturnAmount,
    bytes calldata swapDdata
  ) internal returns (uint256 returnAmount) {
    (returnAmount) = IAFi(aFiContract).swapfromSelectiveDex(
      tok,
      oToken,
      amount,
      deadline,
       getMidToken(tok),
      _minimumReturnAmount,
      swapDdata
    );
  }

  function convertInUSDAndTok(
    address tok,
    uint256 amt,
    bool usd
  ) public view override returns (uint256) {
    (uint256 price, uint256 decimal) = getPriceInUSD(tok);
    uint256 iTokenDecimal = validateAndGetDecimals(tok);
    if (!usd) {
      return ((((amt) * (price)) * (10 ** iTokenDecimal)) / (10 ** decimal));
    } else {
      return (amt * (10 ** decimal)) / ((price) * (10 ** iTokenDecimal));
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
    checkOracleAndManager();
    preDepositedInputTokens[aficontract][_cSwapCounter][_oToken] += _amount;
  }

  function checkOracleAndManager() internal view {
    require(msg.sender == uniswapOracleV3 || msg.sender == aFiManager, "AFS02");
  }

  function compareIntEqual(uint256 val1, uint256 val2) internal pure {
    require(val1 == val2, "AFS10");
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
    uint256 minAmountOut,
    bytes calldata swapData
  ) external override {
    uint256 redemptionBalance = preDepositedInputTokens[msg.sender][_cSwapCounter][tok];
    address[] memory uTokens = getUTokensFromVault(msg.sender);
    (, bool isPresent) = uTokens.indexOf(tok);
    uint256 balToConsider = balance(swapToken, msg.sender);
    uint256 totalBalanceInputToken = balance(tok, msg.sender);
    if (totalBalanceInputToken > redemptionBalance && !isPresent) {
      redemptionBalance = totalBalanceInputToken;
    }
    IAFi(msg.sender).swapfromSelectiveDex(
      tok,
      swapToken,
      redemptionBalance,
      deadline,
      WETH,
      minAmountOut,
      swapData
    );
    balToConsider = balance(swapToken, msg.sender) - balToConsider;
    delete preDepositedInputTokens[msg.sender][_cSwapCounter][tok];
    preDepositedInputTokens[msg.sender][_cSwapCounter][swapToken] += balToConsider;
  }

  function getPendleStakeStatus(address atvContract, address token) public override view returns (bool){
    return isPendleStaked[atvContract][token];
  }

  /**
 * @notice Set Pendle configuration for a token (PT/LP mode and PT token address)
 * @param afiContract The vault contract
 * @param tok The underlying token
 * @param _usePTToken Boolean flag: true for PT mode, false for LP mode
 * @param _pendlePTToken PT token address (only used if _usePTToken is true)
 */
  function setPendleTokenConfig(
    address afiContract,
    address tok,
    address _pendlePTUnderlying,
    bool _usePTToken,
    address _pendlePTToken
  ) external {
    validateController(afiContract);
    validateAddress(afiContract, address(0));
    validateAddress(tok, address(0));
    
    usePTToken[afiContract][tok] = _usePTToken;
    
    if (_usePTToken) {
      validateAddress(_pendlePTToken, address(0));
      pendlePTToken[afiContract][tok] = _pendlePTToken;
      pendlePTUnderlyingToken[afiContract][_pendlePTToken] = _pendlePTUnderlying;
    } else {
      // Clear PT token address if switching to LP mode
      delete pendlePTToken[afiContract][tok];
      delete pendlePTUnderlyingToken[afiContract][_pendlePTToken];
    }
  }

  // Getter for rebal 
  function getRebal() external view returns (address) {
    return rebal;
  }

  function validateController(address afiContract) internal view {
    address controller = getController(afiContract);
    validateCaller(msg.sender, controller);
  }

  function getController(address afiContract) internal view returns(address csController){
    (csController, ) = IUniswapOracleV3(uniswapOracleV3).getControllers(afiContract);
  }

  function closeLeverageAndGetCollateral(
    address afiContract,
    address oToken,
    bytes[] calldata pendleWithdrawData,
    uint256 fee,
    bytes calldata swapData
  ) external {
    validateController(afiContract);
    validateFlag(getLeverageStatus(afiContract));
    validateAddress(afiContract, address(0));
    address[] memory uToken = getUTokensFromVault(afiContract);
    compareIntEqual(uToken.length, 1);

    leveragePositionClosed[afiContract] = true;

    (, , address loanToken) = getMorphoTVLData(afiContract);

    IStakingManager(stakingManager).withdrawAllFinal(
      afiContract,
      loanToken,
      pendleWithdrawData[0]
    );
    (uint256 finalRedemption, uint256 seededFund) = perfomrFullCloser(
      afiContract,
      oToken,
      uToken[0],
      pendleWithdrawData[1],
      swapData
    );

    // 1. reste provider[uTok]
    provider[afiContract][uToken[0]] = 0;

    // 2. reset finalProvider[loanToken]
    finalProvider[afiContract][loanToken] = 0;

    _isStaked[afiContract][loanToken] = false;
    _isStaked[afiContract][uToken[0]] = false;
    isPendleStaked[afiContract][loanToken] = false;
    isPendleStaked[afiContract][uToken[0]] = false;

    // 3. fill predep with returned collateral amount 
    uint256 cSwapCounter = getCSwapCounterFromVault(afiContract);

    if (fee > 0) {
      // Validate: seededFund (loanToken) >= fee (cbBTC) in USD terms
      uint256 seededFundUSD = convertInUSDAndTok(loanToken, seededFund, false);
      uint256 feeUSD = convertInUSDAndTok(uToken[0], fee, false);
      validateGreaterEqual(seededFundUSD, feeUSD);
      IAFi(afiContract).sendProfitOrFeeToManager(msg.sender, fee, uToken[0]);
    }

    preDepositedInputTokens[afiContract][cSwapCounter][uToken[0]] += (finalRedemption - fee);
  }
  
  function resetLeveragePosition(address _vault) external {
    validateController(_vault);
    leveragePositionClosed[_vault] = false;
  }

  /**
   * @notice Checks the iToken and performs necessary deductions.
   * @dev This external function checks the iToken and performs deductions based on specified conditions.
   * @param r The redemption amount to be deducted.
   * @param oToken The address of the output token.
   * @param deadline The deadline for the transaction.
   * @return redemptionBalance The amount to be deducted.
   */
  function withdrawStableTokens(
    address afiContract,
    uint r,
    address oToken,
    address[] memory token,
    uint256 deadline,
    uint256[] memory minimumReturnAmount,
    bytes[] calldata swapData
  ) public override returns (uint256 redemptionBalance) {
    aFiVaultCaller(afiContract, uniswapOracleV3);
    tempCounter = IAFi(afiContract).getcSwapCounter();
    redemptionBalance = preDepositedInputTokens[afiContract][tempCounter][oToken];
    uint temp = convertInUSDAndTok(oToken, redemptionBalance, false);

    uint256 totalUSDCovered = temp;

    if (temp >= r) {
      redemptionBalance = convertInUSDAndTok(oToken, r, true);
      preDepositedInputTokens[afiContract][tempCounter][oToken] -= redemptionBalance;
    } else {
      delete preDepositedInputTokens[afiContract][tempCounter][oToken];
      temp = r - temp;
      uint temp1;
      uint256 preDepositedStableValue;
      for (uint i; i < token.length; i++) {
        preDepositedStableValue = preDepositedInputTokens[afiContract][tempCounter][
          token[i]
        ];
        if (preDepositedStableValue > 0 && token[i] != oToken) {
          totalUSDCovered += convertInUSDAndTok(token[i], preDepositedStableValue, false);
          temp1 = convertInUSDAndTok(token[i], temp, true);
          if (temp1 > preDepositedStableValue) {
            redemptionBalance += IAFi(afiContract).swapfromSelectiveDex(
              token[i],
              oToken,
              preDepositedStableValue,
              deadline,
              WETH,
              minimumReturnAmount[i],
              swapData[i]
            );
            temp -= convertInUSDAndTok(token[i], preDepositedStableValue, false);
            delete preDepositedInputTokens[afiContract][tempCounter][token[i]];
          } else {
            (redemptionBalance, temp) = handleSmallSwap(
              afiContract,
              token[i],
              oToken,
              tempCounter,
              temp1,
              deadline,
              minimumReturnAmount[i],
              swapData[i],
              redemptionBalance
            );
            break;
          }
        }
      }
    }

    uint256 tempInUSD = convertInUSDAndTok(oToken, redemptionBalance, false);
    validateGreaterEqual(totalUSDCovered, r);


    if (msg.sender == afiContract) {
      if (
        (stablesWithdrawn[msg.sender][oToken][tempCounter] + tempInUSD) >
        stablesWithdrawalLimit[msg.sender][oToken]
      ) {
        revert("Insufficient balance!!");
      } else {
        stablesWithdrawn[msg.sender][oToken][tempCounter] += tempInUSD;
      }
    }
  }

  function handleSmallSwap(
    address afiContract,
    address tokenIn,
    address tokenOut,
    uint256 _cSwapCounter,
    uint256 temp1,
    uint256 deadline,
    uint256 minimumReturnAmount,
    bytes calldata swapData,
    uint256 currentBalance
  ) private returns (uint256, uint256) {
    uint256 returnAmount;
    (returnAmount) = IAFi(afiContract).swapfromSelectiveDex(
      tokenIn,
      tokenOut,
      temp1,
      deadline,
      WETH,
      minimumReturnAmount,
      swapData
    );
    currentBalance += returnAmount;
    preDepositedInputTokens[afiContract][_cSwapCounter][tokenIn] -= temp1;
    return (currentBalance, 0); // 0 replaces the deleted temp
  }

  function getExtraTokens(address afiContract) internal view returns (address[] memory) {
    return IAFi(afiContract).getHelperTokens();
  }

}