// SPDX-License-Identifier: AGPL-3.0
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";

contract EasyLendies is ERC721Enumerable, Ownable {
    /////////////
    // STORAGE //
    /////////////

    uint256 public nextId = 1;
    uint256 public maxTokenCount;
    uint256 public maxPublicMint;
    string public baseURI;
    uint256 public mintPrice;
    struct Drop {
        bool active;
        bool exists;
        bool isMerkle;
        uint256 remaining;
        mapping(address => bool) claimed;
    }
    mapping(bytes32 => Drop) drops;

    constructor(uint256 _tokenCount, uint256 _mintPrice)
        ERC721("EasyLendies", "EL")
        Ownable()
    {
        maxTokenCount = _tokenCount;
        maxPublicMint = _tokenCount;
        mintPrice = _mintPrice;
    }

    function setBaseURI(string memory _uri) public onlyOwner {
        baseURI = _uri;
    }

    function _baseURI() internal view override returns (string memory) {
        return baseURI;
    }

    /////////////////
    // PUBLIC MINT //
    /////////////////

    function mint() public payable {
        require(msg.value == mintPrice);
        _mint();
    }

    ///////////
    // DROPS //
    ///////////

    function exists(bytes32 root) external view returns(bool) {
        return drops[root].exists;
    }

    function isActive(bytes32 root) external view returns(bool) {
        return drops[root].active;
    }

    function remainingClaims(bytes32 root) external view returns(uint) {
        return drops[root].remaining;
    }

    function wasClaimed(bytes32 root, address to) external view returns(bool) {
        require(drops[root].isMerkle);
        return drops[root].claimed[to];
    }

    function registerDrop(bytes32 root, uint256 count, bool isMerkle) external onlyOwner {
        require(!drops[root].exists);
        drops[root].active = true;
        drops[root].exists = true;
        drops[root].isMerkle = isMerkle;
        drops[root].remaining = count;
        maxPublicMint -= count;
    }

    function endDrop(bytes32 root) external onlyOwner {
        require(drops[root].active);
        drops[root].active = false;
        maxPublicMint += drops[root].remaining;
    }

    function claim(
        bytes32[] memory proof,
        bytes32 root,
        bytes32 leaf
    ) external {
        require(drops[root].active);
        require(drops[root].isMerkle);
        require(drops[root].remaining > 0);
        require(!drops[root].claimed[msg.sender]);
        require(keccak256(abi.encode(msg.sender)) == leaf);
        require(MerkleProof.verify(proof, root, leaf));
        drops[root].remaining--;
        drops[root].claimed[msg.sender] = true;
        _mint();
    }

    function claim(
        bytes32 root
    ) external {
        require(drops[root].active);
        require(drops[root].remaining > 0);
        require(!drops[root].isMerkle);
        drops[root].remaining--;
        _mint();
    }

    ////////////////////
    // FEE COLLECTION //
    ////////////////////

    function collect() external onlyOwner {
        payable(msg.sender).transfer(address(this).balance);
    }

    //////////////////////
    // INTERNAL METHODS //
    //////////////////////

    function _mint() private {
        require(nextId <= maxTokenCount);
        uint256 tokenId = nextId++;
        maxPublicMint--;
        _safeMint(msg.sender, tokenId);
    }
}
