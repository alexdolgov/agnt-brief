// SPDX-License-Identifier: BUSL-1.1
// GLV Facet for interacting with GMX V2 GLV (GMX Liquidity Vault) tokens
pragma solidity 0.8.17;

import "../ReentrancyGuardKeccak.sol";
import "../OnlyOwnerOrInsolvent.sol";
import "../lib/GmxV2FeesHelper.sol";
import {GlvHelper} from "../lib/GlvHelper.sol";
import {IGlvDepositUtils} from "../interfaces/gmx-v2/IGlvDepositUtils.sol";
import {IGlvWithdrawalUtils} from "../interfaces/gmx-v2/IGlvWithdrawalUtils.sol";
import {IGlvReader} from "../interfaces/gmx-v2/IGlvReader.sol";


abstract contract GlvFacet is ReentrancyGuardKeccak, OnlyOwnerOrInsolvent, GmxV2FeesHelper, GlvHelper {
    using TransferHelper for address;

    

    // ============ ABSTRACT FUNCTIONS ============
    
    function getGlvRouter() internal pure virtual returns (address);
    function getGmxV2Router() internal pure virtual returns (address);
    function getGmxV2GlvDepositVault() internal pure virtual returns (address);
    function getGmxV2GlvWithdrawalVault() internal pure virtual returns (address);

    
    


    // ============ DEPOSIT LOGIC ============

    function _depositGlv(
        address glvToken,
        address depositedToken,
        uint256 tokenAmount,
        address targetMarket,
        uint256 minGlvAmount,
        uint256 executionFee
    ) internal nonReentrant noBorrowInTheSameBlock onlyOwner notInLiquidation {
        if (executionFee != msg.value) revert InvalidExecutionFee();
        
        ITokenManager tokenManager = DeploymentConstants.getTokenManager();
        
        if (!tokenManager.isGlvTokenWhitelisted(glvToken)) revert GlvTokenNotWhitelisted();

        /// @dev are we only allowing targetMarkets to be the ones already whitelisted?
        // if(!tokenManager.isGmxMarketWhitelisted(targetMarket)) revert MarketNotWhitelisted();

        tokenAmount = IERC20(depositedToken).balanceOf(address(this)) < tokenAmount
            ? IERC20(depositedToken).balanceOf(address(this))
            : tokenAmount;

        if (tokenAmount == 0) revert ZeroDepositAmount();
        if (_getAvailableBalancePayable(tokenManager.tokenAddressToSymbol(depositedToken)) < tokenAmount) 
            revert InsufficientBalance();
        
        
        (address longToken, address shortToken) = _getLongAndShortTokens(glvToken);
        if( depositedToken != longToken && depositedToken != shortToken ) 
            revert WrongDepositToken();

        if (!_validateTargetMarket(targetMarket, glvToken)) 
            revert InvalidTargetMarket();
           
        UnifiedGmxTokenPricesAndAddresses memory pricesAndAddresses = _getUnifiedGlvTokenPricesAndAddresses(glvToken);
        GmxTokenPrices memory glvTokenPrice = GmxTokenPrices({
            gmTokenPrice: pricesAndAddresses.gmTokenPrice,
            longTokenPrice: pricesAndAddresses.longTokenPrice,
            shortTokenPrice: pricesAndAddresses.shortTokenPrice
        });

        {    
            DiamondStorageLib.GmxPositionBenchmark memory benchmark = DiamondStorageLib.getGmxPositionBenchmark(glvToken);
            if(benchmark.exists) {
                uint256 collectedFees = _sweepFees(glvToken, glvTokenPrice);
                if (collectedFees > 0) {
                    emit GlvFeesSweptDuringOperation(glvToken, collectedFees, "deposit", block.timestamp);
                }
            } 
        }

        _generateDataAndDoMultiCallForDeposit(
            glvToken,
            depositedToken,
            tokenAmount,
            targetMarket,
            minGlvAmount,
            executionFee,
            longToken, 
            shortToken
        );
        ///@dev simulating solvency check
        _simulateSolvencyCheckForDeposit(
            glvToken,
            depositedToken,
            tokenAmount,
            minGlvAmount,
            pricesAndAddresses
        );
        
        _updateGlvPositionBenchmark(glvToken, pricesAndAddresses);
        DiamondStorageLib.freezeAccount(glvToken);

        _syncExposure(tokenManager, glvToken);

        _syncExposure(tokenManager, depositedToken);

        emit GlvDepositInitiated(glvToken, targetMarket, depositedToken, tokenAmount, minGlvAmount, executionFee, block.timestamp);
    }

    // ============ WITHDRAWAL LOGIC ============

    function _withdrawGlv(
        address glvToken,
        uint256 glvAmount,
        address targetMarket,
        uint256 minLongTokenAmount,
        uint256 minShortTokenAmount,
        uint256 executionFee
    ) internal nonReentrant noBorrowInTheSameBlock onlyOwnerNoStaySolventOrInsolventPayable {
        if (executionFee != msg.value) revert InvalidExecutionFee();
        
        ITokenManager tokenManager = DeploymentConstants.getTokenManager();
        
        if (!tokenManager.isGlvTokenWhitelisted(glvToken)) revert GlvTokenNotWhitelisted();

        if (!_validateTargetMarket(targetMarket, glvToken)) 
            revert InvalidTargetMarket();

        glvAmount = IERC20(glvToken).balanceOf(address(this)) < glvAmount
            ? IERC20(glvToken).balanceOf(address(this))
            : glvAmount;

        if (glvAmount == 0) revert ZeroWithdrawalAmount();
        if (_getAvailableBalancePayable(tokenManager.tokenAddressToSymbol(glvToken)) < glvAmount) 
            revert InsufficientBalance();
        

        UnifiedGmxTokenPricesAndAddresses memory pricesAndAddresses = _getUnifiedGlvTokenPricesAndAddresses(glvToken);
        GmxTokenPrices memory glvTokenPrice = GmxTokenPrices({
            gmTokenPrice: pricesAndAddresses.gmTokenPrice,
            longTokenPrice: pricesAndAddresses.longTokenPrice,
            shortTokenPrice: pricesAndAddresses.shortTokenPrice
        });
        
        {
            DiamondStorageLib.GmxPositionBenchmark memory benchmark = DiamondStorageLib.getGmxPositionBenchmark(glvToken);
            if(benchmark.exists) {
                uint256 collectedFees = _sweepFees(glvToken, glvTokenPrice);
                if (collectedFees > 0) {
                    if (glvAmount <= collectedFees) {
                        revert InsufficientBalanceAfterFees();
                    }
                    glvAmount -= collectedFees;
                    emit GlvFeesSweptDuringOperation(glvToken, collectedFees, "withdraw", block.timestamp);
                }
            } 
        }
        
        _generateDataAndDoMultiCallForWithdrawal(
            glvToken,
            glvAmount,
            targetMarket,
            minLongTokenAmount,
            minShortTokenAmount,
            executionFee
        );

        _simulateSolvencyCheckForWithdraw(glvToken, glvAmount, minLongTokenAmount, minShortTokenAmount, pricesAndAddresses);
        

        DiamondStorageLib.freezeAccount(glvToken);

        _updateGlvPositionBenchmark(glvToken, pricesAndAddresses);
        (address longToken, address shortToken) = _getLongAndShortTokens(glvToken);
        
        _syncExposure(tokenManager, longToken);
        _syncExposure(tokenManager, shortToken);

        _syncExposure(tokenManager, glvToken);

        emit GlvWithdrawalInitiated(
            glvToken,
            targetMarket,
            glvAmount,
            minLongTokenAmount,
            minShortTokenAmount,
            executionFee,
            block.timestamp
        );
    }


    // ============ FEE SPECIFIC FUNCTIONS ============

    function initiateGlvFeesBenchMark(address glvToken) external onlyWhitelistedLiquidators nonReentrant {
        UnifiedGmxTokenPricesAndAddresses memory pricesAndAddresses = _getUnifiedGlvTokenPricesAndAddresses(glvToken);
        uint256 glvBalance = IERC20(glvToken).balanceOf(address(this));
        (uint256 longTokenAmount, uint256 shortTokenAmount) = _getLongAndShortTokenAmounts( glvToken, glvBalance);
        GmxPositionDetails memory positionDetails = GmxPositionDetails({
            underlyingLongTokenAmount: longTokenAmount,
            underlyingShortTokenAmount: shortTokenAmount,
            gmTokenPriceUsd: pricesAndAddresses.gmTokenPrice,
            longTokenPriceUsd: pricesAndAddresses.longTokenPrice,
            shortTokenPriceUsd: pricesAndAddresses.shortTokenPrice,
            benchmarkTimeStamp: block.timestamp,
            longTokenAddress: pricesAndAddresses.longToken,
            shortTokenAddress: pricesAndAddresses.shortToken
        });
        _createOrUpdatePositionBenchmark(glvToken, positionDetails);
        
        emit BenchmarkInitiated(glvToken, msg.sender, pricesAndAddresses.isPlusMarket, block.timestamp);
    }

    function getGlvPerformance(address glvToken) external view returns (uint256) {
        UnifiedGmxTokenPricesAndAddresses memory pricesAndAddresses = _getUnifiedGlvTokenPricesAndAddresses(glvToken);
        return _getGmAnnualisedPerformance(glvToken, pricesAndAddresses.gmTokenPrice, pricesAndAddresses.longTokenPrice, pricesAndAddresses.shortTokenPrice);
    }

    ///@dev to be called by the bots, sweeps fees and updates the benchmark
    function sweepFeesAndUpdateGlvBenchMark(address glvToken) external nonReentrant onlyWhitelistedLiquidators remainsSolvent returns (uint256 gmTokensInFees) {
        UnifiedGmxTokenPricesAndAddresses memory pricesAndAddresses = _getUnifiedGlvTokenPricesAndAddresses(glvToken);
        GmxTokenPrices memory glvTokenPrices = GmxTokenPrices({
            gmTokenPrice: pricesAndAddresses.gmTokenPrice,
            longTokenPrice: pricesAndAddresses.longTokenPrice,
            shortTokenPrice: pricesAndAddresses.shortTokenPrice
        });

        gmTokensInFees = _sweepFees(glvToken, glvTokenPrices);
        _updateGlvPositionBenchmark(glvToken, pricesAndAddresses);
        
        emit FeesSweptAndGlvBenchmarkUpdated(glvToken, gmTokensInFees, msg.sender, block.timestamp);
    }

    // ============ HELPER FUNCTIONS ============

    ///@dev returns the long and short tokens for a given GLV token by querying the GlvReader
    function _getLongAndShortTokens(address glvToken) internal view returns (address longToken, address shortToken) {
        address glvReader = DeploymentConstants.getGlvReaderAddress();
        address dataStore = DeploymentConstants.getGmxDataStoreAddress();
        
        IGlvReader.Props memory props = IGlvReader(glvReader).getGlv(dataStore, glvToken);
        
        longToken = props.longToken;
        shortToken = props.shortToken;

        if( longToken == address(0) || shortToken == address(0) ) 
            revert InvalidGlvToken();
    }

    

    ///@dev updates the benchmark for the GLV position, a derivative of GmxV2Facet::_updateGmxPositionBenchmark
    function _updateGlvPositionBenchmark(address glvToken, UnifiedGmxTokenPricesAndAddresses memory pricesAndAddresses) internal {
        uint256 glvBalance = IERC20(glvToken).balanceOf(address(this));
        (uint256 longTokenAmount, uint256 shortTokenAmount) = _getLongAndShortTokenAmounts(glvToken, glvBalance);
        
        GmxPositionDetails memory positionDetails = GmxPositionDetails({
            underlyingLongTokenAmount: longTokenAmount,
            underlyingShortTokenAmount: shortTokenAmount,
            gmTokenPriceUsd: pricesAndAddresses.gmTokenPrice,
            longTokenPriceUsd: pricesAndAddresses.longTokenPrice,
            shortTokenPriceUsd: pricesAndAddresses.shortTokenPrice,
            benchmarkTimeStamp: block.timestamp,
            longTokenAddress: pricesAndAddresses.longToken,
            shortTokenAddress: pricesAndAddresses.shortToken
        });
        _createOrUpdatePositionBenchmark(glvToken, positionDetails);
    }


    function _validateTargetMarket(address targetMarket, address glvToken) internal view returns (bool) {
        address glvReader = DeploymentConstants.getGlvReaderAddress();
        address dataStore = DeploymentConstants.getGmxDataStoreAddress();
        IGlvReader.GlvInfo memory glvInfo = IGlvReader(glvReader).getGlvInfo(dataStore, glvToken);
        address[] memory markets = glvInfo.markets;
        for (uint256 i = 0; i < markets.length; i++) {
            if (markets[i] == targetMarket) {
                return true;
            }
        }
        return false;      
    }

    ///@dev a code block inside the _depositGlv function was triggering "Stack too deep" error, so moved to a separate function
    function _generateDataAndDoMultiCallForDeposit(
        address glvToken,
        address depositedToken,
        uint256 tokenAmount,
        address targetMarket,
        uint256 minGlvAmount,
        uint256 executionFee,
        address longToken,
        address shortToken) internal {
        bytes[] memory data = new bytes[](3);
        
        data[0] = abi.encodeWithSelector(
            IGmxV2Router.sendWnt.selector,
            getGmxV2GlvDepositVault(),
            executionFee
        );
        
        data[1] = abi.encodeWithSelector(
            IGmxV2Router.sendTokens.selector,
            depositedToken,
            getGmxV2GlvDepositVault(),
            tokenAmount
        );
        
        data[2] = abi.encodeWithSelector(
            ///@dev calls the GlvRouter
            /// https://github.com/gmx-io/gmx-synthetics/blob/7c502568117500181b3e8ce5520e95402c6102d6/contracts/router/GlvRouter.sol#L42
            IGlvDepositUtils.createGlvDeposit.selector,
            IGlvDepositUtils.CreateGlvDepositParams({
                addresses: IGlvDepositUtils.CreateGlvDepositParamsAddresses({
                    glv: glvToken,
                    market: targetMarket,
                    receiver: address(this),
                    callbackContract: address(this),
                    uiFeeReceiver: address(0),
                    initialLongToken: longToken,
                    initialShortToken: shortToken,
                    longTokenSwapPath: new address[](0),
                    shortTokenSwapPath: new address[](0)
                }),
                minGlvTokens: minGlvAmount,
                isMarketTokenDeposit: false,
                dataList: new bytes32[](0),
                shouldUnwrapNativeToken: false,
                executionFee: executionFee,
                callbackGasLimit: 500000
            })
        );

        depositedToken.safeApprove(getGmxV2Router(), 0);
        depositedToken.safeApprove(getGmxV2Router(), tokenAmount);
        
        ///@dev GlvRouter seems to be the entry point for Glv deposits (and withdrawals)
        ///@dev tx hash: 0x26abd25d69fa507ddbe902fd663e787c3d61b69358a9dc140f7e637798d0de48
        BasicMulticall(getGlvRouter()).multicall{value: msg.value}(data);
        

    }

    ///@dev same reason as above 
    function _simulateSolvencyCheckForDeposit(
        address glvToken,
        address depositedToken,
        uint256 tokenAmount,
        uint256 minGlvAmount,
        UnifiedGmxTokenPricesAndAddresses memory pricesAndAddresses) internal {
            ITokenManager tokenManager = DeploymentConstants.getTokenManager();
            uint256 depositedTokenPrice = (depositedToken == pricesAndAddresses.longToken) ? pricesAndAddresses.longTokenPrice : pricesAndAddresses.shortTokenPrice;
            uint256 glvTokenPrice = pricesAndAddresses.gmTokenPrice; ///@dev reusing the variable name
            uint256 depositedUsdValue = (depositedTokenPrice * tokenAmount) / 
                10 ** IERC20Metadata(depositedToken).decimals();
            
            uint256 minGlvUsdValue = (minGlvAmount * glvTokenPrice) / 
                10 ** IERC20Metadata(glvToken).decimals();

            if (!isWithinBounds(depositedUsdValue, minGlvUsdValue)) 
                revert InvalidMinOutputValue();

            uint256 glvTokensWeightedUsdValue = (glvTokenPrice *
                minGlvAmount *
                tokenManager.tieredDebtCoverage(DiamondStorageLib.getPrimeLeverageTier(), glvToken)) /
                (10 ** IERC20Metadata(glvToken).decimals() * 1e8);
            
            if ((_getThresholdWeightedValuePayable() + glvTokensWeightedUsdValue) <= _getDebtPayable()) 
                revert ActionMayCauseInsolvency();

    }
    
    ///@dev a code block inside the _withdrawGlv function was triggering "Stack too deep" error, so moved to a separate function
    function _generateDataAndDoMultiCallForWithdrawal(
        address glvToken,
        uint256 glvAmount,
        address targetMarket,
        uint256 minLongTokenAmount,
        uint256 minShortTokenAmount,
        uint256 executionFee) internal {

        bytes[] memory data = new bytes[](3);
        
        data[0] = abi.encodeWithSelector(
            IGmxV2Router.sendWnt.selector,
            getGmxV2GlvWithdrawalVault(),
            executionFee
        );

        data[1] = abi.encodeWithSelector(
            IGmxV2Router.sendTokens.selector,
            glvToken,
            getGmxV2GlvWithdrawalVault(),
            glvAmount
        );

        data[2] = abi.encodeWithSelector(
            IGlvWithdrawalUtils.createGlvWithdrawal.selector,
            IGlvWithdrawalUtils.CreateGlvWithdrawalParams({
                addresses: IGlvWithdrawalUtils.CreateGlvWithdrawalParamsAddresses({
                    receiver: address(this),
                    callbackContract: address(this),
                    uiFeeReceiver: address(0),
                    glv: glvToken,
                    market: targetMarket,
                    longTokenSwapPath: new address[](0),
                    shortTokenSwapPath: new address[](0)
                }),
                minLongTokenAmount: minLongTokenAmount,
                minShortTokenAmount: minShortTokenAmount,
                shouldUnwrapNativeToken: false,
                executionFee: executionFee,
                callbackGasLimit: 500000,
                dataList: new bytes32[](0)
            })
        );

        glvToken.safeApprove(getGmxV2Router(), 0);
        glvToken.safeApprove(getGmxV2Router(), glvAmount);
        
        ///@dev GlvRouter seems to be the entry point for Glv withdrawals (and deposits)
        ///@dev tx hash: 0x92f4a4ec8cefe537015c09cf75dc9331e12fac211deec21129ccb6706efe38ea
        BasicMulticall(getGlvRouter()).multicall{value: msg.value}(data);

    }

    ///@dev same reason as above
    function _simulateSolvencyCheckForWithdraw(
        address glvToken,
        uint256 glvAmount,
        uint256 minLongTokenAmount,
        uint256 minShortTokenAmount,
        UnifiedGmxTokenPricesAndAddresses memory pricesAndAddresses) internal {
            ITokenManager tokenManager = DeploymentConstants.getTokenManager();
            address longToken = pricesAndAddresses.longToken;
            address shortToken = pricesAndAddresses.shortToken;
            uint256 longTokenPrice = pricesAndAddresses.longTokenPrice;
            uint256 shortTokenPrice = pricesAndAddresses.shortTokenPrice;
            uint256 glvTokenPrice = pricesAndAddresses.gmTokenPrice; ///@dev reusing the variable name
            if (msg.sender == DiamondStorageLib.contractOwner()) {
                uint256 glvUsdValue = (glvTokenPrice * glvAmount) / 
                    10 ** IERC20Metadata(glvToken).decimals();
                
                uint256 minReceivedUsdValue = 
                    (longTokenPrice * minLongTokenAmount) / 10 ** IERC20Metadata(longToken).decimals() +
                    (shortTokenPrice * minShortTokenAmount) / 10 ** IERC20Metadata(shortToken).decimals();

                if (!isWithinBounds(glvUsdValue, minReceivedUsdValue)) 
                    revert InvalidMinOutputValue();

                uint256 receivedTokensWeightedUsdValue = 
                    (((longTokenPrice * minLongTokenAmount * 
                    tokenManager.tieredDebtCoverage(DiamondStorageLib.getPrimeLeverageTier(), longToken)) /
                    10 ** IERC20Metadata(longToken).decimals()) +
                    ((shortTokenPrice * minShortTokenAmount *
                    tokenManager.tieredDebtCoverage(DiamondStorageLib.getPrimeLeverageTier(), shortToken)) /
                    10 ** IERC20Metadata(shortToken).decimals())) / 1e8;
                
                if ((_getThresholdWeightedValuePayable() + receivedTokensWeightedUsdValue) <= _getDebtPayable())
                    revert ActionMayCauseInsolvency();
            }
        }


    // ============ MODIFIERS ============
    
    modifier onlyOwner() {
        DiamondStorageLib.enforceIsContractOwner();
        _;
    }


    // ============ EVENTS ============

    event GlvDepositInitiated(
        address indexed glvToken,
        address indexed targetMarket,
        address indexed depositedToken,
        uint256 tokenAmount,
        uint256 minGlvAmount,
        uint256 executionFee,
        uint256 timestamp
    );

    event GlvFeesSweptDuringOperation(
        address indexed glvToken,
        uint256 feesCollected,
        string operationType,
        uint256 timestamp
    );

    event GlvWithdrawalInitiated(
        address indexed glvToken,
        address indexed targetMarket,
        uint256 glvAmount,
        uint256 minLongTokenAmount,
        uint256 minShortTokenAmount,
        uint256 executionFee,
        uint256 timestamp
    );

     event FeesSweptAndGlvBenchmarkUpdated(
        address indexed glvToken,
        uint256 feesCollected,
        address indexed initiator,
        uint256 timestamp
    );
}