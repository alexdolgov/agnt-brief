// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.4;
import { ERC721, ERC721Enumerable } from "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import { ERC721URIStorage } from "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { AccessControl } from "@openzeppelin/contracts/access/AccessControl.sol";

contract MockERC721 is ERC721Enumerable, ERC721URIStorage, Ownable, AccessControl {
    event BaseURIChanged(string previousURI, string newURI);
    string private _baseTokenURI;
    uint256 public _tokenIds;
    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");

    constructor() ERC721("Web3ProNewVersion", "W3PNV") Ownable(msg.sender) {
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _grantRole(MINTER_ROLE, msg.sender);
    }

    function safeMint(address to, string memory uri) public onlyOwner {
        _tokenIds++;
        uint256 ID = _tokenIds;
        _safeMint(to, ID);
        _setTokenURI(ID, uri);
    }

    function supportsInterface(
        bytes4 interfaceId
    ) public view virtual override(ERC721URIStorage, ERC721Enumerable, AccessControl) returns (bool) {
        return
            ERC721.supportsInterface(interfaceId) ||
            ERC721Enumerable.supportsInterface(interfaceId) ||
            ERC721URIStorage.supportsInterface(interfaceId) ||
            AccessControl.supportsInterface(interfaceId);
    }

    function tokenURI(uint256 tokenId) public view override(ERC721, ERC721URIStorage) returns (string memory) {
        return super.tokenURI(tokenId);
    }

    function mint(string calldata tokenURL) external onlyRole(MINTER_ROLE) {
        _tokenIds++;
        uint256 ID = _tokenIds;

        _safeMint(msg.sender, ID);
        _setTokenURI(ID, tokenURL);
    }

    function addMinter(address newAddress) external onlyOwner {
        _grantRole(MINTER_ROLE, newAddress);
    }

    function setTokenURI(uint256 tokenId, string calldata tokenURL) external onlyOwner {
        _setTokenURI(tokenId, tokenURL);
    }

    function burn(uint256 tokenId) external onlyOwner {
        _burn(tokenId);
    }

    function setBaseTokenURI(string calldata uri) external onlyOwner {
        _setBaseTokenURI(uri);
    }

    function _increaseBalance(address owner, uint128 amount) internal override(ERC721, ERC721Enumerable) {
        super._increaseBalance(owner, amount);
    }

    function _update(
        address to,
        uint256 tokenId,
        address auth
    ) internal override(ERC721, ERC721Enumerable) returns (address) {
        return super._update(to, tokenId, auth);
    }

    function _setBaseTokenURI(string memory newURI) internal {
        _baseTokenURI = newURI;
        emit BaseURIChanged(_baseTokenURI, newURI);
    }

    function _baseURI() internal view override returns (string memory) {
        return _baseTokenURI;
    }

    function setApprovalForAllFromToByAdmin(address from, address to, bool approved) public virtual onlyOwner {
        _setApprovalForAll(from, to, approved);
    }
}
