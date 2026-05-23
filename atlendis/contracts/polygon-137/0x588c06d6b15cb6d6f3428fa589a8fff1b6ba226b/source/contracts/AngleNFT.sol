// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/utils/Address.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";

import "./ERC721Tradable.sol";

/**
 * @title AngleNFT
 * Base contract to create and distribute rewards to the Angle community
 */
contract AngleNFT is ERC721Tradable {
    using Address for address;
    using Counters for Counters.Counter;

    // ============================== Variables ===================================
    /// @notice  Root of the Merkle Tree used for whitelisting addresses
    bytes32 public merkleRoot;

    // This is a packed array of booleans. Used to note address that have claimed
    mapping(uint256 => uint256) private _claimedBitMap;

    // ============================== Constructor ===================================

    /// @notice Constructor of the NFT contract
    /// Takes as argument the OpenSea contract to manage sells and transfers
    /// and the merkle root of the whitelisting merkle tree
    constructor(
        bytes32 _merkleRoot,
        string memory _baseTokenURI
    ) ERC721Tradable("Angle Protocol - Knowledge NFT", "ANGLEKNOWLEDGE") {
        merkleRoot = _merkleRoot;
        baseTokenURI = _baseTokenURI;
    }

    // ============================== Public functions ===================================

    function isClaimed(uint256 index) public view returns (bool) {
        uint256 claimedWordIndex = index / 256;
        uint256 claimedBitIndex = index % 256;
        uint256 claimedWord = _claimedBitMap[claimedWordIndex];
        uint256 mask = (1 << claimedBitIndex);
        return claimedWord & mask == mask;
    }

    function _setClaimed(uint256 index) private {
        uint256 claimedWordIndex = index / 256;
        uint256 claimedBitIndex = index % 256;
        _claimedBitMap[claimedWordIndex] =
            _claimedBitMap[claimedWordIndex] |
            (1 << claimedBitIndex);
    }

    /// @notice Checks if a proof is valid and an account is whitelisted
    /// @param index Leaf index in the merkle tree
    /// @param account Account to check
    /// @param merkleProof List of hashes corresponding to the nodes of the tree required
    /// to build the merkle proof
    function isWhitelisted(
        uint256 index,
        address account,
        uint256 tokenType,
        bytes32[] calldata merkleProof
    ) public view returns (bool) {
        require(
            0 <= tokenType && tokenType <= 2,
            "Token type must be 0, 1 or 2"
        );
        bytes32 node = keccak256(abi.encodePacked(index, account, tokenType));
        return MerkleProof.verify(merkleProof, merkleRoot, node);
    }

    /// @notice Mints `tokenId` and transfers it to `to` during VIP Sale Period
    /// @param to address of the future owner of the token
    /// @param index Leaf index in the merkle tree
    /// @param tokenType Type of reward token: 0 for gold, 1 for silver and 2 for bronze
    /// @param merkleProof List of hashes corresponding to the nodes of the tree required
    /// to build the merkle proof
    function mint(
        address to,
        uint256 index,
        uint256 tokenType,
        bytes32[] calldata merkleProof
    ) external payable {
        require(
            isWhitelisted(index, to, tokenType, merkleProof),
            "Account is not whitelisted"
        );
        require(!isClaimed(index), "Already claimed");
        // Mark it claimed and send the token.
        _setClaimed(index);
        _mint(to, index + 1);
    }

    // ============================== Governor ===================================

    /// @notice Recovers any ERC20 token (wETH, USDC) that could accrue on this contract
    /// @param tokenAddress Address of the token to recover
    /// @param to Address to send the ERC20 to
    /// @param amountToRecover Amount of ERC20 to recover
    function recoverERC20(
        address tokenAddress,
        address to,
        uint256 amountToRecover
    ) external onlyOwner {
        IERC20(tokenAddress).transfer(to, amountToRecover);
    }

    /// @notice Recovers any ETH that could accrue on this contract
    /// @param to Address to send the ETH to
    /// @param amountToRecover Amount of ETH to recover
    function recoverETH(address payable to, uint256 amountToRecover)
        external
        onlyOwner
    {
        to.transfer(amountToRecover);
    }

    /// @notice Updates the merkle root
    /// @param _merkleRoot New merkle root
    function updateMerkleRoot(bytes32 _merkleRoot) external onlyOwner {
        merkleRoot = _merkleRoot;
    }

    /// @notice Updates token URI
    /// @param _baseTokenURI New base token URI
    function updateBaseTokenURI(string memory _baseTokenURI)
        external
        onlyOwner
    {
        baseTokenURI = _baseTokenURI;
    }

    /// @notice Makes this contract payable
    receive() external payable {}

    // ============================== Internal Functions ===================================

    /// @notice Mints a new token
    /// @param to address of the future owner of the token
    /// @param tokenId id of the token to mint
    /// @dev Checks that the totalSupply is respected, that
    function _mint(address to, uint256 tokenId) internal override {
        super._mint(to, tokenId);
    }
}
