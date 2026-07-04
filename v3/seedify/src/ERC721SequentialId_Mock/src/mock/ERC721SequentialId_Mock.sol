// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.23;

import {ERC721SequentialId} from "../ino/nft/ERC721SequentialId.sol";

contract ERC721SequentialId_Mock is ERC721SequentialId {
    function exposed_nextTokenId() public view returns (uint256) {
        return _nextTokenId();
    }

    function workaround_mint(address to, uint256 quantity) external {
        _mint(to, quantity);
    }

    function exposed_totalMinted() public view returns (uint256) {
        return _totalMinted();
    }

    function workaround_burn(uint256 tokenId) public {
        _burn(tokenId);
    }
}
