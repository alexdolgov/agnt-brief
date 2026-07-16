// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import { IERC20, SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import { LibDiamond } from "../libraries/LibDiamond.sol";

import { LibUtils } from "../libraries/LibUtils.sol";

import { IInfo } from "../interfaces/IInfo.sol";

import { _revert } from "../../utils/Globals.sol";

import { LinkedListLogic } from "../../libraries/LinkedList.sol";
import { LinkedListStorage } from "../../interfaces/LinkedListStorage.sol";

import { IRainPool } from "../../interfaces/IRainPool.sol";

/**
 * @title InfoFacet
 * @author Rain Team
 * @notice External interface for the rain pool info facet.
 */
contract InfoFacet is IInfo {
    using SafeERC20 for IERC20;
    using LinkedListLogic for LinkedListStorage.LinkedList;

    /**
     * @inheritdoc IInfo
     */
    function totalOrders() external view returns (uint256) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        return ds.ordersAdded - ds.ordersRemoved;
    }

    /**
     * @inheritdoc IInfo
     */
    function getDynamicPayout(address user) external view returns (uint256[] memory dynamicPayout) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        dynamicPayout = new uint256[](ds.numberOfOptions + 1);
        uint256 totalBaseTokens = ds.allFunds;
        uint256 fee = (totalBaseTokens * (ds.liquidityFee + ds.creatorFee + ds.resultResolverFee + ds.platformFee)) /
            ds.FEE_MAGNIFICATION;

        uint256 liquidityReward;
        if (ds.totalLiquidity > 0) {
            uint256 liquidityPayout = (totalBaseTokens * ds.liquidityFee) / ds.FEE_MAGNIFICATION;
            liquidityReward = (liquidityPayout * ds.userLiquidity[user]) / ds.totalLiquidity;
        }
        uint256 rewardPayout;
        uint256 i = 1;
        for (; i <= ds.numberOfOptions; ) {
            if (ds.totalVotes[i] > 0) {
                rewardPayout = (ds.userVotes[i][user] * ds.PRICE_MAGNIFICATION) / (ds.totalVotes[i]);

                rewardPayout = rewardPayout * (ds.allFunds - fee);
                rewardPayout = rewardPayout / ds.PRICE_MAGNIFICATION;

                dynamicPayout[i] = rewardPayout + liquidityReward;
            }
            unchecked {
                ++i;
            }
        }
    }

    /**
     * @inheritdoc IInfo
     */
    function getEntryShares(
        uint256 option,
        uint256 amount
    ) external view returns (uint256 returnedShares, uint256 expectedPayout) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        if (option == 0 || option > ds.numberOfOptions) {
            _revert(IRainPool.InvalidOption.selector);
        }

        if (amount <= 0) {
            _revert(IRainPool.InsufficientAmount.selector);
        }

        uint256 optionFunds = ds.totalFunds[option];
        uint256 totalAmount = ds.allFunds;

        uint256 usedAmount; // local cache: used amount for each order book purchase
        uint256 sharesReceived; // local cache: shares recived for each order book purchase
        uint256 totalAmountUsed; // function cache: total sum amount used
        uint256 totalSharesRecieved; // function cache: total sum of shares recived

        int256 idx;
        uint256 head = ds.firstSellOrderPrice[option];
        uint256 currentPrice = getCurrentPrice(option);
        // Drain on-chain book up to currentPrice
        for (; head > 0 && head <= currentPrice && amount > 1; ) {
            LinkedListStorage.LinkedList storage linkedList = ds.sellOrders[option][head];

            if (linkedList.isInitialized && !linkedList.isEmpty()) {
                // iterate FIFO
                idx = linkedList.first();
                while (idx != linkedList.tailIndex && amount > 0) {
                    LinkedListStorage.Order memory order = linkedList.getData(idx);
                    idx = linkedList.next(idx);
                    (usedAmount, sharesReceived) = _getSellOrderAmounts(option, head, amount, order.orderID);
                    amount -= usedAmount;
                    totalAmountUsed += usedAmount;
                    totalSharesRecieved += sharesReceived;
                }
            }

            unchecked {
                head += ds.TICK_SPACING;
            }
        }

        if (ds.poolFinalized && block.timestamp > ds.endTime) {
            uint256 stoppingPrice;
            uint256 stoppingPriceRemainder;

            currentPrice = getCurrentPrice(option);
            stoppingPriceRemainder = (currentPrice + ds.TICK_SPACING) % ds.TICK_SPACING;
            stoppingPrice = currentPrice + ds.TICK_SPACING - stoppingPriceRemainder;

            while (amount > 1 && stoppingPrice <= 0.99 ether) {
                // check orderbook now
                LinkedListStorage.LinkedList storage linkedList = ds.sellOrders[option][stoppingPrice];

                if (linkedList.isInitialized && !linkedList.isEmpty()) {
                    // iterate FIFO
                    idx = linkedList.first();
                    while (idx != linkedList.tailIndex && amount > 0) {
                        LinkedListStorage.Order memory order = linkedList.getData(idx);
                        idx = linkedList.next(idx);
                        (usedAmount, sharesReceived) = _getSellOrderAmounts(
                            option,
                            stoppingPrice,
                            amount,
                            order.orderID
                        );
                        amount -= usedAmount;
                        totalAmountUsed += usedAmount;
                        totalSharesRecieved += sharesReceived;
                    }
                }

                unchecked {
                    stoppingPrice += ds.TICK_SPACING;
                }
            }
        } else if (amount > 1 && !ds.poolFinalized && block.timestamp <= ds.endTime) {
            uint256 stoppingPrice;
            uint256 stoppingPriceRemainder;
            uint256 requiredFunds;
            uint256 usedFunds;
            while (amount > 0) {
                currentPrice = (optionFunds * ds.PRICE_MAGNIFICATION) / totalAmount;
                if (currentPrice >= 0.99 ether) {
                    sharesReceived = _getReturnedShares(amount, optionFunds, totalAmount);

                    optionFunds += amount;
                    totalAmount += amount;

                    totalSharesRecieved += sharesReceived;
                    totalAmountUsed += amount;

                    amount = 0;

                    break;
                }

                stoppingPriceRemainder = (currentPrice + ds.TICK_SPACING) % ds.TICK_SPACING;
                stoppingPrice = currentPrice + ds.TICK_SPACING - stoppingPriceRemainder;

                requiredFunds = getAmountRequired(currentPrice, stoppingPrice, optionFunds, totalAmount);

                usedFunds = requiredFunds >= amount ? amount : requiredFunds;

                sharesReceived = _getReturnedShares(usedFunds, optionFunds, totalAmount);

                optionFunds += usedFunds;
                totalAmount += usedFunds;

                totalSharesRecieved += sharesReceived;
                totalAmountUsed += usedFunds;

                amount -= usedFunds;

                if (amount == 0) {
                    break;
                }

                // check orderbook now
                LinkedListStorage.LinkedList storage linkedList = ds.sellOrders[option][stoppingPrice];

                if (linkedList.isInitialized && !linkedList.isEmpty()) {
                    // iterate FIFO
                    idx = linkedList.first();
                    while (idx != linkedList.tailIndex && amount > 0) {
                        LinkedListStorage.Order memory order = linkedList.getData(idx);
                        idx = linkedList.next(idx);
                        (usedAmount, sharesReceived) = _getSellOrderAmounts(
                            option,
                            stoppingPrice,
                            amount,
                            order.orderID
                        );
                        amount -= usedAmount;
                        totalAmountUsed += usedAmount;
                        totalSharesRecieved += sharesReceived;
                    }
                }
            }
        }

        returnedShares = totalSharesRecieved;

        //Scope to avoid stack too deep errors
        {
            uint256 fee = (totalAmount * (ds.liquidityFee + ds.creatorFee + ds.resultResolverFee + ds.platformFee)) /
                ds.FEE_MAGNIFICATION;

            expectedPayout = (returnedShares * ds.PRICE_MAGNIFICATION) / (returnedShares + ds.totalVotes[option]);

            expectedPayout = expectedPayout * (totalAmount - fee);
            expectedPayout = (expectedPayout / ds.PRICE_MAGNIFICATION);
        }
    }

    /**
     * @inheritdoc IInfo
     */
    function getReturnedLiquidity(
        uint256 totalAmount
    ) public view returns (uint256[] memory returnedShares, uint256[] memory returnedAmounts) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        returnedShares = new uint256[](ds.numberOfOptions + 1);
        returnedAmounts = new uint256[](ds.numberOfOptions + 1);
        uint256 i = 1;
        for (; i <= ds.numberOfOptions; ) {
            returnedAmounts[i] = (totalAmount * ds.totalFunds[i]) / ds.allFunds;
            returnedShares[i] = getReturnedShares(i, returnedAmounts[i]);
            unchecked {
                ++i;
            }
        }
    }

    /**
     * @inheritdoc IInfo
     */
    function getImpactedPrice(uint256 option, uint256 amount) public view returns (uint256) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        return ((ds.totalFunds[option] + amount) * ds.PRICE_MAGNIFICATION) / (ds.allFunds + amount);
    }

    /**
     * @inheritdoc IInfo
     */
    function getReturnedShares(uint256 option, uint256 amount) public view returns (uint256) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        return _getReturnedShares(amount, ds.totalFunds[option], ds.allFunds);
    }

    /**
     * @inheritdoc IInfo
     */
    function getAmountRequired(
        uint256 currentPrice,
        uint256 endPrice,
        uint256 totalOptionFunds,
        uint256 _allFunds
    ) public view returns (uint256 requiredAmount) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        uint256 y = totalOptionFunds;
        uint256 b = _allFunds;
        uint256 M = ds.PRICE_MAGNIFICATION;
        uint256 p = endPrice;

        if (y <= 0 || b <= 0) {
            _revert(IRainPool.InvalidPoolState.selector);
        }
        if (p < currentPrice) {
            _revert(IRainPool.EndPriceTooLow.selector);
        }
        if (p >= M) {
            _revert(IRainPool.EndPriceTooHigh.selector);
        }

        // derive:   p = (y+z)*M/(b+z)
        // →   numerator   = p*b - M*y
        //      denominator = M - p
        uint256 pb = p * b;
        uint256 My = M * y;
        if (pb <= My) {
            _revert(IRainPool.NoIncreaseNeeded.selector);
        }

        uint256 numerator = pb - My;
        uint256 denominator = M - p;

        // **CEILING** so even tiny moves require at least 1 wei
        requiredAmount = (numerator + denominator - 1) / denominator;
    }

    /**
     * @inheritdoc IInfo
     */
    function getCurrentPrice(uint256 option) public view returns (uint256) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        return (ds.totalFunds[option] * ds.PRICE_MAGNIFICATION) / ds.allFunds;
    }

    /**
     * @inheritdoc IInfo
     */
    function getDisputeAppealFee() external returns (uint256 disputeFee) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        uint256 disputeFeeMinUSDT = ds.DISPUTE_FEE_MIN;
        uint256 disputeFeeMaxUSDT = ds.DISPUTE_FEE_MAX;

        disputeFee = (ds.allFunds * 1) / 1_000;

        if (ds.isDisputed) {
            disputeFeeMinUSDT = ds.APPEAL_FEE_MIN;
        }

        if (ds.baseToken != ds.usdt) {
            uint256 disputeFeeInUSDT = LibUtils.getQuoteOut(ds.baseToken, disputeFee, ds.tokenData);

            if (disputeFeeInUSDT > disputeFeeMaxUSDT) {
                disputeFee = LibUtils.getQuoteIn(ds.baseToken, disputeFeeMaxUSDT, ds.tokenData);
            } else if (disputeFeeInUSDT < disputeFeeMinUSDT) {
                disputeFee = LibUtils.getQuoteIn(ds.baseToken, disputeFeeMinUSDT, ds.tokenData);
            }
        } else {
            if (disputeFee > disputeFeeMaxUSDT) {
                disputeFee = disputeFeeMaxUSDT;
            } else if (disputeFee < disputeFeeMinUSDT) {
                disputeFee = disputeFeeMinUSDT;
            }
        }
    }

    /**
     * @inheritdoc IInfo
     */
    function getResolverBondAmount() external returns (uint256 resolverBondAmount) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        resolverBondAmount = (ds.allFunds * 1) / 1000;

        if (ds.baseToken != ds.usdt) {
            uint256 disputeFeeInUSDT = LibUtils.getQuoteOut(ds.baseToken, resolverBondAmount, ds.tokenData);

            if (disputeFeeInUSDT > ds.RESOLUTION_FEE_MAX) {
                resolverBondAmount = LibUtils.getQuoteIn(ds.baseToken, ds.RESOLUTION_FEE_MAX, ds.tokenData);
            } else if (disputeFeeInUSDT < ds.RESOLUTION_FEE_MIN) {
                resolverBondAmount = LibUtils.getQuoteIn(ds.baseToken, ds.RESOLUTION_FEE_MIN, ds.tokenData);
            }
        } else {
            if (resolverBondAmount > ds.RESOLUTION_FEE_MAX) {
                resolverBondAmount = ds.RESOLUTION_FEE_MAX;
            } else if (resolverBondAmount < ds.RESOLUTION_FEE_MIN) {
                resolverBondAmount = ds.RESOLUTION_FEE_MIN;
            }
        }
    }

    /**
     * @inheritdoc IInfo
     */
    function getSharesReward(address user, uint256 winner) external view returns (uint256 sharesReward) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        uint256 winningPoolShare = _getWinningPoolShare();

        if (ds.totalVotes[winner] > 0) {
            sharesReward = (ds.userVotes[winner][user] * winningPoolShare) / ds.totalVotes[winner];
        }
    }

    /**
     * @inheritdoc IInfo
     */
    function getLiquidityReward(address user) external view returns (uint256 liquidityReward) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        if (ds.totalLiquidity > 0) {
            uint256 liquidityShare = (ds.allFunds * ds.liquidityFee) / ds.FEE_MAGNIFICATION;
            liquidityReward = (liquidityShare * ds.userLiquidity[user]) / ds.totalLiquidity;
        }
    }

    /**
     * @inheritdoc IInfo
     */
    function getCreatorReward() external view returns (uint256 creatorReward) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        creatorReward = (ds.allFunds * ds.creatorFee) / ds.FEE_MAGNIFICATION;
    }

    /**
     * @inheritdoc IInfo
     */
    function getResolverReward() external view returns (uint256 resolverReward) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        resolverReward = (ds.allFunds * 1) / ds.FEE_MAGNIFICATION;
    }

    /**
     * @dev Checks the values for the `amountExecuted` and `shareAmount` against a specific sell order in the order
     * book.
     * Validates the order ID, order existence, price tick spacing, and updates or removes the order accordingly.
     * @param option The index of the option being bought.
     * @param price The price per unit for the sell order.
     * @param fundsAmount The amount of funds user provides to buy the order.
     * @param orderID The unique identifier of the sell order to be fulfilled.
     * @return amountExecuted The amount in baseToken recieved by the seller.
     * @return shareAmount The amount of shares recieved by the buyer.
     */
    function _getSellOrderAmounts(
        uint256 option,
        uint256 price, // 1e18
        uint256 fundsAmount,
        uint256 orderID
    ) private view returns (uint256 amountExecuted, uint256 shareAmount) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        LinkedListStorage.LinkedList storage linkedList = ds.sellOrders[option][price];

        int256 nodeIndex = ds.orderBook[option][price][orderID].index;

        uint256 orderAmount = LinkedListLogic.getAmount(linkedList, nodeIndex);

        shareAmount = ((fundsAmount * (ds.PRICE_MAGNIFICATION)) / price);

        if (orderAmount > shareAmount) {
            orderAmount = shareAmount;
        } else {
            shareAmount = orderAmount;
        }

        amountExecuted = (orderAmount * price) / (ds.PRICE_MAGNIFICATION);
    }

    /**
     * @dev Implements the {getReturnedShares} logic.
     */
    function _getReturnedShares(
        uint256 amount,
        uint256 optionFunds,
        uint256 totalAmount
    ) private view returns (uint256 shares) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        uint256 price = ((optionFunds + amount) * ds.PRICE_MAGNIFICATION) / (totalAmount + amount);
        shares = ((amount * ds.PRICE_MAGNIFICATION) / price);
    }

    /**
     * @dev Returns the reward for the winning option after deducting the fees.
     * Deducts the following fees:
     *
     */
    function _getWinningPoolShare() private view returns (uint256 winningPoolShare) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        uint256 totalBaseTokens = ds.allFunds;

        uint256 liquidityShare = (totalBaseTokens * ds.liquidityFee) / ds.FEE_MAGNIFICATION;
        uint256 creatorShare = (totalBaseTokens * ds.creatorFee) / ds.FEE_MAGNIFICATION;
        uint256 resolverShare = (totalBaseTokens * ds.resultResolverFee) / ds.FEE_MAGNIFICATION;
        uint256 platformShare = (totalBaseTokens * ds.platformFee) / ds.FEE_MAGNIFICATION;

        winningPoolShare = totalBaseTokens - platformShare - liquidityShare - creatorShare - resolverShare;
    }
}
