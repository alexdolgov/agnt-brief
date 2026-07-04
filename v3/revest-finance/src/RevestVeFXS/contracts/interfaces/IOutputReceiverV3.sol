// SPDX-License-Identifier: GNU-GPL v3.0 or later

pragma solidity >=0.8.0;

import "./IOutputReceiverV2.sol";

/**
 * @title Provider interface for Revest FNFTs
 */
interface IOutputReceiverV3 is IOutputReceiverV2 {
    event DepositERC20OutputReceiver(
        address indexed mintTo, address indexed token, uint256 amountTokens, uint256 indexed fnftId, bytes extraData
    );

    event DepositERC721OutputReceiver(
        address indexed mintTo, address indexed token, uint256[] tokenIds, uint256 indexed fnftId, bytes extraData
    );

    event DepositERC1155OutputReceiver(
        address indexed mintTo,
        address indexed token,
        uint256 tokenId,
        uint256 amountTokens,
        uint256 indexed fnftId,
        bytes extraData
    );

    event WithdrawERC20OutputReceiver(
        address indexed caller, address indexed token, uint256 amountTokens, uint256 indexed fnftId, bytes extraData
    );

    event WithdrawERC721OutputReceiver(
        address indexed caller, address indexed token, uint256[] tokenIds, uint256 indexed fnftId, bytes extraData
    );

    event WithdrawERC1155OutputReceiver(
        address indexed caller,
        address indexed token,
        uint256 tokenId,
        uint256 amountTokens,
        uint256 indexed fnftId,
        bytes extraData
    );

    function handleTimelockExtensions(uint256 fnftId, uint256 expiration, address caller) external;

    function handleAdditionalDeposit(uint256 fnftId, uint256 amountToDeposit, uint256 quantity, address caller)
        external;

    function handleSplitOperation(uint256 fnftId, uint256[] memory proportions, uint256 quantity, address caller)
        external;
}
