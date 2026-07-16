// SPDX-License-Identifier: MIT

pragma solidity ^0.8.26;

import { IERC20, SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import { LibDiamond } from "../libraries/LibDiamond.sol";

import { LibUtils } from "../libraries/LibUtils.sol";

import { ITrading } from "../interfaces/ITrading.sol";

import { _revert } from "../../utils/Globals.sol";

import { LinkedListLogic } from "../../libraries/LinkedList.sol";
import { LinkedListStorage } from "../../interfaces/LinkedListStorage.sol";

import { IRainPool } from "../../interfaces/IRainPool.sol";

/**
 * @title TradingFacet
 * @author Rain Team
 * @notice External interface for the rain pool trading facet.
 */
contract TradingFacet is ITrading {
    using SafeERC20 for IERC20;
    using LinkedListLogic for LinkedListStorage.LinkedList;

    /**
     * @inheritdoc ITrading
     */
    function enterOption(uint256 option, uint256 amount) external {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        if (block.timestamp < ds.startTime) {
            _revert(IRainPool.SaleNotLive.selector);
        }
        if (option == 0 || option > ds.numberOfOptions) {
            _revert(IRainPool.InvalidOption.selector);
        }
        if (amount <= 0) {
            _revert(IRainPool.InsufficientAmount.selector);
        }

        IERC20(ds.baseToken).safeTransferFrom(msg.sender, address(this), amount);

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
                    (usedAmount, sharesReceived) = _executeSellOrder(option, head, amount, order.orderID, msg.sender);
                    amount -= usedAmount;
                    totalAmountUsed += usedAmount;
                    totalSharesRecieved += sharesReceived;
                }
            }

            // advance pointer if linkedList emptied
            if (linkedList.isEmpty()) {
                head += ds.TICK_SPACING;
                ds.firstSellOrderPrice[option] = head;
            } else {
                break;
            }
        }

        if (ds.poolFinalized || block.timestamp > ds.endTime) {
            uint256 stoppingPrice;
            uint256 stoppingPriceRemainder;

            currentPrice = getCurrentPrice(option);
            stoppingPriceRemainder = (currentPrice + ds.TICK_SPACING) % ds.TICK_SPACING;
            stoppingPrice = currentPrice + ds.TICK_SPACING - stoppingPriceRemainder;

            while (amount > 0 && stoppingPrice <= 0.99 ether) {
                // check orderbook now
                LinkedListStorage.LinkedList storage linkedList = ds.sellOrders[option][stoppingPrice];

                if (linkedList.isInitialized && !linkedList.isEmpty()) {
                    // iterate FIFO
                    idx = linkedList.first();
                    while (idx != linkedList.tailIndex && amount > 0) {
                        LinkedListStorage.Order memory order = linkedList.getData(idx);
                        idx = linkedList.next(idx);
                        (usedAmount, sharesReceived) = _executeSellOrder(
                            option,
                            stoppingPrice,
                            amount,
                            order.orderID,
                            msg.sender
                        );
                        amount -= usedAmount;
                        totalAmountUsed += usedAmount;
                        totalSharesRecieved += sharesReceived;
                    }
                }

                // advance pointer if linkedList emptied
                if (linkedList.isEmpty()) {
                    ds.firstSellOrderPrice[option] = stoppingPrice + ds.TICK_SPACING;
                }

                unchecked {
                    stoppingPrice += ds.TICK_SPACING;
                }
            }

            if (amount > 0) {
                IERC20(ds.baseToken).safeTransfer(msg.sender, amount);
            }
        } else if (amount > 1 && !ds.poolFinalized && block.timestamp <= ds.endTime) {
            uint256 stoppingPrice;
            uint256 stoppingPriceRemainder;
            uint256 requiredFunds;
            uint256 usedFunds;
            while (amount > 0) {
                currentPrice = getCurrentPrice(option);
                if (currentPrice >= 0.99 ether) {
                    sharesReceived = getReturnedShares(option, amount);

                    ds.allVotes += sharesReceived;
                    ds.allFunds += amount;
                    ds.userVotes[option][msg.sender] += sharesReceived;
                    ds.totalVotes[option] += sharesReceived;
                    ds.totalFunds[option] += amount;

                    totalSharesRecieved += sharesReceived;
                    totalAmountUsed += amount;

                    break;
                }

                stoppingPriceRemainder = (currentPrice + ds.TICK_SPACING) % ds.TICK_SPACING;
                stoppingPrice = currentPrice + ds.TICK_SPACING - stoppingPriceRemainder;

                requiredFunds = getAmountRequired(currentPrice, stoppingPrice, ds.totalFunds[option], ds.allFunds);
                usedFunds = requiredFunds >= amount ? amount : requiredFunds;
                sharesReceived = getReturnedShares(option, usedFunds);

                ds.allVotes += sharesReceived;
                ds.allFunds += usedFunds;
                ds.userVotes[option][msg.sender] += sharesReceived;
                ds.totalVotes[option] += sharesReceived;
                ds.totalFunds[option] += usedFunds;

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
                        (usedAmount, sharesReceived) = _executeSellOrder(
                            option,
                            stoppingPrice,
                            amount,
                            order.orderID,
                            msg.sender
                        );
                        amount -= usedAmount;
                        totalAmountUsed += usedAmount;
                        totalSharesRecieved += sharesReceived;
                    }
                }
                // advance pointer if linkedList emptied
                if (linkedList.isEmpty()) {
                    ds.firstSellOrderPrice[option] = stoppingPrice + ds.TICK_SPACING;
                }
            }
        }

        emit IRainPool.EnterOption({
            option: option,
            baseAmount: totalAmountUsed,
            optionAmount: totalSharesRecieved,
            wallet: msg.sender
        });

        uint256 i = 1;
        for (; i <= ds.numberOfOptions; ) {
            emit IRainPool.Sync(i, ds.totalFunds[i], ds.allFunds);
            unchecked {
                ++i;
            }
        }
    }

    /**
     * @inheritdoc ITrading
     */
    function enterLiquidity(uint256 totalAmount) external {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        if (block.timestamp < ds.startTime || block.timestamp > ds.endTime || ds.poolFinalized) {
            _revert(IRainPool.SaleNotLive.selector);
        }

        IERC20(ds.baseToken).safeTransferFrom(msg.sender, address(this), totalAmount);

        (uint256[] memory sharesReceived, uint256[] memory amountReceived) = getReturnedLiquidity(totalAmount);

        ds.totalLiquidity += totalAmount;
        ds.userLiquidity[msg.sender] += totalAmount;

        uint256 i = 1;
        for (; i <= ds.numberOfOptions; ) {
            ds.allVotes += sharesReceived[i];
            ds.allFunds += amountReceived[i];
            ds.userVotes[i][msg.sender] += sharesReceived[i];
            ds.totalVotes[i] += sharesReceived[i];
            ds.totalFunds[i] += amountReceived[i];
            emit IRainPool.EnterOption(i, amountReceived[i], sharesReceived[i], msg.sender);

            unchecked {
                ++i;
            }
        }
        emit IRainPool.EnterLiquidity(totalAmount, msg.sender);

        i = 1;
        for (; i <= ds.numberOfOptions; ) {
            emit IRainPool.Sync(i, ds.totalFunds[i], ds.allFunds);
            unchecked {
                ++i;
            }
        }
    }

    function placeSellOrder(
        uint256 option,
        uint256 price, // 1e18
        uint256 votes
    ) external returns (uint256 orderID) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        if (option == 0 || option > ds.numberOfOptions) {
            _revert(IRainPool.InvalidOption.selector);
        }
        if (price < ds.TICK_SPACING || price > 0.99 ether || price % ds.TICK_SPACING != 0) {
            _revert(IRainPool.InvalidPrice.selector);
        }
        if (ds.baseToken == ds.usdt) {
            if ((votes * price) / (ds.PRICE_MAGNIFICATION) < 1 * ds.baseTokenDecimals) {
                _revert(IRainPool.InvalidAmount.selector);
            }
        } else {
            uint256 usdtPriceOrder = LibUtils.getQuoteOut(
                ds.baseToken,
                (votes * price) / ds.PRICE_MAGNIFICATION,
                ds.tokenData
            );
            if (usdtPriceOrder < 1 * 1e6) {
                _revert(IRainPool.InvalidAmount.selector);
            }
        }
        if (ds.userActiveSellOrders[msg.sender] == 50) {
            _revert(IRainPool.UserSellOrderLimitReached.selector);
        }

        // Check to prevent orderBook abuse
        if (ds.claimed[msg.sender]) {
            _revert(IRainPool.AlreadyClaimed.selector);
        }

        uint256 userVotesAvbForSale = ds.userVotes[option][msg.sender] - ds.userVotesInEscrow[option][msg.sender];

        if (votes <= 0 || userVotesAvbForSale < votes) {
            _revert(IRainPool.InsufficientUserVotes.selector);
        }

        uint256 sharesReceived;
        uint256 usedAmount;

        int256 idx;
        uint256 head = ds.firstBuyOrderPrice[option];

        for (; price <= head && votes > 1; ) {
            LinkedListStorage.LinkedList storage linkedListBuy = ds.buyOrders[option][head];

            if (!linkedListBuy.isEmpty()) {
                idx = linkedListBuy.first();
                while (idx != linkedListBuy.tailIndex && votes > 0) {
                    LinkedListStorage.Order memory order = linkedListBuy.getData(idx);

                    idx = linkedListBuy.next(idx);

                    (usedAmount, sharesReceived) = _executeBuyOrder(option, head, votes, order.orderID, msg.sender);

                    votes -= sharesReceived;
                }
            }
            unchecked {
                head -= ds.TICK_SPACING;
            }
            if (linkedListBuy.isEmpty()) {
                ds.firstBuyOrderPrice[option] = head;
            }
        }

        if (votes > 1) {
            orderID = uint256(
                keccak256(
                    abi.encodePacked(
                        price,
                        block.number, // or block.timestamp if you really want time
                        ds.ordersAdded,
                        msg.sender
                    )
                )
            );

            if (ds.orderBook[option][price][orderID].exists == true) {
                _revert(IRainPool.OrderAlreadyExists.selector);
            }

            LinkedListStorage.LinkedList storage linkedList = ds.sellOrders[option][price];

            if (!linkedList.isInitialized) {
                linkedList.initialize();
            }

            LinkedListStorage.Order memory newOrder = LinkedListStorage.Order({
                orderID: orderID,
                timestamp: block.timestamp,
                amount: votes,
                maker: msg.sender
            });

            idx = linkedList.append(newOrder);
            ds.orderBook[option][price][orderID].exists = true;
            ds.orderBook[option][price][orderID].index = idx;

            ds.userActiveSellOrders[msg.sender]++;
            ds.userVotesInEscrow[option][msg.sender] += votes;
            ++ds.ordersAdded;

            // head-of-book must be the *cheapest* outstanding price
            if (price < ds.firstSellOrderPrice[option]) {
                ds.firstSellOrderPrice[option] = price;
            }

            emit IRainPool.PlaceSellOrder({
                orderOption: option,
                orderPrice: price,
                orderAmount: votes,
                orderID: orderID,
                maker: msg.sender
            });
        }
    }

    function placeBuyOrder(
        uint256 option,
        uint256 price, // 1e18
        uint256 amount
    ) external returns (uint256 orderID) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        if (option == 0 || option > ds.numberOfOptions) {
            _revert(IRainPool.InvalidOption.selector);
        }
        if (price < ds.TICK_SPACING || price > 0.99 ether || price % ds.TICK_SPACING != 0) {
            _revert(IRainPool.InvalidPrice.selector);
        }
        if (ds.baseToken == ds.usdt) {
            if (amount < 1 * ds.baseTokenDecimals) {
                _revert(IRainPool.InvalidAmount.selector);
            }
        } else {
            uint256 usdtPriceToken = LibUtils.getQuoteOut(ds.baseToken, amount, ds.tokenData);
            if (usdtPriceToken < 1 * 1e6) {
                _revert(IRainPool.InvalidAmount.selector);
            }
        }
        if (ds.userActiveBuyOrders[msg.sender] == 50) {
            _revert(IRainPool.UserSellOrderLimitReached.selector);
        }

        IERC20(ds.baseToken).safeTransferFrom(msg.sender, address(this), amount);

        uint256 sharesReceived;
        uint256 usedAmount;
        int256 idx;
        uint256 head = ds.firstSellOrderPrice[option];
        for (; head <= price && amount > 1; ) {
            LinkedListStorage.LinkedList storage linkedListSell = ds.sellOrders[option][head];

            if (!linkedListSell.isEmpty()) {
                idx = linkedListSell.first();
                while (idx != linkedListSell.tailIndex && amount > 0) {
                    LinkedListStorage.Order memory order = linkedListSell.getData(idx);
                    idx = linkedListSell.next(idx);
                    (usedAmount, sharesReceived) = _executeSellOrder(option, head, amount, order.orderID, msg.sender);
                    amount -= usedAmount;
                }
            }
            unchecked {
                head += ds.TICK_SPACING;
            }

            if (linkedListSell.isEmpty()) {
                ds.firstSellOrderPrice[option] = head;
            }
        }

        if (amount > 1) {
            orderID = uint256(
                keccak256(
                    abi.encodePacked(
                        price,
                        block.number, // or block.timestamp if you really want time
                        ds.ordersAdded,
                        msg.sender
                    )
                )
            );

            if (ds.orderBook[option][price][orderID].exists == true) {
                _revert(IRainPool.OrderAlreadyExists.selector);
            }

            LinkedListStorage.LinkedList storage linkedList = ds.buyOrders[option][price];

            if (!linkedList.isInitialized) {
                linkedList.initialize();
            }

            LinkedListStorage.Order memory newOrder = LinkedListStorage.Order({
                orderID: orderID,
                timestamp: block.timestamp,
                amount: amount,
                maker: msg.sender
            });

            idx = linkedList.append(newOrder);
            ds.orderBook[option][price][orderID].exists = true;
            ds.orderBook[option][price][orderID].index = idx;

            ds.userActiveBuyOrders[msg.sender]++;
            ds.userAmountInEscrow[option][msg.sender] += amount;
            ++ds.ordersAdded;

            // head-of-book must be the *cheapest* outstanding price
            if (price > ds.firstBuyOrderPrice[option]) {
                ds.firstBuyOrderPrice[option] = price;
            }

            emit IRainPool.PlaceBuyOrder({
                orderOption: option,
                orderPrice: price,
                orderAmount: amount,
                orderID: orderID,
                maker: msg.sender
            });
        }
    }

    function getCurrentPrice(uint256 option) internal view returns (uint256) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        return (ds.totalFunds[option] * ds.PRICE_MAGNIFICATION) / ds.allFunds;
    }

    function getReturnedShares(uint256 option, uint256 amount) internal view returns (uint256) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        return _getReturnedShares(amount, ds.totalFunds[option], ds.allFunds);
    }

    function getReturnedLiquidity(
        uint256 totalAmount
    ) internal view returns (uint256[] memory returnedShares, uint256[] memory returnedAmounts) {
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

    function getAmountRequired(
        uint256 currentPrice,
        uint256 endPrice,
        uint256 totalOptionFunds,
        uint256 _allFunds
    ) internal view returns (uint256 requiredAmount) {
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
        // numerator   = p*b - M*y
        // denominator = M - p
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
     * @dev Executes a specific sell order in the order book.
     * Validates the order ID, order existence, price tick spacing, and updates or removes the order accordingly.
     * @param option The index of the option being bought.
     * @param price The price per unit for the sell order.
     * @param fundsAmount The amount of funds user provides to buy the order.
     * @param orderID The unique identifier of the sell order to be fulfilled.
     * @param buyerAddress THe address of the buyer executing the order.
     * @return amountExecuted The amount in baseToken recieved by the seller.
     * @return shareAmount The amount of shares recieved by the buyer.
     */
    function _executeSellOrder(
        uint256 option,
        uint256 price, // 1e18
        uint256 fundsAmount,
        uint256 orderID,
        address buyerAddress
    ) private returns (uint256 amountExecuted, uint256 shareAmount) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        LinkedListStorage.LinkedList storage linkedList = ds.sellOrders[option][price];

        int256 nodeIndex = ds.orderBook[option][price][orderID].index;

        uint256 orderAmount = LinkedListLogic.getAmount(linkedList, nodeIndex);
        address sellerAddress = LinkedListLogic.getMaker(linkedList, nodeIndex);

        shareAmount = ((fundsAmount * (ds.PRICE_MAGNIFICATION)) / price);

        if (orderAmount <= shareAmount) {
            linkedList.remove(nodeIndex);
            ds.orderBook[option][price][orderID].exists = false;
            ds.orderBook[option][price][orderID].index = 0;
            ds.userActiveSellOrders[sellerAddress]--;
            ++ds.ordersRemoved;
            shareAmount = orderAmount;
        } else {
            ds.sellOrders[option][price].nodes[nodeIndex].data.amount -= shareAmount;
            orderAmount = shareAmount;
        }

        ds.userVotesInEscrow[option][sellerAddress] -= orderAmount;

        uint256 userAmount = (orderAmount * price) / (ds.PRICE_MAGNIFICATION);
        amountExecuted = userAmount;

        uint256 feeCreator = (userAmount * ds.creatorFee) / ds.FEE_MAGNIFICATION;
        userAmount -= feeCreator;

        ds.userVotes[option][buyerAddress] += orderAmount;

        ds.userVotes[option][sellerAddress] -= orderAmount;

        // Scope to avoid stack-too-deep error
        {
            uint256 fee = (userAmount * ds.ORDER_EXECUTION_FEE) / ds.FEE_MAGNIFICATION;
            userAmount -= fee;

            if (ds.poolFinalized) {
                LibUtils.swapAndBurn(fee, ds.baseToken, ds.rainToken, ds.platformAddress, ds.tokenData);
            } else {
                ds.orderBookShare += fee;
            }

            IERC20(ds.baseToken).safeTransfer(sellerAddress, userAmount);
        }

        emit IRainPool.ExecuteSellOrder({
            orderOption: option,
            orderPrice: price,
            optionAmount: orderAmount,
            baseAmount: amountExecuted,
            orderID: orderID,
            maker: sellerAddress,
            taker: buyerAddress
        });

        LibUtils.referrerCreatorClaim(feeCreator, ds.referrer, ds.poolOwner, ds.baseToken);
    }

    /**
     * @dev Executes a specific buy order in the order book.
     * Validates the order ID, order existence, price tick spacing, and updates or removes the order accordingly.
     * @param option The index of the option being bought.
     * @param price The price per unit for the buy order.
     * @param shareAmount The amount of shares user provides to sell.
     * @param orderID The unique identifier of the buy order to be fulfilled.
     * @param sellerAddress THe address of the seller executing the order.
     * @return amountExecuted The amount in baseToken recieved by the seller.
     * @return sharesFilled The amount of shares recieved by the buyer.
     */
    function _executeBuyOrder(
        uint256 option,
        uint256 price, // 1e18
        uint256 shareAmount,
        uint256 orderID,
        address sellerAddress
    ) private returns (uint256 amountExecuted, uint256 sharesFilled) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        LinkedListStorage.LinkedList storage linkedList = ds.buyOrders[option][price];

        int256 nodeIndex = ds.orderBook[option][price][orderID].index;

        uint256 orderAmount = LinkedListLogic.getAmount(linkedList, nodeIndex);
        address buyerAddress = LinkedListLogic.getMaker(linkedList, nodeIndex);

        sharesFilled = (orderAmount * ds.PRICE_MAGNIFICATION) / price;

        if (shareAmount >= sharesFilled) {
            linkedList.remove(nodeIndex);
            ds.orderBook[option][price][orderID].exists = false;
            ds.orderBook[option][price][orderID].index = 0;
            ds.userActiveBuyOrders[buyerAddress]--;
            ++ds.ordersRemoved;
            amountExecuted = orderAmount;
        } else {
            amountExecuted = ((shareAmount * price) / ds.PRICE_MAGNIFICATION);
            ds.buyOrders[option][price].nodes[nodeIndex].data.amount -= amountExecuted;
            sharesFilled = shareAmount;
        }

        ds.userAmountInEscrow[option][buyerAddress] -= amountExecuted;

        uint256 userAmount = amountExecuted;

        uint256 feeCreator = (userAmount * ds.creatorFee) / ds.FEE_MAGNIFICATION;
        userAmount -= feeCreator;

        ds.userVotes[option][buyerAddress] += sharesFilled;

        ds.userVotes[option][sellerAddress] -= sharesFilled;

        // Scope to avoid stack-too-deep error
        {
            uint256 fee = (userAmount * ds.ORDER_EXECUTION_FEE) / ds.FEE_MAGNIFICATION;
            userAmount -= fee;

            if (ds.poolFinalized) {
                LibUtils.swapAndBurn(fee, ds.baseToken, ds.rainToken, ds.platformAddress, ds.tokenData);
            } else {
                ds.orderBookShare += fee;
            }

            IERC20(ds.baseToken).safeTransfer(sellerAddress, userAmount);
        }

        emit IRainPool.ExecuteBuyOrder({
            orderOption: option,
            orderPrice: price,
            optionAmount: sharesFilled,
            baseAmount: amountExecuted,
            orderID: orderID,
            maker: buyerAddress,
            taker: sellerAddress
        });

        LibUtils.referrerCreatorClaim(feeCreator, ds.referrer, ds.poolOwner, ds.baseToken);
    }

    function _getReturnedShares(
        uint256 amount,
        uint256 optionFunds,
        uint256 totalAmount
    ) private view returns (uint256 shares) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        uint256 price = ((optionFunds + amount) * ds.PRICE_MAGNIFICATION) / (totalAmount + amount);
        shares = ((amount * ds.PRICE_MAGNIFICATION) / price);
    }
}
