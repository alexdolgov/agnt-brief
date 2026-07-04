//SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import "./Base.sol";
import "./SeMetis.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC721/ERC721Upgradeable.sol";

/// @title InviterNFT
/// @notice InviterNFT is the contract that mints NFT for users who have at least 1 eMetis/seMetis
contract InviterNFT is Base, ERC721Upgradeable {
    uint256 nextTokenId;
    mapping(address => uint256) public ownerTokenId;

    /// @notice initialize the contract
    /// @param _config config contract address
    function initialize(address _config) external initializer {
        __Base_init(_config, new address[](0));
        __ERC721_init("ENKI Inviter NFT", "INVITER");
    }

    /// @notice mint the NFT by user who has at least 1 eMetis/seMetis
    function mint() external {
        address to = _msgSender();
        require(balanceOf(to) == 0, "InviterNFT: already minted");

        uint256 eMetisBalance = IERC20(config.eMetis()).balanceOf(to);
        SeMetis seMetis = SeMetis(payable(config.seMetis()));
        uint256 seMetisBalance = seMetis.balanceOf(to);
        uint256 eMetisInVault = seMetisBalance * seMetis.totalAssets() / seMetis.totalSupply();
        require(eMetisBalance + eMetisInVault >= 1 ether, "InviterNFT: insufficient eMetis/seMetis");

        uint256 tokenId = nextTokenId++;
        ownerTokenId[to] = tokenId;
        _mint(to, tokenId);
    }

    // non-transferable
    function _beforeTokenTransfer(address from, address to, uint256 firstTokenId, uint256 batchSize) internal override {
        require(from == address(0), "InviterNFT: transfer not allowed");
    }
}