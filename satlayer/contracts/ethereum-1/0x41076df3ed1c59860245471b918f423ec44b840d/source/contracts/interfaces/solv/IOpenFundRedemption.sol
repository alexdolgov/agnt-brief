// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.25;

interface IOpenFundRedemption {
    function balanceOf(uint256 tokenId_) external view returns (uint256);

    function claimTo(address to_, uint256 tokenId_, address currency_, uint256 claimValue_) external;
}
