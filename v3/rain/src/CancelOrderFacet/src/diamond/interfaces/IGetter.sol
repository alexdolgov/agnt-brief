// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import { Types } from "../shared/Types.sol";

import { IRainDeployer } from "../../interfaces/IRainDeployer.sol";

/**
 * @title IGetter
 * @author Rain Team
 * @notice Interface for the rain pool diamond facet.
 * @dev Defines the external functions for diamond storage getters within the Diamond architecture.
 */
interface IGetter {
    /**
     * @notice Returns the price magnification factor.
     * @return The price magnification factor as a uint256 value.
     */
    function PRICE_MAGNIFICATION() external view returns (uint256);

    /**
     * @notice Returns the fee magnification factor.
     * @return The fee magnification factor as a uint256 value.
     */
    function FEE_MAGNIFICATION() external view returns (uint256);

    /**
     * @notice Returns the constant tick spacing used for price granularity.
     * @return The tick spacing value.
     */
    function TICK_SPACING() external view returns (uint256);

    /**
     * @notice Returns the constant tick spacing used for price granularity.
     * @return The tick spacing value.
     */
    function ORDER_EXECUTION_FEE() external view returns (uint256);

    /**
     * @notice The time during which a user cannot open a dispute.
     * @dev Represents the time in seconds.
     * @return The dispute window time.
     */
    function DISPUTE_WINDOW() external view returns (uint256);

    /**
     * @notice The maximum fee that can be charged to open a dispute.
     * @dev Used as an upper bound when calculating dispute fees.
     * @return The maximum dispute fee amount.
     */
    function DISPUTE_FEE_MAX() external view returns (uint256);

    /**
     * @notice The minimum fee required to open a dispute.
     * @dev Used as a lower bound when calculating dispute fees.
     * @return The minimum dispute fee amount.
     */
    function DISPUTE_FEE_MIN() external view returns (uint256);

    /**
     * @notice The minimum fee required to appeal an existing dispute.
     * @dev Ensures appeals meet a base economic threshold.
     * @return The minimum appeal fee amount.
     */
    function APPEAL_FEE_MIN() external view returns (uint256);

    /**
     * @notice Returns the total number of votes.
     * @return The total votes as a uint256 value.
     */
    function allVotes() external view returns (uint256);

    /**
     * @notice Returns the total funds in the pool.
     * @return The total funds as a uint256 value.
     */
    function allFunds() external view returns (uint256);

    /**
     * @notice Returns the share of the winning pool.
     * @return The winning pool share as a uint256 value.
     */
    function winningPoolShare() external view returns (uint256);

    /**
     * @notice Returns the share of liquidity.
     * @return The liquidity share as a uint256 value.
     */
    function liquidityShare() external view returns (uint256);

    /**
     * @notice Returns the share allocated to the platform.
     * @return The platform share as a uint256 value.
     */
    function platformShare() external view returns (uint256);

    /**
     * @notice Returns the share allocated to the platform via the order book.
     * @return The platform via the order book as a uint256 value.
     */
    function orderBookShare() external view returns (uint256);

    /**
     * @notice Returns the share allocated to the creator.
     * @return The creator share as a uint256 value.
     */
    function creatorShare() external view returns (uint256);

    /**
     * @notice Returns the share allocated to the resolver.
     * @return The resolver share as a uint256 value.
     */
    function resolverShare() external view returns (uint256);

    /**
     * @notice Returns the share allocated to the closer.
     * @return The closing share as a uint256 value.
     */
    function closingShare() external view returns (uint256);

    /**
     * @notice Returns the total liquidity in the pool.
     * @return The total liquidity as a uint256 value.
     */
    function totalLiquidity() external view returns (uint256);

    /**
     * @notice Returns the start time of the pool.
     * @return The start time as a uint256 timestamp.
     */
    function startTime() external view returns (uint256);

    /**
     * @notice Returns the end time of the pool.
     * @return The end time as a uint256 timestamp.
     */
    function endTime() external view returns (uint256);

    /**
     * @notice Returns the number of options in the pool.
     * @return The number of options as a uint256 value.
     */
    function numberOfOptions() external view returns (uint256);

    /**
     * @notice Returns the winner option.
     * @return The winner option ID as a uint256 value.
     */
    function winner() external view returns (uint256);

    /**
     * @notice Returns the platform fee.
     * @return The platform fee as a uint256 value.
     */
    function platformFee() external view returns (uint256);

    /**
     * @notice Returns the liquidity fee.
     * @return The liquidity fee as a uint256 value.
     */
    function liquidityFee() external view returns (uint256);

    /**
     * @notice Returns the creator fee.
     * @return The creator fee as a uint256 value.
     */
    function creatorFee() external view returns (uint256);

