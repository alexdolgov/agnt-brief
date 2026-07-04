// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.22;

import { ERC721Upgradeable } from "@openzeppelin/contracts-upgradeable/token/ERC721/ERC721Upgradeable.sol";
import { ERC721EnumerableUpgradeable } from "@openzeppelin/contracts-upgradeable/token/ERC721/extensions/ERC721EnumerableUpgradeable.sol";
import { Strings } from "@openzeppelin/contracts/utils/Strings.sol";

import { Initializable } from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import { OwnableUpgradeable } from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";

contract MSSNFT is Initializable, ERC721Upgradeable, ERC721EnumerableUpgradeable, OwnableUpgradeable {
    uint256 private _nextTokenId;

    address public operator;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(address initialOwner) public initializer {
        __ERC721_init("MintStakeShare NFT", "MSSNFT");
        __ERC721Enumerable_init();
        __Ownable_init(initialOwner);
    }

    function _baseURI() internal pure override returns (string memory) {
        return "https://www.mssnft.com/api/metadata/";
    }

    function setOperator(address _operator) public onlyOwner {
        operator = _operator;
    }

    function tokenURI(uint256 tokenId) public view override(ERC721Upgradeable) returns (string memory) {
        _requireOwned(tokenId);
        string memory baseURI = _baseURI();
        // string memory tokenstring = string.concat(Strings.toString(tokenId), ".json");
        return bytes(baseURI).length > 0 ? string.concat(baseURI, Strings.toString(tokenId)) : "";
    }

    function safeMint(address to) public returns (uint256) {
        require(msg.sender == operator || msg.sender == owner(), "MSSNFT: Only operator/owner can mint");
        require(balanceOf(to) == 0, "MSSNFT: Only one NFT per address");
        uint256 tokenId = _nextTokenId++;
        _safeMint(to, tokenId);
        return tokenId;
    }

    function _checkAuthorized(address owner, address spender, uint256 tokenId) internal view override {
        if (owner != address(0)) {
            revert("Cannot transfer NFTs");
        }
        super._checkAuthorized(owner, spender, tokenId);
    }

    // The following functions are overrides required by Solidity.

    function _update(
        address to,
        uint256 tokenId,
        address auth
    ) internal override(ERC721Upgradeable, ERC721EnumerableUpgradeable) returns (address) {
        return super._update(to, tokenId, auth);
    }

    function _increaseBalance(
        address account,
        uint128 value
    ) internal override(ERC721Upgradeable, ERC721EnumerableUpgradeable) {
        super._increaseBalance(account, value);
    }

    function supportsInterface(
        bytes4 interfaceId
    ) public view override(ERC721Upgradeable, ERC721EnumerableUpgradeable) returns (bool) {
        return super.supportsInterface(interfaceId);
    }
}
