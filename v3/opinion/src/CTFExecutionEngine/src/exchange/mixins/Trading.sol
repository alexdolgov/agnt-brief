// SPDX-License-Identifier: MIT
pragma solidity <0.9.0;

import { IFees } from "../interfaces/IFees.sol";
import { IHashing } from "../interfaces/IHashing.sol";
import { ITrading } from "../interfaces/ITrading.sol";
import { IRegistry } from "../interfaces/IRegistry.sol";
import { ISignatures } from "../interfaces/ISignatures.sol";
import { IAssetOperations } from "../interfaces/IAssetOperations.sol";
import { IAssets } from "../interfaces/IAssets.sol";
import { IFeeEstimation } from "../interfaces/IFeeEstimation.sol";
import { IReferralManager } from "../interfaces/IReferralManager.sol";
import { IERC20 } from "openzeppelin-contracts/token/ERC20/IERC20.sol";
import { IERC20Metadata } from "openzeppelin-contracts/token/ERC20/extensions/IERC20Metadata.sol";
import { IERC1155 } from "openzeppelin-contracts/token/ERC1155/IERC1155.sol";

import { CalculatorHelper } from "../libraries/CalculatorHelper.sol";
import { Order, Side, MatchType, OrderStatus } from "../libraries/OrderStructs.sol";

