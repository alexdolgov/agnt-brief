// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";
import "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";

import "./libraries/Constants.sol";

/**
 * @title SWPxNFT contract
 * @dev Extends ERC721 Non-Fungible Token Standard basic implementation
 */
contract SWPxNFT is ERC721Enumerable, Ownable {
    using SafeERC20 for IERC20;
    using SafeMath for uint256;

    // Base URI
    string private _baseURIextended;
    uint256 public MAX_SUPPLY;
    uint256 public NFT_PRICE;
    uint256 public SALE_START_TIMESTAMP;
    uint256 public MAX_RESERVE = 150;
    uint256 public reservedAmount;
    bytes32 public root;
    address public multiSig = 0x4D5bCfc14282d930eE09bee96D3a7D5F338251C6; //swpx multisig

    uint256 public stopMint;

    mapping(address => bool) public mintedNft;
    mapping(address => uint256) public originalMinters;
    mapping(uint256 => address) public originalMinterOf;

    constructor(
        uint256 _maxSupply,
        uint256 _nftPrice,
        uint256 _startTimestamp
    ) ERC721("SwapX Founders NFTs", "xNFT") {
        MAX_SUPPLY = _maxSupply;
        NFT_PRICE = _nftPrice;
        SALE_START_TIMESTAMP = _startTimestamp;

        stopMint = block.timestamp + 48 /* 12 */ * Constants.EPOCH_LENGTH;
    }

    modifier mintNotStopped() {
        require(block.timestamp < stopMint, "Mint stopped");
        _;
    }

    function withdraw() external onlyOwner {
        (bool withdrawMultiSig, ) = multiSig.call{value: address(this).balance}("");
        require(withdrawMultiSig, "Withdraw Failed.");
    }

    function setRoot(bytes32 _root) external onlyOwner {
        root = _root;
    }

    function setNftPrice(uint256 _nftPrice) external onlyOwner {
        NFT_PRICE = _nftPrice;
    }

    /**
     * Mint NFTs by owner
     */
    function reserveNFTs(address _to, uint256 _amount) public onlyOwner mintNotStopped {
        require(_to != address(0), "Invalid address to reserve.");
        require(
            reservedAmount.add(_amount) <= MAX_RESERVE &&
                _amount.add(totalSupply()) <= MAX_SUPPLY,
            "Invalid amount"
        );

        reservedAmount = reservedAmount.add(_amount);

        for (uint256 i = 0; i < _amount; i++) {
            _safeMint(_to, totalSupply());
        }
    }

    /**
     * @dev Return the base URI
     */
    function _baseURI() internal view virtual override returns (string memory) {
        return _baseURIextended;
    }

    /**
     * @dev Return the base URI
     */
    function baseURI() external view returns (string memory) {
        return _baseURI();
    }

    /**
     * @dev Set the base URI
     */
    function setBaseURI(string memory baseURI_) external onlyOwner {
        _baseURIextended = baseURI_;
    }

    /**
     * Get the array of token for owner.
     */
    function tokensOfOwner(address _owner) external view returns (uint256[] memory) {
        uint256 tokenCount = balanceOf(_owner);
        if (tokenCount == 0) {
            return new uint256[](0);
        } else {
            uint256[] memory result = new uint256[](tokenCount);
            for (uint256 index; index < tokenCount; index++) {
                result[index] = tokenOfOwnerByIndex(_owner, index);
            }
            return result;
        }
    }

    function verifyLeaf(bytes32[] memory proof, address sender, uint256 amount) internal view returns (bool) {
        bytes32 leaf = keccak256(abi.encodePacked(keccak256(abi.encodePacked(sender, amount))));
        return MerkleProof.verify(proof, root, leaf);
    }

    /**
     * Mint whitelisted
     */
    function mint(uint256 amount, bytes32[] memory proof) public payable mintNotStopped {
        require(block.timestamp >= SALE_START_TIMESTAMP, "Sale has not started yet.");
        require(verifyLeaf(proof, msg.sender, amount), "Not whitelisted.");
        require(NFT_PRICE.mul(amount) == msg.value, "SONIC value sent is not correct");
        require(!mintedNft[msg.sender], "Already minted");

        mintedNft[msg.sender] = true;
        originalMinters[msg.sender] = originalMinters[msg.sender].add(amount);
        _mintTo(msg.sender, amount);
    }

    function _mintTo(address account, uint amount) internal {
        require(totalSupply().add(amount) <= MAX_SUPPLY, "Mint would exceed max supply.");

        for (uint256 i = 0; i < amount; i++) {
            if (totalSupply() < MAX_SUPPLY) {
                uint256 tokenId = totalSupply();
                originalMinterOf[tokenId] = account;
                _safeMint(account, tokenId);
            }
        }
    }
}
