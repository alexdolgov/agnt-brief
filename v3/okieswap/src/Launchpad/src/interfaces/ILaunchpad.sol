// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.10;

import "./IDataVault.sol";

interface ILaunchpad {
    struct MetadataParams {
        string telegramLink;
        string twitterLink;
        string websiteLink;
        string data;
    }

    /// @notice Error when transfer fails
    error TransferFailed();

    /// @notice Error when an invalid amount is provided
    error InvalidAmount();

    function dataVault() external view returns (IDataVault);

    function launch(
        address tokenFactoty,
        uint256 initialBuyAmount,
        address creator,
        string memory name,
        string memory symbol,
        string memory description,
        string memory imageUri,
        MetadataParams calldata metadataParams
    ) external payable returns (address);
}
