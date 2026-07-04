// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

interface IVaultFees {
    function getVaultRebalanceFees(address vault, uint256 lastRebalance)
        external
        pure
        returns (uint256, uint256, uint256, uint256);

    function getWithdrawalFee(address vault, uint256 size, bool useLlo) external pure returns (uint256);

    function getDepositFee(address vault, uint256 size, bool useLlo) external pure returns (uint256);
}
