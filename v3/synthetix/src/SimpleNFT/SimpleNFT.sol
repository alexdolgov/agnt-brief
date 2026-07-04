// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @title SimpleNFT
 * @dev A minimal NFT implementation where only the deployer can mint and transfer tokens
 * No OpenZeppelin dependencies
 */
contract SimpleNFT {
    // Contract owner address
    address public owner;
    
    // Token name and symbol
    string public name;
    string public symbol;
    
    // Token counter - starting from 1 to avoid token ID 0
    uint256 private _tokenCounter;
    
    // Mapping from token ID to owner address
    mapping(uint256 => address) private _owners;
    
    // Mapping owner address to token count
    mapping(address => uint256) private _balances;
    
    // Events
    event Transfer(address indexed from, address indexed to, uint256 indexed tokenId);
    event TokenMinted(address indexed to, uint256 indexed tokenId);
    
    /**
     * @dev Initializes the contract by setting name, symbol, and owner
     */
    constructor(string memory _name, string memory _symbol) {
        name = _name;
        symbol = _symbol;
        owner = msg.sender;
    }
    
    /**
     * @dev Modifier to check if the sender is the contract owner
     */
    modifier onlyOwner() {
        require(msg.sender == owner, "Not authorized");
        _;
    }
    
    /**
     * @dev Returns the total number of tokens in existence
     */
    function totalSupply() public view returns (uint256) {
        return _tokenCounter;
    }
    
    /**
     * @dev Returns the number of tokens owned by `account`
     */
    function balanceOf(address account) public view returns (uint256) {
        require(account != address(0), "Balance query for zero address");
        return _balances[account];
    }
    
    /**
     * @dev Returns the owner of the `tokenId` token
     */
    function ownerOf(uint256 tokenId) public view returns (address) {
        address tokenOwner = _owners[tokenId];
        require(tokenOwner != address(0), "Token does not exist");
        return tokenOwner;
    }
    
    /**
     * @dev Mints a new token to the specified address
     * Only the contract owner can call this function
     * Token IDs start at 1 instead of 0
     */
    function mint(address to) public onlyOwner returns (uint256) {
        require(to != address(0), "Mint to zero address");
        
        _tokenCounter++;
        uint256 newTokenId = _tokenCounter;
        
        _owners[newTokenId] = to;
        _balances[to]++;
        
        emit Transfer(address(0), to, newTokenId);
        emit TokenMinted(to, newTokenId);
        
        return newTokenId;
    }
    
    /**
     * @dev Transfers token from one address to another
     * Only the contract owner can call this function
     */
    function transferFrom(address from, address to, uint256 tokenId) public {
        // Check if the sender is the owner of the contract
        require(msg.sender == owner, "Only contract owner can transfer tokens");
        require(from != address(0), "Transfer from zero address");
        require(to != address(0), "Transfer to zero address");
        require(_owners[tokenId] == from, "From address is not the owner");
        
        _owners[tokenId] = to;
        _balances[from]--;
        _balances[to]++;
        
        emit Transfer(from, to, tokenId);
    }
    
    /**
     * @dev Returns whether token exists
     */
    function exists(uint256 tokenId) public view returns (bool) {
        return _owners[tokenId] != address(0);
    }
    
    /**
     * @dev Allows the current owner to transfer control of the contract to a new owner
     */
    function transferOwnership(address newOwner) public onlyOwner {
        require(newOwner != address(0), "New owner is the zero address");
        owner = newOwner;
    }
    
    /**
     * @dev Gets the token IDs owned by an address
     * Helper function for frontends
     */
    function tokensOfOwner(address tokenOwner) public view returns (uint256[] memory) {
        uint256 tokenCount = balanceOf(tokenOwner);
        
        if (tokenCount == 0) {
            return new uint256[](0);
        }
        
        uint256[] memory result = new uint256[](tokenCount);
        uint256 resultIndex = 0;
        
        // Loop through all possible token IDs
        for (uint256 i = 1; i <= _tokenCounter; i++) {
            if (_owners[i] == tokenOwner) {
                result[resultIndex] = i;
                resultIndex++;
            }
        }
        
        return result;
    }
}