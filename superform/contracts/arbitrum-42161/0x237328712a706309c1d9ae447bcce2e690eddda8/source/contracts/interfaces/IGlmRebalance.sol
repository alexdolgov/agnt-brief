// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

interface IGlmRebalance {
    /**
     * @notice Emitted when GMX addresses are updated.
     * @param depositVault Address of the GMX deposit vault.
     * @param withdrawalVault Address of the GMX withdrawal vault.
     * @param gmxRouter Address of the GMX router.
     * @param exchangeRouter Address of the GMX exchange router.
     */
    event SetGMXAddresses(address depositVault, address withdrawalVault, address gmxRouter, address exchangeRouter);

    /**
     * @notice Emitted when tokens are purchased by the keeper.
     * @param gmTokens Array of GM token addresses purchased.
     * @param usdcAmounts Array of USDC amounts used for each purchase.
     * @param keys Unique identifiers for the purchase transactions.
     */
    event KeeperTokenPurchased(address[] gmTokens, uint256[] usdcAmounts, bytes32[5] keys);

    /**
     * @notice Emitted when tokens are sold by the keeper.
     * @param gmTokens Array of GM token addresses sold.
     * @param usdcAmounts Array of USDC amounts received from each sale.
     * @param keys Unique identifiers for the sale transactions.
     */
    event KeeperTokenSold(address[] gmTokens, uint256[] usdcAmounts, bytes32[5] keys);

    /**
     * @notice Emitted when a GlmKeeper is set or unset.
     * @param keeper Address of the keeper.
     * @param isKeeper Boolean indicating whether the address is set as a keeper.
     */
    event SetGlmKeeper(address keeper, bool isKeeper);

    /**
     * @notice Emitted at the start of a rebalance round.
     * @param roundId Identifier of the rebalance round.
     * @param totalUsdc Total USDC value targeted for the rebalance.
     * @param sellGmTokenAddress Array of GM token addresses to be sold.
     * @param amounts Array of amounts for each GM token to be sold.
     */
    event RebalanceStart(uint256 roundId, uint256 totalUsdc, address[] sellGmTokenAddress, uint256[] amounts);

    /**
     * @notice Emitted when a rebalance round is completed.
     * @param roundId Identifier of the completed rebalance round.
     */
    event RebalanceCompleted(uint256 roundId);

    /**
     * @notice Emitted when the finalization of a rebalance round is started.
     * @param roundId Identifier of the rebalance round being finalized.
     * @param tokenPurchasesAddresses Array of GM token addresses to be purchased.
     * @param tokenPurchasesAmounts Array of USDC amounts allocated for each purchase.
     */
    event RebalanceFinalizeStarted(uint256 roundId, address[] tokenPurchasesAddresses, uint256[] tokenPurchasesAmounts);

    /**
     * @notice Emitted when rebalance parameters are updated.
     * @param corePoolThreshold Threshold for the core pool weights to trigger a rebalance.
     * @param corePoolUpperRatio Threshold for the larger core pool for the rebalance
     * @param corePoolLowerRatio Threshold for the smaller core pool for the rebalance, the ratio between the two core pools should be within this range
     */
    event SetParameters(uint256 corePoolThreshold, uint256 corePoolUpperRatio, uint256 corePoolLowerRatio);

    struct RebalanceInfo {
        address[] tokenPurchasesAddresses;
        uint256[] tokenPurchasesAmounts; // in usdc
        uint256 totalUsdcValueForPurchase;
        uint256 estimatedValueForSale; // @note how much usdc we will get from selling gm tokens, useful for set pending amount for rebalance
        uint256 actualValueForPurchase; //@note actual value for purchase, will be used in finialze rebalance
        uint256 sellCount; //@note useful for determining how much exec fees we will pay to GMXV2
        bool isCompleted;
        uint256 valueAfterPurchase; // @note the final amount of usdc value after purchasing gm tokens
    }

    struct GMXAddresses {
        address depositVault;
        address withdrawalVault;
        address gmxRouter;
        address exchangeRouter;
    }

    /**
     * @notice Adds the actual value received from token sales to the rebalance round.
     * @param roundId Identifier of the rebalance round.
     * @param extraAmount Additional USDC value received from sales.
     */
    function addActualValueForPurchase(uint256 roundId, uint256 extraAmount) external;

    /**
     * @notice Adds the final value after token purchases to the rebalance round, useful for calculating the splipage for backend
     * @param roundId Identifier of the rebalance round.
     * @param extraAmount Additional USDC value after purchases.
     */
    function addValueAfterPurchase(uint256 roundId, uint256 extraAmount) external;

    /**
     * @notice Retrieves the current rebalance round identifier.
     * @return The current rebalance round ID.
     */
    function currentId() external view returns (uint256);

    /**
     * @notice Gets the estimated USDC value expected from selling GM tokens in a rebalance round.
     * @param roundId Identifier of the rebalance round.
     * @return The estimated USDC value from token sales.
     */
    function getEstimatedValueForSale(uint256 roundId) external view returns (uint256);

    function getSavedRebalanceInfo(
        uint256 roundId
    )
        external
        view
        returns (
            address[] memory tokenPurchasesAddresses,
            uint256[] memory tokenPurchasesAmounts,
            uint256 totalUsdcValueForPurchase,
            uint256 estimatedValueForSale,
            uint256 actualValueForPurchase,
            uint256 sellCount,
            bool isCompleted,
            uint256 valueAfterPurchase
        );

    function getPurchaseInfo(
        uint256 roundId
    )
        external
        view
        returns (
            uint256 originalValueForPurchase,
            uint256 actualValueForPurchase,
            bool isCompleted,
            address[] memory tokenPurchasesAddresses,
            uint256[] memory tokenPurchasesAmounts // in usdc
        );

    function setRebalanceCompleted() external;
}
