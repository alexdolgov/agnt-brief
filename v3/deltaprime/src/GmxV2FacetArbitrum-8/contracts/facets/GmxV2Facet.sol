// SPDX-License-Identifier: BUSL-1.1
// Last deployed from commit: ;
pragma solidity 0.8.17;

import "./GmxV2FacetCommon.sol";
import {GmxV2FeesLib}  from "../lib/GmxV2FeesLib.sol";
import {IGmxReader} from "../interfaces/gmx-v2/IGmxReader.sol";

abstract contract GmxV2Facet is GmxV2FacetCommon {

    using TransferHelper for address;

    // New struct to hold both prices and addresses
    struct GmxTokenPricesAndAddresses {
        uint256 gmTokenPrice;
        uint256 longTokenPrice;
        uint256 shortTokenPrice;
        address longToken;
        address shortToken;
    }

    // Internal method to get only the token addresses for a GM market
    function _getMarketTokenAddresses(address gmMarket) internal view returns (address longToken, address shortToken) {
        address gmxReader = DeploymentConstants.getGmxReaderAddress();
        address dataStore = DeploymentConstants.getGmxDataStoreAddress();
        IGmxReader.MarketProps memory marketProps = IGmxReader(gmxReader).getMarket(dataStore, gmMarket);
        longToken = marketProps.longToken;
        shortToken = marketProps.shortToken;
        require(longToken != address(0) && shortToken != address(0), "GMX market tokens not found");
    }

    // Updated method to get both prices and addresses
    function _getGmxTokenPricesAndAddresses(address gmMarket) internal view returns (GmxTokenPricesAndAddresses memory) {
        (address longToken, address shortToken) = _getMarketTokenAddresses(gmMarket);
        
        ITokenManager tokenManager = DeploymentConstants.getTokenManager();
        bytes32[] memory symbols = new bytes32[](3);
        symbols[0] = tokenManager.tokenAddressToSymbol(gmMarket);
        symbols[1] = tokenManager.tokenAddressToSymbol(longToken);
        symbols[2] = tokenManager.tokenAddressToSymbol(shortToken);
        uint256[] memory prices = getPrices(symbols);
        
        return GmxTokenPricesAndAddresses({
            gmTokenPrice: prices[0],
            longTokenPrice: prices[1],
            shortTokenPrice: prices[2],
            longToken: longToken,
            shortToken: shortToken
        });
    }

    // Backward compatibility method that returns only prices
    function _getGmxTokenPrices(address gmMarket) internal view returns (GmxV2FeesLib.GmxTokenPrices memory) {
        GmxTokenPricesAndAddresses memory pricesAndAddresses = _getGmxTokenPricesAndAddresses(gmMarket);
        return GmxV2FeesLib.GmxTokenPrices({
            gmTokenPrice: pricesAndAddresses.gmTokenPrice,
            longTokenPrice: pricesAndAddresses.longTokenPrice,
            shortTokenPrice: pricesAndAddresses.shortTokenPrice
        });
    }

    function _deposit(
        address gmToken,
        address depositedToken,
        uint256 tokenAmount,
        uint256 minGmAmount,
        uint256 executionFee
    ) internal nonReentrant noBorrowInTheSameBlock onlyOwner notInLiquidation {
        require(executionFee == msg.value, "Invalid execution fee");
        ITokenManager tokenManager = DeploymentConstants.getTokenManager();
        require(tokenManager.isGmxMarketWhitelisted(gmToken), "Market is not whitelisted");

        tokenAmount = IERC20(depositedToken).balanceOf(address(this)) < tokenAmount
            ? IERC20(depositedToken).balanceOf(address(this))
            : tokenAmount;

        require(_getAvailableBalancePayable(tokenManager.tokenAddressToSymbol(depositedToken)) >= tokenAmount, "Insufficient balance");
        
        // Fetch prices and addresses once at the beginning
        GmxTokenPricesAndAddresses memory pricesAndAddresses = _getGmxTokenPricesAndAddresses(gmToken);
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
        {
            bytes[] memory data = new bytes[](3);
            data[0] = abi.encodeWithSelector(
                IGmxV2Router.sendWnt.selector,
                getGmxV2DepositVault(),
                executionFee
            );
            data[1] = abi.encodeWithSelector(
                IGmxV2Router.sendTokens.selector,
                depositedToken,
                getGmxV2DepositVault(),
                tokenAmount
            );
            data[2] = abi.encodeWithSelector(
                IDepositUtils.createDeposit.selector,
                IDepositUtils.CreateDepositParams({
                    addresses: IDepositUtils.CreateDepositParamsAddresses({
                        receiver: address(this), //receiver
                        callbackContract: address(this), //callbackContract
                        uiFeeReceiver: address(0), //uiFeeReceiver
                        market: gmToken, //market
                        initialLongToken: pricesAndAddresses.longToken, //initialLongToken
                        initialShortToken: pricesAndAddresses.shortToken, //initialShortToken
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
        }
        
        // Simulate solvency check using already fetched prices
        {
            // depositedToken is always either longToken or shortToken
            uint256 depositedTokenPrice = (depositedToken == pricesAndAddresses.longToken) ? pricesAndAddresses.longTokenPrice : pricesAndAddresses.shortTokenPrice;

            require(
                isWithinBounds(
                    (depositedTokenPrice * tokenAmount) /
                        10 ** IERC20Metadata(depositedToken).decimals(), // Deposit Amount In USD
                    (minGmAmount * pricesAndAddresses.gmTokenPrice) /
                        10 ** IERC20Metadata(gmToken).decimals()
                ), // Output Amount In USD
                "Invalid min output value"
            );
            {
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
        }

        // update GMX position benchmark, pass already fetched prices and addresses to save gas
        _updatePositionBenchmark(gmToken, pricesAndAddresses);

        // Freeze account
        DiamondStorageLib.freezeAccount(gmToken);

        tokenManager.increasePendingExposure(
            tokenManager.tokenAddressToSymbol(gmToken),
            address(this),
            (minGmAmount * 1e18) / 10 ** IERC20Metadata(gmToken).decimals()
        );

        // Update exposures
        _syncExposure(tokenManager, depositedToken);
    }

    ///@dev to be called by the bots, sweeps fees and updates the benchmark. used the decoupled way of sweeping fees first, and then
    /// updates the benchmark separately 
    function sweepFeesAndUpdateBenchMark(address gmToken) external nonReentrant onlyWhitelistedLiquidators remainsSolvent returns (uint256 gmTokensInFees) {
        GmxTokenPricesAndAddresses memory pricesAndAddresses = _getGmxTokenPricesAndAddresses(gmToken);
        GmxV2FeesLib.GmxTokenPrices memory gmxTokenPrices = GmxV2FeesLib.GmxTokenPrices({
            gmTokenPrice: pricesAndAddresses.gmTokenPrice,
            longTokenPrice: pricesAndAddresses.longTokenPrice,
            shortTokenPrice: pricesAndAddresses.shortTokenPrice
        });

        gmTokensInFees = GmxV2FeesLib._sweepFees(gmToken, gmxTokenPrices);
        _updatePositionBenchmark(gmToken, pricesAndAddresses);
    }

    function _updatePositionBenchmark(address market, GmxTokenPricesAndAddresses memory pricesAndAddresses) internal {
        GmxV2FeesLib.GmxTokenPrices memory gmxTokenPrices = GmxV2FeesLib.GmxTokenPrices({
            gmTokenPrice: pricesAndAddresses.gmTokenPrice,
            longTokenPrice: pricesAndAddresses.longTokenPrice,
            shortTokenPrice: pricesAndAddresses.shortTokenPrice
        });
        
        (uint256 longTokenAmount, uint256 shortTokenAmount) = GmxV2FeesLib._getUnderlyingTokenDetails(market, gmxTokenPrices, pricesAndAddresses.longToken, pricesAndAddresses.shortToken);
        
        GmxV2FeesLib.GmxPositionDetails memory positionDetails = GmxV2FeesLib.GmxPositionDetails({
            underlyingLongTokenAmount: longTokenAmount,
            underlyingShortTokenAmount: shortTokenAmount,
            gmTokenPriceUsd: pricesAndAddresses.gmTokenPrice,
            longTokenPriceUsd: pricesAndAddresses.longTokenPrice,
            shortTokenPriceUsd: pricesAndAddresses.shortTokenPrice,
            benchmarkTimeStamp: block.timestamp,
            longTokenAddress: pricesAndAddresses.longToken,
            shortTokenAddress: pricesAndAddresses.shortToken
        });
        GmxV2FeesLib._createOrUpdatePositionBenchmark(market, positionDetails);
    }

    function initiateGmxFeesBenchMark(address gmToken) external onlyWhitelistedLiquidators nonReentrant {
        GmxTokenPricesAndAddresses memory pricesAndAddresses = _getGmxTokenPricesAndAddresses(gmToken);
        GmxV2FeesLib.GmxTokenPrices memory gmxTokenPrices = GmxV2FeesLib.GmxTokenPrices({
            gmTokenPrice: pricesAndAddresses.gmTokenPrice,
            longTokenPrice: pricesAndAddresses.longTokenPrice,
            shortTokenPrice: pricesAndAddresses.shortTokenPrice
        });
        
        (uint256 longTokenAmount, uint256 shortTokenAmount) = GmxV2FeesLib._getUnderlyingTokenDetails(gmToken, gmxTokenPrices, pricesAndAddresses.longToken, pricesAndAddresses.shortToken);
        
        GmxV2FeesLib.GmxPositionDetails memory positionDetails = GmxV2FeesLib.GmxPositionDetails({
            underlyingLongTokenAmount: longTokenAmount,
            underlyingShortTokenAmount: shortTokenAmount,
            gmTokenPriceUsd: pricesAndAddresses.gmTokenPrice,
            longTokenPriceUsd: pricesAndAddresses.longTokenPrice,
            shortTokenPriceUsd: pricesAndAddresses.shortTokenPrice,
            benchmarkTimeStamp: block.timestamp,
            longTokenAddress: pricesAndAddresses.longToken,
            shortTokenAddress: pricesAndAddresses.shortToken
        });
        GmxV2FeesLib._createOrUpdatePositionBenchmark(gmToken, positionDetails);       
    }

    function getGmPerformance(address gmToken) external view returns (uint256) {
        GmxV2FeesLib.GmxTokenPrices memory gmxTokenPrices = _getGmxTokenPrices(gmToken);
        return GmxV2FeesLib._getGmAnnualisedPerformance(gmToken, gmxTokenPrices.gmTokenPrice, gmxTokenPrices.longTokenPrice, gmxTokenPrices.shortTokenPrice);
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
        GmxTokenPricesAndAddresses memory pricesAndAddresses = _getGmxTokenPricesAndAddresses(gmToken);
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

        // Simulate solvency check with already fetched prices and addresses
        if (msg.sender == DiamondStorageLib.contractOwner()) {
            // Only owner can call this method or else it's liquidator when the account is already insolvent
            require(
                isWithinBounds(
                    (pricesAndAddresses.gmTokenPrice * gmAmount) /
                        10 ** IERC20Metadata(gmToken).decimals(), // Deposit Amount In USD
                    (pricesAndAddresses.longTokenPrice * minLongTokenAmount) /
                        10 ** IERC20Metadata(pricesAndAddresses.longToken).decimals() +
                        (pricesAndAddresses.shortTokenPrice * minShortTokenAmount) /
                        10 ** IERC20Metadata(pricesAndAddresses.shortToken).decimals()
                ), // Output Amount In USD
                "Invalid min output value"
            );

            uint256 receivedTokensWeightedUsdValue = (((pricesAndAddresses.longTokenPrice *
                minLongTokenAmount *
                tokenManager.tieredDebtCoverage(DiamondStorageLib.getPrimeLeverageTier(), pricesAndAddresses.longToken)) /
                10 ** IERC20Metadata(pricesAndAddresses.longToken).decimals()) +
                ((pricesAndAddresses.shortTokenPrice *
                    minShortTokenAmount *
                    tokenManager.tieredDebtCoverage(DiamondStorageLib.getPrimeLeverageTier(), pricesAndAddresses.shortToken)) /
                    10 ** IERC20Metadata(pricesAndAddresses.shortToken).decimals())) / 1e8;
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
            tokenManager.tokenAddressToSymbol(pricesAndAddresses.longToken),
            address(this),
            (minLongTokenAmount * 1e18) / 10 ** IERC20Metadata(pricesAndAddresses.longToken).decimals()
        );
        tokenManager.increasePendingExposure(
            tokenManager.tokenAddressToSymbol(pricesAndAddresses.shortToken),
            address(this),
            (minShortTokenAmount * 1e18) / 10 ** IERC20Metadata(pricesAndAddresses.shortToken).decimals()
        );

        // Update exposures
        _syncExposure(tokenManager, gmToken);
    }

    modifier onlyWhitelistedLiquidators() {
        require(
            SmartLoanLiquidationFacet(DeploymentConstants.getDiamondAddress()).isLiquidatorWhitelisted(msg.sender),
            "Only whitelisted liquidators can execute this method"
        );
        _;
    }
}