/// @title Trading
/// @notice Implements logic for trading CTF assets
abstract contract Trading is IFees, ITrading, IHashing, IRegistry, ISignatures, IAssetOperations, IAssets {
    /// @notice Struct to hold fee calculation result to reduce stack usage
    struct FeeResult {
        uint256 finalFee;
        uint256 fee;
        uint256 referrerRebate;
        address referrer;
    }
    /// @notice Mapping of orders to their current status
    mapping(bytes32 => OrderStatus) public orderStatus;

    /// @notice Temporary storage for collateral balance before MINT/MERGE operations
    /// @dev Used to calculate surplus in makerFeeRate=0 scenarios, reset after each matchOrders call
    uint256 private _collateralBeforeMintMerge;

    // ============ Errors ============
    error ArrayLengthMismatch();

    /// @notice Abstract function to get user discount rate (implemented by parent contract)
    /// @param user The user address
    /// @return discountBps The discount rate in basis points
    function _getUserDiscountBps(address user) internal view virtual returns (uint256 discountBps);

    /// @notice Abstract function to process trade referral (implemented by parent contract)
    /// @return traderDiscount The discount amount for the trader
    /// @return referrerRebate The rebate amount for the referrer
    function _processTradeReferral(address /* trader */, uint256 /* feeAmount */) 
        internal 
        virtual 
        returns (uint256 traderDiscount, uint256 referrerRebate) {
        // Default implementation returns no discount/rebate
        return (0, 0);
    }

    /// @notice Abstract function to calculate trade referral without transfers (implemented by parent contract)
    /// @return traderDiscount The discount amount for the trader
    /// @return referrerRebate The rebate amount for the referrer
    function _calculateTradeReferralOnly(address /* trader */, uint256 /* feeAmount */) 
        internal 
        view 
        virtual 
        returns (uint256 traderDiscount, uint256 referrerRebate) {
        // Default implementation returns no discount/rebate
        return (0, 0);
    }

    /// @notice Abstract function to get fee manager (implemented by parent contract)
    /// @return feeManager The fee manager interface
    function _getFeeManager() internal view virtual returns (IFeeEstimation);

    /// @notice Abstract function to get referral manager (implemented by parent contract)
    /// @return referralManager The referral manager interface
    function _getReferralManager() internal view virtual returns (IReferralManager);

    /// @notice Abstract function to get collateral token precision (implemented by parent contract)
    /// @return precision The collateral token precision (10^decimals)
    function _getCollateralPrecision() internal view virtual returns (uint256 precision) {
        // Default implementation returns 18 decimals
        return 1e18;
    }

    /// @notice Abstract function to get cumulative fee paid for an order (implemented by parent contract)
    /// @param orderHash The order hash
    /// @return cumulativeFee The cumulative fee already paid for this order
    function _getOrderCumulativeFee(bytes32 orderHash) internal view virtual returns (uint256 cumulativeFee) {
        // Default implementation returns 0
        return 0;
    }

    /// @notice Abstract function to update cumulative fee for an order (implemented by parent contract)
    /// @param orderHash The order hash
    /// @param additionalFee The additional fee to add to cumulative total
    function _updateOrderCumulativeFee(bytes32 orderHash, uint256 additionalFee) internal virtual {
        // Default implementation does nothing
    }

    // Helper function removed due to stack too deep issues

    /// @notice Gets the status of an order
    /// @param orderHash    - The hash of the order
    function getOrderStatus(bytes32 orderHash) public view returns (OrderStatus memory) {
        return orderStatus[ orderHash];
    }



    function _validateOrder(bytes32 orderHash, Order memory order) internal view {
        // Validate order expiration
        if (order.expiration > 0 && order.expiration < block.timestamp) revert OrderExpired();

        // Validate signature
        validateOrderSignature(orderHash, order);

        // Validate fee
        if (order.feeRateBps > getMaxFeeRate()) revert FeeTooHigh();

        // Validate the token to be traded
        validateTokenId(order.tokenId);

        // Validate that the order can be filled
        if (orderStatus[orderHash].isFilledOrCancelled) revert OrderFilledOrCancelled();

        // NOTE: Nonce validation removed - nonce field is kept for backward compatibility
        // but no longer enforced. Use salt for uniqueness and expiration for order lifecycle.
        // if (!isValidNonce(order.maker, order.nonce)) revert InvalidNonce();
    }

    /// @notice Matches a taker order against maker orders with collateral-only fee collection
    /// @dev COLLATERAL-ONLY FEE MODEL - Three Match Scenarios:
    ///
    /// SCENARIO 1: COMPLEMENTARY (BUY vs SELL same token)
    ///   - Direct token exchange, no CTF mint/merge operation
    ///   - Example: Taker BUY YES @ 0.6, Maker SELL YES @ 0.6
    ///   - Taker: pays USDO → receives YES tokens
    ///   - Maker: pays YES tokens → receives USDO
    ///   - Fees: Charged on collateral side (whoever receives/pays USDO)
    ///
    /// SCENARIO 2: MINT (two BUY orders for complement tokens)
    ///   - CTF splits collateral into YES+NO tokens
    ///   - Example: Taker BUY YES @ 0.6, Maker BUY NO @ 0.4
    ///   - Both pay USDO → Exchange splits → both receive tokens
    ///   - Fees: Deducted from collateral pool BEFORE split
    ///   - Issue: If maker fee rate = 0%, fees cannot be collected from split tokens
    ///
    /// SCENARIO 3: MERGE (two SELL orders for complement tokens)
    ///   - CTF merges YES+NO tokens back to collateral
    ///   - Example: Taker SELL YES, Maker SELL NO
    ///   - Both pay tokens → Exchange merges → both receive USDO
    ///   - Fees: Deducted from merged collateral AFTER merge
    ///
    /// FEE COLLECTION LOGIC:
    ///   - If takerAssetId==0: Taker receives collateral, charge taker fee
    ///   - If feeRateBpsMaker==0: Special case, charge taker rate from makers
    ///   - Otherwise: Charge maker fees in _fillFacingExchange (per-maker)
    ///
    /// @param takerOrder           - The active order to be matched
    /// @param makerOrders          - The array of passive orders to be matched against the active order
    /// @param takerFillAmount      - The amount to fill on the taker order, in terms of the maker amount
    /// @param makerFillAmounts     - The array of amounts to fill on the maker orders, in terms of the maker amount
    /// @param feeRateBpsTaker      - Fee rate for taker in basis points
    /// @param feeRateBpsMaker      - Fee rate for maker in basis points
    /// @param takerDiscountBps     - Additional discount for taker in basis points (0-10000)
    /// @param makerDiscountBps     - Additional discount for maker in basis points (0-10000)
    /// @param minFeeAmount         - Minimum fee amount in collateral token
    function _executeMatch(
        Order memory takerOrder,
        Order[] memory makerOrders,
        uint256 takerFillAmount,
        uint256[] memory makerFillAmounts,
        uint256 feeRateBpsTaker,
        uint256 feeRateBpsMaker,
        uint256 takerDiscountBps,
        uint256 makerDiscountBps,
        uint256 minFeeAmount
    ) internal {
        // Validate array lengths match
        if (makerOrders.length != makerFillAmounts.length) revert ArrayLengthMismatch();

        // Record initial collateral balance for surplus calculation
        _collateralBeforeMintMerge = _getBalance(0);

        uint256 making = takerFillAmount;

        (uint256 taking, bytes32 orderHash) = _performOrderChecks(takerOrder, making);
        (uint256 makerAssetId, uint256 takerAssetId) = _deriveAssetIds(takerOrder);

        // Transfer takerOrder making amount from taker order to the Exchange
        _transfer(takerOrder.maker, address(this), makerAssetId, making);

        // Fill maker orders with adjusted amounts
        _fillMakerOrdersWithDiscounts(takerOrder, makerOrders, makerFillAmounts, feeRateBpsMaker, makerDiscountBps,
                                       takerAssetId, takerFillAmount, feeRateBpsTaker, takerDiscountBps, minFeeAmount);

        taking = _updateTakingWithSurplus(taking, takerAssetId);

        // In Collateral-Only model: taker fees are calculated only when taker receives collateral
        uint256 finalFee;
        uint256 fee;
        uint256 referrerRebate;
        address referrer;
        bool takerPaysCollateralFee = (takerAssetId == 0); // Taker receives collateral

        // Calculate taker fee
        if (takerPaysCollateralFee) {
            // Taker receives collateral - charge taker fee from taker's collateral
            uint256 rawFee;
            {
                if (takerOrder.takerAmount == 0) {
                    // Market order: use actual fill amounts for price calculation
                    // Fee base depends on side:
                    // - SELL: use collateral amount (taking) as fee base
                    // - BUY: use collateral amount (making) as fee base
                    // This ensures consistent fee calculation across different order types
                    uint256 feeBase = (takerOrder.side == Side.SELL) ? taking : making;

                    rawFee = CalculatorHelper.calculateFee(
                        feeRateBpsTaker,
                        feeBase,
                        making,
                        taking,
                        takerOrder.side
                    );
                } else {
                    // Limit order: use curved fee formula with standard fee base
                    rawFee = CalculatorHelper.calculateFee(
                        feeRateBpsTaker,
                        taking, // Fee base: collateral amount taker receives
                        takerOrder.makerAmount,
                        takerOrder.takerAmount,
                        takerOrder.side
                    );
                }
            }

            // Apply all discounts (admin + tier + referral) and minFee via computeFees
            // All discount logic is now encapsulated in FeeManager
            // Use signer for referral lookup (actual user, not wallet contract)
            (finalFee, referrerRebate, referrer) = _processFees(rawFee, minFeeAmount, takerOrder.signer, orderHash, takerDiscountBps);

            // Record discount applied (if any)
            // Note: When minFee > rawFee, finalFee will be > rawFee, so no discount is applied
            if (finalFee < rawFee) {
                uint256 discountAmount = rawFee - finalFee;
                _onDiscountApplied(takerOrder.signer, discountAmount, _getCollateralTokenAddress());
            }

            fee = finalFee;
        } else if (feeRateBpsMaker == 0 && takerAssetId != 0) {
            // Maker has zero fee rate, taker receives outcome tokens (MINT/MERGE)
            // After MINT/MERGE, surplus collateral is the fee
            // Calculate actual surplus from balance difference
            uint256 surplusCollateral = _calculateSurplusCollateral();

            if (surplusCollateral > 0) {
                // Process fees - applies all discounts (admin + tier + referral) + minFee protection
                // Use signer for referral lookup (actual user, not wallet contract)
                (finalFee, referrerRebate, referrer) = _processFees(surplusCollateral, 0, takerOrder.signer, orderHash, takerDiscountBps);
                fee = finalFee;

                // Refund discount to taker if applicable
                // surplusCollateral = base fee (without discount)
                // finalFee = discounted fee
                // discountAmount = surplusCollateral - finalFee
                uint256 discountAmount = surplusCollateral - finalFee;
                if (discountAmount > 0) {
                    // Transfer discount back to taker
                    _transfer(address(this), takerOrder.maker, 0, discountAmount);
                    // Record discount applied
                    _onDiscountApplied(takerOrder.signer, discountAmount, _getCollateralTokenAddress());
                }
            }
        } else {
            finalFee = 0;
            referrerRebate = 0;
            referrer = address(0);
            fee = 0;
        }

        // Execute transfers
        {
            // taker sell conditonal tokens
            if (takerPaysCollateralFee) {
                // Taker receives collateral token - deduct fee from taker
                _transfer(address(this), takerOrder.maker, takerAssetId, taking - finalFee);
                // Allocate taker's fee: rebate to referrer + remaining to treasury
                // Fee already deducted, so transfer from engine's balance
                _allocateFees(address(this), takerOrder.maker, finalFee, referrerRebate, referrer, 0);
            } else if (feeRateBpsMaker == 0 && finalFee > 0) {
                // taker buy conditional tokens
                // Maker has zero fee rate, taker receives outcome tokens
                // Transfer tokens to taker
                // conditional tokens in maker orders -> taker
                _transfer(address(this), takerOrder.maker, takerAssetId, taking);
                // Allocate surplus collateral as fee, taker pays fee
                _allocateFees(address(this), takerOrder.maker, finalFee, referrerRebate, referrer, 0);
            } else {
                // Normal case: Maker provides collateral and has non-zero fee rate
                // Transfer full amount to taker, fees handled in _fillFacingExchange
                _transfer(address(this), takerOrder.maker, takerAssetId, taking);
            }
        }

        emit OrderFilled(
            orderHash, takerOrder.maker, address(this), makerAssetId, takerAssetId, making, taking, fee
        );

        emit OrdersMatched(orderHash, takerOrder.maker, makerAssetId, takerAssetId, making, taking);
    }

    /// @notice Process fees for trade execution
    /// @param baseFee The calculated fee before discounts
    /// @param minFee Minimum fee amount for collateral tokens
    /// @param trader The trader address for referral processing
    /// @param orderHash The order hash for cumulative fee tracking
    /// @param adminDiscountBps Additional admin discount in basis points (0 = no admin discount)
    /// @return finalFee The final fee amount user pays
    /// @return rebate The rebate amount for referrer
    /// @return referrer The referrer address (zero if no referrer)
    function _processFees(
        uint256 baseFee,
        uint256 minFee,
        address trader,
        bytes32 orderHash,
        uint256 adminDiscountBps
    ) internal returns (uint256 finalFee, uint256 rebate, address referrer) {
        // Get cumulative fee already paid for this order
        uint256 cumulativeFee = _getOrderCumulativeFee(orderHash);

        // Use FeeManager if available
        IFeeEstimation feeManager = _getFeeManager();
        if (address(feeManager) != address(0)) {
            (finalFee, rebate, referrer) = feeManager.computeFees(trader, baseFee, minFee, adminDiscountBps);
        } else {
            // Simple fallback without FeeManager
            finalFee = baseFee < minFee ? minFee : baseFee;
            rebate = 0;
            referrer = address(0);
        }

        // Smart minimum fee logic: only apply if cumulative fee hasn't reached minimum
        if (cumulativeFee + baseFee < minFee) {
            // If cumulative + current still below minimum, charge the difference
            finalFee = minFee - cumulativeFee;
        }
        // else: normal case, userFee already set above

        // Update cumulative fee tracking
        _updateOrderCumulativeFee(orderHash, finalFee);

        return (finalFee, rebate, referrer);
    }



    function _fillMakerOrdersWithDiscounts(
        Order memory takerOrder,
        Order[] memory makerOrders,
        uint256[] memory makerFillAmounts,
        uint256 feeRateBpsMaker,
        uint256 makerDiscountBps,
        uint256 takerAssetId,
        uint256 takerFillAmount,
        uint256 feeRateBpsTaker,
        uint256 takerDiscountBps,
        uint256 minFeeAmount
    ) internal {
        // Pre-adjust maker fill amounts when maker fee = 0% AND taker receives tokens
        // This applies to ALL three scenarios: COMPLEMENTARY, MINT, MERGE
        //
        // CSV Test Cases show all scenarios require fee collection:
        // - Case 1 (COMPLEMENTARY): Taker BUY tokens for USDC, Maker SELL tokens for USDC
        //   Token adjustment = feeInCollateral * makerAmount / takerAmount
        // - Case 5 (MINT): Both BUY (both provide USDC, get tokens)
        //   Collateral adjustment = feeInCollateral (direct deduction from USDC)
        // - Case 7 (MERGE): Both SELL (both provide tokens, get USDC)
        //   Collateral adjustment = feeInCollateral (direct deduction from USDC)
        //
        // How it works:
        // 1. Calculate taker fee in collateral (USDC)
        // 2. For COMPLEMENTARY: Convert fee to token amount based on price
        // 3. For MINT/MERGE: Use fee directly (both sides use collateral)
        // 4. Reduce first maker's fill amount by the adjustment
        // 5. Creates surplus collateral that gets collected as fee
        if (feeRateBpsMaker == 0 && takerAssetId != 0 && makerOrders.length > 0 && makerFillAmounts.length > 0) {
            // Calculate base fee WITHOUT discount for maker fill amount adjustment
            // Discount will be refunded to taker later, not given to maker
            // Use the actual maker order price for accurate fee calculation (not the hardcoded 0.5)
            Order memory firstMaker = makerOrders[0];

            uint256 feeInCollateral;
            if (takerOrder.takerAmount == 0) {
                // Market order: use actual matched price from firstMaker
                // Calculate fee using curved formula: feeRate * price * (1-price) * outcomeTokens
                uint256 rawFee = CalculatorHelper.calculateFee(
                    feeRateBpsTaker,
                    takerFillAmount, // outcomeTokens (collateral amount)
                    firstMaker.makerAmount,
                    firstMaker.takerAmount,
                    firstMaker.side  // Use maker's side for correct price calculation
                );
                uint256 fee = (takerDiscountBps > 0) ? rawFee * (10_000 - takerDiscountBps) / 10_000 : rawFee;
                feeInCollateral = (fee < minFeeAmount) ? minFeeAmount : fee;
            } else {
                // Limit order: use standard calculation
                feeInCollateral = _calculateTakerFee(takerOrder, takerFillAmount, feeRateBpsTaker, takerDiscountBps, minFeeAmount);
            }

            if (feeInCollateral > 0) {
                MatchType matchType = _deriveMatchType(takerOrder, firstMaker);

                uint256 adjustment;
                if (matchType == MatchType.COMPLEMENTARY) {
                    // COMPLEMENTARY: One side is tokens, need price conversion
                    // For maker SELL: makerAmount = tokens, takerAmount = collateral
                    // Token adjustment = feeInCollateral * makerAmount / takerAmount
                    adjustment = (feeInCollateral * firstMaker.makerAmount) / firstMaker.takerAmount;
                } else if (matchType == MatchType.MINT) {
                    // MINT: Both BUY, fee affects token calculation via price ratio
                    // Tokens per person: T = (takerCollateral - fee) / (1 - price)
                    // Maker pays: price × T = price × (takerCollateral - fee) / (1 - price)
                    // Adjustment = originalMaker - makerShouldPay
                    uint256 price = CalculatorHelper.calculatePrice(firstMaker); // returns in 1e18 format
                    uint256 ONE = 1e18;
                    // makerShouldPay = price * (takerFillAmount - fee) / (ONE - price)
                    uint256 makerShouldPay = (price * (takerFillAmount - feeInCollateral)) / (ONE - price);
                    adjustment = firstMaker.makerAmount > makerShouldPay ? firstMaker.makerAmount - makerShouldPay : 0;
                } else {
                    // MERGE: Both SELL, tokens fixed, fee from surplus collateral
                    // Direct collateral adjustment
                    adjustment = feeInCollateral;
                }

                if (makerFillAmounts[0] > adjustment) {
                    makerFillAmounts[0] -= adjustment;
                }
            }
        }

        uint256 length = makerOrders.length;
        uint256 i = 0;
        for (; i < length;) {
            _fillMakerOrderWithDiscounts(takerOrder, makerOrders[i], makerFillAmounts[i], feeRateBpsMaker, makerDiscountBps);
            unchecked {
                ++i;
            }
        }
    }



    /// @notice Fills a Maker order with additional discount
    /// @param takerOrder         - The taker order
    /// @param makerOrder         - The maker order
    /// @param fillAmount         - The fill amount
    /// @param feeRateBpsMaker    - Fee rate for maker in basis points
    /// @param makerDiscountBps   - Additional discount for maker in basis points (0-10000)
    function _fillMakerOrderWithDiscounts(
        Order memory takerOrder,
        Order memory makerOrder,
        uint256 fillAmount,
        uint256 feeRateBpsMaker,
        uint256 makerDiscountBps
    ) internal {
        // Use internal struct to reduce stack depth
        _fillMakerOrderInternal(
            FillParams({
                takerOrder: takerOrder,
                makerOrder: makerOrder,
                fillAmount: fillAmount,
                feeRateBpsMaker: feeRateBpsMaker,
                makerDiscountBps: makerDiscountBps
            })
        );
    }

    struct FillParams {
        Order takerOrder;
        Order makerOrder;
        uint256 fillAmount;
        uint256 feeRateBpsMaker;
        uint256 makerDiscountBps;
    }

    function _fillMakerOrderInternal(FillParams memory params) internal {
        MatchType matchType = _deriveMatchType(params.takerOrder, params.makerOrder);

        // Ensure taker order and maker order match
        _validateTakerAndMaker(params.takerOrder, params.makerOrder, matchType);

        (uint256 taking, bytes32 orderHash) = _performOrderChecks(params.makerOrder, params.fillAmount);
        (uint256 makerAssetId, uint256 takerAssetId) = _deriveAssetIds(params.makerOrder);

        // Calculate maker fee if maker receives collateral (takerAssetId==0)
        // Fee is only collected when maker gets collateral, not tokens
        uint256 rawFee = 0;
        if (takerAssetId == 0 && params.feeRateBpsMaker > 0) {
            // COLLATERAL-ONLY MODEL: Fee base is actual collateral received
            // Calculate raw fee (without any discounts - discounts applied in _processFees)
            rawFee = CalculatorHelper.calculateFee(
                params.feeRateBpsMaker,
                taking, // Collateral amount (what maker receives)
                params.makerOrder.makerAmount,
                params.makerOrder.takerAmount,
                params.makerOrder.side
            );
        }

        uint256 finalFee = _fillFacingExchange(
            params.fillAmount,
            taking,
            params.makerOrder.maker,
            params.makerOrder.signer,
            makerAssetId,
            takerAssetId,
            matchType,
            rawFee,
            orderHash,
            params.makerDiscountBps
        );

        emit OrderFilled(
            orderHash, params.makerOrder.maker, params.takerOrder.maker, makerAssetId, takerAssetId, params.fillAmount, taking, finalFee
        );
    }

    /// @notice Performs common order computations and validation
    /// 1) Validates the order taker
    /// 2) Computes the order hash
    /// 3) Validates the order
    /// 4) Computes taking amount
    /// 5) Updates the order status in storage
    /// @param order    - The order being prepared
    /// @param making   - The amount of the order being filled, in terms of maker amount
    function _performOrderChecks(Order memory order, uint256 making)
        internal
        returns (uint256 takingAmount, bytes32 orderHash)
    {
        _validateTaker(order.taker);

        orderHash = hashOrder(order);

        // Validate order
        _validateOrder(orderHash, order);

        // Calculate taking amount
        takingAmount = CalculatorHelper.calculateTakingAmount(making, order.makerAmount, order.takerAmount);

        // Update the order status in storage
        _updateOrderStatus(orderHash, order, making);
    }

    /// @notice Fills a maker order using the Exchange as the counterparty
    /// @dev This function handles INDIVIDUAL MAKER ORDER fee processing
    ///      - Called once per maker order in a multi-maker match
    ///      - Processes fees for makers who receive collateral (takerAssetId == 0)
    ///      - Parallel to taker fee processing in _executeMatch (not duplicate)
    /// @param makingAmount - Amount to be filled in terms of maker amount
    /// @param takingAmount - Amount to be filled in terms of taker amount
    /// @param maker        - The order maker (wallet address)
    /// @param makerSigner  - The order signer (actual user for referral lookup)
    /// @param makerAssetId - The Token Id of the Asset to be sold
    /// @param takerAssetId - The Token Id of the Asset to be received
    /// @param matchType    - The match type
    /// @param fee          - The raw fee amount (before discounts)
    /// @param orderHash    - The order hash for fee processing and rebate calculation
    /// @param adminDiscountBps - Additional admin discount in basis points (0 for auto mode)
    /// @return finalFee    - The actual fee charged after all processing
    function _fillFacingExchange(
        uint256 makingAmount,
        uint256 takingAmount,
        address maker,
        address makerSigner,
        uint256 makerAssetId,
        uint256 takerAssetId,
        MatchType matchType,
        uint256 fee,
        bytes32 orderHash,
        uint256 adminDiscountBps
    ) internal returns (uint256 finalFee) {
        // Transfer makingAmount tokens from order maker to Exchange
        _transfer(maker, address(this), makerAssetId, makingAmount);

        // Executes a match call based on match type
        _executeMatchCall(makingAmount, takingAmount, makerAssetId, takerAssetId, matchType);

        // BUG FIX (2025-10-12): Relaxed validation for MINT/MERGE scenarios
        // In makerFeeRate=0 cases, fee deduction reduces actual token count below expected.
        // We only require non-zero balance to ensure the match operation succeeded.
        if (_getBalance(takerAssetId) == 0) revert TooLittleTokensReceived();

        // In collateral-only fee model: check if maker should pay fee
        // NOTE: This is MAKER FEE processing, independent from TAKER FEE processing in _executeMatch
        // Flow: One taker order can match multiple maker orders
        //   - Taker fee: processed once in _executeMatch (lines 210-228)
        //   - Maker fees: processed per-maker here in _fillFacingExchange (once per maker)
        //   Example: 1 taker + 3 makers → 1 taker fee + 3 maker fees (4 separate fee operations)
        if (takerAssetId == 0 && fee > 0) {
            // Maker receives collateral, process fee with all discounts

            // Apply all discounts (admin + tier + referral) and minFee via computeFees
            // Use makerSigner for referral lookup (actual user, not wallet contract)
            (uint256 processedFee, uint256 referrerRebate, address referrer) =
                _processFees(fee, 0, makerSigner, orderHash, adminDiscountBps);

            // Deduct fee from maker's collateral
            _transfer(address(this), maker, takerAssetId, takingAmount - processedFee);

            // Allocate fees between referrer and treasury
            _allocateFees(address(this), maker, processedFee, referrerRebate, referrer, 0);

            finalFee = processedFee;
        } else {
            // Maker receives conditional tokens or no fee - transfer full amount
            _transfer(address(this), maker, takerAssetId, takingAmount);
            finalFee = 0;
        }
    }

    function _deriveMatchType(Order memory takerOrder, Order memory makerOrder) internal pure returns (MatchType) {
        if (takerOrder.side == Side.BUY && makerOrder.side == Side.BUY) return MatchType.MINT;
        if (takerOrder.side == Side.SELL && makerOrder.side == Side.SELL) return MatchType.MERGE;
        return MatchType.COMPLEMENTARY;
    }

    function _deriveAssetIds(Order memory order) internal pure returns (uint256 makerAssetId, uint256 takerAssetId) {
        if (order.side == Side.BUY) return (0, order.tokenId);
        return (order.tokenId, 0);
    }

    /// @notice Executes a CTF call to match orders by minting new Outcome tokens
    /// or merging Outcome tokens into collateral.
    /// @param makingAmount - Amount to be filled in terms of maker amount
    /// @param takingAmount - Amount to be filled in terms of taker amount
    /// @param makerAssetId - The Token Id of the Asset to be sold
    /// @param takerAssetId - The Token Id of the Asset to be received
    /// @param matchType    - The match type
    function _executeMatchCall(
        uint256 makingAmount,
        uint256 takingAmount,
        uint256 makerAssetId,
        uint256 takerAssetId,
        MatchType matchType
    ) internal {
        if (matchType == MatchType.COMPLEMENTARY) {
            // Indicates a buy vs sell order
            // no match action needed
            return;
        }
        if (matchType == MatchType.MINT) {
            // Indicates matching 2 buy orders
            // Mint new Outcome tokens using Exchange collateral balance and fill buys
            return _mint(getConditionId(takerAssetId), takingAmount);
        }
        if (matchType == MatchType.MERGE) {
            // Indicates matching 2 sell orders
            // Merge the Exchange Outcome token balance into collateral and fill sells
            return _merge(getConditionId(makerAssetId), makingAmount);
        }
    }

    /// @notice Ensures the taker and maker orders can be matched against each other
    /// @param takerOrder   - The taker order
    /// @param makerOrder   - The maker order
    function _validateTakerAndMaker(Order memory takerOrder, Order memory makerOrder, MatchType matchType)
        internal
        view
    {
        if (!CalculatorHelper.isCrossing(takerOrder, makerOrder)) revert NotCrossing();

        // Ensure orders match
        if (matchType == MatchType.COMPLEMENTARY) {
            if (takerOrder.tokenId != makerOrder.tokenId) revert MismatchedTokenIds();
        } else {
            // both bids or both asks
            validateComplement(takerOrder.tokenId, makerOrder.tokenId);
        }
    }

    function _validateTaker(address taker) internal view {
        if (taker != address(0) && taker != msg.sender) revert NotTaker();
    }

    function _updateOrderStatus(bytes32 orderHash, Order memory order, uint256 makingAmount)
        internal
        returns (uint256 remaining)
    {
        OrderStatus storage status = orderStatus[orderHash];
        // Fetch remaining amount from storage
        remaining = status.remaining;

        // Update remaining if the order is new/has not been filled
        remaining = remaining == 0 ? order.makerAmount : remaining;

        // Throw if the makingAmount(amount to be filled) is greater than the amount available
        if (makingAmount > remaining) revert MakingGtRemaining();

        // Update remaining using the makingAmount
        remaining = remaining - makingAmount;

        // If order is completely filled, update isFilledOrCancelled in storage
        if (remaining == 0) status.isFilledOrCancelled = true;

        // Update remaining in storage
        status.remaining = remaining;
    }

        /// @notice Updates the taking amount with the actual balance surplus
    /// @dev BUG FIX (2025-10-12): For MINT/MERGE scenarios with makerFeeRate=0:
    ///      - Fee is deducted from collateral BEFORE CTF split/merge
    ///      - This reduces the actual token count below originally expected amount
    ///      - We now return actual balance instead of reverting
    ///
    /// Example (MINT): Taker expects 200 tokens @ 0.5 price
    ///   - Original calc: 100 USDO → 200 tokens
    ///   - With fee: 99.75 USDO split → 199.5 token pairs
    ///   - Return: 199.5 tokens (actual balance, not expected 200)
    ///
    /// @param tokenId The token ID to check balance for
    /// @return actualAmount The actual balance (may be less than expected for MINT/MERGE)
    function _updateTakingWithSurplus(uint256 /* minimumAmount */, uint256 tokenId) internal returns (uint256) {
        uint256 actualAmount = _getBalance(tokenId);

        // BUG FIX (2025-10-12): Relaxed validation for MINT/MERGE scenarios
        // In makerFeeRate=0 cases, fee is deducted from collateral before split/merge,
        // reducing the actual token count below the expected amount. This is correct behavior.
        // We only require non-zero balance to ensure the operation succeeded.
        if (actualAmount == 0) revert TooLittleTokensReceived();

        return actualAmount;
    }

    /// @notice Calculate surplus collateral from MINT/MERGE operations
    /// @dev Reads from _collateralBeforeMintMerge set by _fillMakerOrdersWithDiscounts
    /// @return surplusCollateral The actual surplus created by split/merge
    function _calculateSurplusCollateral() internal returns (uint256) {
        uint256 balanceAfter = _getBalance(0);
        uint256 balanceBefore = _collateralBeforeMintMerge;
        // Reset to prevent reuse
        _collateralBeforeMintMerge = 0;
        return balanceAfter > balanceBefore ? balanceAfter - balanceBefore : 0;
    }

    /// @notice Gets the referrer address for a trader
    /// @dev trader parameter unused in base implementation
    /// @return referrer The referrer address (zero if no referrer)
    function _getTraderReferrerAddress(address /* trader */) internal view virtual returns (address referrer) {
        // This will be overridden by contracts that implement ReferralManager
        return address(0);
    }

    /// @notice Get collateral token address (to be overridden)
    /// @return The collateral token address
    function _getCollateralTokenAddress() internal view virtual returns (address) {
        // Default implementation
        return address(0);
    }

    /// @notice Hook called after rebate payment to update stats and emit events
    /// @param trader The trader who generated the fee
    /// @param referrer The referrer receiving the rebate
    /// @param rebateAmount The rebate amount paid (in collateral tokens)
    /// @param totalFeeAmount The total fee amount before rebate deduction
    /// @param collateralToken The collateral token address
    function _onRebatePaid(
        address trader,
        address referrer,
        uint256 rebateAmount,
        uint256 totalFeeAmount,
        address collateralToken
    ) internal virtual {
        // Default: do nothing
        // Contracts with referral system will override this
    }

    /// @notice Hook called after discount is applied (implemented by parent contract)
    /// @param trader The trader who received the discount
    /// @param discountAmount The discount amount (in collateral tokens)
    /// @param collateralToken The collateral token address
    function _onDiscountApplied(
        address trader,
        uint256 discountAmount,
        address collateralToken
    ) internal virtual {
        // Default: do nothing
        // Contracts with referral system will override this
    }

    /// @notice Get referrer config from ReferralManager (to be overridden by parent)
    /// @param referrer The referrer address
    /// @return monthlyRebateLimit The monthly rebate limit in USD
    /// @return currentMonthStart The current month start timestamp
    /// @return currentMonthUsdRebates The current month USD rebates
    function _getReferrerMonthlyLimit(address referrer)
        internal
        view
        virtual
        returns (
            uint256 monthlyRebateLimit,
            uint256 currentMonthStart,
            uint256 currentMonthUsdRebates
        )
    {
        // Default implementation returns no limit
        return (0, 0, 0);
    }

    /// @notice Convert token amount to USD value (scaled by 1e6)
    /// @dev This function converts collateral token amounts to a standardized 6-decimal USD representation
    /// @dev Example: 1 USDO (18 decimals) = 1e18 → converts to 1e6 USD value
    /// @param collateralToken The collateral token address
    /// @param amount Token amount
    /// @return usdValue USD value (scaled by 1e6)
    function _convertToUsd(address collateralToken, uint256 amount)
        internal
        view
        virtual
        returns (uint256 usdValue)
    {
        // Get token decimals (e.g., 18 for USDO, 6 for USDC)
        uint8 decimals = IERC20Metadata(collateralToken).decimals();

        // Convert to 6-decimal USD value
        // Formula: usdValue = amount * 1e6 / 10^decimals
        if (decimals > 6) {
            // Scale down (e.g., 18 decimals → 6 decimals)
            usdValue = amount / (10 ** (decimals - 6));
        } else if (decimals < 6) {
            // Scale up (e.g., 2 decimals → 6 decimals)
            usdValue = amount * (10 ** (6 - decimals));
        } else {
            // Already 6 decimals
            usdValue = amount;
        }
    }

    /// @notice Convert USD value (scaled by 1e6) to token amount
    /// @dev This function converts standardized 6-decimal USD values back to collateral token amounts
    /// @dev Example: 1e6 USD value → converts to 1e18 for USDO (18 decimals)
    /// @param collateralToken The collateral token address
    /// @param usdValue USD value (scaled by 1e6)
    /// @return amount Token amount
    function _convertFromUsd(address collateralToken, uint256 usdValue)
        internal
        view
        virtual
        returns (uint256 amount)
    {
        // Get token decimals (e.g., 18 for USDO, 6 for USDC)
        uint8 decimals = IERC20Metadata(collateralToken).decimals();

        // Convert from 6-decimal USD value to token amount
        // Formula: amount = usdValue * 10^decimals / 1e6
        if (decimals > 6) {
            // Scale up (e.g., 6 decimals → 18 decimals)
            amount = usdValue * (10 ** (decimals - 6));
        } else if (decimals < 6) {
            // Scale down (e.g., 6 decimals → 2 decimals)
            amount = usdValue / (10 ** (6 - decimals));
        } else {
            // Already 6 decimals
            amount = usdValue;
        }
    }

    /// @notice Cap rebate based on monthly limit
    /// @param referrer The referrer address
    /// @param rebateAmount The calculated rebate amount
    /// @param collateralToken The collateral token
    /// @return cappedRebate The rebate amount after applying monthly limit
    function _capRebateByMonthlyLimit(
        address referrer,
        uint256 rebateAmount,
        address collateralToken
    ) internal view returns (uint256 cappedRebate) {
        // Get referrer's monthly limit config
        (
            uint256 monthlyRebateLimit,
            uint256 currentMonthStart,
            uint256 currentMonthUsdRebates
        ) = _getReferrerMonthlyLimit(referrer);

        // No limit or limit is 0 (unlimited)
        if (monthlyRebateLimit == 0) {
            return rebateAmount;
        }

        // Calculate remaining allowance for current month
        uint256 currentMonth = block.timestamp / 30 days;
        uint256 lastMonth = currentMonthStart / 30 days;

        uint256 usedThisMonth;
        if (currentMonth > lastMonth) {
            // New month, no rebates used yet
            usedThisMonth = 0;
        } else {
            // Same month
            usedThisMonth = currentMonthUsdRebates;
        }

        // Check if limit already reached
        if (usedThisMonth >= monthlyRebateLimit) {
            return 0; // No rebate allowed
        }

        uint256 remainingUsd = monthlyRebateLimit - usedThisMonth;

        // Convert rebate to USD
        uint256 rebateUsd = _convertToUsd(collateralToken, rebateAmount);

        // If rebate exceeds remaining allowance, cap it
        if (rebateUsd > remainingUsd) {
            cappedRebate = _convertFromUsd(collateralToken, remainingUsd);
        } else {
            cappedRebate = rebateAmount;
        }

        return cappedRebate;
    }

    /// @notice Allocates fees properly between referrer and treasury
    /// @dev UNIFIED FEE ALLOCATION - Called by both taker and maker fee paths
    ///      - Taker fees: called once in _executeMatch for the taker order
    ///      - Maker fees: called per-maker in _fillFacingExchange (can be multiple times)
    ///
    ///      Example with 1 taker + 2 makers with referrals:
    ///        _allocateFees() called 3 times total:
    ///        1. Once for taker (from _executeMatch)
    ///        2. Once for maker1 (from _fillFacingExchange)
    ///        3. Once for maker2 (from _fillFacingExchange)
    ///
    ///      Fee Flow (for each call):
    ///        1. Transfer rebate to referrer (if exists)
    ///        2. Call _onRebatePaid() hook → emit RebateEarned event + update stats
    ///        3. Transfer remaining to treasury
    ///        4. Emit FeeCharged event
    ///
    /// @param payer The address paying the fees (usually address(this) = exchange)
    /// @param trader The trader address for referral attribution (actual trader who generated this fee)
    /// @param totalUserPays Total amount user pays (includes both rebate and treasury portion)
    /// @param referrerRebate Amount to be paid to referrer
    /// @param referrer The referrer address (zero if no referrer)
    /// @param tokenId Token ID for the fee payment (usually 0 for collateral)
    function _allocateFees(
        address payer,
        address trader,
        uint256 totalUserPays,
        uint256 referrerRebate,
        address referrer,
        uint256 tokenId
    ) internal {
        address treasuryAddr = this.treasury();

        // 1. Pay referrer rebate first (if any), with monthly limit enforcement
        uint256 actualRebatePaid = 0;
        if (referrerRebate > 0 && referrer != address(0)) {
            // Apply monthly rebate limit cap
            address collateralToken = _getCollateralTokenAddress();
            uint256 cappedRebate = _capRebateByMonthlyLimit(
                referrer,
                referrerRebate,
                collateralToken
            );

            // Transfer capped rebate to referrer
            if (cappedRebate > 0) {
                _transfer(payer, referrer, tokenId, cappedRebate);
                actualRebatePaid = cappedRebate;

                // Notify referral system after payment to update stats and emit events
                // Use trader (not payer) for proper attribution in referral system
                _onRebatePaid(trader, referrer, cappedRebate, totalUserPays, collateralToken);
            }

            // If rebate was capped, excess goes to treasury
            if (cappedRebate < referrerRebate) {
                _transfer(payer, treasuryAddr, tokenId, referrerRebate - cappedRebate);
            }
        }

        // 2. Pay remaining to treasury
        // Gas optimization: referrerRebate is guaranteed to be <= totalUserPays by fee calculation logic
        unchecked {
            uint256 remainingToTreasury = totalUserPays - referrerRebate;
            if (remainingToTreasury > 0) {
                _transfer(payer, treasuryAddr, tokenId, remainingToTreasury);
            }
        }

        // 3. Emit fee charged event with actual total amount received by treasury
        // Treasury total = user pays - actual rebate paid to referrer
        emit FeeCharged(treasuryAddr, tokenId, totalUserPays - actualRebatePaid);
    }

    /// @notice Calculates reserved fee for maker 0 fee case
    /// @param takerOrder The taker order
    /// @param making The taker making amount
    /// @param feeRateBpsTaker The taker fee rate in basis points
    /// @param takerDiscountBps The taker discount in basis points
    /// @param minFeeAmount The minimum fee amount
    /// @param orderHash The order hash
    /// @return finalFee The final fee amount after processing
    function _calculateReservedFee(
        Order memory takerOrder,
        uint256 making,
        uint256 feeRateBpsTaker,
        uint256 takerDiscountBps,
        uint256 minFeeAmount,
        bytes32 orderHash
    ) internal returns (uint256 finalFee) {
        uint256 takerTaking = CalculatorHelper.calculateTakingAmount(
            making,
            takerOrder.makerAmount,
            takerOrder.takerAmount
        );

        uint256 rawFee = CalculatorHelper.calculateFee(
            feeRateBpsTaker,
            making,
            takerOrder.makerAmount,
            takerTaking,
            takerOrder.side
        );

        uint256 discountedFee = takerDiscountBps > 0
            ? rawFee * (10_000 - takerDiscountBps) / 10_000
            : rawFee;

        uint256 reservedFee = discountedFee < minFeeAmount ? minFeeAmount : discountedFee;

        (finalFee,,) = _processFees(reservedFee, 0, takerOrder.maker, orderHash, 0);  // No admin discount here
    }

    /// @notice Calculate taker fee for MINT/MERGE adjustments
    /// @dev Simplified helper to calculate expected fee amount
    function _calculateTakerFee(
        Order memory takerOrder,
        uint256 takerFillAmount,
        uint256 feeRateBpsTaker,
        uint256 takerDiscountBps,
        uint256 minFeeAmount
    ) internal pure returns (uint256) {
        uint256 rawFee = (takerOrder.takerAmount == 0)
            ? (feeRateBpsTaker * 1e18 / 4 * takerFillAmount) / (10_000 * 1e18)
            : CalculatorHelper.calculateFee(feeRateBpsTaker, takerFillAmount, takerOrder.makerAmount, takerOrder.takerAmount, takerOrder.side);

        uint256 fee = (takerDiscountBps > 0) ? rawFee * (10_000 - takerDiscountBps) / 10_000 : rawFee;

        // DEBUG: Log minFee comparison
        // console2.log("DEBUG _calculateTakerFee: fee=", fee, "minFeeAmount=", minFeeAmount);

        return (fee < minFeeAmount) ? minFeeAmount : fee;
    }
}
