// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.6.0;

import "@openzeppelin/contracts/cryptography/MerkleProof.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/math/SafeMath.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import "@openzeppelin/contracts/utils/Pausable.sol";

import "./interfaces/IElpisMetaverseHeroes.sol";

contract ElpisWhitelistIGO is Ownable, Pausable {
    using SafeMath for uint256;

    uint256 public startBlock;
    uint256 public endBlock;
    uint256 public pricePerHeroes;
    // NFT LIMIT for this contract
    uint256 public NFT_LIMIT;
    uint256 public maxHeroesPerTransaction = 10;
    // Total sale NFTs
    uint256 public totalMinted;

    IElpisMetaverseHeroes public immutable token;
    bytes32 public immutable merkleRoot;
    // This is a packed array of booleans.
    mapping(address => uint256) public claimedAddresses;

    event Claimed(address account, uint256 claimed, uint256 remainning);

    modifier started() {
        require(block.number >= startBlock, "Not started yet");
        _;
    }

    modifier notEnded() {
        require(block.number <= endBlock, "Ended");
        _;
    }

    constructor(
        IElpisMetaverseHeroes token_,
        bytes32 merkleRoot_,
        uint256 startBlock_,
        uint256 endBlock_,
        uint256 pricePerHeroes_
    ) public {
        token = token_;
        merkleRoot = merkleRoot_;
        startBlock = startBlock_;
        endBlock = endBlock_;
        pricePerHeroes = pricePerHeroes_;
        NFT_LIMIT = 2000;
    }

    function setTime(uint256 _startBlock, uint256 _endBlock)
        external
        onlyOwner
    {
        require(_endBlock > _startBlock, "Block incorrect");
        startBlock = _startBlock;
        endBlock = _endBlock;
    }

    function getWhiteListHeroes(
        uint256 index,
        address account,
        uint256 amount,
        bytes32[] calldata merkleProof,
        uint256 claimAmount
    ) external payable whenNotPaused started notEnded {
        require(
            msg.value >= claimAmount.mul(pricePerHeroes),
            "Value not enough"
        );
        // Verify the merkle proof.
        bytes32 node = keccak256(abi.encodePacked(index, account, amount));
        require(
            MerkleProof.verify(merkleProof, merkleRoot, node),
            "Verify failed"
        );
        require(
            claimAmount <= maxHeroesPerTransaction,
            "Claim exceed limit per transaction"
        );
        // Verify the amount
        require(
            claimedAddresses[account].add(claimAmount) <= amount,
            "Claim exceeded allowance"
        );

        require(totalMinted.add(claimAmount) <= NFT_LIMIT, "Sold Out");

        claimedAddresses[account] = claimedAddresses[account].add(claimAmount);
        getHeroes(account, claimAmount);

        emit Claimed(account, claimAmount, amount.sub(claimAmount));
    }

    function claimRaiseFundingAmount(address dst) external onlyOwner {
        uint256 amount = address(this).balance;
        payable(dst).transfer(amount);
    }

    function getHeroes(address to, uint256 amount) internal {
        for (uint256 i = 0; i < amount; ++i) {
            token.mint(to);
            totalMinted = totalMinted + 1;
        }
    }

    function pause() external onlyOwner {
        _pause();
    }

    function unpause() external onlyOwner {
        _unpause();
    }
}
