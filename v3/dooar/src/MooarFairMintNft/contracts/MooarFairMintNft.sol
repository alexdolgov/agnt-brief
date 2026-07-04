// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "./IERC173.sol";
import "./TransferHelper.sol";

contract MooarFairMintNft is ERC721Enumerable, Ownable {
    address private _mooar;
    string  private _baseTokenURI;
    string  private _tokenSuffix;
    uint256 private _maxSupply;
    uint256 private _idx;

    constructor(
        string memory name,
        string memory symbol,
        string memory baseURI,
        string memory tokenSuffix,
        address owner,
        uint256 startIdx,
        uint256 maxSupply_) ERC721(name, symbol)
    {
        _mooar = _msgSender();
        _baseTokenURI = baseURI;
        _tokenSuffix = tokenSuffix;
        _maxSupply = maxSupply_;
        _idx = startIdx;

        _transferOwnership(owner);
    }

    modifier onlyMooar() {
        require(_msgSender() == _mooar, "Only for mooar");
        _;
    }

    function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {
        return interfaceId == type(IERC173).interfaceId || super.supportsInterface(interfaceId);
    }

    function maxSupply() external view returns(uint256) {
        return _maxSupply;
    }

    function setBaseUri(string memory baseURI, string memory tokenSuffix) external onlyOwner {
        _baseTokenURI = baseURI;
        _tokenSuffix = tokenSuffix;
    }

    function tokenURI(uint256 tokenId) public view virtual override returns (string memory) {
        string memory uri = super.tokenURI(tokenId);
        return bytes(_tokenSuffix).length > 0 ? string(abi.encodePacked(uri, _tokenSuffix)) : uri;
    }

    function burn(uint256 tokenId) external virtual {
        require(
            _isApprovedOrOwner(_msgSender(), tokenId),
            "Burn caller is not owner nor approved"
        );
        _burn(tokenId);
    }

    function _baseURI() internal view virtual override returns(string memory) {
        return _baseTokenURI;
    }

    function mint(
        address to,
        uint256 mintNumber) onlyMooar external {

        require(_idx + mintNumber <= _maxSupply, "Exceed max supply");

        for (uint256 i = 0; i < mintNumber; i++) {
            _safeMint(to, _idx);
            _idx += 1;
        }
    }
}
