// SPDX-License-Identifier: BUSL-1.1
// Last deployed from commit: ;
pragma solidity 0.8.17;

import "./GmxV2FacetCommon.sol";
import {GmxV2FeesLib}  from "../lib/GmxV2FeesLib.sol";
import {IGmxReader} from "../interfaces/gmx-v2/IGmxReader.sol";

abstract contract GmxV2Facet is GmxV2FacetCommon {

    

    using TransferHelper for address;

    // Mappings
    function marketToLongToken(
        address market
    ) internal pure virtual returns (address);

    function marketToShortToken(
        address market
    ) internal pure virtual returns (address);

    function _deposit(
        address gmToken,
        address depositedToken,
        uint256 tokenAmount,
        uint256 minGmAmount,
        uint256 executionFee
    ) internal nonReentrant noBorrowInTheSameBlock onlyOwner notInLiquidation {
        require(executionFee == msg.value, "Invalid execution fee");
        ITokenManager tokenManager = DeploymentConstants.getTokenManager();

        tokenAmount = IERC20(depositedToken).balanceOf(address(this)) < tokenAmount
            ? IERC20(depositedToken).balanceOf(address(this))
            : tokenAmount;

        require(_getAvailableBalancePayable(tokenManager.tokenAddressToSymbol(depositedToken)) >= tokenAmount, "Insufficient balance");
        // Fetch prices once at the beginning
        GmxV2FeesLib.GmxTokenPrices memory gmxTokenPrice = _getGmxTokenPrices(gmToken);
        // (gmxTokenPrice.gmTokenPrice, gmxTokenPrice.longTokenPrice, gmxTokenPrice.shortTokenPrice) = ;
        // (uint256 gmTokenPrice, uint256 longTokenPrice, uint256 shortTokenPrice) = _getGmxTokenPrices(gmToken);
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
                        initialLongToken: marketToLongToken(gmToken), //initialLongToken
                        initialShortToken: marketToShortToken(gmToken), //initialShortToken
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
            address longToken = marketToLongToken(gmToken);
            address shortToken = marketToShortToken(gmToken);

            uint256 depositedTokenPrice = (depositedToken == longToken) ? gmxTokenPrice.longTokenPrice : gmxTokenPrice.shortTokenPrice;

            require(
                isWithinBounds(
                    (depositedTokenPrice * tokenAmount) /
                        10 ** IERC20Metadata(depositedToken).decimals(), // Deposit Amount In USD
                    (minGmAmount * gmxTokenPrice.gmTokenPrice) /
                        10 ** IERC20Metadata(gmToken).decimals()
                ), // Output Amount In USD
                "Invalid min output value"
            );
            {
                uint256 gmTokensWeightedUsdValue = (gmxTokenPrice.gmTokenPrice *
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

        // update GMX position benchmark, pass already fetched prices to save gas
        _updatePositionBenchmark(gmToken, gmxTokenPrice);

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
        
        GmxV2FeesLib.GmxTokenPrices memory gmxTokenPrices  = _getGmxTokenPrices(gmToken);

        gmTokensInFees = GmxV2FeesLib._sweepFees(gmToken, gmxTokenPrices);
        _updatePositionBenchmark(gmToken, gmxTokenPrices);

    }


    function _updatePositionBenchmark(address market, GmxV2FeesLib.GmxTokenPrices memory gmxTokenPrices) internal{
        (uint256 longTokenAmount, uint256 shortTokenAmount, address longToken, address shortToken) = _getUnderlyingTokenDetails(market);
        
        GmxV2FeesLib.GmxPositionDetails memory positionDetails = GmxV2FeesLib.GmxPositionDetails({
            underlyingLongTokenAmount: longTokenAmount,
            underlyingShortTokenAmount: shortTokenAmount,
            gmTokenPriceUsd: gmxTokenPrices.gmTokenPrice,
            longTokenPriceUsd: gmxTokenPrices.longTokenPrice,
            shortTokenPriceUsd: gmxTokenPrices.shortTokenPrice,
            benchmarkTimeStamp: block.timestamp,
            longTokenAddress: longToken,
            shortTokenAddress: shortToken
        });
        GmxV2FeesLib._createOrUpdatePositionBenchmark(market, positionDetails);

    }

    function initiateGmxFeesBenchMark(address gmToken) external onlyWhitelistedLiquidators nonReentrant {
        ITokenManager tokenManager = DeploymentConstants.getTokenManager();
        (uint256 longTokenAmount, uint256 shortTokenAmount, address longToken, address shortToken) = _getUnderlyingTokenDetails(gmToken);
        GmxV2FeesLib.GmxTokenPrices memory gmxTokenPrices  = _getGmxTokenPrices(gmToken);
        GmxV2FeesLib.GmxPositionDetails memory positionDetails = GmxV2FeesLib.GmxPositionDetails({
            underlyingLongTokenAmount: longTokenAmount,
            underlyingShortTokenAmount: shortTokenAmount,
            gmTokenPriceUsd: gmxTokenPrices.gmTokenPrice,
            longTokenPriceUsd: gmxTokenPrices.longTokenPrice,
            shortTokenPriceUsd: gmxTokenPrices.shortTokenPrice,
            benchmarkTimeStamp: block.timestamp,
            longTokenAddress: longToken,
            shortTokenAddress: shortToken
        });
        GmxV2FeesLib._createOrUpdatePositionBenchmark(gmToken, positionDetails);       
    }

    function _getGmxTokenPrices(address gmMarket) internal view returns (GmxV2FeesLib.GmxTokenPrices memory) {
        address gmxReader = DeploymentConstants.getGmxReaderAddress();
        address dataStore = DeploymentConstants.getGmxDataStoreAddress();
        IGmxReader.MarketProps memory marketProps = IGmxReader(gmxReader).getMarket(dataStore, gmMarket);
        address longToken = marketProps.longToken;
        address shortToken = marketProps.shortToken;
        require(longToken != address(0) && shortToken != address(0), "GMX market tokens not found");
        ITokenManager tokenManager = DeploymentConstants.getTokenManager();
        bytes32[] memory symbols = new bytes32[](3);
        symbols[0] = tokenManager.tokenAddressToSymbol(gmMarket);
        symbols[1] = tokenManager.tokenAddressToSymbol(longToken);
        symbols[2] = tokenManager.tokenAddressToSymbol(shortToken);
        uint256[] memory prices = getPrices(symbols);
        GmxV2FeesLib.GmxTokenPrices memory tokenPrices = GmxV2FeesLib.GmxTokenPrices({
            gmTokenPrice: prices[0],
            longTokenPrice: prices[1],
            shortTokenPrice: prices[2]
        });
        return tokenPrices;
    }

    

    function _getUnderlyingTokenDetails(address gmMarket) internal view returns (uint256 longTokenAmount, uint256 shortTokenAmount, address longToken, address shortToken) {
        // Get total GM token supply
        uint256 totalGmSupply = IERC20(gmMarket).totalSupply();
        longToken = marketToLongToken(gmMarket);
        shortToken = marketToShortToken(gmMarket);
        uint256 gmTokenAmount = IERC20(gmMarket).balanceOf(address(this));
        
        // The GM market contract is the owner of the underlying tokens
        uint256 totalLongTokens = IERC20(longToken).balanceOf(gmMarket);
        uint256 totalShortTokens = IERC20(shortToken).balanceOf(gmMarket);
        
        // Get the actual token balances held by the GM market contract
        // (uint256 totalLongTokens, uint256 totalShortTokens) = _getPoolComposition(gmMarket);
        
        // Calculate this position's pro-rata share of the underlying tokens
        longTokenAmount = (gmTokenAmount * totalLongTokens) / totalGmSupply;
        shortTokenAmount = (gmTokenAmount * totalShortTokens) / totalGmSupply;
    }


    function getGmPerformance(address gmToken) external view returns (uint256) {
        GmxV2FeesLib.GmxTokenPrices memory gmxTokenPrices  = _getGmxTokenPrices(gmToken);
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

        gmAmount = IERC20(gmToken).balanceOf(address(this)) < gmAmount
            ? IERC20(gmToken).balanceOf(address(this))
            : gmAmount;

        require(_getAvailableBalancePayable(tokenManager.tokenAddressToSymbol(gmToken)) >= gmAmount, "Insufficient balance");
        GmxV2FeesLib.GmxTokenPrices memory gmxTokenPrice = _getGmxTokenPrices(gmToken);
        
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

        address longToken = marketToLongToken(gmToken);
        address shortToken = marketToShortToken(gmToken);

        // Simulate solvency check with already fetched prices
        if (msg.sender == DiamondStorageLib.contractOwner()) {
            // Only owner can call this method or else it's liquidator when the account is already insolvent
            uint256[] memory tokenPrices;

            // {
            //     bytes32[] memory tokenSymbols = new bytes32[](3);
            //     tokenSymbols[0] = tokenManager.tokenAddressToSymbol(longToken);
            //     tokenSymbols[1] = tokenManager.tokenAddressToSymbol(shortToken);
            //     tokenSymbols[2] = tokenManager.tokenAddressToSymbol(gmToken);
            //     tokenPrices = getPrices(tokenSymbols);
            // }
            require(
                isWithinBounds(
                    (gmxTokenPrice.gmTokenPrice * gmAmount) /
                        10 ** IERC20Metadata(gmToken).decimals(), // Deposit Amount In USD
                    (gmxTokenPrice.longTokenPrice * minLongTokenAmount) /
                        10 ** IERC20Metadata(longToken).decimals() +
                        (gmxTokenPrice.shortTokenPrice * minShortTokenAmount) /
                        10 ** IERC20Metadata(shortToken).decimals()
                ), // Output Amount In USD
                "Invalid min output value"
            );

            uint256 receivedTokensWeightedUsdValue = (((gmxTokenPrice.longTokenPrice *
                minLongTokenAmount *
                tokenManager.tieredDebtCoverage(DiamondStorageLib.getPrimeLeverageTier(), longToken)) /
                10 ** IERC20Metadata(longToken).decimals()) +
                ((gmxTokenPrice.shortTokenPrice *
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

        // update position benchmark, pass in already fetched prices to save gas
        _updatePositionBenchmark(gmToken, gmxTokenPrice);

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

    }


    modifier onlyWhitelistedLiquidators() {
        require(
            SmartLoanLiquidationFacet(DeploymentConstants.getDiamondAddress()).isLiquidatorWhitelisted(msg.sender),
            "Only whitelisted liquidators can execute this method"
        );
        _;
    }
}