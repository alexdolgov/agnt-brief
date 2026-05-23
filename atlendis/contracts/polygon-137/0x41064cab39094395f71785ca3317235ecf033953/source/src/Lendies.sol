// SPDX-License-Identifier: AGPL-3.0
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";

contract Lendies is ERC721Enumerable, AccessControl {
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
        mapping(address => bool) claimed;
    }
    mapping(bytes32 => Drop) drops;

    constructor(uint256 _tokenCount, uint256 _reservedCount, uint256 _mintPrice)
        ERC721("Lendies", "LNDS")
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

    /////////////////
    // PUBLIC MINT //
    /////////////////

    function mint() public payable {
        require(msg.value == mintPrice);
        _mint(msg.sender);
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

    function claim(
        bytes32[] memory proof,
        bytes32 root
    ) external {
        bytes32 leaf = keccak256(abi.encode(msg.sender));
        require(!drops[root].claimed[msg.sender]);
        require(MerkleProof.verify(proof, root, leaf));
        drops[root].claimed[msg.sender] = true;
        _mint(msg.sender);
    }

    ///////////
    // ADMIN //
    ///////////

    function setBaseURI(string memory _uri) public onlyRole(DEFAULT_ADMIN_ROLE) {
        baseURI = _uri;
    }

    function forfeitReserved(uint256 count) public onlyRole(DEFAULT_ADMIN_ROLE) {
        reservedRemaining -= count;
        maxPublicMint += count;
    }

    function mintReserved(address to) public onlyRole(RESERVE_MINTER) {
        reservedRemaining--;
        _mint(to);
    }

    function registerDrop(
        bytes32 root,
        uint256 count
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        require(!drops[root].exists);
        drops[root].exists = true;
        maxPublicMint -= count;
    }

    function collectFees(address to) external onlyRole(DEFAULT_ADMIN_ROLE) {
        payable(to).transfer(address(this).balance);
    }

    //////////////////////
    // INTERNAL METHODS //
    //////////////////////

    function _mint(address to) private {
        require(nextId <= maxTokenCount);
        uint256 tokenId = nextId++;
        maxPublicMint--;
        _safeMint(to, tokenId);
    }
}
