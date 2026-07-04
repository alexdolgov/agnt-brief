// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.21;

import {IVault} from "./IVault.sol";

event StartedWithdrawal(
    address indexed vault, address indexed staker, address indexed operator, address withdrawer, uint256 shares
);

event FinishedWithdrawal(
    address indexed vault,
    address indexed staker,
    address indexed operator,
    address withdrawer,
    uint256 shares,
    bytes32 withdrawRoot
);

event NewVault(address indexed vault);

event GaveShares(address indexed staker, address indexed vault, address shareToken, uint256 shares);

event ReturnedShares(address indexed staker, address indexed vault, address shareToken, uint256 shares);

event VaultSwap(
    address indexed vault,
    address indexed oldAsset,
    address indexed newAsset,
    uint256 oldAssetIn,
    uint256 newAssetOut,
    string newName,
    string newSymbol,
    IVault.AssetType newAssetType,
    uint256 newAssetLimit
);
