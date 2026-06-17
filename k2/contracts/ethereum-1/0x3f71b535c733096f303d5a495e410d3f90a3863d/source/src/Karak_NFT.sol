// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
contract KarakNFT is ERC721, Ownable, ERC721URIStorage {
    uint256 private _tokenIdCounter;
    address public claimContract;
    address public uriManager;
    
    enum Tier { Bronze, Silver, Gold, Diamond }
    
    // Mapping from token ID to its tier
    mapping(uint256 => Tier) public tokenTiers;

    event NFTClaimed(address indexed user, uint256 tokenId, Tier tier);
    
    // Modifier to restrict minting to Claim contract only
    modifier onlyClaimContract() {
        require(msg.sender == claimContract, "Only ClaimContract can mint");
        _;
    }

    modifier onlyURIManager() {
        require(msg.sender == uriManager, "Only UriManager can set uri");
        _;
    }
    
    constructor() ERC721("TieredNFT", "TNFT") Ownable(msg.sender) {
        _tokenIdCounter = 1; // Start from 1 instead of 0
    }
    
    // Set the Claim contract address (can only be set once)
    function setClaimContract(address _claimContract) external onlyOwner {
        require(claimContract == address(0), "Claim contract already set");
        require(_claimContract != address(0), "Invalid address");
        claimContract = _claimContract;
    }

    function setUriManager(address _uriManager) external onlyOwner {
        require(uriManager == address(0), "URI manager already set");
        require(_uriManager != address(0), "Invalid address");
        uriManager = _uriManager;
    }
    
    // Mint function restricted to Claim contract
    function mint(address to, Tier tier) external onlyClaimContract returns (uint256) {
        uint256 tokenId = _tokenIdCounter;
        _tokenIdCounter++;
        
        _safeMint(to, tokenId);
        tokenTiers[tokenId] = tier;
        emit NFTClaimed(to, tokenId, tier);
        return tokenId;
    }

    function setTokenURI(uint256 tokenId, string memory uri) external onlyURIManager {
        require(tokenId < _tokenIdCounter, "URI set for nonexistent token");
        _setTokenURI(tokenId, uri);
    }

     // Override tokenURI
    function tokenURI(uint256 tokenId) 
        public 
        view 
        override(ERC721, ERC721URIStorage) 
        returns (string memory) 
    {
        return super.tokenURI(tokenId);
    }

    // Override supportsInterface
    function supportsInterface(bytes4 interfaceId)
        public
        view
        override(ERC721, ERC721URIStorage)
        returns (bool)
    {
        return super.supportsInterface(interfaceId);
    }
    
    // Get tier of a specific token
    function getTier(uint256 tokenId) public view returns (Tier) {
         require(tokenId < _tokenIdCounter && tokenId > 0, "Token does not exist");
        return tokenTiers[tokenId];
    }
}