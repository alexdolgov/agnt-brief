// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import { Marionette } from "../libraries/Marionette.sol";

interface IAdapter {
    function beforeInitialize(
        address sender,
        Marionette.VoteConfig memory defaultVoteConfig,
        Marionette.RewardConfig memory defaultRewardConfig,
        Marionette.LockConfig memory defaultLockConfig,
        bytes calldata adapterData
    ) external returns (bytes4);

    function beforeTransfer(address from, address to, uint256 veId, bytes calldata adapterData)
        external
        returns (bytes4);

    function beforeSetDefaultConfig(
        address sender,
        Marionette.ConfigType calldata configType,
        bytes calldata configData,
        bytes calldata adapterData
    ) external returns (bytes4);

    function beforeSetCustomConfig(
        address sender,
        uint256 tokenId,
        Marionette.ConfigType calldata configType,
        bytes calldata configData,
        bytes calldata adapterData
    ) external returns (bytes4);

    function beforeSwap(address sender, bytes calldata adapterData) external returns (bytes4);

    function beforeClaim(address sender, uint256 veId, bytes calldata adapterData) external returns (bytes4);

    function beforePause(address sender, bool paused, bytes calldata adapterData) external returns (bytes4);

    function execute(address sender, bytes calldata adapterData) external returns (bytes4);

    function increaseMany(uint256[] memory veNFTs, uint256[] memory amounts, address depositor, bool pullToken)
        external;
}
