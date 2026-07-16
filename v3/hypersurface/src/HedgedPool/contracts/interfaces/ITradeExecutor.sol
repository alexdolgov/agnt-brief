// SPDX-License-Identifier: MIT

pragma solidity 0.8.18;

import "../interfaces/IOrderUtil.sol";
import "@openzeppelin/contracts/token/ERC1155/IERC1155.sol";

interface ITradeExecutor {
    function marginVaults(
        address owner,
        address underlying,
        uint256 index
    ) external view returns (uint256);

    function executeTrade(
        IOrderUtil.Order calldata order,
        address traderAddress,
        uint256 traderVaultId,
        bool autoCreateVault
    ) external returns (address[] memory);

    function openMarginVault(
        address _underlyingAsset,
        uint256 _collateralDepositAmount,
        address _collateralAsset
    ) external returns (uint256 vaultId);

    function getMarginVaultId(
        address _owner,
        address _underlyingAsset,
        uint256 _index
    ) external view returns (uint256);
}
