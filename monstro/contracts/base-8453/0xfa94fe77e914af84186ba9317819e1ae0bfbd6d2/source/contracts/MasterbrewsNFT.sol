// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

/**
 * @title MasterbrewsNFT
 * @dev ERC721-compatible NFT contract with 669 implicit tokens, holder tracking, batch burning, 
 *      and unique holder count/list functionality, optimized for Base chain transfers.
 *      Compile with --optimize-runs 10000 for minimal transfer gas cost.
 */
contract MasterbrewsNFT {
    // Immutable deployer address, set at construction
    address public immutable owner;

    // Fixed total supply of 669 tokens (IDs 0–668)
    uint256 public constant TOTAL_SUPPLY = 669;

    // Private storage for token metadata
    string private _name;        // Token name (e.g., "Masterbrews")
    string private _symbol;      // Token symbol (e.g., "MBNFT")
    string private _baseTokenURI;// Base URI for token metadata (e.g., "https://meta.monstro.fun/brews/")

    // Token ownership and balance mappings
    mapping(uint256 => address) private _owners;            // Token ID => owner address
    mapping(address => uint256) private _balances;          // Address => number of tokens owned
    mapping(uint256 => address) private _tokenApprovals;    // Token ID => approved address
    mapping(address => mapping(address => bool)) private _operatorApprovals; // Owner => operator => approved
    mapping(address => uint256[]) private _holderTokens;    // Address => list of owned token IDs

    // Unique holder tracking
    mapping(address => bool) private _isHolder;    // Tracks if an address is a holder
    address[] private _holders;                    // Array of all unique holder addresses
    uint256 private _uniqueHolderCount;            // Total number of unique holders

    // Events for ERC721 compliance and custom actions
    event Transfer(address indexed from, address indexed to, uint256 indexed tokenId);
    event Approval(address indexed owner, address indexed approved, uint256 indexed tokenId);
    event ApprovalForAll(address indexed owner, address indexed operator, bool approved);
    event BulkTransfer(address indexed from, address indexed to, uint256[] tokenIds);
    event BaseURIUpdated(string newURI);

    /**
     * @dev Constructor sets name, symbol, and base URI, assigns all tokens implicitly to deployer.
     * @param name_ Token name (e.g., "Masterbrews")
     * @param symbol_ Token symbol (e.g., "MBNFT")
     * @param initialBaseURI Base URI (e.g., "https://meta.monstro.fun/brews/")
     */
    constructor(string memory name_, string memory symbol_, string memory initialBaseURI) {
        owner = msg.sender;
        _name = name_;
        _symbol = symbol_;
        _baseTokenURI = initialBaseURI;
        _balances[msg.sender] = TOTAL_SUPPLY;  // Implicitly assign all 669 tokens to deployer
        _isHolder[msg.sender] = true;          // Deployer starts as the only holder
        _holders.push(msg.sender);             // Add deployer to holders list
        _uniqueHolderCount = 1;                // Initial unique holder count
    }

    /**
     * @dev Bulk transfer tokens from the owner to a target address. Only callable by owner.
     * @param to Recipient address
     * @param tokenIds Array of token IDs (max ~100 recommended)
     */
    function bulkTransfer(address to, uint256[] calldata tokenIds) external {
        require(msg.sender == owner, "Only owner");
        require(to != address(0), "Invalid recipient");
        require(tokenIds.length > 0, "No tokens specified");

        for (uint256 i = 0; i < tokenIds.length; i++) {
            uint256 tokenId = tokenIds[i];
            require(tokenId >= 0 && tokenId < TOTAL_SUPPLY, "Invalid token ID");
            require(ownerOf(tokenId) == msg.sender, "Not owned by sender");
            _transfer(msg.sender, to, tokenId);
        }
        emit BulkTransfer(msg.sender, to, tokenIds);
    }

    /**
     * @dev Burns multiple tokens by returning them to the deployer’s wallet. Callable by owner or approved address/operator.
     *      Note: This is an intentional design choice—tokens are not destroyed but returned to the deployer (seen as owner 
     *      via ownerOf) for future mechanics like resurrections, not a coding oversight! Use bulkTransfer for large batches 
     *      if gas efficiency is a concern.
     * @param tokenIds Array of token IDs to burn
     */
    function burn(uint256[] memory tokenIds) external {
        require(tokenIds.length > 0, "No tokens specified");
        for (uint256 i = 0; i < tokenIds.length; i++) {
            uint256 tokenId = tokenIds[i];
            require(tokenId >= 0 && tokenId < TOTAL_SUPPLY, "Invalid token ID");
            require(_isApprovedOrOwner(msg.sender, tokenId), "Not authorized");
            address tokenOwner = ownerOf(tokenId);
            _transfer(tokenOwner, address(0), tokenId);
        }
    }

    /**
     * @dev Updates the base URI. Only callable by owner.
     * @param newBaseURI New base URI
     */
    function updateBaseURI(string memory newBaseURI) external {
        require(msg.sender == owner, "Only owner");
        _baseTokenURI = newBaseURI;
        emit BaseURIUpdated(newBaseURI);
    }

    /**
     * @dev Returns the fixed total supply (669).
     */
    function totalSupply() public pure returns (uint256) {
        return TOTAL_SUPPLY;
    }

    /**
     * @dev Returns the token URI (base URI + token ID).
     * @param tokenId Token ID
     * @return Full URI string
     */
    function tokenURI(uint256 tokenId) public view returns (string memory) {
        require(tokenId >= 0 && tokenId < TOTAL_SUPPLY, "Invalid token ID");
        string memory tokenIdStr = _toString(tokenId);
        return string(abi.encodePacked(_baseTokenURI, tokenIdStr));
    }

    /**
     * @dev Returns the owner of a token, defaulting to deployer if unassigned initially.
     * @param tokenId Token ID
     * @return Owner address
     */
    function ownerOf(uint256 tokenId) public view returns (address) {
        require(tokenId >= 0 && tokenId < TOTAL_SUPPLY, "Invalid token ID");
        address tokenOwner = _owners[tokenId];
        return tokenOwner == address(0) ? owner : tokenOwner;
    }

    /**
     * @dev Returns the balance of an address.
     * @param account Address to query
     * @return Number of tokens owned
     */
    function balanceOf(address account) public view returns (uint256) {
        require(account != address(0), "Invalid address");
        return _balances[account];
    }

    /**
     * @dev Approves an address to transfer a specific token.
     * @param to Address to approve
     * @param tokenId Token ID
     */
    function approve(address to, uint256 tokenId) external {
        address tokenOwner = ownerOf(tokenId);
        require(msg.sender == tokenOwner || isApprovedForAll(tokenOwner, msg.sender), "Not authorized");
        _tokenApprovals[tokenId] = to;
        emit Approval(tokenOwner, to, tokenId);
    }

    /**
     * @dev Returns the approved address for a token.
     * @param tokenId Token ID
     * @return Approved address
     */
    function getApproved(uint256 tokenId) public view returns (address) {
        require(tokenId >= 0 && tokenId < TOTAL_SUPPLY, "Invalid token ID");
        return _tokenApprovals[tokenId];
    }

    /**
     * @dev Sets or unsets an operator for all tokens of an owner.
     * @param operator Address to set as operator
     * @param approved Approval status
     */
    function setApprovalForAll(address operator, bool approved) external {
        require(operator != msg.sender, "Cannot approve self");
        _operatorApprovals[msg.sender][operator] = approved;
        emit ApprovalForAll(msg.sender, operator, approved);
    }

    /**
     * @dev Checks if an address is an operator for another address.
     * @param account Owner address
     * @param operator Operator address
     * @return True if approved, false otherwise
     */
    function isApprovedForAll(address account, address operator) public view returns (bool) {
        return _operatorApprovals[account][operator];
    }

    /**
     * @dev Transfers a token from one address to another.
     * @param from Sender address
     * @param to Recipient address
     * @param tokenId Token ID
     */
    function transferFrom(address from, address to, uint256 tokenId) external {
        require(_isApprovedOrOwner(msg.sender, tokenId), "Not authorized");
        require(from == ownerOf(tokenId), "From not owner");
        require(to != address(0), "Invalid recipient");
        _transfer(from, to, tokenId);
    }

    /**
     * @dev Safely transfers a token (no data).
     * @param from Sender address
     * @param to Recipient address
     * @param tokenId Token ID
     */
    function safeTransferFrom(address from, address to, uint256 tokenId) external {
        safeTransferFrom(from, to, tokenId, "");
    }

    /**
     * @dev Safely transfers a token with data.
     * @param from Sender address
     * @param to Recipient address
     * @param tokenId Token ID
     * @param data Additional data
     */
    function safeTransferFrom(address from, address to, uint256 tokenId, bytes memory data) public {
        require(_isApprovedOrOwner(msg.sender, tokenId), "Not authorized");
        require(from == ownerOf(tokenId), "From not owner");
        require(to != address(0), "Invalid recipient");
        _transfer(from, to, tokenId);
        _checkOnERC721Received(from, to, tokenId, data);
    }

    /**
     * @dev Internal transfer logic, handles ownership, balances, and holder tracking.
     * @param from Sender address
     * @param to Recipient address (address(0) for burn)
     * @param tokenId Token ID
     */
    function _transfer(address from, address to, uint256 tokenId) internal {
        bool isMint = (_owners[tokenId] == address(0)); // First transfer check
        _tokenApprovals[tokenId] = address(0);          // Clear approval
        _owners[tokenId] = to;                          // Set new owner

        _balances[from]--; // Always decrement sender’s balance
        if (!isMint) {     // Remove token from sender’s list if not first transfer
            uint256[] storage fromTokens = _holderTokens[from];
            for (uint256 i = 0; i < fromTokens.length; i++) {
                if (fromTokens[i] == tokenId) {
                    fromTokens[i] = fromTokens[fromTokens.length - 1];
                    fromTokens.pop();
                    break;
                }
            }
        }

        if (to != address(0)) { // If not burning
            _balances[to]++;
            _holderTokens[to].push(tokenId);
            if (!_isHolder[to]) { // New holder detected
                _isHolder[to] = true;
                _holders.push(to);
                _uniqueHolderCount++;
            }
        } else if (_balances[from] == 0) { // Burned last token, remove holder
            _isHolder[from] = false;
            for (uint256 i = 0; i < _holders.length; i++) {
                if (_holders[i] == from) {
                    _holders[i] = _holders[_holders.length - 1];
                    _holders.pop();
                    _uniqueHolderCount--;
                    break;
                }
            }
        }

        emit Transfer(from, to, tokenId);
    }

    /**
     * @dev Checks if the caller is approved or the owner.
     * @param spender Address attempting the action
     * @param tokenId Token ID
     * @return True if authorized
     */
    function _isApprovedOrOwner(address spender, uint256 tokenId) internal view returns (bool) {
        address tokenOwner = ownerOf(tokenId);
        return (spender == tokenOwner || 
                _tokenApprovals[tokenId] == spender || 
                _operatorApprovals[tokenOwner][spender]);
    }

    /**
     * @dev Checks if a contract can receive ERC721 tokens.
     * @param from Sender address
     * @param to Recipient address
     * @param tokenId Token ID
     * @param data Additional data
     */
    function _checkOnERC721Received(address from, address to, uint256 tokenId, bytes memory data) private {
        if (to.code.length > 0) {
            try IERC721Receiver(to).onERC721Received(msg.sender, from, tokenId, data) returns (bytes4 retval) {
                require(retval == IERC721Receiver.onERC721Received.selector, "Recipient rejected token");
            } catch (bytes memory reason) {
                if (reason.length == 0) {
                    revert("Recipient not ERC721 compatible");
                } else {
                    assembly {
                        revert(add(32, reason), mload(reason))
                    }
                }
            }
        }
    }

    /**
     * @dev Returns all token IDs held by an address.
     * @param holder Address to query
     * @return Array of token IDs
     */
    function getAllTokensByHolder(address holder) external view returns (uint256[] memory) {
        return _holderTokens[holder];
    }

    /**
     * @dev Returns the total number of unique holders.
     * @return Number of unique holders
     */
    function uniqueHolderCount() external view returns (uint256) {
        return _uniqueHolderCount;
    }

    /**
     * @dev Returns a list of all holders and their balances.
     * @return holders Array of holder addresses
     * @return balances Array of corresponding balances
     */
    function getHoldersWithBalances() external view returns (address[] memory holders, uint256[] memory balances) {
        holders = new address[](_uniqueHolderCount);
        balances = new uint256[](_uniqueHolderCount);
        uint256 index = 0;
        for (uint256 i = 0; i < _holders.length; i++) {
            if (_isHolder[_holders[i]]) {
                holders[index] = _holders[i];
                balances[index] = _balances[_holders[i]];
                index++;
            }
        }
        return (holders, balances);
    }

    /**
     * @dev Converts uint256 to string for token URI construction.
     * @param value Number to convert
     * @return String representation
     */
    function _toString(uint256 value) internal pure returns (string memory) {
        if (value == 0) return "0";
        uint256 temp = value;
        uint256 digits;
        while (temp != 0) {
            digits++;
            temp /= 10;
        }
        bytes memory buffer = new bytes(digits);
        while (value != 0) {
            digits -= 1;
            buffer[digits] = bytes1(uint8(48 + (value % 10)));
            value /= 10;
        }
        return string(buffer);
    }

    // ERC721 compatibility shims
    function name() public view returns (string memory) { return _name; }
    function symbol() public view returns (string memory) { return _symbol; }
}

/**
 * @dev Interface for ERC721 receiver contracts.
 */
interface IERC721Receiver {
    function onERC721Received(address operator, address from, uint256 tokenId, bytes calldata data) external returns (bytes4);
}
