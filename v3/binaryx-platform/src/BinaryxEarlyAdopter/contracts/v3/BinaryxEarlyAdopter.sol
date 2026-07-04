pragma solidity ^0.8.12;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import {Strings} from "@openzeppelin/contracts/utils/Strings.sol";

contract BinaryxEarlyAdopter is ERC721, Ownable {
  using Counters for Counters.Counter;
  Counters.Counter private _tokenIds;

  string public baseUri;
  mapping(address => bool) public isAllowed;
  mapping(address => bool) public isReceived;
  uint256 public maxSupply;

  constructor(uint _maxSupply) ERC721("Binaryx Early Adopter", "Binaryx Early Adopter") {
    baseUri = "https://ipfs.io/ipfs/QmUz1rQiV1NQcjTTSGFX5fqBpY2mR3s3VFeuGyeWsAXdVs/";
    maxSupply = _maxSupply;
  }

  function _baseURI() internal override view virtual returns (string memory) {
    return baseUri;
  }

  function setURI(string memory _new) external onlyOwner {
    baseUri = _new;
  }

  function tokenURI(uint256 tokenId) public view virtual override returns (string memory) {
    _requireMinted(tokenId);

    string memory baseURI = _baseURI();
    return string.concat(
      baseUri, Strings.toString(tokenId), ".json"
    );
  }

  function setAllowed(address[] memory list) external onlyOwner {
    for(uint i = 0; i < list.length; i++) {
      isAllowed[list[i]] = true;
    }
  }

  function mint() external {
    require(isAllowed[msg.sender], "BinaryxEarlyAdopter: sender is not allowed");
    uint tokenId = _tokenIds.current();
    require(!isReceived[msg.sender], "BinaryxEarlyAdopter: already rewarded");
    require(tokenId < maxSupply, "BinaryxEarlyAdopter: sold out");

    _safeMint(msg.sender, tokenId);
    isReceived[msg.sender] = true;
    _tokenIds.increment();
  }
}
