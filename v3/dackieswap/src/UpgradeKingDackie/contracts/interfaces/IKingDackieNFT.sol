// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/IERC721.sol";

interface IKingDackieNFT is IERC721 {
    function totalSupply() external view returns (uint256);
    function mint(address _address) external;
    function burn(uint256 _tokenId) external;
}
