// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity 0.8.19;

/**
 * @title ILiquidity
 * @dev Interface for the Liquidity contract, which handles adding and removing liquidity, updating funding rates, and emitting events.
 */
interface ILiquidity {
    /**
     * @dev Emitted when liquidity is added to the pool.
     * @param trader The address of the trader who added liquidity.
     * @param tokenId The ID of the token being traded.
     * @param tokenPrice The price of the token in raw format.
     * @param mlpPrice The price of the MLP in raw format.
     * @param mlpAmount The amount of MLP added to the pool.
     * @param fee The fee charged for adding liquidity.
     */
    event AddLiquidity(
        address indexed trader,
        uint8 indexed tokenId,
        uint96 tokenPrice,
        uint96 mlpPrice,
        uint96 mlpAmount,
        uint96 fee
    );

    /**
     * @dev Emitted when liquidity is donated to the pool.
     * @param who The address of the trader who added liquidity.
     * @param tokenId The ID of the token being traded.
     * @param tokenPrice The price of the token in raw format.
     * @param wadAmount The amount of MLP added to the pool.
     */
    event DonateLiquidity(address indexed who, uint8 indexed tokenId, uint96 tokenPrice, uint96 wadAmount);

    /**
     * @dev Emitted when liquidity is removed from the pool.
     * @param trader The address of the trader who removed liquidity.
     * @param tokenId The ID of the token being traded.
     * @param tokenPrice The price of the token in raw format.
     * @param mlpPrice The price of the MLP in raw format.
     * @param mlpAmount The amount of MLP removed from the pool.
     * @param fee The fee charged for removing liquidity.
     */
    event RemoveLiquidity(
        address indexed trader,
        uint8 indexed tokenId,
        uint96 tokenPrice,
        uint96 mlpPrice,
        uint96 mlpAmount,
        uint96 fee
    );

    /**
     * @dev Emitted when a broker gas rebate is claimed.
     * @param receiver The address of the receiver of the rebate.
     * @param transactions The number of transactions that occurred.
     * @param rawAmount The raw amount of the rebate.
     */
    event ClaimBrokerGasRebate(address indexed receiver, uint32 transactions, uint256 rawAmount);

    /**
     * @dev Emitted when the funding rate is updated.
     * @param tokenId The ID of the token being traded.
     * @param isPositiveFundingRate Whether longs pay, otherwise shorts pay.
     * @param newFundingRateApy The funding rate. 1e5.
     * @param newBorrowingRateApy The borrowing rate. 1e5.
     * @param longCumulativeFunding The long cumulative funding. 1e18.
     * @param shortCumulativeFunding The short cumulative funding. 1e18.
     */
    event UpdateFundingRate(
        uint8 indexed tokenId,
        bool isPositiveFundingRate,
        uint32 newFundingRateApy, // 1e5
        uint32 newBorrowingRateApy, // 1e5
        uint128 longCumulativeFunding, // 1e18
        uint128 shortCumulativeFunding // 1e18
    );

    /**
     * @dev Adds liquidity to the pool.
     * @param trader The address of the trader adding liquidity.
     * @param tokenId The ID of the token being traded.
     * @param rawAmount The raw amount of collateral being transferred to the liquidity pool.
     * @param markPrices The mark prices of the token and MLP in raw format.
     * @return mlpAmount The amount of MLP added to the pool.
     */
    function addLiquidity(
        address trader,
        uint8 tokenId,
        uint256 rawAmount,
        uint96[] memory markPrices
    ) external returns (uint96 mlpAmount);

    /**
     * @dev Add liquidity but ignore MLP
     */
    function donateLiquidity(address who, uint8 tokenId, uint96 tokenPrice, uint256 rawAmount) external;

    /**
     * @dev Removes liquidity from the pool.
     * @param trader The address of the trader removing liquidity.
     * @param mlpAmount The amount of MLP being transferred from the liquidity pool.
     * @param tokenId The ID of the token being traded.
     * @param markPrices The mark prices of the token and MLP in raw format.
     * @return rawAmount The raw amount of collateral being transferred from the liquidity pool.
     */
    function removeLiquidity(
        address trader,
        uint96 mlpAmount,
        uint8 tokenId,
        uint96[] memory markPrices
    ) external returns (uint256 rawAmount);

    /**
     * @dev Updates the funding state of the pool.
     */
    function updateFundingState() external;

    /**
     * @dev Broker can withdraw brokerGasRebate.
     */
    function claimBrokerGasRebate(address receiver) external returns (uint256 rawAmount);
}
