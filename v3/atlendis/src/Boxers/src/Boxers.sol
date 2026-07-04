// SPDX-License-Identifier: AGPL-3.0
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";

contract Boxers is ERC721Enumerable, AccessControl {
    ///////////////
    // CONSTANTS //
    ///////////////

    bytes32 public constant RESERVE_MINTER = keccak256('RESERVE_MINTER');

    /////////////
    // STORAGE //
    /////////////

    // token identifiers
    uint256 public nextId = 1;
    uint256 public maxTokenCount;
    uint256 public maxPublicMint;
    uint256 public reservedRemaining;

    // token config
    string public baseURI;
    uint256 public mintPrice;

    // drops
    struct Drop {
        bool exists;
        uint256 remaining;
        mapping(address => bool) claimed;
    }
    mapping(bytes32 => Drop) drops;

    ////////////
    // EVENTS //
    ////////////

    event PublicMint(uint256 tokenId, uint256 price);
    event DropMint(uint256 tokenId, bytes32 root);
    event ReservedMint(uint256 tokenId, address to);
    event NewBaseUri(string uri);
    event NewPrice(uint256 price);
    event NewDrop(bytes32 root, uint256 count);
    event EndDrop(bytes32 root, uint256 count);
    event ForfeitReserved(uint256 count);
    event CollectFees(uint256 value);

    ////////////
    // ERRORS //
    ////////////

    error WRONG_PRICE();
    error ALREADY_CLAIMED();
    error WRONG_PROOF();
    error EXISTING_DROP();
    error ALL_MINTED();

    constructor(uint256 _tokenCount, uint256 _reservedCount, uint256 _mintPrice)
        ERC721("Boxers", "BXRS")
    {
        maxTokenCount = _tokenCount;
        maxPublicMint = _tokenCount - _reservedCount;
        reservedRemaining = _reservedCount;
        mintPrice = _mintPrice;

        _setupRole(DEFAULT_ADMIN_ROLE, msg.sender);
    }

    function _baseURI() internal view override returns (string memory) {
        return baseURI;
    }

    function supportsInterface(bytes4 interfaceId) public view override(ERC721Enumerable, AccessControl) returns (bool) {
        return ERC721Enumerable.supportsInterface(interfaceId);
    }

    //////////
    // MINT //
    //////////

    function mint() public payable {
        if(msg.value != mintPrice) revert WRONG_PRICE();
        uint256 tokenId = _mint(msg.sender);

        emit PublicMint(tokenId, mintPrice);
    }

    function mint(
        bytes32[] memory proof,
        bytes32 root
    ) external {
        bytes32 leaf = keccak256(abi.encode(msg.sender));
        if(drops[root].claimed[msg.sender]) revert ALREADY_CLAIMED();
        if(!MerkleProof.verify(proof, root, leaf)) revert WRONG_PROOF();
        drops[root].claimed[msg.sender] = true;
        drops[root].remaining--;
        uint256 tokenId = _mint(msg.sender);

        emit DropMint(tokenId, root);
    }

     function mintReserved(address to) public onlyRole(RESERVE_MINTER) {
        reservedRemaining--;
        uint256 tokenId = _mint(to);

        emit ReservedMint(tokenId, to);
    }

    ///////////
    // DROPS //
    ///////////

    function exists(bytes32 root) external view returns (bool) {
        return drops[root].exists;
    }

    function claimed(bytes32 root, address to) external view returns (bool) {
        return drops[root].claimed[to];
    }

    function registerDrop(
        bytes32 root,
        uint256 count
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (drops[root].exists) revert EXISTING_DROP();
        drops[root].exists = true;
        drops[root].remaining = count;
        maxPublicMint -= count;

        emit NewDrop(root, count);
    }

    function endDrop(
        bytes32 root
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (drops[root].exists) revert EXISTING_DROP();
        drops[root].exists = false;
        maxPublicMint += drops[root].remaining;

        emit EndDrop(root, drops[root].remaining);
    }

    ///////////
    // ADMIN //
    ///////////

    function setBaseURI(string memory uri) public onlyRole(DEFAULT_ADMIN_ROLE) {
        baseURI = uri;

        emit NewBaseUri(uri);
    }

    function setMintPrice(uint256 newPrice) public onlyRole(DEFAULT_ADMIN_ROLE) {
        mintPrice = newPrice;

        emit NewPrice(newPrice);
    }

    function forfeitReserved(uint256 count) public onlyRole(DEFAULT_ADMIN_ROLE) {
        reservedRemaining -= count;
        maxPublicMint += count;

        emit ForfeitReserved(count);
    }

    function collectFees(address to) external onlyRole(DEFAULT_ADMIN_ROLE) {
        uint256 value = address(this).balance;
        payable(to).transfer(address(this).balance);

        emit CollectFees(value);
    }

    //////////////////////
    // INTERNAL METHODS //
    //////////////////////

    function _mint(address to) private returns (uint256) {
        if(nextId > maxTokenCount) revert ALL_MINTED();
        uint256 tokenId = nextId++;
        maxPublicMint--;
        _safeMint(to, tokenId);
        return tokenId;
    }
}
