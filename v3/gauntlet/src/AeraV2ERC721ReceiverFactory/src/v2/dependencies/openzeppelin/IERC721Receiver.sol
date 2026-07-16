// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.21;

interface IERC721Receiver {
    function onERC721Received(
        address operator,
        address from,
        uint256 tokenId,
        bytes calldata data
    ) external returns (bytes4);
}