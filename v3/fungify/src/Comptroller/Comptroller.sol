// SPDX-License-Identifier: BSD-3-Clause
pragma solidity 0.8.23;

import "CToken.sol";
import "ErrorReporter.sol";
import "PriceOracle.sol";
import "ComptrollerInterface.sol";
import "ComptrollerStorage.sol";
import "Unitroller.sol";
import "CErc20InterestMarketInterfaces.sol";
import "CErc721TokenInterfaces.sol";

/**
 * @title Compound's Comptroller Contract
 * @author Compound
 */
contract Comptroller is ComptrollerV8Storage, ComptrollerInterface, ComptrollerErrorReporter, ExponentialNoError {
    /// @notice Emitted when an admin supports a market
    event MarketListed(CToken cToken);

    /// @notice Emitted when an account enters a market
    event MarketEntered(CToken cToken, address account);

    /// @notice Emitted when an account exits a market
    event MarketExited(CToken cToken, address account);

    /// @notice Emitted when a collateral factor is changed by admin
    event NewCollateralFactor(CToken cToken, uint oldCollateralFactorMantissa, uint newCollateralFactorMantissa);

    /// @notice Emitted when liquidation incentive is changed by admin
    event NewLiquidationIncentive(uint oldLiquidationIncentiveMantissa, uint newLiquidationIncentiveMantissa);

    /// @notice Emitted when price oracle is changed
    event NewPriceOracle(PriceOracle oldPriceOracle, PriceOracle newPriceOracle);

    /// @notice Emitted when pause guardian is changed
    event NewPauseGuardian(address oldPauseGuardian, address newPauseGuardian);

    /// @notice Emitted when an action is paused globally
    event ActionPaused(string action, bool pauseState);

    /// @notice Emitted when an action is paused on a market
    event ActionPaused(CToken cToken, string action, bool pauseState);

    /// @notice Emitted when borrow cap for a cToken is changed
    event NewBorrowCap(CToken indexed cToken, uint newBorrowCap);

    /// @notice Emitted when borrow cap guardian is changed
    event NewBorrowCapGuardian(address oldBorrowCapGuardian, address newBorrowCapGuardian);

    /// @notice Emitted when COMP is granted by admin
    event CompGranted(address recipient, uint amount);

    /// @notice Emitted when COMP accrued for a user has been manually adjusted.
    event CompAccruedAdjusted(address indexed user, uint oldCompAccrued, uint newCompAccrued);

    /// @notice Emitted when COMP receivable for a user has been updated.
    event CompReceivableUpdated(address indexed user, uint oldCompReceivable, uint newCompReceivable);

    event InterestShortfallTopUp(address borrower, address cTokenInterestMarket, address cTokenCollateral, uint topUpAmount, uint seizeAmount);

    event LiquidateBorrow(address borrower, uint liquidatedValueTotal, address[] cTokenCollaterals, uint[] seizeTokensList);

    /// @notice The initial COMP index for a market
    uint224 public constant compInitialIndex = 1e36;

    // No collateralFactorMantissa may exceed this value
    uint internal constant collateralFactorMaxMantissa = 0.9e18; // 0.9


    /*** Reentrancy Guard ***/

    /**
     * @dev Prevents a contract from calling itself, directly or indirectly.
     */
    modifier nonReentrantWL() {
        if (!_checkEoaOrWL(msg.sender)) {
            revert Unauthorized();
        }
        if (!_notEntered) {
            revert Reentry();
        }
        _notEntered = false;
        _;
        _notEntered = true; // get a gas-refund post-Istanbul
    }

    constructor() {
        admin = msg.sender;
    }

    function initialize() public {
        if (msg.sender != address(this) && msg.sender != admin) {
            revert Unauthorized();
        }

        // The counter starts true to prevent changing it from zero to non-zero (i.e. smaller cost/refund)
        _notEntered = true;
    }

    /*** Assets You Are In ***/

    /**
     * @notice Returns the assets an account has entered
     * @param account The address of the account to pull assets for
     * @return A dynamic list with the assets the account has entered
     */
    function getAssetsIn(address account) external view returns (CToken[] memory) {
        CToken[] memory assetsIn = accountAssets[account];

        return assetsIn;
    }

    /**
     * @notice Returns whether the given account is entered in the given asset
     * @param account The address of the account to check
     * @param cToken The cToken to check
     * @return True if the account is in the asset, otherwise false.
     */
    function checkMembership(address account, CToken cToken) external view returns (bool) {
        return markets[address(cToken)].accountMembership[account];
    }

    /**
     * @notice When a market calls this function the account is added to this market
     * @param account The account to enter the market
     */
    function autoEnterMarkets(address account) override public {
        if (addToMarketInternal(CToken(msg.sender), account) != Error.NO_ERROR) {
            revert Unauthorized();
        }
    }

    /**
     * @notice Add assets to be included in account liquidity calculation
     * @param cTokens The list of addresses of the cToken markets to be enabled
     * @return Success indicator for whether each corresponding market was entered
     */
    function enterMarkets(address[] memory cTokens) override public returns (uint[] memory) {
        uint len = cTokens.length;

        uint[] memory results = new uint[](len);
        for (uint i = 0; i < len; i++) {
            CToken cToken = CToken(cTokens[i]);

            results[i] = uint(addToMarketInternal(cToken, msg.sender));
        }

        return results;
    }

    /**
     * @notice Add the market to the borrower's "assets in" for liquidity calculations
     * @param cToken The market to enter
     * @param borrower The address of the account to modify
     * @return Success indicator for whether the market was entered
     */
    function addToMarketInternal(CToken cToken, address borrower) internal returns (Error) {
        Market storage marketToJoin = markets[address(cToken)];

        if (!marketToJoin.isListed) {
            // market is not listed, cannot join
            return Error.MARKET_NOT_LISTED;
        }

        if (marketToJoin.accountMembership[borrower]) {
            // already joined
            return Error.NO_ERROR;
        }

        // survived the gauntlet, add to list
        // NOTE: we store these somewhat redundantly as a significant optimization
        //  this avoids having to iterate through the list for the most common use cases
        //  that is, only when we need to perform liquidity checks
        //  and not whenever we want to check if an account is in a particular market
        marketToJoin.accountMembership[borrower] = true;
        accountAssets[borrower].push(cToken);

        if (cToken.marketType() == CTokenStorage.MarketType.ERC721_MARKET) {
            accountAssetsErc721[borrower].push(cToken);
        }

        emit MarketEntered(cToken, borrower);

        return Error.NO_ERROR;
    }

    /**
     * @notice When a market calls this function the account is removed from this market
     * @param account The account to exit the market
     */
    function autoExitMarkets(address account) override public {
        if (exitFromMarketInternal(CToken(msg.sender), account) != Error.NO_ERROR) {
            revert Unauthorized();
        }
    }

    /**
     * @notice Removes asset from sender's account liquidity calculation
     * @dev Sender must not have an outstanding borrow balance in the asset,
     *  or be providing necessary collateral for an outstanding borrow.
     * @param cTokenAddress The address of the asset to be removed
     * @return Whether or not the account successfully exited the market
     */
    function exitMarket(address cTokenAddress) override external returns (uint) {
        CToken cToken = CToken(cTokenAddress);
        /* Get sender tokensHeld and amountOwed underlying from the cToken */
        (uint oErr, uint tokensHeld, uint amountOwed, , uint interestBalance) = cToken.getAccountSnapshot(msg.sender);
        if (oErr != 0) {
            revert GetAccountSnapshotFailed(oErr);
        }

        /* Fail if the sender has a borrow balance */
        if (amountOwed != 0) {
            return fail(Error.NONZERO_BORROW_BALANCE, FailureInfo.EXIT_MARKET_BALANCE_OWED);
        }

        /* Fail if the sender has an interest owed balance */
        if (interestBalance != 0) {
            return fail(Error.NONZERO_INTEREST_BALANCE, FailureInfo.EXIT_MARKET_BALANCE_OWED);
        }

        /* Fail if the sender is not permitted to redeem all of their tokens */
        uint allowed = redeemAllowedInternal(cTokenAddress, msg.sender, tokensHeld);
        if (allowed != 0) {
            return failOpaque(Error.REJECTION, FailureInfo.EXIT_MARKET_REJECTION, allowed);
        }

        return uint(exitFromMarketInternal(cToken, msg.sender));
    }

    /**
     * @notice Removes asset from sender's account liquidity calculation
     * @param cToken The address of the asset to be removed
     * @param borrower The address of the account to remove the asset from
     * @return Error Whether or not the account successfully exited the market
     */
    function exitFromMarketInternal(CToken cToken, address borrower) internal returns (Error) {
        Market storage marketToExit = markets[address(cToken)];

        if (!marketToExit.isListed) {
            // market is not listed, cannot exit
            return Error.MARKET_NOT_LISTED;
        }

        /* Return true if the sender is not already â€˜inâ€™ the market */
        if (!marketToExit.accountMembership[borrower]) {
            return Error.NO_ERROR;
        }

        /* Set cToken account membership to false */
        delete marketToExit.accountMembership[borrower];

        removeFromArray(accountAssets[borrower], cToken);

        if (cToken.marketType() == CTokenStorage.MarketType.ERC721_MARKET) {
            removeFromArray(accountAssetsErc721[borrower], cToken);
        }

        emit MarketExited(cToken, borrower);

        return Error.NO_ERROR;
    }

    function removeFromArray(CToken[] storage storedList, CToken cToken) internal {
        uint len = storedList.length;
        uint assetIndex = len;
        for (uint i = 0; i < len;) {
            if (storedList[i] == cToken) {
                assetIndex = i;
                break;
            }
            unchecked { i++; }
        }

        // We *must* have found the asset in the list or our redundant data structure is broken
        assert(assetIndex < len);

        // copy last item in list to location of item to be removed, reduce length by 1
        storedList[assetIndex] = storedList[len - 1];
        storedList.pop();
    }

    /**
     * @notice Redeems the interest accrued for the given cTokens.
     * @param lender The address of the lender from which to claim.
     * @param cTokens The list of cToken addresses to redeem interest from.
     *                Only possible for cErc721 markets.
     * @return uint[] Amount of interest redeemed for each corresponding cToken
     *                or Error.MARKET_NOT_LISTED, Error.INVALID_MARKET_TYPE for invalid markets.
     */
    function redeemAllInterest(address lender, address[] memory cTokens) override external returns (uint[] memory) {
        if (msg.sender != _interestMarket) {
            if (lender != msg.sender || !_checkEoaOrWL(msg.sender)) {
                revert Unauthorized();
            }
        }

        uint len = cTokens.length;

        uint[] memory results = new uint[](len);
        for (uint i = 0; i < len; i++) {
            if (!markets[cTokens[i]].isListed) {
                results[i] = uint(Error.MARKET_NOT_LISTED);
            } else if (CToken(cTokens[i]).marketType() != CTokenStorage.MarketType.ERC721_MARKET) {
                results[i] = uint(Error.INVALID_MARKET_TYPE);
            } else {
                results[i] = uint(CErc721Interface(cTokens[i]).redeemInterest(lender));
            }
        }

        return results;
    }

    /**
     * @notice Topup interest shortfall of a borrower and seize collateral tokens.
     * @param borrower The borrower whose shortfall to topup
     * @param maxTopUpTokens Maximum amount of shortfall to topup (actual amount will be <= maxTopUpTokens)
     *                       The caller must have enough tokens of the interest market
     * @param cTokenCollateral The market where the collateral is held
     * @return (uint, uint) Actual topup amount, actual seize amount
     */
    function topUpInterestShortfall(address borrower, uint maxTopUpTokens, address cTokenCollateral) override external nonReentrantWL returns (uint[2] memory) {
        if (seizeGuardianPaused) {
            revert SeizePaused();
        }
        if (maxTopUpTokens == 0) {
            revert InvalidTopUpLimit();
        }

        address interestMarket_ = _interestMarket;

        CTokenInterface(interestMarket_).accrueInterest();
        if (CToken(cTokenCollateral).marketType() != CTokenStorage.MarketType.ERC721_MARKET) {
            CTokenInterface(cTokenCollateral).accrueInterest();
        }

        for (uint i = 0; i < accountAssetsErc721[borrower].length;) {
            // redeems earned NFT market interest for the borrower, which could make their account solvent; also calls accrueInterest() internally
            CErc721Interface(address(accountAssetsErc721[borrower][i]))._redeemInterestForLiquidation(borrower);
            unchecked { i++; }
        }

        (uint err, , uint shortfallUsd) = getAccountLiquidity(borrower);
        if (err != uint(Error.TOO_LITTLE_INTEREST_RESERVE) || shortfallUsd == 0) {
            revert InsufficientShortfall(err, shortfallUsd);
        }

        if (interestMarket_ == cTokenCollateral) {
            revert SameMarket();
        }
        if (address(CToken(interestMarket_).comptroller()) != address(this)) {
            revert ComptrollerMismatch();
        }
        if (!markets[cTokenCollateral].isListed) {
            revert MarketNotListed();
        }

        // max topup amount is shortfall + 5% (unless a greater value NFT is seized)
        shortfallUsd = shortfallUsd * 105 / 100;

        (uint actualTopUpTokens, uint actualSeizeTokens) = _adjustTopUpValues(borrower, shortfallUsd, interestMarket_, cTokenCollateral);
        if (maxTopUpTokens < actualTopUpTokens) {
            revert TopUpLimitExceeded();
        }
        if (actualTopUpTokens == 0 && actualSeizeTokens != 0) {
            revert TopUpZero();
        }

        // seize tokens
        if (CTokenInterface(cTokenCollateral)._seize(msg.sender, borrower, actualSeizeTokens) != actualSeizeTokens) {
            revert SeizeFailed();
        }

        // topup interest
        if (!CToken(interestMarket_).transferFrom(msg.sender, borrower, actualTopUpTokens)) {
            revert TopUpFailed();
        }

        emit InterestShortfallTopUp(borrower, interestMarket_, cTokenCollateral, actualTopUpTokens, actualSeizeTokens);

        return [actualTopUpTokens, actualSeizeTokens];
    }

    /**
     * @notice Liquidates multiple positions in one transaction.
     * @dev cETH is liquidated using WETH.
     * @param borrower The borrower of this cToken to be liquidated
     * @param liquidatables The list of Liquidatables
     *                      If Liquidatables.amount is non-zero, we assume an ERC20 market and ignore nftIds, if zero we assume a NFT market.
     * @param cTokenCollaterals The list of cTokenCollaterals
     * @param minSeizedValue slippage protection. The adjusted (scaled) prices from the oracle are used for the value.
     * @return results uint[][] 0:x the repay amount for the liquidatables. 1:x the seize amount for the cTokenCollaterals
     */
    function batchLiquidateBorrow(address borrower, Liquidatables[] memory liquidatables, address[] memory cTokenCollaterals, uint minSeizedValue) override external nonReentrantWL returns (uint[][2] memory results) {
        if (seizeGuardianPaused) {
            revert SeizePaused();
        }

        {
            uint i;
            for (i = 0; i < liquidatables.length;) {
                if (CTokenInterface(liquidatables[i].cToken).marketType() != CTokenStorage.MarketType.ERC721_MARKET) {
                    CTokenInterface(liquidatables[i].cToken).accrueInterest();
                }
                unchecked { i++; }
            }
            for (i = 0; i < cTokenCollaterals.length;) {
                if (CTokenInterface(cTokenCollaterals[i]).marketType() != CTokenStorage.MarketType.ERC721_MARKET) {
                    CTokenInterface(cTokenCollaterals[i]).accrueInterest();
                }
                unchecked { i++; }
            }
            for (i = 0; i < accountAssetsErc721[borrower].length;) {
                // redeems earned NFT market interest for the borrower, which could make their account solvent; also calls accrueInterest() internally
                CErc721Interface(address(accountAssetsErc721[borrower][i]))._redeemInterestForLiquidation(borrower);
                unchecked { i++; }
            }
        }

        (uint err, uint beforeRatio) = getAccountDebtRatioWhenShortfall(borrower);
        if (err != uint(Error.NO_ERROR) || beforeRatio == 0) {
            revert InsufficientShortfall(err, beforeRatio);
        }

        results[0] = new uint[](liquidatables.length);
        results[1] = new uint[](cTokenCollaterals.length);

        PriceOracle oracle_ = oracle; 

        uint liquidatedValueTotal;
        {
            for (uint i = 0; i < liquidatables.length;) {

                if (!markets[liquidatables[i].cToken].isListed) {
                    revert MarketNotListed();
                }

                if (liquidatables[i].amount != 0) {
                    results[0][i] = CErc20Interface(liquidatables[i].cToken)._liquidateBorrow(msg.sender, borrower, liquidatables[i].amount);
                } else {
                    results[0][i] = CErc721Interface(liquidatables[i].cToken)._liquidateBorrow(msg.sender, borrower, liquidatables[i].nftIds);
                }

                uint priceMantissa = oracle_.getUnderlyingPrice(CToken(liquidatables[i].cToken));
                if (priceMantissa == 0) {
                    revert PriceError();
                }

                liquidatedValueTotal = mul_ScalarTruncateAddUInt(Exp({mantissa: priceMantissa}), results[0][i], liquidatedValueTotal);

                unchecked { i++; }
            }
            if (liquidatedValueTotal == 0) {
                revert LiquidateError();
            }
        }

        {
            uint liquidatedValueRemaining = liquidatedValueTotal;
            uint liquidatedValueExcess = 0;
            for (uint i = 0; i < cTokenCollaterals.length && liquidatedValueRemaining != 0;) {

                if (!markets[cTokenCollaterals[i]].isListed) {
                    revert MarketNotListed();
                }

                uint actualSeizeTokens;
                (liquidatedValueRemaining, liquidatedValueExcess, actualSeizeTokens) = _liquidateSeize(CTokenInterface(cTokenCollaterals[i]), liquidatedValueRemaining, borrower);

                results[1][i] = actualSeizeTokens;

                unchecked { i++; }
            }

            if (liquidatedValueRemaining != 0) {
                revert LiquidateSeizeTooLittle();
            }

            if (liquidatedValueTotal + liquidatedValueExcess < minSeizedValue) {
                revert LiquidateSeizeBellowMinValue(minSeizedValue, liquidatedValueTotal + liquidatedValueExcess);
            }

            // A non-zero liquidatedValueExcess indicates that collateral in excess of liquidationIncentive was seized,
            // which can occur with NFT collaterals. The liquidator must refund this value to the borrower. We use interestMarket
            // tokens for this, so the liquidator needs a sufficient balance to cover the excess.
            if (liquidatedValueExcess != 0) {
                CToken interestMarket_ = CToken(_interestMarket);

                uint refundTokens = liquidatedValueExcess * doubleScale /
                    oracle_.getUnderlyingPrice(interestMarket_) /
                    interestMarket_.exchangeRateCurrent();

                if (!interestMarket_.transferFrom(msg.sender, borrower, refundTokens)) {
                    revert ExcessRefundFailed();
                }
            }
        }

        /* We emit a LiquidateBorrow event */
        emit LiquidateBorrow(borrower, liquidatedValueTotal, cTokenCollaterals, results[1]);

        uint afterRatio;
        (err, afterRatio) = getAccountDebtRatioWhenShortfall(borrower);
        
        // we allow Error.TOO_LITTLE_INTEREST_RESERVE here as long as debt ratio is improved or unchanged
        if ((err != uint(Error.NO_ERROR) && err != uint(Error.TOO_LITTLE_INTEREST_RESERVE)) || afterRatio > beforeRatio) {
            revert LiquidateSeizeTooMuch();
        }

        return results;
    }

    function _liquidateSeize(CTokenInterface collateral, uint liquidatedValueRemaining, address borrower) internal returns (uint liquidatedValueRemainingNew, uint liquidatedValueExcess, uint actualSeizeTokens) {
        /* We calculate the number of collateral tokens that will be seized */
        uint seizeTokens = liquidateCalculateSeizeTokensNormed(address(collateral), liquidatedValueRemaining);

        uint borrowerBalance = collateral.balanceOf(borrower);
        if (borrowerBalance < seizeTokens) {
            // can't seize more collateral than owned by the borrower
            actualSeizeTokens = borrowerBalance;
        } else {
            actualSeizeTokens = seizeTokens;
        }

        actualSeizeTokens = collateral._seize(msg.sender, borrower, actualSeizeTokens);
        if (actualSeizeTokens == 0) {
            revert SeizeFailed();
        }

        uint actualRepayAmount = liquidatedValueRemaining;
        if (actualSeizeTokens != seizeTokens) {
            actualRepayAmount = actualRepayAmount * actualSeizeTokens / seizeTokens;
        }

        if (liquidatedValueRemaining > actualRepayAmount) {
            liquidatedValueRemainingNew = liquidatedValueRemaining - actualRepayAmount;
        } else {
            liquidatedValueExcess = actualRepayAmount - liquidatedValueRemaining;
            liquidatedValueRemainingNew = 0;
        }
    }

    /*** Policy Hooks ***/

    /**
     * @notice Checks if the account should be allowed to mint tokens in the given market
     * @param cToken The market to verify the mint against
     * @param minter The account which would get the minted tokens
     * @param mintAmount The amount of underlying being supplied to the market in exchange for tokens
     * @return 0 if the mint is allowed, otherwise a semi-opaque error code (See ErrorReporter.sol)
     */
    function mintAllowed(address cToken, address minter, uint mintAmount) override external returns (uint) {
        // Pausing is a very serious situation - we revert to sound the alarms
        if (mintGuardianPaused[cToken]) {
            revert MintPaused();
        }

        // Shh - currently unused
        minter;
        mintAmount;

        if (!markets[cToken].isListed) {
            return uint(Error.MARKET_NOT_LISTED);
        }

        return uint(Error.NO_ERROR);
    }

    /**
     * @notice Checks if the account should be allowed to redeem tokens in the given market
     * @param cToken The market to verify the redeem against
     * @param redeemer The account which would redeem the tokens
     * @param redeemTokens The number of cTokens to exchange for the underlying asset in the market
     * @return 0 if the redeem is allowed, otherwise a semi-opaque error code (See ErrorReporter.sol)
     */
    function redeemAllowed(address cToken, address redeemer, uint redeemTokens) override external returns (uint) {
        uint allowed = redeemAllowedInternal(cToken, redeemer, redeemTokens);
        if (allowed != uint(Error.NO_ERROR)) {
            return allowed;
        }

        return uint(Error.NO_ERROR);
    }

    function redeemAllowedInternal(address cToken, address redeemer, uint redeemTokens) internal view returns (uint) {
        if (!markets[cToken].isListed) {
            return uint(Error.MARKET_NOT_LISTED);
        }

        /* If the redeemer is not 'in' the market, then we can bypass the liquidity check */
        if (!markets[cToken].accountMembership[redeemer]) {
            return uint(Error.NO_ERROR);
        }

        /* Otherwise, perform a hypothetical liquidity check to guard against shortfall */
        // uint[4] memory retVals; /* liquidity, shortfall, sumCollateral, sumBorrowPlusEffects */
        (Error err, uint[4] memory retVals) = getHypotheticalAccountLiquidityInternal(redeemer, CToken(cToken), redeemTokens, 0);
        if (err != Error.NO_ERROR) {
            return uint(err);
        }
        if (retVals[1] != 0) {
            return uint(Error.INSUFFICIENT_LIQUIDITY);
        }

        return uint(Error.NO_ERROR);
    }

    /**
     * @notice Checks if the account should be allowed to borrow the underlying asset of the given market
     * @param cToken The market to verify the borrow against
     * @param borrower The account which would borrow the asset
     * @param borrowAmount The amount of underlying the account would borrow
     * @return 0 if the borrow is allowed, otherwise a semi-opaque error code (See ErrorReporter.sol)
     */
    function borrowAllowed(address cToken, address borrower, uint borrowAmount) override external returns (uint) {
        // Pausing is a very serious situation - we revert to sound the alarms
        if (borrowGuardianPaused[cToken]) {
            revert BorrowPaused();
        }

        if (!markets[cToken].isListed) {
            return uint(Error.MARKET_NOT_LISTED);
        }

        Error err;
        if (!markets[cToken].accountMembership[borrower]) {
            // only cTokens may call borrowAllowed if borrower not in market
            if (msg.sender != cToken) {
                revert Unauthorized();
            }

            // attempt to add borrower to the market
            err = addToMarketInternal(CToken(msg.sender), borrower);
            if (err != Error.NO_ERROR) {
                return uint(err);
            }

            // it should be impossible to break the important invariant
            assert(markets[cToken].accountMembership[borrower]);
        }

        if (oracle.getUnderlyingPrice(CToken(cToken)) == 0) {
            return uint(Error.PRICE_ERROR);
        }


        uint borrowCap = borrowCaps[cToken];
        // Borrow cap of 0 corresponds to unlimited borrowing
        if (borrowCap != 0) {
            uint totalBorrows = CToken(cToken).totalBorrows();
            uint nextTotalBorrows = add_(totalBorrows, borrowAmount);
            if (nextTotalBorrows >= borrowCap) {
                revert BorrowCapReached();
            }
        }

        uint[4] memory retVals; /* liquidity, shortfall, sumCollateral, sumBorrowPlusEffects */
        (err, retVals) = getHypotheticalAccountLiquidityInternal(borrower, CToken(cToken), 0, borrowAmount);
        if (err != Error.NO_ERROR) {
            return uint(err);
        }
        if (retVals[1] != 0) {
            return uint(Error.INSUFFICIENT_LIQUIDITY);
        }

        return uint(Error.NO_ERROR);
    }

    /**
     * @notice Checks if the account should be allowed to repay a borrow in the given market
     * @param cToken The market to verify the repay against
     * @param payer The account which would repay the asset
     * @param borrower The account which would borrowed the asset
     * @param repayAmount The amount of the underlying asset the account would repay
     * @return 0 if the repay is allowed, otherwise a semi-opaque error code (See ErrorReporter.sol)
     */
    function repayBorrowAllowed(
        address cToken,
        address payer,
        address borrower,
        uint repayAmount) override external returns (uint) {
        // Shh - currently unused
        payer;
        borrower;
        repayAmount;

        if (!markets[cToken].isListed) {
            return uint(Error.MARKET_NOT_LISTED);
        }

        return uint(Error.NO_ERROR);
    }

    /**
     * @notice Checks if the collecting of interest should be allowed to occur
     * @param cTokenInterestMarket Asset which is payed out as interest
     * @param cTokenSupplyMarket Asset which accrues interest
     * @param lender The address who would receive the tokens
     * @param interestAmount The amount of tokens to receive as interest
     * @return uint 0=success, otherwise a failure (see ErrorReporter.sol for details)
     */
    function collectInterestAllowed(
        address cTokenInterestMarket,
        address cTokenSupplyMarket,
        address lender,
        uint interestAmount) override external returns (uint) {
        // Pausing is a very serious situation - we revert to sound the alarms
        if (collectInterestGuardianPaused) {
            revert CollectInterestPaused();
        }

        lender;
        interestAmount;

        if (cTokenInterestMarket != _interestMarket) {
            revert InvalidMarket();
        }

        if (!markets[cTokenSupplyMarket].isListed) {
            revert MarketNotListed();
        }

        if (CToken(cTokenInterestMarket).comptroller() != CToken(cTokenSupplyMarket).comptroller()) {
            revert ComptrollerMismatch();
        }

        if (CToken(cTokenSupplyMarket).marketType() != CTokenStorage.MarketType.ERC721_MARKET) {
            revert WrongMarketType();
        }

        return uint(Error.NO_ERROR);
    }

    /**
     * @notice Checks if paying interest should be allowed to occur
     * @param cTokenInterestMarket Asset which is used as payment
     * @param cTokenBorrowMarket Asset which accrues interest
     * @param payer The address who would pay the tokens
     * @param payTokens The amount of tokens to pay as interest
     * @return uint 0=success, otherwise a failure (see ErrorReporter.sol for details)
     */
    function payInterestAllowed(
        address cTokenInterestMarket,
        address cTokenBorrowMarket,
        address payer,
        uint payTokens) override external returns (uint) {
        // Pausing is a very serious situation - we revert to sound the alarms
        if (payInterestGuardianPaused) {
            revert PayInterestPaused();
        }

        if (cTokenInterestMarket != _interestMarket) {
            revert InvalidMarket();
        }

        if (!markets[cTokenBorrowMarket].isListed) {
            revert MarketNotListed();
        }

        if (CToken(cTokenInterestMarket).comptroller() != CToken(cTokenBorrowMarket).comptroller()) {
            revert ComptrollerMismatch();
        }

        if (CToken(cTokenBorrowMarket).marketType() != CTokenStorage.MarketType.ERC721_MARKET) {
            revert WrongMarketType();
        }

        /* If the payer is not 'in' the market, then we can bypass the liquidity check */
        if (!markets[cTokenInterestMarket].accountMembership[payer]) {
            return uint(Error.NO_ERROR);
        }

        /* Otherwise, perform a hypothetical liquidity check to guard against shortfall */
        // uint[4] memory retVals; /* liquidity, shortfall, sumCollateral, sumBorrowPlusEffects */
        (Error err, uint[4] memory retVals) = getHypotheticalAccountLiquidityInternal(payer, CToken(cTokenInterestMarket), payTokens, 0);
        if (err == Error.NO_ERROR) {
            if (retVals[1] != 0) {
                return uint(Error.INSUFFICIENT_LIQUIDITY);
            }
        } else if (err != Error.TOO_LITTLE_INTEREST_RESERVE) {
            return uint(err);
        }

        return uint(Error.NO_ERROR);
    }

    /**
     * @notice Checks if the account should be allowed to transfer tokens in the given market
     * @param cToken The market to verify the transfer against
     * @param src The account which sources the tokens
     * @param dst The account which receives the tokens
     * @param transferTokens The number of cTokens to transfer
     * @return 0 if the transfer is allowed, otherwise a semi-opaque error code (See ErrorReporter.sol)
     */
    function transferAllowed(address cToken, address src, address dst, uint transferTokens) override external returns (uint) {
        // Pausing is a very serious situation - we revert to sound the alarms
        if (transferGuardianPaused) {
            revert TransferPaused();
        }

        // Currently the only consideration is whether or not
        //  the src is allowed to redeem this many tokens
        uint allowed = redeemAllowedInternal(cToken, src, transferTokens);
        if (allowed != uint(Error.NO_ERROR)) {
            return allowed;
        }

        return uint(Error.NO_ERROR);
    }

    /*** Liquidity/Liquidation Calculations ***/

    /**
     * @dev Local vars for avoiding stack-depth limits in calculating account liquidity.
     *  Note that `cTokenBalance` is the number of cTokens the account owns in the market,
     *  whereas `borrowBalance` is the amount of underlying that the account has borrowed.
     */
    struct AccountLiquidityLocalVars {
        uint sumCollateral;
        uint sumBorrowPlusEffects;
        uint sumInterestOwed;
        uint interestMarketBalance;
        uint cTokenBalance;
        uint borrowBalance;
        uint interestBalance;
        uint exchangeRateMantissa;
        uint oraclePriceMantissa;
        CTokenStorage.MarketType marketType;
        bool interestTokenNeeded;
        Exp collateralFactor;
        Exp exchangeRate;
        Exp oraclePrice;
        Exp tokensToDenom;
        Exp normedExchangeRate;
    }

    /**
     * @notice Calculates the account's ratio between collateral and borrows if the account is underwater or 0 if the account is solvent.
     * @param account The account to examine
     * @return (possible error code (semi-opaque), debt ratio)
     */
    function getAccountDebtRatioWhenShortfall(address account) public view returns (uint, uint) {
        // uint[4] memory retVals; /* liquidity, shortfall, sumCollateral, sumBorrowPlusEffects */
        (Error err, uint[4] memory retVals) = getHypotheticalAccountLiquidityInternal(account, CToken(address(0)), 0, 0);
        if (retVals[1] == 0) {
            return (uint(err), 0);
        } else if (retVals[2] == 0) {
            return (uint(err), type(uint).max);
        }
        return (uint(err), retVals[3] * expScale / retVals[2]);
    }

    /**
     * @notice Determine the current account liquidity wrt collateral requirements
     * @return (possible error code (semi-opaque),
     *          account liquidity in excess of collateral requirements,
     *          account shortfall below collateral requirements)
     */
    function getAccountLiquidity(address account) public view returns (uint, uint, uint) {
        // uint[4] memory retVals; /* liquidity, shortfall, sumCollateral, sumBorrowPlusEffects */
        (Error err, uint[4] memory retVals) = getHypotheticalAccountLiquidityInternal(account, CToken(address(0)), 0, 0);

        return (uint(err), retVals[0], retVals[1]);
    }

    /**
     * @notice Determine the current account liquidity wrt collateral requirements
     * @return (possible error code,
     *          account liquidity in excess of collateral requirements,
     *          account shortfall below collateral requirements, 
     *          account total collateral,
     *          account total borrow + effects)
     */
    function getAccountLiquidityInternal(address account) internal view returns (Error, uint, uint, uint, uint) {
        // uint[4] memory retVals; /* liquidity, shortfall, sumCollateral, sumBorrowPlusEffects */
        (Error err, uint[4] memory retVals) = getHypotheticalAccountLiquidityInternal(account, CToken(address(0)), 0, 0);
        return (err, retVals[0], retVals[1], retVals[2], retVals[3]);
    }

    /**
     * @notice Determine what the account liquidity would be if the given amounts were redeemed/borrowed
     * @param cTokenModify The market to hypothetically redeem/borrow in
     * @param account The account to determine liquidity for
     * @param redeemTokens The number of tokens to hypothetically redeem
     * @param borrowAmount The amount of underlying to hypothetically borrow
     * @return (possible error code (semi-opaque),
     *          hypothetical account liquidity in excess of collateral requirements,
     *          hypothetical account shortfall below collateral requirements)
     */
    function getHypotheticalAccountLiquidity(
        address account,
        address cTokenModify,
        uint redeemTokens,
        uint borrowAmount) public view returns (uint, uint, uint) {
        // uint[4] memory retVals; /* liquidity, shortfall, sumCollateral, sumBorrowPlusEffects */
        (Error err, uint[4] memory retVals) = getHypotheticalAccountLiquidityInternal(account, CToken(cTokenModify), redeemTokens, borrowAmount);
        return (uint(err), retVals[0], retVals[1]);
    }

    /**
     * @notice Determine what the account liquidity would be if the given amounts were redeemed/borrowed
     * @param account The account to determine liquidity for
     * @param cTokenModify The market to hypothetically redeem/borrow in
     * @param redeemTokens The number of tokens to hypothetically redeem
     * @param borrowAmount The amount of underlying to hypothetically borrow
     * @dev Note that we calculate the exchangeRateStored for each collateral cToken using stored data,
     *  without calculating accumulated interest.
     * @return (possible error code,
     *          hypothetical account liquidity in excess of collateral requirements,
     *          hypothetical account shortfall below collateral requirements,
     *          hypothetical account USD valued sum of all collaterals,
     *          hypothetical account USD valued sum of all borrows + effects)
     */
    function getHypotheticalAccountLiquidityInternal(
        address account,
        CToken cTokenModify,
        uint redeemTokens,
        uint borrowAmount) internal view returns (Error, uint[4] memory) {

        AccountLiquidityLocalVars memory vars; // Holds all our calculation results
        uint oErr;

        PriceOracle oracle_ = oracle;

        address interestMarket_ = _interestMarket;

        // For each asset the account is in
        CToken[] memory assets = accountAssets[account];
        for (uint i = 0; i < assets.length; i++) {
            CToken asset = assets[i];

            // Read the balances and exchange rate from the cToken
            // vars.interestBalance is denominated in interest market tokens
            (oErr, vars.cTokenBalance, vars.borrowBalance, vars.exchangeRateMantissa, vars.interestBalance) = asset.getAccountSnapshot(account);
            if (oErr != 0) { // semi-opaque error code, we assume NO_ERROR == 0 is invariant between upgrades
                return (Error.SNAPSHOT_ERROR, [uint(0), 0, 0, 0]);
            }
            vars.collateralFactor = Exp({mantissa: markets[address(asset)].collateralFactorMantissa});
            vars.exchangeRate = Exp({mantissa: vars.exchangeRateMantissa});

            // Get the normalized price of the asset
            vars.oraclePriceMantissa = oracle_.getUnderlyingPrice(asset);
            if (vars.oraclePriceMantissa == 0) {
                return (Error.PRICE_ERROR, [uint(0), 0, 0, 0]);
            }
            vars.oraclePrice = Exp({mantissa: vars.oraclePriceMantissa});

            vars.normedExchangeRate = mul_(vars.exchangeRate, vars.oraclePrice);

            // Pre-compute a conversion factor from tokens -> usd (normalized price value)
            vars.tokensToDenom = mul_(vars.collateralFactor, vars.normedExchangeRate);

            // sumCollateral += tokensToDenom * cTokenBalance
            vars.sumCollateral = mul_ScalarTruncateAddUInt(vars.tokensToDenom, vars.cTokenBalance, vars.sumCollateral);

            // sumBorrowPlusEffects += oraclePrice * borrowBalance
            vars.sumBorrowPlusEffects = mul_ScalarTruncateAddUInt(vars.oraclePrice, vars.borrowBalance, vars.sumBorrowPlusEffects);

            vars.marketType = asset.marketType();

            if (vars.marketType == CTokenStorage.MarketType.ERC721_MARKET) {
                // nft market
                vars.sumInterestOwed = vars.sumInterestOwed + vars.interestBalance;
            } else if (address(asset) == interestMarket_) {
                // nft interest market
                vars.interestMarketBalance = vars.cTokenBalance;
            }

            // Calculate effects of interacting with cTokenModify
            if (asset == cTokenModify) {
                // redeem effect
                // sumBorrowPlusEffects += tokensToDenom * redeemTokens
                vars.sumBorrowPlusEffects = mul_ScalarTruncateAddUInt(vars.tokensToDenom, redeemTokens, vars.sumBorrowPlusEffects);

                if (vars.marketType == CTokenStorage.MarketType.ERC721_MARKET) {
                    if (borrowAmount != 0) {
                        vars.interestTokenNeeded = true;
                    }
                } else if (address(asset) == interestMarket_) {
                    if (vars.interestMarketBalance >= redeemTokens) {
                        vars.interestMarketBalance = vars.interestMarketBalance - redeemTokens;
                    } else {
                        return (Error.INSUFFICIENT_LIQUIDITY, [uint(0), 0, 0, 0]);
                    }
                }

                // borrow effect
                // sumBorrowPlusEffects += oraclePrice * borrowAmount
                vars.sumBorrowPlusEffects = mul_ScalarTruncateAddUInt(vars.oraclePrice, borrowAmount, vars.sumBorrowPlusEffects);
            }
        }

        uint interestExchangeRateMantissa;
        uint interestOraclePriceMantissa;
        if (vars.sumInterestOwed != 0 || (vars.interestTokenNeeded && vars.interestMarketBalance == 0)) {
            interestExchangeRateMantissa = CToken(interestMarket_).exchangeRateStored();
            interestOraclePriceMantissa = oracle_.getUnderlyingPrice(CToken(interestMarket_));

            // add interest owed to effects
            vars.sumBorrowPlusEffects = vars.sumBorrowPlusEffects +
                vars.sumInterestOwed * interestExchangeRateMantissa * interestOraclePriceMantissa / doubleScale;
        }

        // These are safe, as the underflow condition is checked first
        if (vars.sumCollateral > vars.sumBorrowPlusEffects) {

            // if no collateral shorfall, check for interest reserve shortfall
            if (vars.interestMarketBalance < vars.sumInterestOwed ||
                (vars.interestTokenNeeded && vars.interestMarketBalance == 0)) {
                return (Error.TOO_LITTLE_INTEREST_RESERVE, [
                    0,
                    (vars.sumInterestOwed - vars.interestMarketBalance) * interestExchangeRateMantissa * interestOraclePriceMantissa / doubleScale,
                    vars.sumCollateral,
                    vars.sumBorrowPlusEffects
                ]);
            }

            return (Error.NO_ERROR, [vars.sumCollateral - vars.sumBorrowPlusEffects, 0, vars.sumCollateral, vars.sumBorrowPlusEffects]);
        } else {
            return (Error.NO_ERROR, [0, vars.sumBorrowPlusEffects - vars.sumCollateral, vars.sumCollateral, vars.sumBorrowPlusEffects]);
        }
    }

    /**
     * @notice Calculates the amount of collateral to seize for the given repay amount
     * @param cTokenCollateral Asset to seize collateral from
     * @param normedRepayAmount Repay amount in normalized USD value
     * @return uint Amount of tokens to seize in a liquidation
     */
    function liquidateCalculateSeizeTokensNormed(address cTokenCollateral, uint normedRepayAmount) override public view returns (uint) {
        uint priceCollateralMantissa = oracle.getUnderlyingPrice(CToken(cTokenCollateral));
        if (priceCollateralMantissa == 0) {
            revert PriceError();
        }

        uint exchangeRateMantissa = CToken(cTokenCollateral).exchangeRateStored(); // Note: reverts on error

        uint numerator = liquidationIncentiveMantissa * normedRepayAmount * expScale;
        uint denominator = priceCollateralMantissa * exchangeRateMantissa;

        uint seizeTokens = numerator / denominator;

        return seizeTokens;
    }

    /**
     * @notice Calculates the amount of collateral to seize and the amount of tokens to top up for the given shortfall
     * @param borrower Account with the shortfall
     * @param shortfallUsd Shortfall in normalized USD value
     * @param cTokenInterestMarket Asset to top up
     * @param cTokenCollateral Asset to seize collateral from
     * @return (uint, uint) Amount of tokens to top up, amount of tokens to seize
     */
    function _adjustTopUpValues(address borrower, uint shortfallUsd, address cTokenInterestMarket, address cTokenCollateral) internal view returns (uint, uint) {

        uint exchangeRateInterestMantissa = CToken(cTokenInterestMarket).exchangeRateStored(); // Note: reverts on error
        uint exchangeRateCollateralMantissa = CToken(cTokenCollateral).exchangeRateStored(); // Note: reverts on error

        uint priceInterestMantissa = oracle.getUnderlyingPrice(CToken(cTokenInterestMarket));
        uint priceCollateralMantissa = oracle.getUnderlyingPrice(CToken(cTokenCollateral));
        if (priceInterestMantissa == 0 || priceCollateralMantissa == 0) {
            revert PriceError();
        }

        uint seizeTokens = liquidationIncentiveMantissa * shortfallUsd * expScale;
        seizeTokens = seizeTokens / (priceCollateralMantissa * exchangeRateCollateralMantissa);

        // check and adjust amounts

        uint actualTopUpTokens = shortfallUsd * doubleScale / (priceInterestMantissa * exchangeRateInterestMantissa);
        uint actualSeizeTokens = seizeTokens;

        if (CTokenInterface(cTokenCollateral).marketType() == CTokenStorage.MarketType.ERC721_MARKET) {
            // nft market
            uint oneNFTAmount = doubleScale / exchangeRateCollateralMantissa;
            if (actualSeizeTokens % oneNFTAmount != 0) {
                // ensure whole nft seize size by rounding up to the next whole NFT
                actualSeizeTokens = ((actualSeizeTokens / oneNFTAmount) + 1) * oneNFTAmount;
            }
        }

        uint borrowerBalance = CTokenInterface(cTokenCollateral).balanceOf(borrower);
        if (borrowerBalance < actualSeizeTokens) {
            actualSeizeTokens = borrowerBalance;
        }

        if (actualSeizeTokens != seizeTokens) {
            actualTopUpTokens = actualTopUpTokens * actualSeizeTokens / seizeTokens;
        }

        return (actualTopUpTokens, actualSeizeTokens);
    }


    /*** Admin Functions ***/

    /**
      * @notice Sets a new price oracle for the comptroller
      * @dev Admin function to set a new price oracle
      * @return uint 0=success, otherwise a failure (see ErrorReporter.sol for details)
      */
    function _setPriceOracle(PriceOracle newOracle) public returns (uint) {
        // Check caller is admin
        if (msg.sender != admin) {
            return fail(Error.UNAUTHORIZED, FailureInfo.SET_PRICE_ORACLE_OWNER_CHECK);
        }

        // Track the old oracle for the comptroller
        PriceOracle oldOracle = oracle;

        // Set comptroller's oracle to newOracle
        oracle = newOracle;

        // Emit NewPriceOracle(oldOracle, newOracle)
        emit NewPriceOracle(oldOracle, newOracle);

        return uint(Error.NO_ERROR);
    }

    /**
      * @notice Sets the collateralFactor for a market
      * @dev Admin function to set per-market collateralFactor
      * @param cToken The market to set the factor on
      * @param newCollateralFactorMantissa The new collateral factor, scaled by 1e18
      * @return uint 0=success, otherwise a failure. (See ErrorReporter for details)
      */
    function _setCollateralFactor(CToken cToken, uint newCollateralFactorMantissa) external returns (uint) {
        // Check caller is admin
        if (msg.sender != admin) {
            return fail(Error.UNAUTHORIZED, FailureInfo.SET_COLLATERAL_FACTOR_OWNER_CHECK);
        }

        // Verify market is listed
        Market storage market = markets[address(cToken)];
        if (!market.isListed) {
            return fail(Error.MARKET_NOT_LISTED, FailureInfo.SET_COLLATERAL_FACTOR_NO_EXISTS);
        }

        Exp memory newCollateralFactorExp = Exp({mantissa: newCollateralFactorMantissa});

        // Check collateral factor <= 0.9
        Exp memory highLimit = Exp({mantissa: collateralFactorMaxMantissa});
        if (lessThanExp(highLimit, newCollateralFactorExp)) {
            return fail(Error.INVALID_COLLATERAL_FACTOR, FailureInfo.SET_COLLATERAL_FACTOR_VALIDATION);
        }

        // If collateral factor != 0, fail if price == 0
        if (newCollateralFactorMantissa != 0 && oracle.getUnderlyingPrice(cToken) == 0) {
            return fail(Error.PRICE_ERROR, FailureInfo.SET_COLLATERAL_FACTOR_WITHOUT_PRICE);
        }

        // Set market's collateral factor to new collateral factor, remember old value
        uint oldCollateralFactorMantissa = market.collateralFactorMantissa;
        market.collateralFactorMantissa = newCollateralFactorMantissa;

        // Emit event with asset, old collateral factor, and new collateral factor
        emit NewCollateralFactor(cToken, oldCollateralFactorMantissa, newCollateralFactorMantissa);

        return uint(Error.NO_ERROR);
    }

    /**
      * @notice Sets liquidationIncentive
      * @dev Admin function to set liquidationIncentive
      * @param newLiquidationIncentiveMantissa New liquidationIncentive scaled by 1e18
      * @return uint 0=success, otherwise a failure. (See ErrorReporter for details)
      */
    function _setLiquidationIncentive(uint newLiquidationIncentiveMantissa) external returns (uint) {
        // Check caller is admin
        if (msg.sender != admin) {
            return fail(Error.UNAUTHORIZED, FailureInfo.SET_LIQUIDATION_INCENTIVE_OWNER_CHECK);
        }

        // Save current value for use in log
        uint oldLiquidationIncentiveMantissa = liquidationIncentiveMantissa;

        // Set liquidation incentive to new incentive
        liquidationIncentiveMantissa = newLiquidationIncentiveMantissa;

        // Emit event with old incentive, new incentive
        emit NewLiquidationIncentive(oldLiquidationIncentiveMantissa, newLiquidationIncentiveMantissa);

        return uint(Error.NO_ERROR);
    }

    /**
      * @notice Add the market to the markets mapping and set it as listed
      * @dev Admin function to set isListed and add support for the market
      * @param cToken The address of the market (token) to list
      * @param amount Amount to initially mint.
      * @return uint 0=success, otherwise a failure. (See enum Error for details)
      */
    function _supportMarket(CToken cToken, uint amount) external returns (uint) {
        if (msg.sender != admin) {
            return fail(Error.UNAUTHORIZED, FailureInfo.SUPPORT_MARKET_OWNER_CHECK);
        }

        if (markets[address(cToken)].isListed) {
            return fail(Error.MARKET_ALREADY_LISTED, FailureInfo.SUPPORT_MARKET_EXISTS);
        }

        cToken.isCToken(); // Sanity check to make sure its really a CToken

        // Note that isComped is not in active use anymore
        Market storage newMarket = markets[address(cToken)];
        assert(newMarket.collateralFactorMantissa == 0);

        newMarket.isListed = true;
        newMarket.isComped = false;
        //newMarket.collateralFactorMantissa = 0;

        _addMarketInternal(address(cToken));

        emit MarketListed(cToken);

        // mint a small amount and burn to ensure non-empty token pools (not needed for ERC721 markets)
        if (amount != 0 && cToken.marketType() != CTokenStorage.MarketType.ERC721_MARKET) {
            cToken._ensureNonEmpty(msg.sender, amount);
        }

        return uint(Error.NO_ERROR);
    }

    function _addMarketInternal(address cToken) internal {
        for (uint i = 0; i < allMarkets.length;) {
            if (allMarkets[i] == CToken(cToken)) {
                revert MarketAlreadyAdded();
            }
            unchecked { i++; }
        }
        allMarkets.push(CToken(cToken));
    }

    /**
      * @notice Set the given borrow caps for the given cToken markets. Borrowing that brings total borrows to or above borrow cap will revert.
      * @dev Admin or borrowCapGuardian function to set the borrow caps. A borrow cap of 0 corresponds to unlimited borrowing.
      * @param cTokens The addresses of the markets (tokens) to change the borrow caps for
      * @param newBorrowCaps The new borrow cap values in underlying to be set. A value of 0 corresponds to unlimited borrowing.
      */
    function _setMarketBorrowCaps(CToken[] calldata cTokens, uint[] calldata newBorrowCaps) external {
        if (msg.sender != admin && msg.sender != borrowCapGuardian) {
            revert Unauthorized();
        }

        uint numMarkets = cTokens.length;
        uint numBorrowCaps = newBorrowCaps.length;

        if (numMarkets == 0 || numMarkets != numBorrowCaps) {
            revert InvalidInput();
        }

        for(uint i = 0; i < numMarkets; i++) {
            borrowCaps[address(cTokens[i])] = newBorrowCaps[i];
            emit NewBorrowCap(cTokens[i], newBorrowCaps[i]);
        }
    }

    /**
     * @notice Admin function to change the Borrow Cap Guardian
     * @param newBorrowCapGuardian The address of the new Borrow Cap Guardian
     */
    function _setBorrowCapGuardian(address newBorrowCapGuardian) external {
        if (msg.sender != admin) {
            revert Unauthorized();
        }

        // Save current value for inclusion in log
        address oldBorrowCapGuardian = borrowCapGuardian;

        // Store borrowCapGuardian with value newBorrowCapGuardian
        borrowCapGuardian = newBorrowCapGuardian;

        // Emit NewBorrowCapGuardian(OldBorrowCapGuardian, NewBorrowCapGuardian)
        emit NewBorrowCapGuardian(oldBorrowCapGuardian, newBorrowCapGuardian);
    }

    /**
     * @notice Admin function to change the Pause Guardian
     * @param newPauseGuardian The address of the new Pause Guardian
     * @return uint 0=success, otherwise a failure. (See enum Error for details)
     */
    function _setPauseGuardian(address newPauseGuardian) public returns (uint) {
        if (msg.sender != admin) {
            return fail(Error.UNAUTHORIZED, FailureInfo.SET_PAUSE_GUARDIAN_OWNER_CHECK);
        }

        // Save current value for inclusion in log
        address oldPauseGuardian = pauseGuardian;

        // Store pauseGuardian with value newPauseGuardian
        pauseGuardian = newPauseGuardian;

        // Emit NewPauseGuardian(OldPauseGuardian, NewPauseGuardian)
        emit NewPauseGuardian(oldPauseGuardian, pauseGuardian);

        return uint(Error.NO_ERROR);
    }

    function _setMintPaused(CToken cToken, bool state) public returns (bool) {
        if (!markets[address(cToken)].isListed) {
            revert MarketNotListed();
        }
        if (msg.sender != admin && msg.sender != pauseGuardian) {
            revert Unauthorized();
        }
        if (msg.sender != admin && !state) {
            revert OnlyAdminCanUnpause();
        }

        mintGuardianPaused[address(cToken)] = state;
        emit ActionPaused(cToken, "Mint", state);
        return state;
    }

    function _setBorrowPaused(CToken cToken, bool state) public returns (bool) {
        if (!markets[address(cToken)].isListed) {
            revert MarketNotListed();
        }
        if (msg.sender != admin && msg.sender != pauseGuardian) {
            revert Unauthorized();
        }
        if (msg.sender != admin && !state) {
            revert OnlyAdminCanUnpause();
        }

        borrowGuardianPaused[address(cToken)] = state;
        emit ActionPaused(cToken, "Borrow", state);
        return state;
    }

    function _setTransferPaused(bool state) public returns (bool) {
        if (msg.sender != admin && msg.sender != pauseGuardian) {
            revert Unauthorized();
        }
        if (msg.sender != admin && !state) {
            revert OnlyAdminCanUnpause();
        }

        transferGuardianPaused = state;
        emit ActionPaused("Transfer", state);
        return state;
    }

    function _setSeizePaused(bool state) public returns (bool) {
        if (msg.sender != admin && msg.sender != pauseGuardian) {
            revert Unauthorized();
        }
        if (msg.sender != admin && !state) {
            revert OnlyAdminCanUnpause();
        }

        seizeGuardianPaused = state;
        emit ActionPaused("Seize", state);
        return state;
    }

    function _setCollectInterestPaused(bool state) public returns (bool) {
        if (msg.sender != admin && msg.sender != pauseGuardian) {
            revert Unauthorized();
        }
        if (msg.sender != admin && !state) {
            revert OnlyAdminCanUnpause();
        }

        collectInterestGuardianPaused = state;
        emit ActionPaused("CollectInterest", state);
        return state;
    }

    function _setPayInterestPaused(bool state) public returns (bool) {
        if (msg.sender != admin && msg.sender != pauseGuardian) {
            revert Unauthorized();
        }
        if (msg.sender != admin && !state) {
            revert OnlyAdminCanUnpause();
        }

        payInterestGuardianPaused = state;
        emit ActionPaused("PayInterest", state);
        return state;
    }

    function _setWhitelist(address user, bool isTrue) public {
        if (msg.sender != admin) {
            revert Unauthorized();
        }
        whitelist[user] = isTrue;
    }

    /**
    * @notice Sets a new interest market
    * @dev Admin function to set a new interest market
    * @param interestMarket_ The address of the new interest market
    */
    function _updateInterestMarket(address interestMarket_) external {
        if (msg.sender != admin) {
            revert Unauthorized();
        }
        if (!markets[interestMarket_].isListed) {
            revert MarketNotListed();
        }
        if (CTokenInterface(interestMarket_).marketType() != CTokenStorage.MarketType.ERC20_INTEREST_MARKET) {
            revert WrongMarketType();
        }
        _interestMarket = interestMarket_;
    }

    function _become(Unitroller unitroller) public {
        if (msg.sender != unitroller.admin()) {
            revert Unauthorized();
        }
        if (unitroller._acceptImplementation() != 0) {
            revert ChangeNotAuthorized();
        }
    }

    /**
     * @notice Checks caller is admin, or this contract is becoming the new implementation
     */
    function adminOrInitializing() internal view returns (bool) {
        return msg.sender == admin || msg.sender == comptrollerImplementation;
    }

    /**
     * @notice Return all of the markets
     * @dev The automatic getter may be used to access an individual market.
     * @return The list of market addresses
     */
    function getAllMarkets() public view returns (CToken[] memory) {
        return allMarkets;
    }

    function getBlockNumber() virtual public view returns (uint) {
        return block.number;
    }

    function isListed(address cToken) override public view returns (bool) {
        return markets[cToken].isListed;
    }

    /**
     * @notice Calculate the exchange rate between the underlyings of the given cTokens
     * @param cTokenA The first cToken
     * @param cTokenB The second cToken
     * @return uint The exchange rate from cTokenA.underlying() to cTokenB.underlying().
     */
    function getAssetsExchangeRate(address cTokenA, address cTokenB) override public view returns (uint) {
        PriceOracle oracle_ = oracle;
        uint priceA = oracle_.getUnderlyingPrice(CToken(cTokenA));
        uint priceB = oracle_.getUnderlyingPrice(CToken(cTokenB));
        return priceA != 0 && priceB != 0 ? priceA * expScale / priceB : 0;
    }

    function _checkEoaOrWL(address msgSender) override public view returns (bool) {
        if (whitelist[msgSender]) { return true; }
        if (tx.origin != msgSender) { return false; }
        uint size;
        assembly { size := extcodesize(msgSender) }
        return size == 0;
    }

    function interestMarket() override external view returns (address) {
        return _interestMarket;
    }
}
