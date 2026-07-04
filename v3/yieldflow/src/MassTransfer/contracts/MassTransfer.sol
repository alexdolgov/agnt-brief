// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

interface IERC721Enumerable {
    function tokenOfOwnerByIndex(address owner, uint256 index) external view returns (uint256);
    function safeTransferFrom(address from, address to, uint256 tokenId) external;
    function isApprovedForAll(address owner, address operator) external view returns (bool);
}

contract MassTransfer {
    address public nft;
    address public owner;

    constructor()
    {
        owner = msg.sender;
    }

    function transferMany(uint256 count, address recipient) external {
        IERC721Enumerable token = IERC721Enumerable(nft);
        require(token.isApprovedForAll(msg.sender, address(this)), "Approval required");

        for (uint256 i = 0; i < count; i++) {
            uint256 tokenId = token.tokenOfOwnerByIndex(msg.sender, 0); // always index 0
            token.safeTransferFrom(msg.sender, recipient, tokenId);
        }
    }

    function changeOwner(address newOwner) public {
        require(msg.sender == owner, "not owner");
        owner = newOwner;
    }

    function changeNft(address newNft) public {
        require(msg.sender == owner, "not owner");
        nft = newNft;
    }
}