    /**
     * @notice Returns the result resolver fee.
     * @return The result resolver fee as a uint256 value.
     */
    function resultResolverFee() external view returns (uint256);

    /**
     * @notice Returns the closing fee.
     * @return The closing fee as a uint256 value.
     */
    function closingFee() external view returns (uint256);

    /**
     * @notice Returns the fixed fee for the oracle.
     * @return The oracle fixed fee as a uint256 value.
     */
    function oracleFixedFee() external view returns (uint256);

    /**
     * @notice Returns the end time for the oracle.
     * @return The oracle end time as a uint256 timestamp.
     */
    function oracleEndTime() external view returns (uint256);

    /**
     * @notice Returns the cached end time of the pool.
     * @return The end time cache as a uint256 timestamp.
     */
    function endTimeCache() external view returns (uint256);

    /**
     * @notice Returns the total number of orders that have been added.
     * @return The number of added orders.
     */
    function ordersAdded() external view returns (uint256);

    /**
     * @notice Returns the total number of orders that have been removed.
     * @return The number of removed orders.
     */
    function ordersRemoved() external view returns (uint256);

    /**
     * @notice Returns the deciamls for the base token.
     */
    function baseTokenDecimals() external view returns (uint256);

    /**
     * @notice Returns the `resolverBond` amount escrowed from the resolution proposer.
     */
    function resolverBond() external view returns (uint256);

    /**
     * @notice Returns the `proposedWinner` by the resolution proposer.
     */
    function proposedWinner() external view returns (uint256);

    /**
     * @notice Returns the IPFS URI associated with the pool.
     * @return The IPFS URI as a string.
     */
    function ipfsUri() external view returns (string memory);

    /**
     * @notice Returns the address of the contract factory.
     * @return The factory address.
     */
    function FACTORY() external view returns (address);

    /**
     * @notice Returns the address of the base token used in the pool.
     * @return The base token address.
     */
    function baseToken() external view returns (address);

    /**
     * @notice Returns the address of the rain token.
     * @return The rain token address.
     */
    function rainToken() external view returns (address);

    /**
     * @notice Returns the address of the usdt token.
     * @return The usdt token address.
     */
    function usdt() external view returns (address);

    /**
     * @notice Returns the address of the pool owner.
     * @return The pool owner's address.
     */
    function poolOwner() external view returns (address);

    /**
     * @notice Returns the address of the platform.
     * @return The platform address.
     */
    function platformAddress() external view returns (address);

    /**
     * @notice Returns the address of the resolver.
     * @return The resolver address.
     */
    function resolver() external view returns (address);

    /**
     * @notice Returns address of the dispute resolver AI responsible for selecting the winning option
     *        for resolving disputed.
     * @return The resolver AI address.
     */
    function disputeResolver() external view returns (address);

    /**
     * @notice Returns the address of the referrer of the pool.
     * @return The referrer address.
     */
    function referrer() external view returns (address);

    /**
     * @notice Returns the address of the resolution proposer of the pool.
     * @return The resolution proposer address.
     */ function resolutionProposer() external view returns (address);

    /**
     * @notice Returns whether the pool is public.
     * @return True if the pool is public, false if private.
     */
    function isPublic() external view returns (bool);

    /**
     * @notice Returns whether the owner is the resolver or not.
     * @return True if the owner is the resolver, false if not.
     */
    function resolverIsAI() external view returns (bool);

    /**
     * @notice Returns whether the pool is `disputed` or not.
     * @return True if the pool is `disputed`, false if not.
     */
    function isDisputed() external view returns (bool);

    /**
     * @notice Returns whether the pool is `appealed` or not.
     * @return True if the pool is `appealed`, false if not.
     */
    function isAppealed() external view returns (bool);

    /**
     * @notice Returns whether the first claim has been made.
     * @return True if the claim has been made, false if not.
     */
    function firstClaim() external view returns (bool);

    /**
     * @notice Returns whether the pool has been finalized.
     * @return True if the pool is finalized, false if not.
     */
    function poolFinalized() external view returns (bool);

    /**
     * @notice Returns the number of votes a user has for a specific option.
     * @param optionId The ID of the option.
     * @param user The address of the user.
     * @return The number of votes the user has for the option.
     */
    function userVotes(uint256 optionId, address user) external view returns (uint256);

    /**
     * @notice Returns the linked list of sell orders for a specific option and price.
     * @param option The option index.
     * @param price The price point.
     * @return The linked list of sell orders.
     */
    function sellOrders(uint256 option, uint256 price) external view returns (int256, int256, int256, bool);

