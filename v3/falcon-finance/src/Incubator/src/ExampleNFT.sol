// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "./BaseNFT.sol";

contract ExampleNFT is BaseNFT {

    bytes32 public constant INCUBATOR_ROLE = keccak256("INCUBATOR_ROLE");

    function initialize(string memory baseURI) public initializer {
        __BaseNFT_init("Example NFT", "EXMPL", baseURI);
    }

    function mintSpecific(address to, uint256 tokenId) external onlyRole(INCUBATOR_ROLE) {
        if (tokenId == 0 || tokenId > MAX_SUPPLY) {
            revert MaxSupplyExceeded();
        }

        _mint(to, tokenId);
    }

}
