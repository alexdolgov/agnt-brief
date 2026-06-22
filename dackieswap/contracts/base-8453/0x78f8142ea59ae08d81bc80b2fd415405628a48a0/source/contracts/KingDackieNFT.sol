// SPDX-License-Identifier: MIT
pragma solidity ^0.8.12;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/utils/Strings.sol";


contract KingDackieNFT is ERC721, ERC721Enumerable, Ownable {
    // Setup
    using Counters for Counters.Counter;
    Counters.Counter private _tokenSupply;

    // Private Properties
    string private _baseTokenURI;

    address public upgradeContract;

    // Events
    event Minted(address indexed _to);
    event Burned(uint256 _tokenId);
    event UpgradeContract(address _upgradeContract);

    constructor(string memory _uri) ERC721("King Dackie", "KingDACKIE") {
        _baseTokenURI = _uri;
    }

    // mint
    function mint(address _address)
    public
    onlyUpgradeContract
    {
        _tokenSupply.increment();
        _safeMint(_address, totalSupply());
        emit Minted(_address);
    }

    function totalSupply() public view override(ERC721Enumerable)  returns (uint) {
        return _tokenSupply.current();
    }

    function _baseURI() internal view virtual override returns (string memory) {
        return _baseTokenURI;
    }

    function setBaseURI(string memory baseURI) public onlyOwner {
        _baseTokenURI = baseURI;
    }

    function _beforeTokenTransfer(address from, address to, uint256 tokenId, uint256 _batchSize)
    internal
    override(ERC721, ERC721Enumerable)
    {
        super._beforeTokenTransfer(from, to, tokenId, _batchSize);
    }

    function supportsInterface(bytes4 interfaceId)
    public
    view
    override(ERC721, ERC721Enumerable)
    returns (bool)
    {
        return super.supportsInterface(interfaceId);
    }

    function tokenURI(uint256 tokenId) public view virtual override returns (string memory) {
        _requireMinted(tokenId);
        string memory baseURI = _baseURI();
        return bytes(baseURI).length > 0 ? string(abi.encodePacked(baseURI)) : "";
    }

    function setUpgradeContract(address _upgradeContract) public onlyOwner {
        upgradeContract = _upgradeContract;
        emit UpgradeContract(_upgradeContract);
    }

    modifier onlyUpgradeContract() {
        require(msg.sender == upgradeContract, "Not authorized");
        _;
    }

    function burn(uint256 _tokenId) public onlyUpgradeContract{
        // Only the owner or approved can burn the token
        _burn(_tokenId);
        emit Burned(_tokenId);
    }
}
