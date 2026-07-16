// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

import "./IAFi.sol";
import "./IPassiveRebal.sol";
import {OwnableDelayModule} from "./OwnableDelayModule.sol";
import "./IUniswapV3.sol";

// Morpho Blue interface
interface IMorphoBlue {
    struct MarketParams {
        address loanToken;
        address collateralToken;
        address oracle;
        address irm;
        uint256 lltv;
    }
}

interface IMorphoVault {
  function convertToAssets(uint256 shares) external view returns (uint256);
}

interface IAtvDexAdapter {
    function executeRouterCall(
        address base,
        address tokenIn,
        uint256 amountIn,
        address tokenOut,
        bool isRemoval,
        bytes calldata apiCallData
    ) external payable returns (uint256);
}

interface IAtvMorphoBlueIntegration {
    function openLeveragePositionBundled(
        address atvBaseContract,
        address uToken,
        address collateralToken,
        address loanToken,
        uint256 collateralAmount,
        uint256 borrowAmount,
        IMorphoBlue.MarketParams memory marketParams
    ) external returns (uint256 assetsBorrowed);
    function partialDeleverageBundled(
        address atvBaseContract,
        uint256 repayAmount,
        bytes32 marketId
    ) external returns (uint256 assetsRepaid);
    function calculateTotalCollateralSupplied(
        address vault,
        bytes32 marketId
    ) external view returns (address uTok, uint256 cSupplied, address cToken, uint256 bAmount, address bToken);
    function getVaultMarkets(address vault) external view returns (bytes32[] memory);
    function closeLeveragePositionBundled(
        address atvBaseContract,
        bytes32 marketId
    ) external returns (uint256 collateralReturned, uint256 seedByPlatform);
      /**
     * @notice Repay debt for a vault's Morpho position
     * @param vault The vault address
     * @param loanToken The loan token to repay
     * @param amount The amount to repay
     * @return actualRepaid The actual amount repaid (may differ due to interest)
     */
    function repayDebt(
        address vault,
        address loanToken,
        uint256 amount
    ) external returns (uint256 actualRepaid);
    
    /**
     * @notice Withdraw collateral from a vault's Morpho position
     * @param vault The vault address
     * @param collateralToken The collateral token to withdraw
     * @param amount The amount of collateral to withdraw
     * @return actualWithdrawn The actual amount withdrawn
     */
    function withdrawCollateral(
        address vault,
        address collateralToken,
        uint256 amount
    ) external returns (uint256 actualWithdrawn);
    
    /**
     * @notice Get the health factor of a position
     * @param vault The vault address
     * @param marketId The market identifier
     * @return healthFactor The health factor (1e18 = 1.0)
     */
    function getHealthFactor(
        address vault,
        bytes32 marketId
    ) external view returns (uint256 healthFactor);

    function healthFactorcheck(address vault, address ctoken, address lToken, address oracle, uint256 collateralamount, uint256 borrowAmount, uint256 lltv) external view returns (uint256);
    
    /**
     * @notice Check if a position is safe after potential changes
     * @param vault The vault address
     * @param marketId The market identifier
     * @param collateralChange The change in collateral (negative for withdrawal)
     * @param debtChange The change in debt (negative for repayment)
     * @return isSafe Whether the position would be safe
     */
    function isPositionSafe(
        address vault,
        bytes32 marketId,
        int256 collateralChange,
        int256 debtChange
    ) external view returns (bool isSafe);
    function withdrawCollateralBundled(
        address atvBaseContract,
        uint256 collateralToWithdraw, 
        bytes32 marketId
    ) external returns (uint256 collateralWithdrawn);

    function distributeProfitShare(
        address aFiContract,
        uint256 share,
        address oToken,
        uint256 depositNAV,
        uint256 redemptionNAV
    ) external returns (uint256 totalProfitShare);
}

interface IStakingManager {
    function supplyAave(address afiContract, address tok, uint256 amount) external;
    function supplyPendle(address afiContract, address tok, uint256 amount, bytes calldata pendleData) external returns (uint256);
    function supplyMoonwell(address afiContract, address tok, uint256 amount) external;
    function supplyMorpho(address afiContract, address tok, uint256 amount) external;
    function supplyWithLeverage(
        address afiContract,
        address tok,
        uint256 amount,
        uint256[] memory providers,
        bytes[] calldata pendleData
        ) external returns (uint256 finalStakedAmount, uint256 finalProvider, address lToken);
    function withdrawAave(address afiContract, address tok, uint256 amount) external;
    function withdrawPendle(address afiContract, address tok, uint256 lpSharesAmount, bytes calldata pendleWithdrawData) external returns (uint256);
    function withdrawMoonwell(address afiContract, address tok, uint256 amount) external;
    function withdrawMorpho(address afiContract, address tok, uint256 amount) external;
    function withdrawAll(address afiContract, address tok, bytes calldata pendleWithdrawData) external returns (bool);
    function withdrawSome(address afiContract, address tok, uint256 amount, bytes calldata pendleWithdrawData) external returns (bool);
    function getBalances(address afiContract, address tok) external view returns (
        uint256 aaveBalance,
        uint256 pendleBalance,
        uint256 moonwellBalance,
        uint256 morphoBalance,
        uint256 tokenBalance
    );
    function balanceOfUnderlyingInPoolsAndContract(address tok, address afiContract) external view returns (uint256);
    function calcPoolValue(address tok, address afiContract) external view returns (uint256);
    function calcPoolValueSomeRead(address tok, address afiContract, uint256 price, uint256 multiplier, bool isExtra) external view returns (uint256);
    function getPendleLPPriceInUSD(address pendleMarket) external view returns (uint256);
    function convertAssetsToShares(address afiContract, address tok, uint256 assetAmount) external view returns (uint256);
    function distributeProfitShare(address aFiContract, uint256 share, address oToken, uint256 depositNAV, uint256 redemptionNAV) external returns (uint256);
    function getTargetLTV(address vault) external view returns (uint256);
    function getLeverageMarket(address vault, address token) external view returns (IMorphoBlue.MarketParams memory);
    function isLeverageConfigured(address vault, address token) external view returns (bool);
    function isTargetLTVSafe(address vault, address token) external view returns (bool);
    function partialDeleverage(
        address vault,
        address token,
        uint256 alreadyRedeemed, //LoanToken address
        uint256 targetAmount,
        bytes[] calldata pendleWithdrawData,
        bool partialStatus
    ) external returns (uint256 amountReceived);
    
    function closeLeverage(
        address _vault
    ) external returns (
        address cToken,
        uint256 returnedCollateral,
        address uTok,
        address loanToken,
        uint256 seededFund
    );
    
    function getCollateralSupplied(
        address _vault
    ) external view returns (uint256);
    
    function getAtvMorphoTVL(
        address _vault
    ) external view returns (
        uint256 totalCollateral,
        uint256 loanAmount,
        address loanToken
    );
    
    function getLLTV(
        address vault,
        address token
    ) external view returns (uint256);
    
    function isLeverageEnable(
        address _vault
    ) external view returns (bool);
}

interface IMErc20 {
    function mint(uint mintAmount) external returns (uint);
    function redeem(uint redeemTokens) external returns (uint);
    function redeemUnderlying(uint redeemAmount) external returns (uint);
    function balanceOf(address owner) external view returns (uint);
    function exchangeRateStored() external view returns (uint);
}

/**
 * @title StakingManager
 * @notice Manages all staking operations for AFi vaults across Aave, Pendle, and Moonwell protocols
 * @dev Now supports leverage flow: Underlying → Pendle PT → Morpho Blue Leverage → Final Protocol
 */
