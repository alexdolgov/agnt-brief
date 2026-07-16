// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./lib/ownable.sol";
import "./lib/strings.sol";
import "./lib/counters.sol";
import "./lib/safemath.sol";
import "./lib/address.sol";
import "./lib/royalty.sol";
 

/**
 * @dev Implementation of https://eips.ethereum.org/EIPS/eip-721[ERC721] Non-Fungible Token Standard, including
 * the Metadata extension, but not including the Enumerable extension, which is available separately as
 * {ERC721Enumerable}.
 */

 //https://etherscan.io/address/0xd8b7cc75e22031a72d7b8393113ef2536e17bde6

contract GenArtCollection is
    Context,
    ERC2981,
    IERC721,
    IERC721Metadata,
    IERC721Enumerable,
    Ownable
{
    using Address for address;
    using Strings for uint256;
    using Counters for Counters.Counter;
    using SafeMath for uint256;

    struct CollectionGroup {
        uint256 tier;
        uint256 price;
        uint256[] collections;
    }

    struct Collection {
        uint256 tier;
        uint256 invocations;
        uint256 maxInvocations;
        string script;
        uint256 price;
        uint256 artistPercentage;
        address artist;
    }

    event Mint(address to, uint256 collectionId, uint256 tokenId, bytes32 hash);

    // IGenArtMintState _genArtMintState;
    mapping(uint256 => Collection) private _collectionsMap;
    mapping(uint256 => CollectionGroup) private _collectionGroupsMap;

    // Mapping collectionId to membershipId and total mints
    mapping(uint256 => mapping(uint256 => uint256)) private _collectionsMintMap;

    mapping(uint256 => bytes32) public _tokenIdToHashMap;
    mapping(uint256 => uint256) private _tokenIdToCollectionIdMap;
    Counters.Counter private _collectionIdCounter;

    // Token name
    string private _name;

    // Token symbol
    string private _symbol;

    // Base URI
    string private _baseURI;

    //Priority Collection ID
    uint256 private _mintCollectionId;

    // Mapping from token ID to owner address
    mapping(uint256 => address) private _owners;

    // Mapping owner address to token count
    mapping(address => uint256) private _balances;

    // Mapping from token ID to approved address
    mapping(uint256 => address) private _tokenApprovals;

    // Mapping from owner to operator approvals
    mapping(address => mapping(address => bool)) private _operatorApprovals;

    // Mapping from owner to list of owned token IDs
    mapping(address => mapping(uint256 => uint256)) private _ownedTokens;

    // Mapping from token ID to index of the owner tokens list
    mapping(uint256 => uint256) private _ownedTokensIndex;

    // Array with all token ids, used for enumeration
    uint256[] private _allTokens;

    // Mapping from token id to position in the allTokens array
    mapping(uint256 => uint256) private _allTokensIndex;

    /**
     * @dev Initializes the contract by setting a `name` and a `symbol` to the token collection.
     */
    constructor(
        string memory name_,
        string memory symbol_,
        string memory uri_
    ) {
        _name = name_;
        _symbol = symbol_;
        _baseURI = uri_;
        _collectionIdCounter.increment();
    }

    modifier onlyArtist(uint256 _collectionId) {
        require(
            _collectionsMap[_collectionId].artist == _msgSender(),
            "GenArtCollection: only artist can call this function"
        );
        _;
    }

    function withdraw(uint256 value) public onlyOwner {
        address _owner = owner();
        payable(_owner).transfer(value);
    }

    function createGenCollectionGroup(
        uint256 _groupId,
        uint256 _tier,
        uint256 _price
    ) public onlyOwner {
        uint256[] memory _collections;
        _collectionGroupsMap[_groupId] = CollectionGroup({
            tier: _tier,
            price: _price,
            collections: _collections
        });
    }

    function createGenCollection(
        address _artist,
        uint256 _artistPercentage,
        uint256 _price,
        uint256 _maxInvocations,
        uint256 _tier,
        string memory _script
    ) public onlyOwner {
        uint256 _collectionId = _collectionIdCounter.current();

        _collectionsMap[_collectionId] = Collection({
            tier: _tier,
            invocations: 0,
            maxInvocations: _maxInvocations,
            script: _script,
            price: _price,
            artistPercentage: _artistPercentage,
            artist: _artist
        });

        _collectionIdCounter.increment();
    }

    function checkMint(
        uint256 _collectionId,
        uint256 _value,
        uint256 _amount,
        bool _isEthPayment
    ) internal virtual {
        require(
            _collectionsMap[_collectionId].tier != 0,
            "GenArtCollection: incorrect collection id"
        );
        require(
            _collectionsMap[_collectionId].invocations <
                _collectionsMap[_collectionId].maxInvocations,
            "GenArtCollection: max invocations was reached"
        );       
        if (_isEthPayment) {
            require(
                _collectionsMap[_collectionId].price.mul(_amount) <= _value,
                "GenArtCollection: incorrect amount sent"
            );
        } 
    }

    function mint(
        address _to
    ) public payable {
        require(
            _mintCollectionId != 0,
            "GenArtCollection: mint collection isn't set"
        );
        uint256 _collectionId = _mintCollectionId;
        
        checkMint(_collectionId, msg.value, 1, true);
        _mintOne(_to, _collectionId);
        splitFunds(_collectionId, 1, true);
    }

    function mint(
        address _to,
        uint256 _collectionId
    ) public payable {
        checkMint(_collectionId, msg.value, 1, true);
        _mintOne(_to, _collectionId);
        splitFunds(_collectionId, 1, true);
    }


    function mintMany(
        address _to,
        uint256 _collectionId,
        uint256 _amount
    ) public payable {
        checkMint(
            _collectionId,
            msg.value,
            _amount,
            true
        );
        _mintMany(_to, _collectionId, _amount);
        splitFunds(_collectionId, _amount, true);
    }

    function _mintMany(
        address _to,
        uint256 _collectionId,
        uint256 _amount
    ) internal virtual {
        for (uint256 i = 0; i < _amount; i++) {
            _mintOne(_to, _collectionId);
        }
    }

    function _mintOne(address _to, uint256 _collectionId) internal virtual {
        uint256 invocation = _collectionsMap[_collectionId].invocations + 1;
        uint256 _tokenId = _collectionId * 100000 + invocation;
        _collectionsMap[_collectionId].invocations = invocation;

        bytes32 hash = keccak256(
            abi.encodePacked(invocation, block.number, block.difficulty, _to)
        );
        _tokenIdToHashMap[_tokenId] = hash;
        _tokenIdToCollectionIdMap[_tokenId] = _collectionId;

        _safeMint(_to, _tokenId);

        emit Mint(_to, _collectionId, _tokenId, hash);
    }

    function splitFunds(
        uint256 _collectionId,
        uint256 _amount,
        bool _isEthPayment
    ) internal virtual {
        uint256 value = _collectionsMap[_collectionId].price.mul(_amount);
        uint256 artistReward = (value *
            _collectionsMap[_collectionId].artistPercentage) / 100;
        if (_isEthPayment) {
            payable(_collectionsMap[_collectionId].artist).transfer(
                artistReward
            );
        } 
    }

    function burn(uint256 _tokenId) public {
        _burn(_tokenId);
    }



    function updateArtistAddress(uint256 _collectionId, address _artist)
        public
        onlyArtist(_collectionId)
    {
        _collectionsMap[_collectionId].artist = _artist;
    }

    function updateMaxInvocations(
        uint256 _collectionId,
        uint256 _maxInvocations
    ) public onlyOwner {
        _collectionsMap[_collectionId].maxInvocations = _maxInvocations;
    }

    function updateScript(uint256 _collectionId, string memory _script)
        public
        onlyOwner
    {
        _collectionsMap[_collectionId].script = _script;
    }

    function updatePrice(
        uint256 _collectionId,
        uint256 _price
    ) public onlyOwner {
        _collectionsMap[_collectionId].price = _price;
    }

    function getCollectionInfo(uint256 _collectionId)
        public
        view
        returns (
            uint256 invocations,
            uint256 maxInvocations,
            string memory script,
            uint256 price,
            address artist,
            uint256 artistPercentage
        )
    {
        require(
            _collectionsMap[_collectionId].tier != 0,
            "GenArtCollection: invalid collection id"
        );

        return (
            _collectionsMap[_collectionId].invocations,
            _collectionsMap[_collectionId].maxInvocations,
            _collectionsMap[_collectionId].script,
            _collectionsMap[_collectionId].price,
            _collectionsMap[_collectionId].artist,
            _collectionsMap[_collectionId].artistPercentage
        );
    }

    function getTokenInfo(uint256 _tokenId)
        public
        view
        returns (
            uint256,
            uint256,
            address,
            bytes32
        )
    {
        _exists(_tokenId);
        bytes32 hash = _tokenIdToHashMap[_tokenId];
        uint256 _collectionId = _tokenIdToCollectionIdMap[_tokenId];
        address owner = GenArtCollection.ownerOf(_tokenId);

        return (_tokenId, _collectionId, owner, hash);
    }

    function getTokensByOwner(address _owner)
        public
        view
        returns (uint256[] memory)
    {
        uint256 tokenCount = balanceOf(_owner);
        uint256[] memory tokenIds = new uint256[](tokenCount);
        for (uint256 i; i < tokenCount; i++) {
            tokenIds[i] = tokenOfOwnerByIndex(_owner, i);
        }

        return tokenIds;
    }

    /**
     * @dev See {IERC165-supportsInterface}.
     */
    function supportsInterface(bytes4 interfaceId)
        public
        view
        virtual
        override(ERC2981, IERC165)
        returns (bool)
    {
        return
            interfaceId == type(IERC721).interfaceId ||
            interfaceId == type(IERC721Metadata).interfaceId ||
            interfaceId == type(IERC721Enumerable).interfaceId ||
            super.supportsInterface(interfaceId);
    }

    /**
     * @dev See {IERC721-balanceOf}.
     */
    function balanceOf(address owner)
        public
        view
        virtual
        override
        returns (uint256)
    {
        require(
            owner != address(0),
            "ERC721: balance query for the zero address"
        );
        return _balances[owner];
    }

    /**
     * @dev See {IERC721-ownerOf}.
     */
    function ownerOf(uint256 tokenId)
        public
        view
        virtual
        override
        returns (address)
    {
        address owner = _owners[tokenId];
        require(
            owner != address(0),
            "ERC721: owner query for nonexistent token"
        );
        return owner;
    }

    /**
     * @dev See {IERC721Metadata-name}.
     */
    function name() public view virtual override returns (string memory) {
        return _name;
    }

    /**
     * @dev See {IERC721Metadata-symbol}.
     */
    function symbol() public view virtual override returns (string memory) {
        return _symbol;
    }

    /**
     * @dev See {IERC721Metadata-tokenURI}.
     */
    function tokenURI(uint256 tokenId)
        public
        view
        virtual
        override
        returns (string memory)
    {
        require(
            _exists(tokenId),
            "ERC721Metadata: URI query for nonexistent token"
        );

        string memory baseURI_ = baseURI();
        return
            bytes(baseURI_).length > 0
                ? string(abi.encodePacked(baseURI_, tokenId.toString()))
                : "";
    }

    /**
     * @dev Base URI for computing {tokenURI}. If set, the resulting URI for each
     * token will be the concatenation of the `baseURI` and the `tokenId`. Empty
     * by default, can be overriden in child contracts.
     */
    function baseURI() internal view virtual returns (string memory) {
        return _baseURI;
    }

    /**
     * @dev Internal function to set the base URI for all token IDs. It is
     * automatically added as a prefix to the value returned in {tokenURI},
     * or to the token ID if {tokenURI} is empty.
     */
    function setBaseURI(string memory baseURI_) public onlyOwner {
        _baseURI = baseURI_;
    }

    /**
     * @dev Internal function to set the priority mint collection. It is
     * automatically used in the mint function.
     */
    function setMintCollectionID(uint256 mintCollectionId_) public onlyOwner {
        _mintCollectionId = mintCollectionId_;
    }


    /**
     * @dev See {IERC721-approve}.
     */
    function approve(address to, uint256 tokenId) public virtual override {
        address owner = GenArtCollection.ownerOf(tokenId);
        require(to != owner, "ERC721: approval to current owner");

        require(
            _msgSender() == owner || isApprovedForAll(owner, _msgSender()),
            "ERC721: approve caller is not owner nor approved for all"
        );

        _approve(to, tokenId);
    }

    /**
     * @dev See {IERC721-getApproved}.
     */
    function getApproved(uint256 tokenId)
        public
        view
        virtual
        override
        returns (address)
    {
        require(
            _exists(tokenId),
            "ERC721: approved query for nonexistent token"
        );

        return _tokenApprovals[tokenId];
    }

    /**
     * @dev See {IERC721-setApprovalForAll}.
     */
    function setApprovalForAll(address operator, bool approved)
        public
        virtual
        override
    {
        require(operator != _msgSender(), "ERC721: approve to caller");

        _operatorApprovals[_msgSender()][operator] = approved;
        emit ApprovalForAll(_msgSender(), operator, approved);
    }

    /**
     * @dev See {IERC721-isApprovedForAll}.
     */
    function isApprovedForAll(address owner, address operator)
        public
        view
        virtual
        override
        returns (bool)
    {
        return _operatorApprovals[owner][operator];
    }

    /**
     * @dev See {IERC721-transferFrom}.
     */
    function transferFrom(
        address from,
        address to,
        uint256 tokenId
    ) public virtual override {
        //solhint-disable-next-line max-line-length
        require(
            _isApprovedOrOwner(_msgSender(), tokenId),
            "ERC721: transfer caller is not owner nor approved"
        );

        _transfer(from, to, tokenId);
    }

    /**
     * @dev See {IERC721-safeTransferFrom}.
     */
    function safeTransferFrom(
        address from,
        address to,
        uint256 tokenId
    ) public virtual override {
        safeTransferFrom(from, to, tokenId, "");
    }

    /**
     * @dev See {IERC721-safeTransferFrom}.
     */
    function safeTransferFrom(
        address from,
        address to,
        uint256 tokenId,
        bytes memory _data
    ) public virtual override {
        require(
            _isApprovedOrOwner(_msgSender(), tokenId),
            "ERC721: transfer caller is not owner nor approved"
        );
        _safeTransfer(from, to, tokenId, _data);
    }

    /**
     * @dev Safely transfers `tokenId` token from `from` to `to`, checking first that contract recipients
     * are aware of the ERC721 protocol to prevent tokens from being forever locked.
     *
     * `_data` is additional data, it has no specified format and it is sent in call to `to`.
     *
     * This internal function is equivalent to {safeTransferFrom}, and can be used to e.g.
     * implement alternative mechanisms to perform token transfer, such as signature-based.
     *
     * Requirements:
     *
     * - `from` cannot be the zero address.
     * - `to` cannot be the zero address.
     * - `tokenId` token must exist and be owned by `from`.
     * - If `to` refers to a smart contract, it must implement {IERC721Receiver-onERC721Received}, which is called upon a safe transfer.
     *
     * Emits a {Transfer} event.
     */
    function _safeTransfer(
        address from,
        address to,
        uint256 tokenId,
        bytes memory _data
    ) internal virtual {
        _transfer(from, to, tokenId);
        require(
            _checkOnERC721Received(from, to, tokenId, _data),
            "ERC721: transfer to non ERC721Receiver implementer"
        );
    }

    /**
     * @dev Returns whether `tokenId` exists.
     *
     * Tokens can be managed by their owner or approved accounts via {approve} or {setApprovalForAll}.
     *
     * Tokens start existing when they are minted (`_mint`),
     * and stop existing when they are burned (`_burn`).
     */
    function _exists(uint256 tokenId) internal view virtual returns (bool) {
        return _owners[tokenId] != address(0);
    }

    /**
     * @dev Returns whether `spender` is allowed to manage `tokenId`.
     *
     * Requirements:
     *
     * - `tokenId` must exist.
     */
    function _isApprovedOrOwner(address spender, uint256 tokenId)
        internal
        view
        virtual
        returns (bool)
    {
        require(
            _exists(tokenId),
            "ERC721: operator query for nonexistent token"
        );
        address owner = GenArtCollection.ownerOf(tokenId);
        return (spender == owner ||
            getApproved(tokenId) == spender ||
            isApprovedForAll(owner, spender));
    }

    /**
     * @dev Safely mints `tokenId` and transfers it to `to`.
     *
     * Requirements:
     *
     * - `tokenId` must not exist.
     * - If `to` refers to a smart contract, it must implement {IERC721Receiver-onERC721Received}, which is called upon a safe transfer.
     *
     * Emits a {Transfer} event.
     */
    function _safeMint(address to, uint256 tokenId) internal virtual {
        _safeMint(to, tokenId, "");
    }

    /**
     * @dev Same as {xref-ERC721-_safeMint-address-uint256-}[`_safeMint`], with an additional `data` parameter which is
     * forwarded in {IERC721Receiver-onERC721Received} to contract recipients.
     */
    function _safeMint(
        address to,
        uint256 tokenId,
        bytes memory _data
    ) internal virtual {
        _mint(to, tokenId);
        require(
            _checkOnERC721Received(address(0), to, tokenId, _data),
            "ERC721: transfer to non ERC721Receiver implementer"
        );
    }

    /**
     * @dev Mints `tokenId` and transfers it to `to`.
     *
     * WARNING: Usage of this method is discouraged, use {_safeMint} whenever possible
     *
     * Requirements:
     *
     * - `tokenId` must not exist.
     * - `to` cannot be the zero address.
     *
     * Emits a {Transfer} event.
     */
    function _mint(address to, uint256 tokenId) internal virtual {
        require(to != address(0), "ERC721: mint to the zero address");
        require(!_exists(tokenId), "ERC721: token already minted");

        _beforeTokenTransfer(address(0), to, tokenId);

        _balances[to] += 1;
        _owners[tokenId] = to;

        emit Transfer(address(0), to, tokenId);
    }

    /**
     * @dev Destroys `tokenId`.
     * The approval is cleared when the token is burned.
     *
     * Requirements:
     *
     * - `tokenId` must exist.
     *
     * Emits a {Transfer} event.
     */
    function _burn(uint256 tokenId) internal virtual {
        address owner = GenArtCollection.ownerOf(tokenId);
        require(
            _msgSender() == owner,
            "GenArtCollection: only token owner can burn"
        );
        _beforeTokenTransfer(owner, address(0), tokenId);
        // Clear approvals
        _approve(address(0), tokenId);

        _balances[owner] -= 1;
        delete _owners[tokenId];

        emit Transfer(owner, address(0), tokenId);
    }

    /**
     * @dev Transfers `tokenId` from `from` to `to`.
     *  As opposed to {transferFrom}, this imposes no restrictions on msg.sender.
     *
     * Requirements:
     *
     * - `to` cannot be the zero address.
     * - `tokenId` token must be owned by `from`.
     *
     * Emits a {Transfer} event.
     */
    function _transfer(
        address from,
        address to,
        uint256 tokenId
    ) internal virtual {
        require(
            GenArtCollection.ownerOf(tokenId) == from,
            "ERC721: transfer of token that is not own"
        );
        require(to != address(0), "ERC721: transfer to the zero address");

        _beforeTokenTransfer(from, to, tokenId);

        // Clear approvals from the previous owner
        _approve(address(0), tokenId);

        _balances[from] -= 1;
        _balances[to] += 1;
        _owners[tokenId] = to;

        emit Transfer(from, to, tokenId);
    }

    /**
     * @dev Approve `to` to operate on `tokenId`
     *
     * Emits a {Approval} event.
     */
    function _approve(address to, uint256 tokenId) internal virtual {
        _tokenApprovals[tokenId] = to;
        emit Approval(GenArtCollection.ownerOf(tokenId), to, tokenId);
    }

    /**
     * @dev Internal function to invoke {IERC721Receiver-onERC721Received} on a target address.
     * The call is not executed if the target address is not a contract.
     *
     * @param from address representing the previous owner of the given token ID
     * @param to target address that will receive the tokens
     * @param tokenId uint256 ID of the token to be transferred
     * @param _data bytes optional data to send along with the call
     * @return bool whether the call correctly returned the expected magic value
     */
    function _checkOnERC721Received(
        address from,
        address to,
        uint256 tokenId,
        bytes memory _data
    ) private returns (bool) {
        if (to.isContract()) {
            try
                IERC721Receiver(to).onERC721Received(
                    _msgSender(),
                    from,
                    tokenId,
                    _data
                )
            returns (bytes4 retval) {
                return retval == IERC721Receiver.onERC721Received.selector;
            } catch (bytes memory reason) {
                if (reason.length == 0) {
                    revert(
                        "ERC721: transfer to non ERC721Receiver implementer"
                    );
                } else {
                    assembly {
                        revert(add(32, reason), mload(reason))
                    }
                }
            }
        } else {
            return true;
        }
    }

    /**
     * @dev See {IERC721Enumerable-tokenOfOwnerByIndex}.
     */
    function tokenOfOwnerByIndex(address owner, uint256 index)
        public
        view
        virtual
        override
        returns (uint256)
    {
        require(
            index < GenArtCollection.balanceOf(owner),
            "ERC721Enumerable: owner index out of bounds"
        );
        return _ownedTokens[owner][index];
    }

    /**
     * @dev See {IERC721Enumerable-totalSupply}.
     */
    function totalSupply() public view virtual override returns (uint256) {
        return _allTokens.length;
    }

    /**
     * @dev See {IERC721Enumerable-tokenByIndex}.
     */
    function tokenByIndex(uint256 index)
        public
        view
        virtual
        override
        returns (uint256)
    {
        require(
            index < GenArtCollection.totalSupply(),
            "ERC721Enumerable: global index out of bounds"
        );
        return _allTokens[index];
    }

    /**
     * @dev Hook that is called before any token transfer. This includes minting
     * and burning.
     *
     * Calling conditions:
     *
     * - When `from` and `to` are both non-zero, ``from``'s `tokenId` will be
     * transferred to `to`.
     * - When `from` is zero, `tokenId` will be minted for `to`.
     * - When `to` is zero, ``from``'s `tokenId` will be burned.
     * - `from` cannot be the zero address.
     * - `to` cannot be the zero address.
     *
     * To learn more about hooks, head to xref:ROOT:extending-contracts.adoc#using-hooks[Using Hooks].
     */
    function _beforeTokenTransfer(
        address from,
        address to,
        uint256 tokenId
    ) internal virtual {
        if (from == address(0)) {
            _addTokenToAllTokensEnumeration(tokenId);
        } else if (from != to) {
            _removeTokenFromOwnerEnumeration(from, tokenId);
        }
        if (to == address(0)) {
            _removeTokenFromAllTokensEnumeration(tokenId);
        } else if (to != from) {
            _addTokenToOwnerEnumeration(to, tokenId);
        }
    }

    /**
     * @dev Private function to add a token to this extension's ownership-tracking data structures.
     * @param to address representing the new owner of the given token ID
     * @param tokenId uint256 ID of the token to be added to the tokens list of the given address
     */
    function _addTokenToOwnerEnumeration(address to, uint256 tokenId) private {
        uint256 length = GenArtCollection.balanceOf(to);
        _ownedTokens[to][length] = tokenId;
        _ownedTokensIndex[tokenId] = length;
    }

    /**
     * @dev Private function to add a token to this extension's token tracking data structures.
     * @param tokenId uint256 ID of the token to be added to the tokens list
     */
    function _addTokenToAllTokensEnumeration(uint256 tokenId) private {
        _allTokensIndex[tokenId] = _allTokens.length;
        _allTokens.push(tokenId);
    }

    /**
     * @dev Private function to remove a token from this extension's ownership-tracking data structures. Note that
     * while the token is not assigned a new owner, the `_ownedTokensIndex` mapping is _not_ updated: this allows for
     * gas optimizations e.g. when performing a transfer operation (avoiding double writes).
     * This has O(1) time complexity, but alters the order of the _ownedTokens array.
     * @param from address representing the previous owner of the given token ID
     * @param tokenId uint256 ID of the token to be removed from the tokens list of the given address
     */
    function _removeTokenFromOwnerEnumeration(address from, uint256 tokenId)
        private
    {
        // To prevent a gap in from's tokens array, we store the last token in the index of the token to delete, and
        // then delete the last slot (swap and pop).

        uint256 lastTokenIndex = GenArtCollection.balanceOf(from) - 1;
        uint256 tokenIndex = _ownedTokensIndex[tokenId];

        // When the token to delete is the last token, the swap operation is unnecessary
        if (tokenIndex != lastTokenIndex) {
            uint256 lastTokenId = _ownedTokens[from][lastTokenIndex];

            _ownedTokens[from][tokenIndex] = lastTokenId; // Move the last token to the slot of the to-delete token
            _ownedTokensIndex[lastTokenId] = tokenIndex; // Update the moved token's index
        }

        // This also deletes the contents at the last position of the array
        delete _ownedTokensIndex[tokenId];
        delete _ownedTokens[from][lastTokenIndex];
    }

    /**
     * @dev Private function to remove a token from this extension's token tracking data structures.
     * This has O(1) time complexity, but alters the order of the _allTokens array.
     * @param tokenId uint256 ID of the token to be removed from the tokens list
     */
    function _removeTokenFromAllTokensEnumeration(uint256 tokenId) private {
        // To prevent a gap in the tokens array, we store the last token in the index of the token to delete, and
        // then delete the last slot (swap and pop).

        uint256 lastTokenIndex = _allTokens.length - 1;
        uint256 tokenIndex = _allTokensIndex[tokenId];

        // When the token to delete is the last token, the swap operation is unnecessary. However, since this occurs so
        // rarely (when the last minted token is burnt) that we still do the swap here to avoid the gas cost of adding
        // an 'if' statement (like in _removeTokenFromOwnerEnumeration)
        uint256 lastTokenId = _allTokens[lastTokenIndex];

        _allTokens[tokenIndex] = lastTokenId; // Move the last token to the slot of the to-delete token
        _allTokensIndex[lastTokenId] = tokenIndex; // Update the moved token's index

        // This also deletes the contents at the last position of the array
        delete _allTokensIndex[tokenId];
        _allTokens.pop();
    }
}