    /**
     * @notice Returns the linked list of buy orders for a specific option and price.
     * @param option The option index.
     * @param price The price point.
     * @return The linked list of buy orders.
     */
    function buyOrders(uint256 option, uint256 price) external view returns (int256, int256, int256, bool);

    /**
     * @notice Returns whether a specific order exists for a given option, price, and order ID.
     * @param option The option index.
     * @param price The price point.
     * @param orderID The ID of the order.
     * @return The Struct containing order existence details.
     */
    function orderBook(uint256 option, uint256 price, uint256 orderID) external view returns (bool, int256);

    /**
     * @notice Returns the amount of liquidity a user has provided.
     * @param user The address of the user.
     * @return The amount of liquidity the user has provided.
     */
    function userLiquidity(address user) external view returns (uint256);

    /**
     * @notice Returns whether a user has already claimed their rewards.
     * @param user The address of the user.
     * @return True if the user has claimed, false otherwise.
     */
    function claimed(address user) external view returns (bool);

    /**
     * @notice Returns the total number of shares for a specific option.
     * @param optionId The ID of the option.
     * @return The total number of votes for the option.
     */
    function totalVotes(uint256 optionId) external view returns (uint256);

    /**
     * @notice Returns the total amount of funds for a specific option.
     * @param optionId The ID of the option.
     * @return The total amount of funds for the option.
     */
    function totalFunds(uint256 optionId) external view returns (uint256);

    /**
     * @notice Returns the total number of sell orders for a user.
     * @param user The address of the user.
     * @return The total number of orders for the user.
     */
    function userActiveSellOrders(address user) external view returns (uint256);

    /**
     * @notice Returns the total number of buy orders for a user.
     * @param user The address of the user.
     * @return The total number of orders for the user.
     */
    function userActiveBuyOrders(address user) external view returns (uint256);

    /**
     * @notice Returns the number of shares a user put up for sale for a specific option.
     * @param optionId The ID of the option.
     * @param user The address of the user.
     * @return The number of shares a user put up for sale for a specific option.
     */
    function userVotesInEscrow(uint256 optionId, address user) external view returns (uint256);

    /**
     * @notice Returns the amount of base token a user put up for buy for a specific option.
     * @param optionId The ID of the option.
     * @param user The address of the user.
     * @return The number of base token a user put up for buy for a specific option.
     */
    function userAmountInEscrow(uint256 optionId, address user) external view returns (uint256);

    /**
     * @notice Returns the smallest price at which a sell order has been placed.
     * @param option The ID of the option.
     * @return The smallest price at which a sell order has been placed.
     */
    function firstSellOrderPrice(uint256 option) external view returns (uint256);

    /**
     * @notice Returns the largest price at which a buy order has been placed.
     * @param option The ID of the option.
     * @return The largest price at which a buy order has been placed.
     */
    function firstBuyOrderPrice(uint256 option) external view returns (uint256);

    /**
     * @notice Returns the current dispute details.
     * @return disputeFee The fee paid by the disputer.
     * @return disputedWinner The winner selected by the AI.
     * @return disputer The address of the disputer.
     * @return resolver The address of the resolver.
     */
    function dispute()
        external
        view
        returns (uint256 disputeFee, uint256 disputedWinner, address disputer, address resolver);

    /**
     * @notice Returns the current `appeal` details.
     * @return disputeFee The fee paid by the `appealer`.
     * @return disputedWinner The winner selected by the AI.
     * @return disputer The address of the `appealer`.
     * @return resolver The address of the `resolver`.
     */
    function appeal()
        external
        view
        returns (uint256 disputeFee, uint256 disputedWinner, address disputer, address resolver);

    /**
     * @notice Returns the current state of the pool dispute status.
     * @return The current pool state.
     */
    function poolState() external view returns (Types.PoolState);

    /**
     * @notice Returns the configuration data of the token associated with this contract.
     * @dev Provides information about the token pool type, allowance status, routing addresses,
     *      and swap paths used by the protocol.
     * @return tokenPool The Uniswap pool version used for this token.
     * @return isAllowed Indicates whether the token is currently allowed by the protocol.
     * @return routerAddress The address of the router contract used for swaps.
     * @return routerHelper The address of the router helper contract, if applicable.
     * @return pathUSDTToToken The Uniswap swap path from USDT to the token.
     * @return pathTokenToUSDT The Uniswap swap path from the token to USDT.
     * @return pathTokenToWETH The Uniswap swap path from token to WETH.
     */
    function tokenData()
        external
        view
        returns (
            IRainDeployer.TokenPool tokenPool,
            bool isAllowed,
            address routerAddress,
            address routerHelper,
            bytes memory pathUSDTToToken,
            bytes memory pathTokenToUSDT,
            bytes memory pathTokenToWETH
        );
}
