// SPDX-License-Identifier: MIT

pragma solidity ^0.8.26;

import { IGetter } from "../interfaces/IGetter.sol";

import { Types } from "../shared/Types.sol";

import { LibDiamond } from "../libraries/LibDiamond.sol";

import { LinkedListStorage } from "../../interfaces/LinkedListStorage.sol";

import { IRainPool } from "../../interfaces/IRainPool.sol";

import { IRainDeployer } from "../../interfaces/IRainDeployer.sol";

/**
 * @title GetterFacet
 * @author Rain Team
 * @notice External interface for the rain pool `Getter` facet.
 */
contract GetterFacet is IGetter {
    /**
     * @inheritdoc IGetter
     */
    function PRICE_MAGNIFICATION() external view returns (uint256) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        return ds.PRICE_MAGNIFICATION;
    }

    /**
     * @inheritdoc IGetter
     */
    function FEE_MAGNIFICATION() external view returns (uint256) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        return ds.FEE_MAGNIFICATION;
    }

    /**
     * @inheritdoc IGetter
     */
    function TICK_SPACING() external view returns (uint256) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        return ds.TICK_SPACING;
    }

    /**
     * @inheritdoc IGetter
     */
    function ORDER_EXECUTION_FEE() external view returns (uint256) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        return ds.ORDER_EXECUTION_FEE;
    }

    /**
     * @inheritdoc IGetter
     */
    function DISPUTE_WINDOW() external view returns (uint256) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        return ds.DISPUTE_WINDOW;
    }

    /**
     * @inheritdoc IGetter
     */
    function DISPUTE_FEE_MAX() external view returns (uint256) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        return ds.DISPUTE_FEE_MAX;
    }

    /**
     * @inheritdoc IGetter
     */
    function DISPUTE_FEE_MIN() external view returns (uint256) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        return ds.DISPUTE_FEE_MIN;
    }

    /**
     * @inheritdoc IGetter
     */
    function APPEAL_FEE_MIN() external view returns (uint256) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        return ds.APPEAL_FEE_MIN;
    }

    /**
     * @inheritdoc IGetter
     */
    function allVotes() external view returns (uint256) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        return ds.allVotes;
    }

    /**
     * @inheritdoc IGetter
     */
    function allFunds() external view returns (uint256) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        return ds.allFunds;
    }

    /**
     * @inheritdoc IGetter
     */
    function winningPoolShare() external view returns (uint256) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        return ds.winningPoolShare;
    }

    /**
     * @inheritdoc IGetter
     */
    function liquidityShare() external view returns (uint256) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        return ds.liquidityShare;
    }

    /**
     * @inheritdoc IGetter
     */
    function platformShare() external view returns (uint256) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        return ds.platformShare;
    }

    /**
     * @inheritdoc IGetter
     */
    function orderBookShare() external view returns (uint256) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        return ds.orderBookShare;
    }

    /**
     * @inheritdoc IGetter
     */
    function creatorShare() external view returns (uint256) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        return ds.creatorShare;
    }

    /**
     * @inheritdoc IGetter
     */
    function resolverShare() external view returns (uint256) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        return ds.resolverShare;
    }

    /**
     * @inheritdoc IGetter
     */
    function closingShare() external view returns (uint256) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        return ds.closingShare;
    }

    /**
     * @inheritdoc IGetter
     */
    function totalLiquidity() external view returns (uint256) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        return ds.totalLiquidity;
    }

    /**
     * @inheritdoc IGetter
     */
    function startTime() external view returns (uint256) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        return ds.startTime;
    }

    /**
     * @inheritdoc IGetter
     */
    function endTime() external view returns (uint256) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        return ds.endTime;
    }

    /**
     * @inheritdoc IGetter
     */
    function numberOfOptions() external view returns (uint256) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        return ds.numberOfOptions;
    }

    /**
     * @inheritdoc IGetter
     */
    function winner() external view returns (uint256) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        return ds.winner;
    }

    /**
     * @inheritdoc IGetter
     */
    function platformFee() external view returns (uint256) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        return ds.platformFee;
    }

    /**
     * @inheritdoc IGetter
     */
    function liquidityFee() external view returns (uint256) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        return ds.liquidityFee;
    }

    /**
     * @inheritdoc IGetter
     */
    function creatorFee() external view returns (uint256) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        return ds.creatorFee;
    }

    /**
     * @inheritdoc IGetter
     */
    function resultResolverFee() external view returns (uint256) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        return ds.resultResolverFee;
    }

    /**
     * @inheritdoc IGetter
     */
    function closingFee() external view returns (uint256) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        return ds.closingFee;
    }

    /**
     * @inheritdoc IGetter
     */
    function oracleFixedFee() external view returns (uint256) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        return ds.oracleFixedFee;
    }

    /**
     * @inheritdoc IGetter
     */
    function oracleEndTime() external view returns (uint256) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        return ds.oracleEndTime;
    }

    /**
     * @inheritdoc IGetter
     */
    function endTimeCache() external view returns (uint256) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        return ds.endTimeCache;
    }

    /**
     * @inheritdoc IGetter
     */
    function ordersAdded() external view returns (uint256) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        return ds.ordersAdded;
    }

    /**
     * @inheritdoc IGetter
     */
    function ordersRemoved() external view returns (uint256) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        return ds.ordersRemoved;
    }

    /**
     * @inheritdoc IGetter
     */
    function baseTokenDecimals() external view returns (uint256) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        return ds.baseTokenDecimals;
    }

    /**
     * @inheritdoc IGetter
     */
    function resolverBond() external view returns (uint256) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        return ds.resolverBond;
    }

    /**
     * @inheritdoc IGetter
     */
    function proposedWinner() external view returns (uint256) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        return ds.proposedWinner;
    }

    /**
     * @inheritdoc IGetter
     */
    function ipfsUri() external view returns (string memory) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        return ds.ipfsUri;
    }

    /**
     * @inheritdoc IGetter
     */
    function FACTORY() external view returns (address) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        return ds.FACTORY;
    }

    /**
     * @inheritdoc IGetter
     */
    function baseToken() external view returns (address) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        return ds.baseToken;
    }

    /**
     * @inheritdoc IGetter
     */
    function rainToken() external view returns (address) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        return ds.rainToken;
    }

    /**
     * @inheritdoc IGetter
     */
    function usdt() external view returns (address) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        return ds.usdt;
    }

    /**
     * @inheritdoc IGetter
     */
    function poolOwner() external view returns (address) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        return ds.poolOwner;
    }

    /**
     * @inheritdoc IGetter
     */
    function platformAddress() external view returns (address) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        return ds.platformAddress;
    }

    /**
     * @inheritdoc IGetter
     */
    function resolver() external view returns (address) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        return ds.resolver;
    }

    /**
     * @inheritdoc IGetter
     */
    function disputeResolver() external view returns (address) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        return ds.disputeResolver;
    }

    /**
     * @inheritdoc IGetter
     */
    function referrer() external view returns (address) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        return ds.referrer;
    }

    function resolutionProposer() external view returns (address) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        return ds.resolutionProposer;
    }

    /**
     * @inheritdoc IGetter
     */
    function isPublic() external view returns (bool) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        return ds.isPublic;
    }

    /**
     * @inheritdoc IGetter
     */
    function resolverIsAI() external view returns (bool) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        return ds.resolverIsAI;
    }

    /**
     * @inheritdoc IGetter
     */
    function isDisputed() external view returns (bool) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        return ds.isDisputed;
    }

    /**
     * @inheritdoc IGetter
     */
    function isAppealed() external view returns (bool) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        return ds.isAppealed;
    }

    /**
     * @inheritdoc IGetter
     */
    function firstClaim() external view returns (bool) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        return ds.firstClaim;
    }

    /**
     * @inheritdoc IGetter
     */
    function poolFinalized() external view returns (bool) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        return ds.poolFinalized;
    }

    /**
     * @inheritdoc IGetter
     */
    function userVotes(uint256 optionId, address user) external view returns (uint256) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        return ds.userVotes[optionId][user];
    }

    /**
     * @inheritdoc IGetter
     */
    function sellOrders(uint256 option, uint256 price) external view returns (int256, int256, int256, bool) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        LinkedListStorage.LinkedList storage list = ds.sellOrders[option][price];

        return (list.headIndex, list.tailIndex, list.count, list.isInitialized);
    }

    /**
     * @inheritdoc IGetter
     */
    function buyOrders(uint256 option, uint256 price) external view returns (int256, int256, int256, bool) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        LinkedListStorage.LinkedList storage list = ds.buyOrders[option][price];

        return (list.headIndex, list.tailIndex, list.count, list.isInitialized);
    }

    /**
     * @inheritdoc IGetter
     */
    function orderBook(uint256 option, uint256 price, uint256 orderID) external view returns (bool, int256) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        IRainPool.OrderExists storage orderExists = ds.orderBook[option][price][orderID];

        return (orderExists.exists, orderExists.index);
    }

    /**
     * @inheritdoc IGetter
     */
    function userLiquidity(address user) external view returns (uint256) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        return ds.userLiquidity[user];
    }

    /**
     * @inheritdoc IGetter
     */
    function claimed(address user) external view returns (bool) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        return ds.claimed[user];
    }

    /**
     * @inheritdoc IGetter
     */
    function totalVotes(uint256 optionId) external view returns (uint256) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        return ds.totalVotes[optionId];
    }

    /**
     * @inheritdoc IGetter
     */
    function totalFunds(uint256 optionId) external view returns (uint256) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        return ds.totalFunds[optionId];
    }

    /**
     * @inheritdoc IGetter
     */
    function userActiveSellOrders(address user) external view returns (uint256) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        return ds.userActiveSellOrders[user];
    }

    /**
     * @inheritdoc IGetter
     */
    function userActiveBuyOrders(address user) external view returns (uint256) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        return ds.userActiveBuyOrders[user];
    }

    /**
     * @inheritdoc IGetter
     */
    function userVotesInEscrow(uint256 optionId, address user) external view returns (uint256) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        return ds.userVotesInEscrow[optionId][user];
    }

    /**
     * @inheritdoc IGetter
     */
    function userAmountInEscrow(uint256 optionId, address user) external view returns (uint256) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        return ds.userAmountInEscrow[optionId][user];
    }

    /**
     * @inheritdoc IGetter
     */
    function firstSellOrderPrice(uint256 option) external view returns (uint256) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        return ds.firstSellOrderPrice[option];
    }

    /**
     * @inheritdoc IGetter
     */
    function firstBuyOrderPrice(uint256 option) external view returns (uint256) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        return ds.firstBuyOrderPrice[option];
    }

    /**
     * @inheritdoc IGetter
     */
    function dispute()
        external
        view
        returns (uint256 disputeFee, uint256 disputedWinner, address disputer, address _resolver)
    {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        IRainPool.Dispute storage d = ds.dispute;

        return (d.disputeFee, d.disputedWinner, d.disputer, d.resolver);
    }

    /**
     * @inheritdoc IGetter
     */
    function appeal()
        external
        view
        returns (uint256 disputeFee, uint256 disputedWinner, address disputer, address _resolver)
    {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        IRainPool.Dispute storage d = ds.appeal;

        return (d.disputeFee, d.disputedWinner, d.disputer, d.resolver);
    }

    /**
     * @inheritdoc IGetter
     */
    function poolState() external view returns (Types.PoolState _poolState) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        return ds.poolState;
    }

    /**
     * @inheritdoc IGetter
     */
    function tokenData()
        external
        view
        returns (IRainDeployer.TokenPool, bool, address, address, bytes memory, bytes memory, bytes memory)
    {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        return (
            ds.tokenData.tokenPool,
            ds.tokenData.isAllowed,
            ds.tokenData.routerAddress,
            ds.tokenData.routerHelper,
            ds.tokenData.pathUSDTToToken,
            ds.tokenData.pathTokenToUSDT,
            ds.tokenData.pathTokenWETH
        );
    }
}