contract StakingManager is IStakingManager, OwnableDelayModule {
    address public afiStorage;
    address public dexAdapter;
    address public morphoBlueIntegration;
    address public uniswapOracleV3;

    uint256 public LTVCap = 900000000000000000;
    uint256 public safetyMergin = 50000000000000000;
    mapping(address => uint256) public interestBuffer; // 2 = .02% and 100 = 1%
    
    mapping(address => uint256) public targetLTV;
    mapping(address => mapping(address => IMorphoBlue.MarketParams)) public leverageMarkets;
    mapping(address => bool) internal leverageEnabled;
    mapping(address => mapping( address => uint256)) public recievedFromOldProvider;
    mapping(address => mapping( address => bool)) public providerSwitchStarted;
    mapping(address => bool) internal providerSwitchInProcess;

    mapping(address => mapping(address => uint256)) public stepTwoLending; // vault => token => finalProvider

    // struct definition at contract level
    struct PartialDeleverageData {
        address uTok;
        uint256 collateralSupplied;
        address cToken;
        uint256 currentDebt;
        uint256 debtToRepay;
        address loanToken;
    }

    // Events
    event SupplyAave(address indexed aFiContract, address uToken, uint256 amount);
    event SupplyPendle(address indexed vault, address indexed yieldToken, uint256 amount, uint256 lpOut);
    event SupplyMoonwell(address indexed aFiContract, address uToken, uint256 amount);
    event SupplyMorpho(address indexed aFiContract, address uToken, uint256 amount);
    event WithdrawAave(address indexed afiContract, address tok, uint256 amount);
    event WithdrawPendle(address afiContract, address tok, uint256 lpSharesAmount, uint256 aTokensOut);
    event WithdrawMoonwell(address indexed afiContract, address tok, uint256 amount);
    event WithdrawMorpho(address indexed afiContract, address tok, uint256 amount);
    event PartialDeleverageExecuted(address indexed vault, address indexed token, uint256 targetAmount, uint256 actualAmount, uint256 debtRepaid);
    event LeverageApplied(address indexed vault, address indexed token, uint256 originalAmount, uint256 leveragedAmount);
    event UpdateInterestBuffer(address indexed _vault, uint256 oldBuffer, uint256 newBuffer);
    event ProviderSwitchedStarted(
        address indexed afiContract,
        address indexed tok,
        uint256 fromProvider,
        bytes pendleWithdrawData
    );
    event ProviderSwitched(
        address indexed afiContract,
        address indexed tok,
        uint256 toProvider,
        bytes pendleSupplyData,
        bool rebalTotalAmount
    );
    event ProviderSwitchReset(address indexed afiContract, address indexed tok);

    modifier onlyStorage() {
        addressEqual(msg.sender, afiStorage);
        _;
    }

    // ============= VALIDATION FUNCTIONS =============
    function addressNotZero(address addr) internal pure {
        require(addr != address(0), "SM01");
    }

    function addressEqual(address add1, address add2) internal pure {
        require(add1 == add2, "SM02");
    }

    function greaterThan(uint256 val1, uint256 val2) internal pure {
        require(val1 > val2, "SM03");
    }

    function greaterEqual(uint256 val1, uint256 val2) internal pure {
        require(val1 >= val2, "SM04");
    }

    function notZero(uint256 val) internal pure {
        greaterThan(val, 0);
    }

    // ============= CONFIGURATION FUNCTIONS =============
    function setStorage(address _storage) external onlyOwner {
        addressNotZero(_storage);
        afiStorage = _storage;
    }

    function setSafetyMargin(uint256 _margin) external onlyOwner {
        notZero(_margin);
        safetyMergin = _margin;
    }

    function setDexAdapter(address _dexAdapter) external onlyOwner {
        addressNotZero(_dexAdapter);
        dexAdapter = _dexAdapter;
    }

    function setMorphoBlueIntegration(address _integration) external onlyOwner {
        addressNotZero(_integration);
        morphoBlueIntegration = _integration;
    }

    function setTargetLTV(address vault, uint256 ltv) external onlyOwner {
        greaterEqual(LTVCap, ltv);
        targetLTV[vault] = ltv;
    }

    function setLeverageMarket(
        address vault,
        address token,
        address loanToken,
        address collateralToken,
        address oracle,
        address irm,
        uint256 maxLltv
    ) external onlyOwner {
        leverageMarkets[vault][token] = IMorphoBlue.MarketParams({
            loanToken: loanToken,
            collateralToken: collateralToken,
            oracle: oracle,
            irm: irm,
            lltv: maxLltv
        });
    }

    function setLeverageEnable(address _vault, bool status) external{
        checkCsController(_vault);
        leverageEnabled[_vault] = status;
    }

    function updateInterestBuffer(address _vault, uint256 _interestBuffer) external {
        checkCsController(_vault);
        uint256 oldBuffer = interestBuffer[_vault];
        interestBuffer[_vault] = _interestBuffer;
        emit UpdateInterestBuffer(_vault, oldBuffer, _interestBuffer);
    }

    // ============= SUPPLY FUNCTIONS =============
    function supplyAave(address afiContract, address tok, uint256 amount) external onlyStorage {
        supplyToAave(afiContract, tok, amount);
    }

    function supplyToAave(address afiContract, address tok, uint256 amount) internal {
        IAFi(afiContract)._supplyAave(tok, amount);
        emit SupplyAave(afiContract, tok, amount);
    }

    function supplyPendle(
        address afiContract,
        address tok,
        uint256 amount,
        bytes calldata pendleData
    ) external onlyStorage returns (uint256 pendleOut) {
        uint256 pendleAmount = amount;
        if (pendleAmount > 0 && pendleData.length > 0) {
            address targetToken = checkLPOrPT(afiContract, tok);
            addressNotZero(targetToken);
            
            pendleOut = callDexAdapter(
                afiContract,
                tok,
                pendleAmount,
                targetToken,
                false,
                pendleData
            );

            emit SupplyPendle(afiContract, tok, pendleAmount, pendleOut);
        }
        return pendleOut;
    }

    function callDexAdapter(
        address base,
        address tokenIn,
        uint256 amountIn,
        address tokenOut,
        bool isRemoval,
        bytes calldata apiCallData
    ) internal returns (uint256) {
        return IAtvDexAdapter(dexAdapter).executeRouterCall(
            base,
            tokenIn,
            amountIn,
            tokenOut,
            isRemoval,
            apiCallData
        );
    }

    function supplyMoonwell(address afiContract, address tok, uint256 amount) external onlyStorage {
        supplyToMoonwell(afiContract, tok, amount);
    }

    function supplyToMoonwell(address afiContract, address tok, uint256 amount) internal {
        IAFi(afiContract)._supplyMoonwell(tok, amount);
        emit SupplyMoonwell(afiContract, tok, amount);
    }

    function supplyMorpho(address afiContract, address tok, uint256 amount) external onlyStorage {
        supplyToMorpho(afiContract, tok, amount);
    }

    function supplyToMorpho(address afiContract, address tok, uint256 amount) internal {
        IAFi(afiContract)._supplyMorpho(tok, amount);
        emit SupplyMorpho(afiContract, tok, amount);
    }

    // ============= LEVERAGE FUNCTIONS =============
    function supplyWithLeverage(
        address afiContract,
        address tok,
        uint256 amount,
        uint256[] memory providers,
        bytes[] calldata pendleData
    ) external onlyStorage returns (uint256 finalStakedAmount, uint256 finalProvider, address lToken) {
        addressNotZero(morphoBlueIntegration);
        notZero(amount);
        greaterEqual(providers.length, 2);
        
        uint256 vaultTargetLTV = targetLTV[afiContract];
        IMorphoBlue.MarketParams memory marketParams = leverageMarkets[afiContract][tok];
        
        notZero(vaultTargetLTV);
        addressNotZero(marketParams.loanToken);

        greaterEqual((marketParams.lltv - safetyMergin), vaultTargetLTV);
        
        uint256 collateralProvider = providers[0];
        finalProvider = providers[1];
        uint256 collateralAmount = _convertToCollateralToken(afiContract, tok, amount, collateralProvider, pendleData[0]);

        uint256 leveragedAmount;
        (leveragedAmount, lToken) = _applyMorphoLeverage(afiContract, tok, collateralAmount, collateralProvider, marketParams);

        finalStakedAmount = _stakeLeveragedAmount(afiContract, lToken, leveragedAmount, finalProvider, pendleData[1]);        
        emit LeverageApplied(afiContract, tok, amount, finalStakedAmount);
        return (finalStakedAmount, finalProvider, lToken);
    }

    function _convertToCollateralToken(
        address afiContract,
        address tok,
        uint256 amount,
        uint256 collateralProvider,
        bytes calldata pendleData
    ) internal returns (uint256 collateralAmount) {
        if (collateralProvider == 1) {
            address pendleMarket = getPendleMarket(afiContract, tok);
            addressNotZero(pendleMarket);
            notZero(pendleData.length);
            collateralAmount = _convertToPendleToken(afiContract, tok, amount, pendleData);
        } else if (collateralProvider == 2) {
            address aToken = getAavePool(afiContract, tok);
            addressNotZero(aToken);
            collateralAmount = _convertToAaveToken(afiContract, tok, amount);
        } else if (collateralProvider == 3) {
            address mToken = getMoonWellPool(afiContract, tok);
            addressNotZero(mToken);
            collateralAmount = _convertToMoonwellToken(afiContract, tok, amount);
        } else {
            collateralAmount = amount;
        }
        notZero(collateralAmount);
        return collateralAmount;
    }

    function _applyMorphoLeverage(
        address afiContract,
        address tok,
        uint256 collateralAmount,
        uint256 collateralProvider,
        IMorphoBlue.MarketParams memory marketParams
    ) internal returns (uint256 leveragedAmount, address loanToken) {
        uint256 vaultTargetLTV = targetLTV[afiContract];
        if (vaultTargetLTV == 0) {
            return (collateralAmount, loanToken);
        }
    
        // Enable collateral conversion only if provider is 0 (first provider skipped)
        bool enableCollateralConversion = (collateralProvider == 0);
        // Convert collateral to loan token value for LTV calculation
        uint256 collateralAssetAmount = _convertSharesToAssets(
            afiContract, 
            tok, // underlying token
            marketParams.loanToken,  // Target token for conversion
            collateralAmount,
            marketParams.collateralToken,  // Source collateral token
            enableCollateralConversion  // Enable conversion if provider is 0
        );
        
        uint256 borrowAmount = (collateralAssetAmount * vaultTargetLTV) / 1e18;
        
        // PRE-OPEN HEALTH CHECK
        healthCheck(afiContract, marketParams.collateralToken, marketParams.loanToken, marketParams.oracle, collateralAssetAmount, borrowAmount, marketParams.lltv);
        uint256 actualBorrowed = IAtvMorphoBlueIntegration(morphoBlueIntegration).openLeveragePositionBundled(
            afiContract,
            tok,
            marketParams.collateralToken,
            marketParams.loanToken,
            collateralAmount,
            borrowAmount,
            marketParams
        );

        // POST-OPEN HEALTH CHECK
        healthCheck(afiContract, marketParams.collateralToken, marketParams.loanToken, marketParams.oracle, collateralAssetAmount, actualBorrowed, marketParams.lltv);
        
        return (actualBorrowed, marketParams.loanToken);
    }

    function healthCheck(address vault, address cTok, address lTok, address oracle, uint256 collateralamount, uint256 borrowAmount, uint256 lltv) internal view {
        IAtvMorphoBlueIntegration(morphoBlueIntegration).healthFactorcheck(vault, cTok, lTok, oracle, collateralamount, borrowAmount, lltv);
    }

    function _stakeLeveragedAmount(
        address afiContract,
        address tok,
        uint256 amount,
        uint256 finalProvider,
        bytes calldata pendleData
    ) internal returns (uint256 stakedAmount) {
        // Update the stepTwoLending mapping
        stepTwoLending[afiContract][tok] = finalProvider;
        if (finalProvider == 1) {
            uint256 pendleAmount = balance(tok, afiContract);
            stakedAmount = (pendleAmount > 0 && pendleData.length > 0) ? 
                _supplyPendleInternal(afiContract, tok, pendleAmount, pendleData) : 
                pendleAmount;
        } else if (finalProvider == 2) {
            supplyToAave(afiContract, tok, amount);
            stakedAmount = amount;
        } else if (finalProvider == 3) {
            supplyToMoonwell(afiContract, tok, amount);
            stakedAmount = amount;
        } else if (finalProvider == 4) {
            supplyToMorpho(afiContract, tok, amount);
            stakedAmount = amount;
        } else {
            revert("SM06");
        }
        return stakedAmount;
    }

    // ============= WITHDRAWAL FUNCTIONS =============
    function withdrawAave(address afiContract, address tok, uint256 amount) external onlyStorage {
        IAFi(afiContract)._withdrawAave(tok, amount);
        emit WithdrawAave(afiContract, tok, amount);
    }

    function checkLPOrPT(address vault, address tok) internal view returns(address){
        bool usePT = checkPTTokenStatus(vault, tok);
        return usePT ?
            getPendlePTToken(vault, tok) :
            getPendleMarket(vault, tok);
    }

    function withdrawPendle(
        address afiContract,
        address tok,
        uint256 shareAmount,
        bytes calldata pendleWithdrawData
    ) external onlyStorage returns (uint256 tokensOut) {
        address sourceToken = checkLPOrPT(afiContract, tok);
        addressNotZero(sourceToken);        
        tokensOut = callDexAdapter(
            afiContract,
            sourceToken,
            shareAmount,
            tok,
            true,
            pendleWithdrawData
        );
        emit WithdrawPendle(afiContract, tok, shareAmount, tokensOut);
        return tokensOut;
    }

    function withdrawMoonwell(address afiContract, address tok, uint256 amount) external onlyStorage {
        IAFi(afiContract)._withdrawMoonwell(tok, amount);
        emit WithdrawMoonwell(afiContract, tok, amount);
    }

    function withdrawMorpho(address afiContract, address tok, uint256 amount) external onlyStorage {
        IAFi(afiContract)._withdrawMorpho(tok, amount);
        emit WithdrawMorpho(afiContract, tok, amount);
    }

    function withdrawAll(
        address afiContract,
        address tok,
        bytes calldata pendleWithdrawData
    ) external onlyStorage returns (bool) {
        uint256 provider = getTheprovider(afiContract, tok);
        return withdrawAllForTok(afiContract, tok, pendleWithdrawData, provider);
    }

    function setafiOracleContract(address _afiOracle) external onlyOwner {
        addressNotZero(_afiOracle);
        uniswapOracleV3 = _afiOracle;
    }

    function providerSwitchInitial(
        address afiContract,
        address tok,
        bytes calldata pendleWithdrawData
    ) external returns(uint256 amount) {
        checkCsController(afiContract);
        require(!providerSwitchStarted[afiContract][tok], "Provider switch still in the process"); 
        providerSwitchStarted[afiContract][tok] = true;
        providerSwitchInProcess[afiContract] = true;
        uint256 fromProvider = getFinalProvider(afiContract, tok);
       
        // 1) Withdraw everything from old provider
        uint256 beforeAmount = balance(tok, afiContract);

        withdrawAllForTok(afiContract, tok, pendleWithdrawData, fromProvider);

        // 2) Stake whole balance into new provider
        uint256 afterAmount = balance(tok, afiContract);

        require(afterAmount >= beforeAmount, "Balance underflow");

        amount = afterAmount - beforeAmount;
        recievedFromOldProvider[afiContract][tok] = amount;
        if(fromProvider == 1) {
            setPendleStakedStatus(afiContract, tok, false);      
        }
        updateFinalProvider(afiContract, tok, 0);

        emit ProviderSwitchedStarted(
            afiContract,
            tok,
            fromProvider,
            pendleWithdrawData
        );
    }

    function setPendleStakedStatus(address afiContract, address tok, bool _flag) internal {
        IAFiStorage(afiStorage).setPendleStaked(afiContract, tok, _flag);      
    }

    function checkCsController(address afiContract) internal view {
        (address csController, ) = IUniswapOracleV3(uniswapOracleV3).getControllers(afiContract);
        addressEqual(csController, msg.sender);
    }

    function updateFinalProvider(address afiContract, address tok, uint256 toProvider) internal {
        IAFiStorage(afiStorage).updateFinalProvider(afiContract, tok, toProvider);
    }

    // Intentionally stake the entire net balance change after withdraw,
    // including rewards, dust, or rebased amounts.
    function providerSwitchfinal(
        address afiContract,
        address tok,
        uint256 toProvider,
        bytes calldata pendleSupplyData,
        bool rebalTotalAmount
    ) external {
        checkCsController(afiContract);
        require(providerSwitchStarted[afiContract][tok], "Provider switch not initialized");
      
        // 2) Stake whole balance into new provider
        uint256 currentBalance = balance(tok, afiContract);
        uint256 amount;

        if(rebalTotalAmount){
            amount = currentBalance;
        } else {
            amount = recievedFromOldProvider[afiContract][tok];
        }

        greaterThan(amount, 0);
        greaterEqual(balance(tok, afiContract), amount);

        _stakeLeveragedAmount(afiContract, tok, amount, toProvider, pendleSupplyData);
        updateFinalProvider(afiContract, tok, toProvider);
        if(toProvider == 1) {
            setPendleStakedStatus(afiContract, tok, true);      
        }

        recievedFromOldProvider[afiContract][tok] = 0;
        providerSwitchStarted[afiContract][tok] = false;
        providerSwitchInProcess[afiContract] = false;
        emit ProviderSwitched(
            afiContract,
            tok,
            toProvider,
            pendleSupplyData,
            rebalTotalAmount
        );
    }

    // This function is to be called at the time of emergency if restaking is not possible 
    // or facing issue in restaking
    function providerSwitchReset(
        address afiContract,
        address tok
    ) external {
        checkCsController(afiContract);
        require(providerSwitchStarted[afiContract][tok], "No switch in progress");
        
        // Just reset flags, funds remain unstaked
        recievedFromOldProvider[afiContract][tok] = 0;
        providerSwitchStarted[afiContract][tok] = false;
        providerSwitchInProcess[afiContract] = false;
        
        // finalProvider stays at 0 (unstaked)
        
        emit ProviderSwitchReset(afiContract, tok);
    }

    function withdrawAllFinal(
        address afiContract,
        address tok,
        bytes calldata pendleWithdrawData
    ) external onlyStorage returns (bool) {
        uint256 provider = getFinalProvider(afiContract, tok);
        return withdrawAllForTok(afiContract, tok, pendleWithdrawData, provider);
    }

    function withdrawAllForTok( 
        address afiContract,
        address tok,
        bytes calldata pendleWithdrawData,
        uint256 provider
    ) internal returns(bool) 
    {
        if (provider == 1) {

            uint256 pendleBalance = _getPendleBalance(afiContract, tok);

            if (pendleBalance > 1) {
                _withdrawPendle(afiContract, tok, pendleBalance - 1, pendleWithdrawData);
            }
        }
        
        if (provider == 2) {
            uint256 aaveBalance = _getAaveBalance(afiContract, tok);
            if (aaveBalance >= 1) {
                _withdrawAave(afiContract, tok, aaveBalance);
            }
        }
        
        if (provider == 3) {
            uint256 moonwellBalance = _getMoonwellBalance(afiContract, tok);
            if (moonwellBalance >= 1) {
                _withdrawMoonwell(afiContract, tok, moonwellBalance);
            }
        }
        
        if (provider == 4) {
            uint256 morphoBalance = _getMorphoBalance(afiContract, tok);
            if (morphoBalance >= 1) {
                _withdrawMorpho(afiContract, tok, morphoBalance);
            }
        }
        
        return true;
    }

    function withdrawSome(
        address afiContract,
        address tok,
        uint256 amount,
        bytes calldata pendleWithdrawData
    ) external onlyStorage returns (bool) {
        uint256 provider;
        if (!leverageEnabled[afiContract]) {
            provider = getTheprovider(afiContract, tok);
        } else {
            provider = getFinalProvider(afiContract, tok);
        }
        if (provider == 1 && IAFiStorage(afiStorage).isPendleStaked(afiContract, tok)) {
            uint256 pendleBalance = _getPendleBalance(afiContract, tok);
            if (pendleBalance >= 1) {
                uint256 lpSharesAmount = _convertAssetsToShares(afiContract, tok, amount);
                greaterEqual(pendleBalance, lpSharesAmount);
                if (lpSharesAmount > 0) {
                    _withdrawPendle(afiContract, tok, lpSharesAmount, pendleWithdrawData);
                    return true;
                }
            }
        }
        
        if (provider == 2) {
            uint256 aaveBalance = _getAaveBalance(afiContract, tok);
            greaterEqual(aaveBalance, amount);
            _withdrawAave(afiContract, tok, amount);
            return true;
        }
            
        if (provider == 3) {
            uint256 moonwellBalance = _getMoonwellBalance(afiContract, tok);
            greaterEqual(moonwellBalance, amount);
            _withdrawMoonwell(afiContract, tok, amount);
            return true;
        }
        
        if (provider == 4) {
            uint256 morphoBalance = _getMorphoBalance(afiContract, tok);
            greaterEqual(morphoBalance, amount);
            _withdrawMorpho(afiContract, tok, amount);
            return true;
        }
        return false;
    }

    // ============= DELEVERAGE FUNCTIONS =============
    function closeLeverage(address _vault) external onlyStorage returns (
        address cToken,
        uint256 returnedCollateral,
        address uTok,
        address loanToken,
        uint256 seededFund
    ) {
        bytes32[] memory markets = getLeverageMarkets(_vault);
        (uTok, , cToken, , loanToken) = IAtvMorphoBlueIntegration(morphoBlueIntegration).calculateTotalCollateralSupplied(_vault, markets[markets.length-1]);        
        (returnedCollateral, seededFund) = IAtvMorphoBlueIntegration(morphoBlueIntegration).closeLeveragePositionBundled(_vault, markets[markets.length-1]);
        
        return (cToken, returnedCollateral, uTok, loanToken, seededFund);
    }

    function partialDeleverage(
        address vault,
        address token,
        uint256 alreadyRedeemed, //LoanToken amount collected
        uint256 targetAmount, //LoanToken amount needed
        bytes[] calldata pendleWithdrawData,
        bool partialStatus
    ) external onlyStorage returns (uint256 amountReceived) {
        // Use struct to avoid stack too deep
        PartialDeleverageData memory data;
        
        // Get collateral data
        (data.uTok, data.collateralSupplied, data.cToken, data.currentDebt, data.loanToken) = getCollateralData(vault);
        
        notZero(data.currentDebt);
        addressEqual(data.uTok, token);
        
        // Calculate debt to repay in loanToken
        data.debtToRepay = _calculateDebtToRepay(
            vault,
            token, //this needs to be loanToken
            data.loanToken, //this needs to be loanToken
            targetAmount,  // needed loanToken amount
            data.currentDebt,
            data.collateralSupplied
        );

        greaterEqual(data.currentDebt, data.debtToRepay);        
        // Repay and get collateral
        uint256 preDep = IAFiStorage(afiStorage).getPreSwapDepositsTokens(vault, IAFi(vault).getcSwapCounter(), data.loanToken);
        uint256 loanTokenBalance = balance(data.loanToken, vault) - preDep;
        amountReceived = _executeDeleverageAndConvert(
            vault,
            token,
            alreadyRedeemed,
            data.loanToken,
            data.cToken,
            loanTokenBalance,
            data.collateralSupplied,
            data.currentDebt,
            pendleWithdrawData[1]
        );
        emit PartialDeleverageExecuted(vault, token, targetAmount, amountReceived, data.debtToRepay);
    }

    function _calculateDebtToRepay(
        address vault,
        address token, // uToken
        address lToken, // loan Token 
        uint256 targetAmount, // loan Token amount to get
        uint256 currentDebt, // loan Token Full debt
        uint256 collateralSupplied
    ) public view returns (uint256 debtToRepay) {        
        uint256 collateralProvider = getTheprovider(vault, token);

        // Get the loan token from leverage markets
        IMorphoBlue.MarketParams memory marketParams = leverageMarkets[vault][token];
        uint256 totalColleteralInLoanToken;
        bool enableCollateralConversion = (collateralProvider == 0);

        // Convert with price conversion for different token types
        totalColleteralInLoanToken = _convertSharesToAssets(
            vault, 
            token,
            lToken, 
            collateralSupplied,
            marketParams.collateralToken,
            enableCollateralConversion  // Enable collateral conversion
        );
      
        uint256 currentLTV = (currentDebt * 1e18) / totalColleteralInLoanToken;
        debtToRepay = (targetAmount * currentLTV) / 1e18;

        uint256 interestAmount = (debtToRepay * interestBuffer[vault]) / 10000;
        debtToRepay = (debtToRepay + interestAmount); 
    }

    function _executeDeleverageAndConvert(
        address vault,
        address token,
        uint256 _alreadyRedeemed,
        address loanToken,
        address cToken,
        uint256 debtToRepay,
        uint256 collateralSupplied,
        uint256 currentDebt,
        bytes calldata pendleWithdrawData
    ) internal returns (uint256 amountReceived) {
        bytes32[] memory markets = getLeverageMarkets(vault);
        uint256 repaid = IAtvMorphoBlueIntegration(morphoBlueIntegration).partialDeleverageBundled(
            vault,
            debtToRepay,
            markets[markets.length-1]
        );
        uint256 collateralToWithdraw = (collateralSupplied * repaid) / currentDebt;

        collateralToWithdraw = IAtvMorphoBlueIntegration(morphoBlueIntegration).withdrawCollateralBundled(
            vault,
            collateralToWithdraw,
            markets[markets.length-1]
        );
        amountReceived = _convertCollateralToUnderlying(vault, token, cToken, collateralToWithdraw, pendleWithdrawData);
    } 

    function getAavePool(address _vault, address tok) internal view returns (address) {
        return IAFiStorage(afiStorage).aaveTokenCopy(_vault, tok);
    }

    function getMoonWellPool(address _vault, address tok) internal view returns (address) {
        return IAFiStorage(afiStorage).moonwellToken(_vault, tok);
    }

    function getMorphoPool(address _vault, address tok) internal view returns (address) {
        return IAFiStorage(afiStorage).morphoVault(_vault, tok);
    }

    function getPendlePTToken(address _vault, address tok) internal view returns (address) {
        return IAFiStorage(afiStorage).pendlePTToken(_vault, tok);
    }

    function getPendleMarketUnderlyingToken(
        address vault,
        address marketToken
    ) internal view returns (address) {
        return IAFiStorage(afiStorage).pendleMarketUnderlyingToken(vault, marketToken);
    }

    function getPendlePTTokenUnderlying(
        address vault,
        address tok
    ) internal view returns (address) {
        address pt = getPendlePTToken(vault, tok);
        if (pt != address(0)) {
            // Normal PT flow: vault + PT → underlying
            return IAFiStorage(afiStorage).pendlePTUnderlyingToken(vault, pt);
        }

        // Fallback: treat `tok` as Pendle market token and get its underlying
        // (or use getPendleMarket(vault, tok) if tok is base and you store market separately)
        address underlying = getPendleMarketUnderlyingToken(vault, tok);
        return underlying;
    }

    function balance(address tok, address user) internal view returns (uint) {
        return IERC20(tok).balanceOf(user);
    }

    function getCollateralData(address _vault) internal view returns (
        address uTok,
        uint256 cSupplied,
        address cToken,
        uint256 maxRepay,
        address loanToken
    ) {
        bytes32[] memory markets = getLeverageMarkets(_vault);
        if (markets.length == 0) {
            return (address(0), 0, address(0), 0, address(0));
        }
        return IAtvMorphoBlueIntegration(morphoBlueIntegration).calculateTotalCollateralSupplied(_vault, markets[markets.length-1]);
    }

    function getLeverageMarkets(address _vault) internal view returns(bytes32[] memory){
        return IAtvMorphoBlueIntegration(morphoBlueIntegration).getVaultMarkets(_vault);
    }

    function _convertToAaveToken(address afiContract, address tok, uint256 amount) internal returns (uint256) {
        address aToken = getAavePool(afiContract, tok);
        addressNotZero(aToken);
        uint256 initialBalance = balance(aToken, afiContract);
        supplyToAave(afiContract, tok, amount);
        return balance(aToken, afiContract) - initialBalance;
    }

    function _convertToMoonwellToken(address afiContract, address tok, uint256 amount) internal returns (uint256) {
        address mToken = getMoonWellPool(afiContract, tok);
        addressNotZero(mToken);
        uint256 initialBalance = balance(mToken, afiContract);
        supplyToMoonwell(afiContract, tok, amount);
        return balance(mToken, afiContract) - initialBalance;
    }

    function getPendleMarket(address afiContract, address tok) internal view returns(address){
        return IAFiStorage(afiStorage).pendleMarketPlace(afiContract, tok);
    }

    function _convertToPendleToken(address afiContract, address tok, uint256 amount, bytes calldata pendleData) internal returns (uint256) {
        address pendleMarket = getPendleMarket(afiContract, tok);
        addressNotZero(pendleMarket);
        
        address targetToken = checkLPOrPT(afiContract, tok);
        addressNotZero(targetToken);
        
        uint256 initialBalance = balance(targetToken, afiContract);

        callDexAdapter(afiContract, tok, amount, targetToken, false, pendleData);
        uint256 pendleTokenAmount = balance(targetToken, afiContract) - initialBalance;
        notZero(pendleTokenAmount);
        return pendleTokenAmount;
    }

    function _convertSharesToAssets(
        address afiContract,
        address uToken,
        address lToken, // loanToken when collateralConversion is True and uToken if False
        uint256 shareAmount,
        address collateralToken,
        bool collateralConversion
    ) internal view returns (uint256 assetAmount) {
        // ----------------------------------------------------
        // Case 1: Collateral → Loan token (cross-token)
        // ----------------------------------------------------
        if (collateralConversion) {
            (uint256 collateralPrice, uint256 collateralMultiplier) =
                _getPriceInUSD(collateralToken);
            (uint256 loanTokenPrice, uint256 loanTokenMultiplier) =
                _getPriceInUSD(lToken);

            if (collateralPrice == 0 || loanTokenPrice == 0) return 0;

            uint8 cDec = uint8(getTokenDecimals(collateralToken));
            uint8 lDec = uint8(getTokenDecimals(lToken));

            // collateral -> 18
            uint256 collateral18 = _to18(shareAmount, cDec);

            // collateral18 -> USD (18)
            uint256 usdValue =
                (collateral18 * collateralPrice) / (10 ** collateralMultiplier);

            // USD (18) -> loan token (18)
            uint256 loan18 =
                (usdValue * (10 ** loanTokenMultiplier)) / loanTokenPrice;

            // 18 -> lDec
            assetAmount = _toDecimals(loan18, 18, lDec);
            return assetAmount;
        }

        // ----------------------------------------------------
        // Case 2: provider-based (uToken side)
        // ----------------------------------------------------
        uint256 collateralProvider = getTheprovider(afiContract, uToken);

        if (collateralProvider == 1) {
            // -------- Pendle --------
            assetAmount = _convertPendleSharesToUToken(
                afiContract,
                uToken,
                shareAmount
            );
        } else if (collateralProvider == 2) {
            // -------- Aave (aToken 1:1) --------
            address aToken = getAavePool(afiContract, uToken);
            addressNotZero(aToken);
            assetAmount = shareAmount;
        } else if (collateralProvider == 3) {
            // -------- Moonwell (exchangeRateStored 1e18) --------
            address mToken = getMoonWellPool(afiContract, uToken);
            addressNotZero(mToken);
            uint256 exchangeRate = IMErc20(mToken).exchangeRateStored();
            assetAmount = (shareAmount * exchangeRate) / 1e18;
        } else if (collateralProvider == 4) {
            // -------- Morpho vault (assumed 1:1) --------
            address morphoVault = getMorphoPool(afiContract, uToken);
            addressNotZero(morphoVault);
            assetAmount = shareAmount;
        } else {
            revert("SM07: Invalid protocol configuration");
        }

        // Optional: convert uToken -> lToken via USD when lToken != uToken
        if (lToken != uToken) {
            uint256 totalCollateralUSD =
                IAFiStorage(afiStorage).convertInUSDAndTok(uToken, assetAmount, false);
            assetAmount =
                IAFiStorage(afiStorage).convertInUSDAndTok(lToken, totalCollateralUSD, true);
        }

        return assetAmount;
    }

    function _convertPendleSharesToUToken(
        address afiContract,
        address uToken,
        uint256 shareAmount
    ) internal view returns (uint256 assetAmount) {
        address pendleMarket = getPendleMarket(afiContract, uToken);
        addressNotZero(pendleMarket);

        address rebal = getRebalanceContract();
        bool usePT = checkPTTokenStatus(afiContract, uToken);

        // underlying per 1 share, scaled 1e18 [web:56][web:69]
        uint256 sharePrice = usePT
            ? IPassiveRebal(rebal).getPtToAssetRate(pendleMarket)
            : IPassiveRebal(rebal).getNormalizedLpToAssetRate(pendleMarket);
        notZero(sharePrice);

        uint8 lpDec;
        if (usePT) {
            address sourceToken = checkLPOrPT(afiContract, uToken);
            lpDec = uint8(getTokenDecimals(sourceToken));
        } else {
            lpDec = uint8(getTokenDecimals(pendleMarket));
        }

        // shares -> 18-dec
        uint256 shares18 = _to18(shareAmount, lpDec);

        // 18-dec shares -> 18-dec underlying
        uint256 underlying18 = (shares18 * sharePrice) / 1e18;

        // NEW: resolve underlying same way as calcPoolValueinternalForPendle
        address underlying;
        if (usePT) {
            // uToken is the underlying side for PT
            underlying = getPendlePTTokenUnderlying(afiContract, uToken);
        } else {
            // LP mode: use market → underlying mapping
            underlying = getPendlePTTokenUnderlying(afiContract, pendleMarket);
        }

        if (uToken == underlying) {
            uint8 uDec = uint8(getTokenDecimals(uToken));
            return _toDecimals(underlying18, 18, uDec);
        }
        // underlying != uToken: underlying -> USD -> uToken
        (uint256 price, uint256 multiplier) = _getPriceInUSD(underlying);

        notZero(price);

        uint256 usdValue =
            (underlying18 * price) / (10 ** multiplier);

        (price, multiplier) = _getPriceInUSD(uToken);
        notZero(price);

        uint8 uDec = uint8(getTokenDecimals(uToken));

        uint256 uToken18 =
            (usdValue * (10 ** multiplier)) / price;

        return _toDecimals(uToken18, 18, uDec);
    }

    function _convertAssetsToShares(
        address afiContract,
        address tok,       // deposit token (e.g. USDC or underlying)
        uint256 assetAmount // amount of tok being deposited
    ) internal view returns (uint256) {
        address pendleMarket = getPendleMarket(afiContract, tok);
        address rebal = getRebalanceContract();

        bool usePT = checkPTTokenStatus(afiContract, tok);

        // PT/LP -> underlying rate, scaled 1e18 [web:56][web:69]
        uint256 lpPrice = usePT
            ? IPassiveRebal(rebal).getPtToAssetRate(pendleMarket)
            : IPassiveRebal(rebal).getNormalizedLpToAssetRate(pendleMarket);
        notZero(lpPrice);

        // Resolve underlying consistently with new mapping
        address underlying;
        if (usePT) {
            // tok is the underlying side for PT in your config
            underlying = getPendlePTTokenUnderlying(afiContract, tok);
        } else {
            // LP mode: market -> underlying mapping
            underlying = getPendlePTTokenUnderlying(afiContract, pendleMarket);
        }

        // Decimals of the share token (PT or LP)
        uint8 lpDecimals = usePT
            ? uint8(getTokenDecimals(getPendlePTToken(afiContract, tok)))
            : uint8(getTokenDecimals(underlying));

        uint256 shareAmount;

        if (tok == underlying) {
            // -------- Case 1: tok == underlying (simple) --------
            uint8 tokDecimals = uint8(getTokenDecimals(tok));

            // assets -> 18-decimal
            uint256 assetAmount18 = _to18(assetAmount, tokDecimals);

            // shares18 = (assetAmount18 * 1e18) / lpPrice
            uint256 shares18 = (assetAmount18 * 1e18) / lpPrice;

            // 18 -> lpDecimals
            shareAmount = _from18(shares18, lpDecimals);
        } else {
            // -------- Case 2: tok != underlying (USDC -> PT-USDe, etc.) --------

            // 1) tok -> USD
            (uint256 tokPrice, uint256 tokMultiplier) = _getPriceInUSD(tok);
            notZero(tokPrice);

            uint8 tokDecimals = uint8(getTokenDecimals(tok));
            uint256 assetAmount18 = _to18(assetAmount, tokDecimals);

            uint256 assetValueUSD =
                (assetAmount18 * tokPrice) / (10 ** tokMultiplier);

            // 2) 1 share -> USD via underlying
            (uint256 underlyingPrice, uint256 underlyingMultiplier) = _getPriceInUSD(underlying);
            notZero(underlyingPrice);

            // lpPrice: underlying per share (1e18); shareValueUSD: 18-decimal USD/share
            uint256 shareValueUSD =
                (lpPrice * underlyingPrice) / (10 ** underlyingMultiplier);

            // 3) USD deposit -> shares18
            uint256 shares18 = (assetValueUSD * 1e18) / shareValueUSD;
            shareAmount = _from18(shares18, lpDecimals);
        }

        uint256 availableShares = _getPendleBalance(afiContract, tok);
        return shareAmount > availableShares ? availableShares : shareAmount;
    }

    // ============= INTERNAL WITHDRAWAL FUNCTIONS =============
    function _withdrawAave(address afiContract, address tok, uint256 amount) internal {
        IAFi(afiContract)._withdrawAave(tok, amount);
        emit WithdrawAave(afiContract, tok, amount);
    }

    function _withdrawPendle(address afiContract, address tok, uint256 shareAmount, bytes calldata pendleWithdrawData) internal returns (uint256) {
        address sourceToken = checkLPOrPT(afiContract, tok);
        addressNotZero(sourceToken);

        uint256 tokensOut = callDexAdapter(afiContract, sourceToken, shareAmount, tok, true, pendleWithdrawData);
        emit WithdrawPendle(afiContract, tok, shareAmount, tokensOut);
        return tokensOut;
    }

     function _withdrawMoonwell(address afiContract, address tok, uint256 amount) internal {
        address mToken = getMoonWellPool(afiContract, tok);
        addressNotZero(mToken);
     
        // Convert underlying amount to mToken amount
        // If we want to withdraw 'amount' of underlying, we need to calculate how many mTokens to redeem
        // Formula: mTokensToRedeem = underlyingAmount / exchangeRate

        uint256 exchangeRate = IMErc20(mToken).exchangeRateStored();
        // ceiling division
        uint256 mTokensToRedeem = (amount * 1e18 + exchangeRate - 1) / exchangeRate;
    
        uint256 mTokenBal = balance(mToken, afiContract);
        if (mTokensToRedeem > mTokenBal) {
            mTokensToRedeem = mTokenBal;
        }
        IAFi(afiContract)._withdrawMoonwell(tok, mTokensToRedeem);
        emit WithdrawMoonwell(afiContract, tok, amount);
    }

    function _withdrawMorpho(address afiContract, address tok, uint256 amount) internal {
        address morphoVault = getMorphoPool(afiContract, tok);
        addressNotZero(morphoVault);
    
        IAFi(afiContract)._withdrawMorpho(tok, amount);
        emit WithdrawMorpho(afiContract, tok, amount);
    }

    function _supplyPendleInternal(address afiContract, address tok, uint256 amount, bytes calldata pendleData) internal returns (uint256) {
        address targetToken = checkLPOrPT(afiContract, tok);
        addressNotZero(targetToken);
        
        uint256 pendleOut = callDexAdapter(afiContract, tok, amount, targetToken, false, pendleData);
        emit SupplyPendle(afiContract, tok, amount, pendleOut);
        return pendleOut;
    }

    function getFinalProvider(address vault, address token) internal view returns(uint256){
        return IAFiStorage(afiStorage).finalProvider(vault, token);
    }

    function _convertCollateralToUnderlying(
        address vault, 
        address token, 
        address collateralToken, 
        uint256 collateralAmount, 
        bytes calldata pendleWithdrawData
    ) internal returns (uint256 underlyingAmount) {
        uint256 collateralProvider = getTheprovider(vault, token);
        
        if (collateralProvider == 1) {
            // Pendle conversion
            address sourceToken = checkLPOrPT(vault, token);
            underlyingAmount = callDexAdapter(
                vault, 
                sourceToken, 
                collateralAmount, 
                token, 
                true, 
                pendleWithdrawData
            );
        } else if (collateralProvider == 2) {
            // Aave - direct conversion (aTokens are 1:1)
            underlyingAmount = collateralAmount;
        } else if (collateralProvider == 3) {
            // Moonwell - use exchange rate
            uint256 exchangeRate = IMErc20(collateralToken).exchangeRateStored();
            underlyingAmount = (collateralAmount * exchangeRate) / 1e18;
        } else if (collateralProvider == 4) {
            // Morpho - convert shares to assets
            address morphoVault = getMorphoPool(vault, token);
            if (morphoVault != address(0) && collateralToken == morphoVault) {
                underlyingAmount = collateralAmount;
            }
        } else {
            // Default - no conversion
            underlyingAmount = collateralAmount;
        }
    }

    function _getAaveBalance(address afiContract, address tok) internal view returns (uint256) {
        address aToken = getAavePool(afiContract, tok);
        return (aToken == address(0)) ? 0 : balance(aToken, afiContract);
    }

    function checkPTTokenStatus(address afiContract, address tok) internal view returns(bool) {
        return IAFiStorage(afiStorage).usePTToken(afiContract, tok);
    }

    function _getPendleBalance(address afiContract, address tok) internal view returns (uint256) {
        address targetToken = checkLPOrPT(afiContract, tok);
        return (targetToken == address(0)) ? 0 : balance(targetToken, afiContract);
    }

    function _getMoonwellBalance(address afiContract, address tok) internal view returns (uint256) {
        address mToken = getMoonWellPool(afiContract, tok);
        if (mToken == address(0)) return 0;
        
        uint256 mTokenBalance = balance(mToken, afiContract);
        if (mTokenBalance > 0) {
            uint256 exchangeRate = IMErc20(mToken).exchangeRateStored();
            return (mTokenBalance * exchangeRate) / 1e18;
        }
        return 0;
    }

    function _getMorphoBalance(address afiContract, address tok) internal view returns (uint256) {
        address morphoVault = getMorphoPool(afiContract, tok);
        if (morphoVault == address(0)) return 0;
        
        uint256 shares = balance(morphoVault, afiContract);
        if (shares > 0) {
            // Convert shares to assets
            return IMorphoVault(morphoVault).convertToAssets(shares);
        }
        return 0;
    }

    function _getUnderlyingBalance(
        address afiContract,
        address tok,
        uint256 provider
    ) internal view returns (uint256 bal) {
        if (provider == 1 && getPendleMarket(afiContract, tok) != address(0)) {
            // Pendle: convert PT/LP shares to underlying tok
            uint256 pendleShares = _getPendleBalance(afiContract, tok);
            if (pendleShares > 0) {
                // uToken = tok, lToken = tok, collateralConversion = false
                bal += _convertSharesToAssets(
                    afiContract,
                    tok,
                    tok,
                    pendleShares,
                    address(0),
                    false
                );
            }
        }

        if (provider == 2 && getAavePool(afiContract, tok) != address(0)) {
            bal += _getAaveBalance(afiContract, tok);
        }
        if (provider == 3 && getMoonWellPool(afiContract, tok) != address(0)) {
            bal += _getMoonwellBalance(afiContract, tok);
        }
        if (provider == 4 && getMorphoPool(afiContract, tok) != address(0)) {
            bal += _getMorphoBalance(afiContract, tok);
        }
    }

    // ============= VIEW FUNCTIONS =============
    function getBalances(address afiContract, address tok) external view returns (
        uint256 aaveBalance,
        uint256 pendleBalance,
        uint256 moonwellBalance,
        uint256 morphoBalance,
        uint256 tokenBalance
    ) {
        return (
            _getAaveBalance(afiContract, tok),
            _getPendleBalance(afiContract, tok),
            _getMoonwellBalance(afiContract, tok),
            _getMorphoBalance(afiContract, tok),
            balance(tok, afiContract)
        );
    }

    function balanceOfUnderlyingInPoolsAndContract(address tok, address afiContract) external view returns (uint256 bal) {
        uint256 provider = getTheprovider(afiContract, tok);
        bal = _getUnderlyingBalance(afiContract, tok, provider) + balance(tok, afiContract);
    }

    function balanceOfUnderlyingInPoolsFromSecondLoop(address tok, address afiContract) external view returns (uint256 bal) {
        uint256 provider = getFinalProvider(afiContract, tok);
        bal = _getUnderlyingBalance(afiContract, tok, provider);
    }

    function getTargetLTV(address vault) external view returns (uint256) {
        return targetLTV[vault];
    }

    function getLeverageMarket(address vault, address token) external view returns (IMorphoBlue.MarketParams memory) {
        return leverageMarkets[vault][token];
    }

    function isLeverageConfigured(address vault, address token) external view returns (bool) {
        return targetLTV[vault] > 0 && leverageMarkets[vault][token].loanToken != address(0);
    }

    function isTargetLTVSafe(address vault, address token) external view returns (bool) {
        uint256 vaultTargetLTV = targetLTV[vault];
        uint256 marketMaxLTV = leverageMarkets[vault][token].lltv;
        return vaultTargetLTV > 0 && vaultTargetLTV <= marketMaxLTV && marketMaxLTV > 0;
    }

    function getLLTV(address vault, address token) external view returns (uint256) {
        return leverageMarkets[vault][token].lltv;
    }

    function isLeverageEnable(address _vault) external view returns (bool) {
        return leverageEnabled[_vault];
    }

    function getCollateralSupplied(address _vault) external view returns (uint256) {
        (, uint256 collSupplied, , , ) = getCollateralData(_vault);
        return collSupplied;
    }

    function convertAssetsToShares(address afiContract, address tok, uint256 assetAmount) external view returns (uint256) {
        return _convertAssetsToShares(afiContract, tok, assetAmount);
    }

    function getPendleLPPriceInUSD(address pendleMarket) external view returns (uint256) {
        address rebal = getRebalanceContract();
        return IPassiveRebal(rebal).getNormalizedLpToAssetRate(pendleMarket);
    }

    function getRebalanceContract() internal view returns(address){
        return IAFiStorage(afiStorage).getRebal();
    }

    // ============= CALCULATION FUNCTIONS =============
    function calcPoolValue(address tok, address afiContract) external view returns (uint256) {
        uint256 bal;
        uint256 finalProvider = getFinalProvider(afiContract, tok);
        if (getTheprovider(afiContract, tok) == 1) {
            uint256 totalValue;
            totalValue = calcPoolValueinternalForPendle(tok, afiContract);
           
            if (finalProvider > 0 && finalProvider != 1) {
                bal = calcPoolValueinternalForOther(tok, afiContract, true);
            }

            return bal + totalValue;
        } else {
            bal = calcPoolValueinternalForOther(tok, afiContract, false);
            if (finalProvider !=  getTheprovider(afiContract, tok)) {
                bal += calcPoolValueinternalForOther(tok, afiContract, true);
            }            
            return bal;
        }
    }

    function calcPoolValueForHelperToken(address tok, address afiContract) external view returns (uint256) {        
        uint256 finalProvider = getFinalProvider(afiContract, tok);
        if (finalProvider == 1 ) {
            uint256 totalValue = calcPoolValueinternalForPendle(tok, afiContract);
            return totalValue;
        } else {
            return calcPoolValueinternalForOther(tok, afiContract, true);
        }
    }

    function _toDecimals(
        uint256 amount,
        uint8 fromDec,
        uint8 toDec
    ) internal pure returns (uint256) {
        if (fromDec == toDec) return amount;
        if (fromDec < toDec) {
            return amount * 10 ** (toDec - fromDec);
        } else {
            return amount / 10 ** (fromDec - toDec);
        }
    }

    function _to18(uint256 amount, uint8 fromDec) internal pure returns (uint256) {
        return _toDecimals(amount, fromDec, 18);
    }

    function _from18(uint256 amount18, uint8 toDec) internal pure returns (uint256) {
        return _toDecimals(amount18, 18, toDec);
    }

    function calcPoolValueinternalForPendle(
        address tok,
        address afiContract
    ) internal view returns (uint256) {
        address underlying;

        // PT + underlying (e.g. PT‑USDe / USDe)
        address pt = getPendlePTToken(afiContract, tok);
        // Pendle market
        address pendleMarket = getPendleMarket(afiContract, tok);

        address rebal = getRebalanceContract();
        bool usePT = checkPTTokenStatus(afiContract, tok);

        // 1 PT/LP -> underlying, 1e18-scaled rate
        uint256 pendlePrice = usePT
            ? IPassiveRebal(rebal).getPtToAssetRate(pendleMarket)            // PT -> underlying, 1e18
            : IPassiveRebal(rebal).getNormalizedLpToAssetRate(pendleMarket); // LP -> underlying, 1e18

        if (pendlePrice == 0) return 0;

        uint256 totalValue;

        // ---------- 1) PT / Pendle position leg (underlying → USD) ----------
        {
            uint256 pendleBalance = _getPendleBalance(afiContract, tok); // PT/LP balance (token decimals)
            if (pendleBalance > 0) {
                // Resolve the true underlying token (same for PT + LP)
                if (usePT) {
                    // tok is the underlying side for PT
                    underlying = getPendlePTTokenUnderlying(afiContract, tok);
                } else {
                    // LP mode: underlying from market mapping
                    underlying = getPendlePTTokenUnderlying(afiContract, pendleMarket);
                }

                // 1) PT/LP balance -> underlying amount (UNDERLYING DECIMALS)
                uint256 assetAmountRaw = (pendleBalance * pendlePrice) / 1e18;
               
                // 2) underlying decimals -> 18-decimal
                uint8 underlyingDecimals = uint8(getTokenDecimals(underlying));
                uint256 assetAmount18 = _to18(assetAmountRaw, underlyingDecimals);
                
                // 3) underlying price in USD
                (uint256 underlyingPrice, uint256 underlyingMultiplier) = _getPriceInUSD(underlying);
              
                if (underlyingPrice != 0) {
                    // 18-decimal underlying -> 18-decimal USD
                    uint256 pendleUsd =
                        (assetAmount18 * underlyingPrice) / (10 ** underlyingMultiplier);
                    totalValue = pendleUsd;
                }
            }
        }

        // ---------- 2) Unstaked "cash" token leg (tok, e.g. USDC) ----------
        {
            uint256 unstakeTokenAmount = balance(tok, afiContract);
            if (unstakeTokenAmount > 0) {
                (uint256 cashPrice, uint256 cashMultiplier) = _getPriceInUSD(tok);
                   
                if (cashPrice != 0) {
                    uint8 cashDecimals = uint8(getTokenDecimals(tok));
                    uint256 unstakeAmount18 = _to18(unstakeTokenAmount, cashDecimals);

                    uint256 unstakeUsd =
                        (unstakeAmount18 * cashPrice) / (10 ** cashMultiplier);

                    totalValue += unstakeUsd;
                }
            }
        }

        return totalValue; // 18-decimal USD-equivalent
    }


    function getPendleBal(
        address afiContract,
        address tok
    ) internal view returns (uint256 totalValue) {
        address rebal = getRebalanceContract();
        address pendleMarket = getPendleMarket(afiContract, tok);

        bool usePT = checkPTTokenStatus(afiContract, tok);

        uint256 lpPrice = usePT
            ? IPassiveRebal(rebal).getPtToAssetRate(pendleMarket)             // 1e18
            : IPassiveRebal(rebal).getNormalizedLpToAssetRate(pendleMarket);  // 1e18
        if (lpPrice == 0) return 0;

        uint256 lpBalance = _getPendleBalance(afiContract, tok);
        if (lpBalance == 0) return 0;

        // 1) LP/PT → underlying amount (UNDERLYING DECIMALS)
        uint256 assetAmountRaw = (lpBalance * lpPrice) / 1e18;

        // 2) resolve underlying consistently with new mapping
        address underlying;
        if (usePT) {
            // tok is the underlying side for PT
            underlying = getPendlePTTokenUnderlying(afiContract, tok);
        } else {
            // LP mode: market -> underlying mapping
            underlying = getPendlePTTokenUnderlying(afiContract, pendleMarket);
        }

        uint8 underlyingDecimals = uint8(getTokenDecimals(underlying));
        uint256 assetAmount18 = _to18(assetAmountRaw, underlyingDecimals);

        // 3) Underlying → USD (18 decimals)
        (uint256 underlyingPrice, uint256 priceDecimals) = _getPriceInUSD(underlying);
            
        if (underlyingPrice == 0) return 0;

        totalValue =
            (assetAmount18 * underlyingPrice) /
            (10 ** priceDecimals);
    }

    function calcPoolValueSomeRead(address tok, address afiContract, uint256 price, uint256 multiplier, bool isExtra) external view returns (uint256) {
        uint256 uTokensDecimal = 18 - getTokenDecimals(tok);
        uint256 bal;
        if(!leverageEnabled[afiContract]){
            if (getTheprovider(afiContract, tok) == 1 && 
                IAFiStorage(afiStorage).isPendleStaked(afiContract, tok)) {
                uint256 totalValue = getPendleBal(afiContract, tok);
                return bal + totalValue;
            } else {
                bal = this.balanceOfUnderlyingInPoolsAndContract(tok, afiContract);
                if (price != 0) {
                    bal = ((bal - balance(tok, afiContract)) * price * (10 ** uTokensDecimal)) / (10 ** multiplier);
                }
                return bal;
            }
        }else{
            if (getFinalProvider(afiContract, tok) == 1) {
                uint256 totalValue = getPendleBal(afiContract, tok);
                return totalValue;
            } else {
                bal = calcPoolValueinternalForOther(tok, afiContract, true);
                return bal;
            }
        }
    }

    function calcPoolValueinternalForOther(address tok, address afiContract, bool isFinalProvider) internal view returns (uint256) {
        (uint256 price, uint256 multiplier) = _getPriceInUSD(tok);
        uint256 uTokensDecimal = 18 - getTokenDecimals(tok);
        uint256 bal;
        if(isFinalProvider) {
            bal = this.balanceOfUnderlyingInPoolsFromSecondLoop(tok, afiContract);
        }else {
            bal = this.balanceOfUnderlyingInPoolsAndContract(tok, afiContract);
        }
        if (price != 0) {
            bal = (bal * price * (10 ** uTokensDecimal)) / (10 ** multiplier);
        }
        return bal;
    }

    function getTheprovider(address vault, address tok) internal view returns(uint256){
        return IAFiStorage(afiStorage).provider(vault, tok);
    }

    function getAtvMorphoTVL(address _vault) external view returns (uint256 totalCollateral, uint256 loanAmount, address loanToken) {
        bytes32[] memory markets = getLeverageMarkets(_vault);
        
        if (markets.length > 0) {
            address uTok;
            address collateralToken;            
            (uTok, totalCollateral, collateralToken, loanAmount, loanToken) = 
                IAtvMorphoBlueIntegration(morphoBlueIntegration).calculateTotalCollateralSupplied(_vault, markets[markets.length-1]);
            
            // Get the collateral provider to determine conversion method
            uint256 collateralProvider = getTheprovider(_vault, uTok);
            
            // Convert collateral to USD based on provider
            if (collateralProvider == 0) {
                // Provider 0: Direct token, convert using token price
                (uint256 collateralPrice, uint256 collateralMultiplier) = _getPriceInUSD(uTok);
                
                if (collateralPrice != 0) {
                    uint256 uTokensDecimal = 18 - getTokenDecimals(uTok);
                    totalCollateral = (totalCollateral * collateralPrice * (10 ** uTokensDecimal)) / (10 ** collateralMultiplier);
                }
            } else if (collateralProvider == 1) {
                address pendleMarket = getPendleMarket(_vault, uTok);
                address rebal = getRebalanceContract();
                
                uint256 pendlePrice = checkPTTokenStatus(_vault, uTok) ?
                    IPassiveRebal(rebal).getPtToAssetRate(pendleMarket) :
                    IPassiveRebal(rebal).getNormalizedLpToAssetRate(pendleMarket);
                
                if (pendlePrice != 0) {
                    uint256 uTokensDecimal = 18 - getTokenDecimals(collateralToken);
                    totalCollateral = (totalCollateral * pendlePrice * (10 ** uTokensDecimal)) / 1e18;
                }
            } else if (collateralProvider == 2) {
                // Provider 2: Aave (aTokens are 1:1 with underlying)
                (uint256 tokenPrice, uint256 tokenMultiplier) = _getPriceInUSD(uTok);
                
                if (tokenPrice != 0) {
                    uint256 uTokensDecimal = 18 - getTokenDecimals(uTok);
                    totalCollateral = (totalCollateral * tokenPrice * (10 ** uTokensDecimal)) / (10 ** tokenMultiplier);
                }
                
            }
             else if (collateralProvider == 3) {
                // Provider 3: Moonwell, convert mTokens to underlying first
                address mToken = getMoonWellPool(_vault, uTok);
                if (mToken != address(0)) {
                    uint256 exchangeRate = IMErc20(mToken).exchangeRateStored();
                    uint256 underlyingAmount = (totalCollateral * exchangeRate) / 1e18;
                    
                    // Convert underlying to USD
                    (uint256 tokenPrice, uint256 tokenMultiplier) = _getPriceInUSD(uTok);
                    if (tokenPrice != 0) {
                        uint256 uTokensDecimal = 18 - getTokenDecimals(uTok);
                        totalCollateral = (underlyingAmount * tokenPrice * (10 ** uTokensDecimal)) / (10 ** tokenMultiplier);
                    }
                }
            } else if (collateralProvider == 4) {
                // Provider 4: Morpho, convert shares to assets first
                address morphoVault = getMorphoPool(_vault, uTok);
                if (morphoVault != address(0)) {
                    // Convert underlying to USD
                    (uint256 tokenPrice, uint256 tokenMultiplier) = _getPriceInUSD(uTok);
                    if (tokenPrice != 0) {
                        uint256 uTokensDecimal = 18 - getTokenDecimals(uTok);
                        totalCollateral = (totalCollateral * tokenPrice * (10 ** uTokensDecimal)) / (10 ** tokenMultiplier);
                    }
                }
            }
            
            // Convert loan amount to USD (same for all providers)
            (uint256 lprice, uint256 lmultiplier) = _getPriceInUSD(loanToken);
            if (lprice != 0) {
                uint256 luTokensDecimal = 18 - getTokenDecimals(loanToken);
                loanAmount = (loanAmount * lprice * (10 ** luTokensDecimal)) / (10 ** lmultiplier);
            }
        }
    }

    function getTokenDecimals(address token) internal view returns(uint256) {
        return IERC20(token).decimals();
    } 

    function _getPriceInUSD(address tok)
    internal
    view
        returns (uint256 price, uint256 multiplier)
    {
        (price, multiplier) = IAFiStorage(afiStorage).getPriceInUSD(tok);
    }


    function distributeProfitShare(
        address aFiContract,
        uint256 share,
        address oToken,
        uint256 depositNAV,
        uint256 redemptionNAV
    ) external onlyStorage returns (uint256) {
        // Ensure morphoBlueIntegration is set
        addressNotZero(morphoBlueIntegration);
        
        // Delegate the call to MorphoBlueIntegration
        return IAtvMorphoBlueIntegration(morphoBlueIntegration).distributeProfitShare(
            aFiContract,
            share,
            oToken,
            depositNAV,
            redemptionNAV
        );
    }

    /**
     * @notice Check if provider switch is in process for a vault
     * @param afiContract The vault address
     * @return bool True if provider switch is in progress
     */
    function isProviderSwitchInProcess(address afiContract) external view returns (bool) {
        return providerSwitchInProcess[afiContract];
    }
}