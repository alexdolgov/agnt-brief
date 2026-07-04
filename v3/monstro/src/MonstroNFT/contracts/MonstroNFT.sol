// SPDX-License-Identifier: MIT

pragma solidity ^0.8.26;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/**
 * @title MonstroNFT
 * @dev ERC721 token with dynamic metadata, burn and whitelist functionality.
 */
contract MonstroNFT is ERC721, Ownable {
    uint256 private _currentTokenId;
    uint256 private _totalSupply;
    uint256[] private _typeList;
    uint256 private _typeCount = 0;
    uint256 public totalUniqueHolders;

    address[] private _whitelistedAddresses; // Array to store whitelisted addresses

    mapping(uint256 => string) private _tokenURIs; // Token ID to token URI
    mapping(uint256 => string) private _tokenTypes; // Mapping from type ID to metadata URI
    mapping(uint256 => string) private _typeNames; // Mapping from type ID to type name
    mapping(uint256 => uint256) private _tokenIdToTypeId; // Mapping from token ID to type ID
    mapping(address => bool) private _whitelist; // Whitelist for approved contracts
    mapping(uint256 => uint256) private _typeSupply; // Supply of NFTs per type
    mapping(address => mapping(uint256 => bool)) private _holdersByType; // Track holders by type ID
    mapping(uint256 => address[]) private _uniqueHoldersByType; // Unique holders by type ID
    mapping(address => mapping(uint256 => uint256)) private _balancesByType; // Balance of NFTs held by holder by type ID
    mapping(address => uint256[]) private _holderTokens; // Mapping to track which tokens a holder owns

    struct HolderInfo {
        address holder;
        uint256 balance;
    }

    struct HolderCountInfo {
        uint256 typeId;
        uint256 count;
    }

    struct TypeInfo {
        uint256 typeId;
        string name;
        string metadataURI;
    }

    struct WhitelistInfo {
        address wallet;
        bool isWhitelisted;
    }

    struct HolderBalanceInfo {
        uint256 typeId;
        uint256 balance;
    }

    event TypeCreated(uint256 indexed typeId, string metadataURI, string name);
    event TypeUpdated(uint256 indexed typeId, string metadataURI, string name);
    event Minted(address indexed to, uint256[] tokenIds, uint256 typeId);
    event Airdrop(
        address indexed sender,
        address[] recipients,
        uint256[] typeIds
    );
    event WhitelistUpdated(address indexed account, bool status);
    event Burned(address indexed owner, uint256 indexed tokenId);
    event BatchTransfer(
        address indexed from,
        address indexed to,
        uint256[] tokenIds
    );
    event TokenURIUpdated(uint256 indexed tokenId, string newURI);
    event HolderAdded(address indexed holder, uint256 indexed typeId);
    event HolderRemoved(address indexed holder, uint256 indexed typeId);
    event TypeSupplyUpdated(uint256 indexed typeId, uint256 newSupply);

    constructor(
        string memory name,
        string memory symbol
    ) ERC721(name, symbol) Ownable(msg.sender) {
        _whitelist[msg.sender] = true;
    }

    /**
     * @dev Define a new NFT type with a metadata URI and a name.
     *      Ensures that the type ID has not been used before.
     * @param typeId The ID for the new NFT type.
     * @param metadataURI The metadata URI for this type.
     * @param name The name for this type.
     */
    function createType(
        uint256 typeId,
        string memory metadataURI,
        string memory name
    ) external onlyOwner {
        require(bytes(_tokenTypes[typeId]).length == 0, "Type already exists"); // Ensure the type is not already created

        _tokenTypes[typeId] = metadataURI; // Store the metadata URI
        _typeNames[typeId] = name; // Store the type name
        _typeList.push(typeId); // Add the type id to the list
        _typeCount++; // Increment the count of unique types

        emit TypeCreated(typeId, metadataURI, name);
    }

    /**
     * @dev Update an existing NFT type's name or metadata URI.
     *      Ensures the type ID exists before updating.
     * @param typeId The ID of the NFT type to update.
     * @param metadataURI The updated metadata URI for this type.
     * @param name The updated name for this type.
     */
    function updateType(
        uint256 typeId,
        string memory metadataURI,
        string memory name
    ) external onlyOwner {
        require(bytes(_tokenTypes[typeId]).length > 0, "Type does not exist"); // Ensure the type exists

        _tokenTypes[typeId] = metadataURI; // Update the metadata URI
        _typeNames[typeId] = name; // Update the type name

        emit TypeUpdated(typeId, metadataURI, name);
    }

    /**
     * @dev Lists all available NFT types that have been created.
     * @return TypeInfo[] Array of TypeInfo structs, each containing typeId, name, and metadataURI.
     */
    function listTypes() external view returns (TypeInfo[] memory) {
        TypeInfo[] memory typesList = new TypeInfo[](_typeCount);

        for (uint256 i = 0; i < _typeCount; i++) {
            uint256 typeId = _typeList[i];
            typesList[i] = TypeInfo(
                typeId,
                _typeNames[typeId],
                _tokenTypes[typeId]
            );
        }

        return typesList;
    }

    /**
     * @dev Mint multiple NFTs of the same type in a single transaction.
     * @param to Address to receive the minted tokens.
     * @param typeId Type ID of the NFTs to determine metadata.
     * @param quantity Number of tokens to mint.
     */
    function mint(
        address to,
        uint256 typeId,
        uint256 quantity
    ) external onlyWhitelisted {
        uint256[] memory tokenIds = _mintTokens(to, typeId, quantity);
        emit Minted(to, tokenIds, typeId);
    }

    /**
     * @dev Airdrop NFTs to multiple recipients.
     * @param recipients Array of recipient addresses.
     * @param typeIds Array of type IDs corresponding to the tokens.
     * @param quantities Array of quantities for each recipient.
     */
    function airdrop(
        address[] calldata recipients,
        uint256[] calldata typeIds,
        uint256[] calldata quantities
    ) external onlyOwner {
        require(recipients.length == typeIds.length, "Arrays length mismatch");
        require(
            recipients.length == quantities.length,
            "Arrays length mismatch"
        );

        for (uint256 i = 0; i < recipients.length; i++) {
            uint256[] memory tokenIds = _mintTokens(
                recipients[i],
                typeIds[i],
                quantities[i]
            );
            emit Minted(recipients[i], tokenIds, typeIds[i]);
        }
        emit Airdrop(msg.sender, recipients, typeIds);
    }

    /**
     * @dev Internal function to mint one or more NFTs of the same type.
     * @param to Address to receive the minted tokens.
     * @param typeId Type ID of the NFTs to determine metadata.
     * @param quantity Number of tokens to mint.
     * @return uint256[] Array of minted token IDs.
     */
    function _mintTokens(
        address to,
        uint256 typeId,
        uint256 quantity
    ) internal returns (uint256[] memory) {
        require(bytes(_tokenTypes[typeId]).length > 0, "NFT type not defined");
        require(quantity > 0, "Quantity must be greater than zero");

        uint256[] memory tokenIds = new uint256[](quantity);

        for (uint256 i = 0; i < quantity; i++) {
            uint256 tokenId = _currentTokenId++;

            _tokenURIs[tokenId] = _tokenTypes[typeId];
            _tokenIdToTypeId[tokenId] = typeId;
            _mint(to, tokenId); // Triggers OpenZeppelin's _update

            tokenIds[i] = tokenId;
        }

        _typeSupply[typeId] += quantity;
        _totalSupply += quantity;

        emit TypeSupplyUpdated(typeId, _typeSupply[typeId]);

        return tokenIds;
    }

    /**
     * @dev Batch update of token URIs.
     * @param tokenIds Array of token IDs.
     * @param uris Array of URIs to set.
     */
    function batchUpdateTokenURIs(
        uint256[] calldata tokenIds,
        string[] calldata uris
    ) external onlyOwner {
        require(tokenIds.length == uris.length, "Arrays length mismatch");
        for (uint256 i = 0; i < tokenIds.length; i++) {
            require(
                _exists(tokenIds[i]),
                "ERC721Metadata: URI set of nonexistent token"
            );
            _tokenURIs[tokenIds[i]] = uris[i];

            emit TokenURIUpdated(tokenIds[i], uris[i]);
        }
    }

    /**
     * @dev Modifier to check if the caller is whitelisted.
     */
    modifier onlyWhitelisted() {
        require(_whitelist[msg.sender], "Caller is not whitelisted");
        _;
    }

    /**
     * @dev Adds or removes an address from the whitelist, only if there's an actual change in status.
     * @param account Address to update.
     * @param status Whitelist status (true to whitelist, false to remove).
     */
    function updateWhitelist(address account, bool status) external onlyOwner {
        if (_whitelist[account] != status) {
            _whitelist[account] = status;
            emit WhitelistUpdated(account, status);

            if (status) {
                _whitelistedAddresses.push(account);
            }
        }
    }

    /**
     * @dev Get total supply of all NFTs.
     * @return uint256 Total supply of NFTs.
     */
    function totalSupply() public view returns (uint256) {
        return _totalSupply;
    }

    /**
     * @dev Get total supply of NFTs by type ID.
     * @param typeId Type ID of the NFTs.
     * @return uint256 Total supply of NFTs of the specified type.
     */
    function totalSupplyByType(uint256 typeId) public view returns (uint256) {
        return _typeSupply[typeId];
    }

    /**
     * @dev Get unique holders of NFTs by type ID with pagination, filtering out addresses with zero balance.
     * @param typeId Type ID of the NFTs.
     * @param startIndex Starting index for pagination.
     * @param count Number of holders to return.
     * @return HolderInfo[] List of unique holders and their corresponding balances.
     */
    function getHoldersByType(
        uint256 typeId,
        uint256 startIndex,
        uint256 count
    ) external view returns (HolderInfo[] memory) {
        uint256 holderCount = _uniqueHoldersByType[typeId].length;
        uint256 endIndex = startIndex + count;

        // Make sure the endIndex doesn't exceed the actual number of holders
        if (endIndex > holderCount) {
            endIndex = holderCount;
        }

        // We'll use a dynamic array and track how many entries we actually add
        HolderInfo[] memory holdersWithBalances = new HolderInfo[](count); // Initialize with expected count
        uint256 validCount = 0;

        for (uint256 i = startIndex; i < endIndex; i++) {
            address holder = _uniqueHoldersByType[typeId][i];
            uint256 balance = _balancesByType[holder][typeId];

            if (balance > 0) {
                holdersWithBalances[validCount] = HolderInfo(holder, balance);
                validCount++;
            }
        }

        // If validCount is less than the original count, we dynamically resize the array by returning only validCount
        // Instead of inline assembly, we return just the populated portion using Solidity's default behavior
        HolderInfo[] memory resizedArray = new HolderInfo[](validCount);

        for (uint256 j = 0; j < validCount; j++) {
            resizedArray[j] = holdersWithBalances[j]; // Copy over only the valid entries
        }

        return resizedArray;
    }

    /**
     * @dev Burns one or more ERC721 tokens.
     * @param tokenIds An array of token IDs to be burned.
     * Requirements:
     * - The caller must own the tokens or be an approved operator.
     */
    function burn(uint256[] memory tokenIds) external {
        for (uint256 i = 0; i < tokenIds.length; i++) {
            require(
                _isApprovedOrOwner(msg.sender, tokenIds[i]),
                "Caller not owner nor approved"
            );

            uint256 typeId = _getTokenTypeId(tokenIds[i]);

            _burn(tokenIds[i]); // Triggers OpenZeppelin's _update
            _typeSupply[typeId]--;

            emit Burned(msg.sender, tokenIds[i]);
            emit TypeSupplyUpdated(typeId, _typeSupply[typeId]);
        }

        _totalSupply -= tokenIds.length;
    }

    /**
     * @dev Transfers multiple ERC721 tokens to a specified address.
     * @param to The address that will receive the tokens.
     * @param tokenIds An array of token IDs to transfer.
     */
    function batchTransfer(address to, uint256[] memory tokenIds) external {
        for (uint256 i = 0; i < tokenIds.length; i++) {
            require(
                _isApprovedOrOwner(msg.sender, tokenIds[i]),
                "Caller not owner nor approved"
            );
            safeTransferFrom(msg.sender, to, tokenIds[i]);
        }
        emit BatchTransfer(msg.sender, to, tokenIds);
    }

    /**
     * @dev Custom update function to handle holder tracking, token ownership tracking, and balance adjustments.
     * @param to The address receiving the token.
     * @param tokenId The ID of the token being transferred.
     * @param auth The address authorized for the transfer (optional).
     * @return address The address that previously owned the token.
     */
    function _update(
        address to,
        uint256 tokenId,
        address auth
    ) internal virtual override returns (address) {
        // Call the parent OpenZeppelin _update function to handle the standard ERC721 logic
        address from = super._update(to, tokenId, auth);

        uint256 typeId = _getTokenTypeId(tokenId);

        // Logic for transfers or minting (from == address(0) OR from is valid)
        if (to != address(0)) {
            // Increment the receiver's balance for the token type
            _balancesByType[to][typeId]++;

            // Add the holder if it's the first token of this type they own
            if (_balancesByType[to][typeId] == 1) {
                _addHolder(to, typeId);
            }

            // Add token to the receiver's list
            _holderTokens[to].push(tokenId);
        }

        // Logic for transfers or burning (to == address(0) OR to is valid)
        if (from != address(0)) {
            // Decrement the sender's balance for the token type
            _balancesByType[from][typeId]--;

            // Remove the holder if they no longer own tokens of this type
            if (_balancesByType[from][typeId] == 0) {
                _removeHolder(from, typeId);
            }

            // Remove the token from the sender's list
            uint256[] storage tokens = _holderTokens[from];
            for (uint256 i = 0; i < tokens.length; i++) {
                if (tokens[i] == tokenId) {
                    tokens[i] = tokens[tokens.length - 1]; // Swap with the last token
                    tokens.pop(); // Remove the last token
                    break;
                }
            }
        }

        return from;
    }

    /**
     * @dev Internal function to assign a type ID to a token ID.
     * @param tokenId The ID of the token.
     * @param typeId The type ID to associate with the token.
     */
    function _setTokenTypeId(uint256 tokenId, uint256 typeId) private {
        _tokenIdToTypeId[tokenId] = typeId;
    }

    /**
     * @dev Internal function to derive the type ID from the token ID.
     * @param tokenId The ID of the token.
     * @return uint256 The type ID.
     */
    function _getTokenTypeId(uint256 tokenId) private view returns (uint256) {
        return _tokenIdToTypeId[tokenId];
    }

    /**
     * @dev Adds an address to the list of unique holders for a specific type.
     * @param account The address to add.
     * @param typeId The ID of the token type.
     */
    function _addHolder(address account, uint256 typeId) private {
        if (!_holdersByType[account][typeId]) {
            _holdersByType[account][typeId] = true;
            _uniqueHoldersByType[typeId].push(account);

            if (balanceOf(account) == 1) {
                totalUniqueHolders++;
            }

            emit HolderAdded(account, typeId);
        }
    }

    /**
     * @dev Removes an address from the list of unique holders for a specific type.
     * @param account The address to remove.
     * @param typeId The ID of the token type.
     */
    function _removeHolder(address account, uint256 typeId) private {
        _holdersByType[account][typeId] = false;

        if (balanceOf(account) == 0) {
            totalUniqueHolders--;
        }

        // Remove the holder from the _uniqueHoldersByType array
        address[] storage holders = _uniqueHoldersByType[typeId];
        for (uint256 i = 0; i < holders.length; i++) {
            if (holders[i] == account) {
                holders[i] = holders[holders.length - 1]; // Replace with the last holder
                holders.pop(); // Remove the last element
                break;
            }
        }

        emit HolderRemoved(account, typeId);
    }

    /**
     * @dev Checks if the caller is the owner or an approved operator of the token.
     * @param spender The address attempting to spend the token.
     * @param tokenId The ID of the token.
     * @return bool True if the spender is the owner or approved, false otherwise.
     */
    function _isApprovedOrOwner(
        address spender,
        uint256 tokenId
    ) internal view returns (bool) {
        require(_exists(tokenId), "Token does not exist");
        address owner = ownerOf(tokenId);
        return (spender == owner ||
            getApproved(tokenId) == spender ||
            isApprovedForAll(owner, spender));
    }

    /**
     * @dev Checks if a token exists.
     * @param tokenId The ID of the token.
     * @return bool True if the token exists, false otherwise.
     */
    function _exists(uint256 tokenId) internal view returns (bool) {
        return ownerOf(tokenId) != address(0);
    }

    /**
     * @dev Returns the token URI for a given token ID.
     * @param tokenId uint256 ID of the token to retrieve its URI.
     * @return string URI of the token.
     */
    function tokenURI(
        uint256 tokenId
    ) public view virtual override returns (string memory) {
        require(
            _exists(tokenId),
            "ERC721Metadata: URI query for nonexistent token"
        );

        string memory _tokenURI = _tokenURIs[tokenId];
        return
            bytes(_tokenURI).length > 0 ? _tokenURI : super.tokenURI(tokenId);
    }

    /**
     * @dev Returns true if the given address is whitelisted.
     * @param account The address to check.
     * @return bool True if the address is whitelisted, false otherwise.
     */
    function isWhitelisted(address account) public view returns (bool) {
        return _whitelist[account];
    }

    /**
     * @dev Returns the balance of the given address for a specific type.
     * @param owner The address to query.
     * @param typeId The type ID to query.
     * @return uint256 The balance of the given address for the specified type.
     */
    function balanceOfType(
        address owner,
        uint256 typeId
    ) public view returns (uint256) {
        return _balancesByType[owner][typeId];
    }

    /**
     * @dev Public function to check if an address is a holder of a specific type.
     * @param account The address to check.
     * @param typeId The ID of the token type.
     * @return bool True if the address is a holder of the specified type, false otherwise.
     */
    function isHolder(
        address account,
        uint256 typeId
    ) public view returns (bool) {
        return _holdersByType[account][typeId];
    }

    /**
     * @dev Returns the total unique holder count by type ID in the format [typeId, count].
     * @return HolderCountInfo[] Array of typeId and corresponding unique holder counts.
     */
    function getUniqueHoldersByType()
        external
        view
        returns (HolderCountInfo[] memory)
    {
        HolderCountInfo[] memory holderCounts = new HolderCountInfo[](
            _typeCount
        );

        for (uint256 i = 1; i <= _typeCount; i++) {
            if (_uniqueHoldersByType[i].length > 0) {
                holderCounts[i - 1] = HolderCountInfo(
                    i,
                    _uniqueHoldersByType[i].length
                );
            }
        }

        return holderCounts;
    }

    /**
     * @dev Returns all whitelisted addresses in the format [wallet, boolean].
     * @return WhitelistInfo[] Array of wallet and corresponding boolean whitelisted status.
     */
    function getWhitelistedAddresses()
        external
        view
        returns (WhitelistInfo[] memory)
    {
        uint256 totalAddresses = _whitelistedAddresses.length;
        WhitelistInfo[] memory whitelisted = new WhitelistInfo[](
            totalAddresses
        );

        for (uint256 i = 0; i < totalAddresses; i++) {
            address wallet = _whitelistedAddresses[i];
            whitelisted[i] = WhitelistInfo(wallet, _whitelist[wallet]);
        }

        return whitelisted;
    }

    /**
     * @dev Returns the balance for each type held by a specific holder.
     * @param holder The address of the holder.
     * @return HolderBalanceInfo[] Array of typeId and corresponding balance.
     */
    function getHolderDetails(
        address holder
    ) external view returns (HolderBalanceInfo[] memory) {
        uint256 count = 0;

        // Count non-zero balances for the holder
        for (uint256 i = 0; i < _typeCount; i++) {
            if (_balancesByType[holder][_typeList[i]] > 0) {
                count++;
            }
        }

        // Create an array for balances
        HolderBalanceInfo[] memory holderBalances = new HolderBalanceInfo[](
            count
        );
        uint256 index = 0;

        // Populate the array
        for (uint256 i = 0; i < _typeCount; i++) {
            uint256 balance = _balancesByType[holder][_typeList[i]];
            if (balance > 0) {
                holderBalances[index] = HolderBalanceInfo(
                    _typeList[i],
                    balance
                );
                index++;
            }
        }

        return holderBalances;
    }

    /**
     * @dev Returns all token IDs held by a specific address.
     * @param holder The address of the holder.
     * @return uint256[] Array of token IDs.
     */
    function getAllTokensByHolder(
        address holder
    ) external view returns (uint256[] memory) {
        return _holderTokens[holder];
    }

    /**
     * @dev Returns all token IDs held by a specific address and NFT Type.
     * @param holder The address of the holder.
     * @param typeId The ID for the new NFT type.
     * @return uint256[] Array of token IDs.
     */
    function getAllTokensByHolderAndTypeId(
        address holder,
        uint256 typeId
    ) external view returns (uint256[] memory) {
        uint256[] memory tokenIds = new uint256[](
            _balancesByType[holder][typeId]
        );
        uint256 index = 0;
        for (uint256 i = 0; i < _holderTokens[holder].length; i++) {
            uint256 tokenId = _holderTokens[holder][i];
            uint256 _typeId = _getTokenTypeId(tokenId);
            if (typeId == _typeId) {
                tokenIds[index] = tokenId;
                index++;
            }
        }

        return tokenIds;
    }

    /**
     * @dev Returns the type ID, type name, and metadata URI for a specific token ID.
     * @param tokenId The ID of the token.
     * @return (uint256, string memory, string memory) The type ID, type name, and metadata URI for the given token ID.
     */
    function getTokenIdDetails(
        uint256 tokenId
    ) external view returns (uint256, string memory, string memory) {
        require(_exists(tokenId), "Token does not exist");
        uint256 typeId = _getTokenTypeId(tokenId);
        string memory uri = _tokenTypes[typeId];
        string memory name = _typeNames[typeId];

        return (typeId, name, uri);
    }
}
