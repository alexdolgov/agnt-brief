// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

contract DeFiveLpClaiming is Ownable, ReentrancyGuard {
    using SafeERC20 for IERC20;

    // State variables for tracking claims
    mapping(address => uint256) private _claims;

    // Claiming parameters
    IERC20 private _token;
    uint256 private _totalMigrated;
    uint256 private _totalClaimable;
    uint256 private _totalClaimedAmount;
    uint256 private _openingTime;
    uint256 private _closingTime;
    bool private _finalized;
    uint256 private _totalClaimedCounter;
    bytes32 private _merkleRoot;

    // Events
    event Claimed(address indexed user, uint256 claimedAmount);
    event Finalized(address indexed owner, uint256 totalMigrated, uint256 totalBurned);
    event MerkleRootSet(bytes32 merkleRoot);

    // Modifier to ensure actions are only performed while the claiming is active
    modifier onlyWhileActive() {
        require(_isClaimingActive(), "Claiming not active");
        _;
    }

    // Modifier to ensure actions are only performed after claiming closes
    modifier onlyWhileClosed() {
        require(!_isClaimingActive(), "Claiming still active");
        _;
    }

    // Modifier to ensure actions are performed before the claiming starts
    modifier beforeClaimingStart() {
        require(block.timestamp < _openingTime, "Claiming has already started");
        _;
    }

    // Constructor for initializing the claiming contract
    constructor(
        address initialOwner,
        IERC20 token,
        uint256 totalMigrated,
        uint256 totalClaimable,
        uint256 openingTime,
        uint256 closingTime,
        bytes32 merkleRoot
    ) Ownable(initialOwner) {
        require(address(token) != address(0), "Invalid token address");
        require(openingTime >= block.timestamp, "Opening time must be in the future");
        require(closingTime > openingTime, "Closing time must be after opening time");
        require(totalMigrated > 0, "Total Migrated must be greater than zero");
        require(totalClaimable > 0, "Total Claimable must be greater than zero");
        require(merkleRoot != bytes32(0), "Merkle root cannot be zero");

        _token = token;
        _totalMigrated = totalMigrated;
        _totalClaimable = totalClaimable;
        _openingTime = openingTime;
        _closingTime = closingTime;
        _finalized = false;
        _totalClaimedCounter = 0;
        _merkleRoot = merkleRoot;
    }

    // Function to allow claiming with Merkle proof verification
    function claim(uint256 amount, bytes32[] calldata merkleProof) public onlyWhileActive nonReentrant {
        require(_claims[msg.sender] == 0, "User has already claimed");
        require(amount > 0, "Claim amount must be greater than zero");

        // Verify the Merkle proof
        bytes32 leaf = keccak256(abi.encode(msg.sender, amount));
        require(MerkleProof.verify(merkleProof, _merkleRoot, leaf), "Invalid Merkle proof");

        uint256 availableBalance = _token.balanceOf(address(this));

        // Calculate user's proportional share
        uint256 userAlloc = (amount * _totalClaimable) / _totalMigrated;

        uint256 claimingAmount = userAlloc > availableBalance ? availableBalance : userAlloc;

        _totalClaimedAmount += claimingAmount;
        _totalClaimedCounter++;
        _claims[msg.sender] = claimingAmount;

        _token.safeTransfer(msg.sender, claimingAmount);

        emit Claimed(msg.sender, claimingAmount);
    }

    // Finalize the claiming after successful completion
    function finalize() public onlyOwner onlyWhileClosed nonReentrant {
        require(!_finalized, "Claiming already finalized");

        uint256 remainingTokens = _token.balanceOf(address(this));
        require(remainingTokens > 0, "No remaining tokens to burn");

        _token.safeTransfer(msg.sender, remainingTokens);
        _finalized = true;

        emit Finalized(msg.sender, _totalClaimedAmount, remainingTokens);
    }

    // Internal function to check if claiming is currently active
    function _isClaimingActive() internal view returns (bool) {
        return block.timestamp >= _openingTime && block.timestamp <= _closingTime;
    }

    function getTotalClaimed() public view returns (uint256) {
        return _totalClaimedAmount;
    }

    function getTotalMigrated() public view returns (uint256) {
        return _totalMigrated;
    }

    function getTotalClaimable() public view returns (uint256) {
        return _totalClaimable;
    }

    function getOpeningTime() public view returns (uint256) {
        return _openingTime;
    }

    function getClosingTime() public view returns (uint256) {
        return _closingTime;
    }

    function isFinalized() public view returns (bool) {
        return _finalized;
    }

    function getClaims(address user) public view returns (uint256) {
        return _claims[user];
    }

    function isClaimingActive() public view returns (bool) {
        return _isClaimingActive();
    }

    function getTotalClaimedCounter() public view returns (uint256) {
        return _totalClaimedCounter;
    }

    function getToken() public view returns (address) {
        return address(_token);
    }

    function getMerkleRoot() public view returns (bytes32) {
        return _merkleRoot;
    }

    function setMerkleRoot(bytes32 merkleRoot) public onlyOwner beforeClaimingStart {
        require(merkleRoot != bytes32(0), "Merkle root cannot be zero");
        _merkleRoot = merkleRoot;
        emit MerkleRootSet(merkleRoot);
    }

    function setOpeningTime(uint256 openingTime) public onlyOwner beforeClaimingStart {
        require(openingTime >= block.timestamp, "Opening time must be in the future");
        _openingTime = openingTime;
    }

    function setClosingTime(uint256 closingTime) public onlyOwner beforeClaimingStart {
        require(closingTime > _openingTime, "Closing time must be after opening time");
        _closingTime = closingTime;
    }
}
