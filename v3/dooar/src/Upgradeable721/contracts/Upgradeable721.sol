// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC721/extensions/ERC721EnumerableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC721/extensions/ERC721BurnableUpgradeable.sol";
import "./IGateV2.sol";

contract Upgradeable721 is Initializable, ERC721EnumerableUpgradeable, ERC721BurnableUpgradeable, OwnableUpgradeable {

    address private _gate;

    string private _baseTokenURI;
    string private _tokenSuffix;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(
        string memory name,
        string memory symbol,
        string memory tokenUri,
        string memory tokenSuffix
    ) initializer public {
        __ERC721_init(name, symbol);
        __Ownable_init(msg.sender);
        __ERC721Enumerable_init();
        __ERC721Burnable_init();
        _baseTokenURI = tokenUri;
        _tokenSuffix = tokenSuffix;
    }

    function initializeV2(
       address owner
    ) reinitializer(2) public {
        __Ownable_init(owner);
    }

    function supportsInterface(bytes4 interfaceId)
    public view override(ERC721EnumerableUpgradeable, ERC721Upgradeable) returns (bool) {
        return ERC721EnumerableUpgradeable.supportsInterface(interfaceId);
    }

    function _increaseBalance(address account, uint128 amount)
    internal virtual override(ERC721EnumerableUpgradeable, ERC721Upgradeable) {
        ERC721EnumerableUpgradeable._increaseBalance(account, amount);
    }

    function tokenURI(uint256 tokenId) public view virtual override returns (string memory) {
        string memory uri = super.tokenURI(tokenId);
        return bytes(_tokenSuffix).length > 0 ? string(abi.encodePacked(uri, _tokenSuffix)) : uri;
    }

    function _baseURI() internal view override returns (string memory) {
        return _baseTokenURI;
    }

    function _update(address to, uint256 tokenId, address auth)
    internal override(ERC721EnumerableUpgradeable, ERC721Upgradeable) returns (address) {
        address previousOwner = super._update(to, tokenId, auth);
        if (_gate != address(0)) {
            uint256[] memory ids = new uint256[](1);
            ids[0] = tokenId;
            uint256[] memory values = new uint256[](1);
            values[0] = 1;
            IGateV2(_gate).check(previousOwner, to, ids, values, msg.sender, address(this));
        }
        return previousOwner;
    }

    function setGate(address addr) public onlyOwner {
        _gate = addr;
    }

    function mint(address to, uint256 tokenId) public onlyOwner {
        _mint(to, tokenId);
    }

    function mintBatch(address[] memory tos, uint256[] memory tokenIds) public onlyOwner {
        require(tos.length == tokenIds.length, "Invalid input length");
        for (uint256 i = 0; i < tos.length; i++) {
            _mint(tos[i], tokenIds[i]);
        }
    }

    function setBaseURI(string memory baseURI) public onlyOwner {
        _baseTokenURI = baseURI;
    }

    function getGate() external view returns (address) {
        return _gate;
    }
}
