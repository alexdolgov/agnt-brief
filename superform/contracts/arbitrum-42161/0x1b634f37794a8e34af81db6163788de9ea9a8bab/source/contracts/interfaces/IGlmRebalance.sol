// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

interface IGlmRebalance {
    event SetGMXAddresses(address depositVault, address withdrawalVault, address gmxRouter, address exchangeRouter);
    event KeeperTokenPurchased(address[] gmTokens, uint256[] usdcAmounts, bytes32[5] keys);
    event KeeperTokenSold(address[] gmTokens, uint256[] usdcAmounts, bytes32[5] keys);
    event SetGlmKeeper(address keeper, bool isKeeper);
    event RebalanceStart(uint256 roundId, uint256 totalUsdc, address[] sellGmTokenAddress, uint256[] amounts);
    event RebalanceCompleted(uint256 roundId);
    event RebalanceFinalizeStarted(uint256 roundId, address[] tokenPurchasesAddresses, uint256[] tokenPurchasesAmounts);
    event SetParameters(uint256 corePoolThreshold, uint256 corePoolUpperRatio, uint256 corePoolLowerRatio);
    struct RebalanceInfo {
        address[] tokenPurchasesAddresses;
        uint256[] tokenPurchasesAmounts; // in usdc
        uint256 totalUsdcValueForPurchase; // @note ideally how much usdc we will spend for purchasing gm tokens
        uint256 estimatedValueForSale; // @note how much usdc we will get from selling gm tokens, useful for set pending amount for rebalance
        uint256 actualValueForPurchase; //@note actual value for purchase, will be used in finialze rebalance
        uint256 sellCount;
        bool isCompleted;
        uint256 valueAfterPurchase; // @note the final amount of usdc value after purchasing gm tokens
    }

    struct GMXAddresses {
        address depositVault;
        address withdrawalVault;
        address gmxRouter;
        address exchangeRouter;
    }

    function addActualValueForPurchase(uint256 roundId, uint256 extraAmount) external;

    function addValueAfterPurchase(uint256 roundId, uint256 extraAmount) external;

    function currentId() external view returns (uint256);

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
