// SPDX-License-Identifier: MIT
pragma solidity >=0.7.6;
pragma abicoder v2;

interface IFeeManager {
    struct Fee {
        string feeIdentifier;
        uint256 feeValue;
    }

    function setFeeAndWithdrawalPermission(
        address vault,
        string[] memory feeIdentifier,
        uint256[] memory feeValue,
        address[] memory withdrawer
    ) external;

    function setDefaultFeeAndWithdrawalPermission(
        address vault,
        uint256 totalVaultFees,
        string[] memory feeIdentifier,
        uint256[] memory feeValue,
        address[] memory withdrawer
    ) external;

    function withdrawFee(address vault, string memory feeIdentifier) external;

    function getFees(address vault) external view returns (Fee[] memory);

    function vaultTotalFees(address vault) external view returns (uint256);

    function setMigratedVaultFeeAndWithdrawalPermission() external;

    function withdrawalPermissions(
        address vault,
        string memory feeIdentifier
    ) external view returns (address);
}
