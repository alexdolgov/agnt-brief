// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/access/Ownable.sol";

import "./NFTSwap.sol";

contract NFTBulkMinter is Ownable {
    IERC20 private immutable tngbl;
    PassiveIncomeNFT private immutable nft;

    constructor(address tngblAddress, address nftAddress) {
        tngbl = IERC20(tngblAddress);
        nft = PassiveIncomeNFT(nftAddress);
    }

    function mint(address[] calldata addresses, uint256[] calldata amounts)
        external
        onlyOwner
    {
        tngbl.approve(address(nft), tngbl.balanceOf(address(this)));
        uint256 len = addresses.length;
        for (uint256 i = 0; i < len; i++) {
            nft.mint(addresses[i], amounts[i], 48, false, true);
        }
    }

    function requiredForMint(
        address[] calldata addresses,
        uint256[] calldata amounts
    ) external pure returns (uint256 total) {
        uint256 len = addresses.length;
        for (uint256 i = 0; i < len; i++) {
            total += amounts[i];
        }
    }

    function withdrawLostTokens(address erc20) external onlyOwner {
        IERC20 token = IERC20(erc20);
        token.transfer(msg.sender, token.balanceOf(address(this)));
    }
}
