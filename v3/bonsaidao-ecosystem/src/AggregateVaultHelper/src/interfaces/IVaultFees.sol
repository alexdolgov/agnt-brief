// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

interface IVaultFees {
    function getVaultRebalanceFees(address vault, uint256 lastRebalance)
        external
        pure
        returns (uint256, uint256, uint256, uint256);

    function getWithdrawalFee(address vault, uint256 size, bool useLlo) external pure returns (uint256, uint256);

    function getDepositFee(address vault, uint256 size, bool useLlo) external pure returns (uint256);

    function _getVaultRebalanceFees(
        uint256 currentBalance,
        uint256 totalSupply,
        uint256 currentPps,
        uint256 watermarkPps,
        int256 userPositionDelta,
        uint256 performanceFeePercent,
        uint256 managementFeePercent,
        uint256 timelockYieldPercent
    )
        external
        returns (
            uint256 _performanceFeeInAsset,
            uint256 _managementFeeInAsset,
            uint256 _timelockYieldInShares,
            uint256 _totalVaultFee
        );
}
