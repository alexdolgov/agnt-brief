// SPDX-License-Identifier: BUSL-1.1
// Last deployed from commit: ;
pragma solidity 0.8.17;

import "./GmxV2FacetCommon.sol";
import {GmxV2FeesLib}  from "../lib/GmxV2FeesLib.sol";
import {IGmxReader} from "../interfaces/gmx-v2/IGmxReader.sol";

abstract contract GmxV2PlusFacet is GmxV2FacetCommon {
    using TransferHelper for address;

    // New struct to hold both prices and addresses for Plus markets
    struct GmxPlusTokenPricesAndAddresses {
        uint256 gmTokenPrice;
        uint256 longTokenPrice;
        uint256 shortTokenPrice; // Always 0 for Plus markets
        address token; // Single token address (both long and short are the same)
    }

    // Internal method to get only the token address for a GM Plus market
    function _getMarketTokenAddress(address gmMarket) internal view returns (address token) {
        address gmxReader = DeploymentConstants.getGmxReaderAddress();
        address dataStore = DeploymentConstants.getGmxDataStoreAddress();
        IGmxReader.MarketProps memory marketProps = IGmxReader(gmxReader).getMarket(dataStore, gmMarket);
        ///@dev both long token and short token are same in GMX V2 Plus markets
        token = marketProps.longToken;
        require(token != address(0), "GMX market tokens not found");
    }

    // Updated method to get both prices and addresses for Plus markets
    function _getGmxPlusTokenPricesAndAddresses(address gmMarket) internal view returns (GmxPlusTokenPricesAndAddresses memory) {
        address token = _getMarketTokenAddress(gmMarket);
        
        ITokenManager tokenManager = DeploymentConstants.getTokenManager();
        bytes32[] memory symbols = new bytes32[](2);
        symbols[0] = tokenManager.tokenAddressToSymbol(gmMarket);
        symbols[1] = tokenManager.tokenAddressToSymbol(token);
        
        uint256[] memory prices = getPrices(symbols);
        ///@dev setting short token price to zero as there is no short token in GMX V2 Plus markets,
        ///@dev to avoid double counting of tokenPriceUSD in performance calculation, and other methods as this method is used in multiple places
        return GmxPlusTokenPricesAndAddresses({
            gmTokenPrice: prices[0],
            longTokenPrice: prices[1],
            shortTokenPrice: 0,
            token: token
        });
    }

    // Backward compatibility method that returns only prices
    ///@notice internal method to get the prices of GMX token, long token and short token
    ///@dev since both long and short tokens are same, we are returning short token price as zero
    ///@dev this is to avoid double counting of tokenPriceUSD in performance calculation, and other methods as this method is used in multiple places
    function _getGmxTokenPrices(address gmMarket) internal view returns (GmxV2FeesLib.GmxTokenPrices memory) {
        GmxPlusTokenPricesAndAddresses memory pricesAndAddresses = _getGmxPlusTokenPricesAndAddresses(gmMarket);
        return GmxV2FeesLib.GmxTokenPrices({
            gmTokenPrice: pricesAndAddresses.gmTokenPrice,
            longTokenPrice: pricesAndAddresses.longTokenPrice,
            shortTokenPrice: pricesAndAddresses.shortTokenPrice
        });
    }

    function _deposit(
        address gmToken,
        uint256 tokenAmount,
        uint256 minGmAmount,
        uint256 executionFee
    ) internal nonReentrant noBorrowInTheSameBlock onlyOwner notInLiquidation {
        require(executionFee == msg.value, "Invalid execution fee");
        ITokenManager tokenManager = DeploymentConstants.getTokenManager();
        require(tokenManager.isGmxMarketWhitelisted(gmToken), "Market is not whitelisted");

        // Fetch prices and addresses once at the beginning
        GmxPlusTokenPricesAndAddresses memory pricesAndAddresses = _getGmxPlusTokenPricesAndAddresses(gmToken);
        address depositedToken = pricesAndAddresses.token;
        
        tokenAmount = IERC20(depositedToken).balanceOf(address(this)) < tokenAmount
            ? IERC20(depositedToken).balanceOf(address(this))
            : tokenAmount;

        require(_getAvailableBalancePayable(tokenManager.tokenAddressToSymbol(depositedToken)) >= tokenAmount, "Insufficient balance");
        
        GmxV2FeesLib.GmxTokenPrices memory gmxTokenPrice = GmxV2FeesLib.GmxTokenPrices({
            gmTokenPrice: pricesAndAddresses.gmTokenPrice,
            longTokenPrice: pricesAndAddresses.longTokenPrice,
            shortTokenPrice: pricesAndAddresses.shortTokenPrice
        });
        
        {
            DiamondStorageLib.GmxPositionBenchmark memory benchmark = DiamondStorageLib.getGmxPositionBenchmark(gmToken);
            if(benchmark.exists) {
                GmxV2FeesLib._sweepFees(gmToken, gmxTokenPrice);  
            } 
        }

        bytes[] memory data = new bytes[](4);
        data[0] = abi.encodeWithSelector(
            IGmxV2Router.sendWnt.selector,
            getGmxV2DepositVault(),
            executionFee
        );
        data[1] = abi.encodeWithSelector(
            IGmxV2Router.sendTokens.selector,
            depositedToken,
            getGmxV2DepositVault(),
            tokenAmount / 2
        );
        data[2] = abi.encodeWithSelector(
            IGmxV2Router.sendTokens.selector,
            depositedToken,
            getGmxV2DepositVault(),
            tokenAmount / 2
        );
        data[3] = abi.encodeWithSelector(
            IDepositUtils.createDeposit.selector,
            IDepositUtils.CreateDepositParams({
                addresses: IDepositUtils.CreateDepositParamsAddresses({
                    receiver: address(this), //receiver
                    callbackContract: address(this), //callbackContract
                    uiFeeReceiver: address(0), //uiFeeReceiver
                    market: gmToken, //market
                    initialLongToken: depositedToken, //initialLongToken
                    initialShortToken: depositedToken, //initialShortToken
                    longTokenSwapPath: new address[](0), //longTokenSwapPath
                    shortTokenSwapPath: new address[](0) //shortTokenSwapPath
                }),
                minMarketTokens: minGmAmount, //minMarketTokens
                shouldUnwrapNativeToken: false, //shouldUnwrapNativeToken
                executionFee: executionFee, //executionFee
                callbackGasLimit: 500000, //callbackGasLimit
                dataList: new bytes32[](0) //dataList
            })
        );

        depositedToken.safeApprove(getGmxV2Router(), 0);
        depositedToken.safeApprove(getGmxV2Router(), tokenAmount);
        BasicMulticall(getGmxV2ExchangeRouter()).multicall{value: msg.value}(data);

        // Simulate solvency check using already fetched prices
        {
            require(
                isWithinBounds(
                    (pricesAndAddresses.longTokenPrice * tokenAmount) /
                        10 ** IERC20Metadata(depositedToken).decimals(), // Deposit Amount In USD
                    (minGmAmount * pricesAndAddresses.gmTokenPrice) /
                        10 ** IERC20Metadata(gmToken).decimals()
                ), // Output Amount In USD
                "Invalid min output value"
            );

            uint256 gmTokensWeightedUsdValue = (pricesAndAddresses.gmTokenPrice *
                minGmAmount *
                tokenManager.tieredDebtCoverage(DiamondStorageLib.getPrimeLeverageTier(), gmToken)) /
                (10 ** IERC20Metadata(gmToken).decimals() * 1e8);
            require(
                (_getThresholdWeightedValuePayable() + gmTokensWeightedUsdValue) >
                    _getDebtPayable(),
                "The action may cause the account to become insolvent"
            );
        }

        // Freeze account
        DiamondStorageLib.freezeAccount(gmToken);

        // update position benchmark, pass already fetched prices and addresses to save gas
        _updatePositionBenchmark(gmToken, pricesAndAddresses);

        tokenManager.increasePendingExposure(
            tokenManager.tokenAddressToSymbol(gmToken),
            address(this),
            (minGmAmount * 1e18) / 10 ** IERC20Metadata(gmToken).decimals()
        );

        // Update exposures
        _syncExposure(tokenManager, depositedToken);

        // Update owned assets
        if (IERC20Metadata(depositedToken).balanceOf(address(this)) == 0) {
            DiamondStorageLib.removeOwnedAsset(
                tokenManager.tokenAddressToSymbol(depositedToken)
            );
        }
    }

    function _withdraw(
        address gmToken,
        uint256 gmAmount,
        uint256 minLongTokenAmount,
        uint256 minShortTokenAmount,
        uint256 executionFee
    )
        internal
        nonReentrant
        noBorrowInTheSameBlock
        onlyOwnerNoStaySolventOrInsolventPayable
    {
        require(executionFee == msg.value, "Invalid execution fee");
        ITokenManager tokenManager = DeploymentConstants.getTokenManager();
        require(tokenManager.isGmxMarketWhitelisted(gmToken), "Market is not whitelisted");

        gmAmount = IERC20(gmToken).balanceOf(address(this)) < gmAmount
            ? IERC20(gmToken).balanceOf(address(this))
            : gmAmount;

        require(_getAvailableBalancePayable(tokenManager.tokenAddressToSymbol(gmToken)) >= gmAmount, "Insufficient balance");
        
        // Fetch prices and addresses once at the beginning
        GmxPlusTokenPricesAndAddresses memory pricesAndAddresses = _getGmxPlusTokenPricesAndAddresses(gmToken);
        GmxV2FeesLib.GmxTokenPrices memory gmxTokenPrice = GmxV2FeesLib.GmxTokenPrices({
            gmTokenPrice: pricesAndAddresses.gmTokenPrice,
            longTokenPrice: pricesAndAddresses.longTokenPrice,
            shortTokenPrice: pricesAndAddresses.shortTokenPrice
        });
        
        {
            DiamondStorageLib.GmxPositionBenchmark memory benchmark = DiamondStorageLib.getGmxPositionBenchmark(gmToken);
            if(benchmark.exists) {
                GmxV2FeesLib._sweepFees(gmToken, gmxTokenPrice);   
            } 
        }

        bytes[] memory data = new bytes[](3);
        data[0] = abi.encodeWithSelector(
            IGmxV2Router.sendWnt.selector,
            getGmxV2WithdrawalVault(),
            executionFee
        );

        data[1] = abi.encodeWithSelector(
            IGmxV2Router.sendTokens.selector,
            gmToken,
            getGmxV2WithdrawalVault(),
            gmAmount
        );

        data[2] = abi.encodeWithSelector(
            IWithdrawalUtils.createWithdrawal.selector,
            IWithdrawalUtils.CreateWithdrawalParams({
                addresses: IWithdrawalUtils.CreateWithdrawalParamsAddresses({
                    receiver: address(this), //receiver
                    callbackContract: address(this), //callbackContract
                    uiFeeReceiver: address(0), //uiFeeReceiver
                    market: gmToken, //market
                    longTokenSwapPath: new address[](0), //longTokenSwapPath
                    shortTokenSwapPath: new address[](0) //shortTokenSwapPath
                }),
                minLongTokenAmount: minLongTokenAmount,
                minShortTokenAmount: minShortTokenAmount,
                shouldUnwrapNativeToken: false, //shouldUnwrapNativeToken
                executionFee: executionFee, //executionFee
                callbackGasLimit: 500000, //callbackGasLimit
                dataList: new bytes32[](0) //dataList
            })
        );

        IERC20(gmToken).approve(getGmxV2Router(), gmAmount);
        BasicMulticall(getGmxV2ExchangeRouter()).multicall{value: msg.value}(data);

        // Both longToken and shortToken are the same in Plus markets
        address longToken = pricesAndAddresses.token;
        address shortToken = pricesAndAddresses.token;

        // Simulate solvency check with already fetched prices
        if (msg.sender == DiamondStorageLib.contractOwner()) {
            // Only owner can call this method or else it's liquidator when the account is already insolvent
            require(
                isWithinBounds(
                    (pricesAndAddresses.gmTokenPrice * gmAmount) /
                        10 ** IERC20Metadata(gmToken).decimals(), // Deposit Amount In USD
                    (pricesAndAddresses.longTokenPrice * minLongTokenAmount) /
                        10 ** IERC20Metadata(longToken).decimals() +
                        (pricesAndAddresses.longTokenPrice * minShortTokenAmount) /    ///@dev shortToken == longToken
                        10 ** IERC20Metadata(shortToken).decimals()
                ), // Output Amount In USD
                "Invalid min output value"
            );

            uint256 receivedTokensWeightedUsdValue = (((pricesAndAddresses.longTokenPrice *
                minLongTokenAmount *
                tokenManager.tieredDebtCoverage(DiamondStorageLib.getPrimeLeverageTier(), longToken)) /
                10 ** IERC20Metadata(longToken).decimals()) +
                ((pricesAndAddresses.longTokenPrice *
                    minShortTokenAmount *
                    tokenManager.tieredDebtCoverage(DiamondStorageLib.getPrimeLeverageTier(), shortToken)) /
                    10 ** IERC20Metadata(shortToken).decimals())) / 1e8;
            require(
                (_getThresholdWeightedValuePayable() + receivedTokensWeightedUsdValue) >
                    _getDebtPayable(),
                "The action may cause the account to become insolvent"
            );
        }

        // Freeze account
        DiamondStorageLib.freezeAccount(gmToken);

        // update position benchmark, pass in already fetched prices and addresses to save gas
        _updatePositionBenchmark(gmToken, pricesAndAddresses);

        tokenManager.increasePendingExposure(
            tokenManager.tokenAddressToSymbol(longToken),
            address(this),
            (minLongTokenAmount * 1e18) / 10 ** IERC20Metadata(longToken).decimals()
        );
        tokenManager.increasePendingExposure(
            tokenManager.tokenAddressToSymbol(shortToken),
            address(this),
            (minShortTokenAmount * 1e18) / 10 ** IERC20Metadata(shortToken).decimals()
        );

        // Update exposures
        _syncExposure(tokenManager, gmToken);

        // Remove GM token from owned assets if whole balance was used
        if (IERC20Metadata(gmToken).balanceOf(address(this)) == 0) {
            DiamondStorageLib.removeOwnedAsset(
                tokenManager.tokenAddressToSymbol(gmToken)
            );
        }
    }

    ///@dev to be called by the bots, sweeps fees and updates the benchmark. used the decoupled way of sweeping fees first, and then
    /// updates the benchmark separately 
    function sweepFeesAndUpdateBenchMarkGmxPlus(address gmToken) external nonReentrant onlyWhitelistedLiquidators remainsSolvent returns (uint256 gmTokensInFees) {
        GmxPlusTokenPricesAndAddresses memory pricesAndAddresses = _getGmxPlusTokenPricesAndAddresses(gmToken);
        GmxV2FeesLib.GmxTokenPrices memory gmxTokenPrices = GmxV2FeesLib.GmxTokenPrices({
            gmTokenPrice: pricesAndAddresses.gmTokenPrice,
            longTokenPrice: pricesAndAddresses.longTokenPrice,
            shortTokenPrice: pricesAndAddresses.shortTokenPrice
        });

        gmTokensInFees = GmxV2FeesLib._sweepFees(gmToken, gmxTokenPrices);
        uint256 gmTokenAmount = IERC20(gmToken).balanceOf(address(this));
        _updatePositionBenchmark(gmToken, pricesAndAddresses);
    }

    function _updatePositionBenchmark(address market, GmxPlusTokenPricesAndAddresses memory pricesAndAddresses) internal {
        GmxV2FeesLib.GmxTokenPrices memory gmxTokenPrices = GmxV2FeesLib.GmxTokenPrices({
            gmTokenPrice: pricesAndAddresses.gmTokenPrice,
            longTokenPrice: pricesAndAddresses.longTokenPrice,
            shortTokenPrice: pricesAndAddresses.shortTokenPrice
        });
        
        // Both longToken and shortToken are the same in Plus markets
        (uint256 longTokenAmount, uint256 shortTokenAmount) = GmxV2FeesLib._getUnderlyingTokenDetails(market, gmxTokenPrices, pricesAndAddresses.token, pricesAndAddresses.token);
        
        GmxV2FeesLib.GmxPositionDetails memory positionDetails = GmxV2FeesLib.GmxPositionDetails({
            underlyingLongTokenAmount: longTokenAmount,
            underlyingShortTokenAmount: shortTokenAmount,
            gmTokenPriceUsd: pricesAndAddresses.gmTokenPrice,
            longTokenPriceUsd: pricesAndAddresses.longTokenPrice,
            shortTokenPriceUsd: 0, ///@dev setting short token price to zero as there is no short token in GMX V2 Plus markets
            benchmarkTimeStamp: block.timestamp,
            longTokenAddress: pricesAndAddresses.token,
            shortTokenAddress: pricesAndAddresses.token
        });
        GmxV2FeesLib._createOrUpdatePositionBenchmark(market, positionDetails);
    }

    function initiateGmxFeesBenchMarkGmxPlus(address gmToken) external nonReentrant onlyWhitelistedLiquidators {
        GmxPlusTokenPricesAndAddresses memory pricesAndAddresses = _getGmxPlusTokenPricesAndAddresses(gmToken);
        GmxV2FeesLib.GmxTokenPrices memory gmxTokenPrices = GmxV2FeesLib.GmxTokenPrices({
            gmTokenPrice: pricesAndAddresses.gmTokenPrice,
            longTokenPrice: pricesAndAddresses.longTokenPrice,
            shortTokenPrice: pricesAndAddresses.shortTokenPrice
        });
        
        // Both longToken and shortToken are the same in Plus markets
        (uint256 longTokenAmount, uint256 shortTokenAmount) = GmxV2FeesLib._getUnderlyingTokenDetails(gmToken, gmxTokenPrices, pricesAndAddresses.token, pricesAndAddresses.token);
        
        GmxV2FeesLib.GmxPositionDetails memory positionDetails = GmxV2FeesLib.GmxPositionDetails({
            underlyingLongTokenAmount: longTokenAmount,
            underlyingShortTokenAmount: shortTokenAmount,
            gmTokenPriceUsd: pricesAndAddresses.gmTokenPrice,
            longTokenPriceUsd: pricesAndAddresses.longTokenPrice,
            shortTokenPriceUsd: pricesAndAddresses.shortTokenPrice,
            benchmarkTimeStamp: block.timestamp,
            longTokenAddress: pricesAndAddresses.token,
            shortTokenAddress: pricesAndAddresses.token
        });
        GmxV2FeesLib._createOrUpdatePositionBenchmark(gmToken, positionDetails);       
    }

    function getGmPlusPerformance(address gmToken) external view returns (uint256) {
        GmxV2FeesLib.GmxTokenPrices memory gmTokenPrices = _getGmxTokenPrices(gmToken);
        return GmxV2FeesLib._getGmAnnualisedPerformance(gmToken, gmTokenPrices.gmTokenPrice, gmTokenPrices.longTokenPrice, gmTokenPrices.shortTokenPrice);
    }

    modifier onlyWhitelistedLiquidators() {
        require(
            SmartLoanLiquidationFacet(DeploymentConstants.getDiamondAddress()).isLiquidatorWhitelisted(msg.sender),
            "Only whitelisted liquidators can execute this method"
        );
        _;
    }
}