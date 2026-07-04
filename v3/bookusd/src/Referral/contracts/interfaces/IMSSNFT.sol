// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

interface IMSSNFT {
    function safeMint(address to) external returns (uint256);

    function setOperator(address _operator) external;

    function tokenURI(uint256 tokenId) external view returns (string memory);

    function balanceOf(address owner) external view returns (uint256);
}
