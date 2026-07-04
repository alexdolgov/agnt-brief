// SPDX-License-Identifier: MIT
pragma solidity 0.8.11;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {Pausable} from "@openzeppelin/contracts/security/Pausable.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import {MerkleProof} from "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";

import "../interfaces/IBEP20.sol";
import "../libraries/SafeBEP20.sol";

interface ILuckyDice {
    function getUserPrivateBetLength(address user) external view returns (uint256);
}

/**
 * @title LuckyChipAirdrop
 * @notice It distributes LC tokens with a Merkle-tree airdrop.
 */
contract LuckyChipAirdrop is Pausable, ReentrancyGuard, Ownable {
    using SafeBEP20 for IBEP20;

    IBEP20 public immutable lcToken;
    uint256 public immutable MAXIMUM_AMOUNT_TO_CLAIM;

    bool public isMerkleRootSet;
    bytes32 public merkleRoot;
    uint256 public endTimestamp;

    uint256 public constant TOTAL_PERCENT = 10000;
    uint256 public lcPercent = 5000;
    uint256 public bnbPercent = 2500;
    uint256 public usdtPercent = 2500;

    ILuckyDice public lcDice;
    ILuckyDice public bnbDice;
    ILuckyDice public usdtDice;

    mapping(address => bool) public hasClaimedLC;
    mapping(address => bool) public hasClaimedBNB;
    mapping(address => bool) public hasClaimedUSDT;
    mapping(address => uint256) public claimedAmount;

    event AirdropRewardsClaim(address indexed user, uint256 amount);
    event MerkleRootSet(bytes32 merkleRoot);
    event NewEndTimestamp(uint256 endTimestamp);
    event TokensWithdrawn(uint256 amount);

    /**
     * @notice Constructor
     * @param _endTimestamp end timestamp for claiming
     * @param _maximumAmountToClaim maximum amount to claim per a user
     * @param _lcToken address of the lc token
     */
    constructor(
        uint256 _endTimestamp,
        uint256 _maximumAmountToClaim,
        address _lcToken,
        address _lcDiceAddr,
        address _bnbDiceAddr,
        address _usdtDiceAddr
    ) {
        endTimestamp = _endTimestamp;
        MAXIMUM_AMOUNT_TO_CLAIM = _maximumAmountToClaim;

        lcToken = IBEP20(_lcToken);

        lcDice = ILuckyDice(_lcDiceAddr);
        bnbDice = ILuckyDice(_bnbDiceAddr);
        usdtDice = ILuckyDice(_usdtDiceAddr);
    }

    /**
     * @notice Claim tokens for airdrop
     * @param amount amount to claim for the airdrop
     * @param merkleProof array containing the merkle proof
     */
    function claim(
        uint256 amount,
        bytes32[] calldata merkleProof
    ) external whenNotPaused nonReentrant {
        require(isMerkleRootSet, "Airdrop: Merkle root not set");
        require(amount <= MAXIMUM_AMOUNT_TO_CLAIM, "Airdrop: Amount too high");
        require(block.timestamp <= endTimestamp, "Airdrop: Too late to claim");

        // Verify the user has claimed
        require(!hasClaimedLC[msg.sender] || !hasClaimedBNB[msg.sender] || !hasClaimedUSDT[msg.sender], "Airdrop: Already claimed");

        // Compute the node and verify the merkle proof
        bytes32 node = keccak256(abi.encodePacked(msg.sender, amount));
        require(MerkleProof.verify(merkleProof, merkleRoot, node), "Airdrop: Invalid proof");

        // Set as claimed
        uint256 totalAmount = 0;
        if(address(lcDice) != address(0) && lcDice.getUserPrivateBetLength(msg.sender) > 0 && !hasClaimedLC[msg.sender]){
            totalAmount += amount * lcPercent / TOTAL_PERCENT;
            hasClaimedLC[msg.sender] = true;
        }
        if(address(bnbDice) != address(0) && bnbDice.getUserPrivateBetLength(msg.sender) > 0 && !hasClaimedBNB[msg.sender]){
            totalAmount += amount * bnbPercent / TOTAL_PERCENT;
            hasClaimedBNB[msg.sender] = true;
        }
        if(address(usdtDice) != address(0) && usdtDice.getUserPrivateBetLength(msg.sender) > 0 && !hasClaimedUSDT[msg.sender]){
            totalAmount += amount * usdtPercent / TOTAL_PERCENT;
            hasClaimedUSDT[msg.sender] = true;
        }

        if(totalAmount > 0){
            // Transfer tokens
            claimedAmount[msg.sender] = claimedAmount[msg.sender] + totalAmount;
            lcToken.safeTransfer(msg.sender, totalAmount);
            emit AirdropRewardsClaim(msg.sender, totalAmount);
        }
    }

    /**
     * @notice Check whether it is possible to claim (it doesn't check orders)
     * @param user address of the user
     * @param amount amount to claim
     * @param merkleProof array containing the merkle proof
     */
    function canClaim(
        address user,
        uint256 amount,
        bytes32[] calldata merkleProof
    ) public view returns (bool) {
        if (block.timestamp <= endTimestamp) {
            // Compute the node and verify the merkle proof
            bytes32 node = keccak256(abi.encodePacked(user, amount));
            return MerkleProof.verify(merkleProof, merkleRoot, node);
        } else {
            return false;
        }
    }

    /**
     * @notice Check whether it is possible to claim (it doesn't check orders)
     * @param user address of the user
     * @param amount amount to claim
     * @param merkleProof array containing the merkle proof
     */
    function pendingAirdrop(
        address user,
        uint256 amount,
        bytes32[] calldata merkleProof
    ) public view returns (uint256) {
        if (block.timestamp <= endTimestamp) {
            // Compute the node and verify the merkle proof
            bytes32 node = keccak256(abi.encodePacked(user, amount));
            if(MerkleProof.verify(merkleProof, merkleRoot, node)){
                uint256 totalAmount = 0;
                if(address(lcDice) != address(0) && lcDice.getUserPrivateBetLength(user) > 0 && !hasClaimedLC[user]){
                    totalAmount += amount * lcPercent / TOTAL_PERCENT;
                }
                if(address(bnbDice) != address(0) && bnbDice.getUserPrivateBetLength(user) > 0 && !hasClaimedBNB[user]){
                    totalAmount += amount * bnbPercent / TOTAL_PERCENT;
                }
                if(address(usdtDice) != address(0) && usdtDice.getUserPrivateBetLength(user) > 0 && !hasClaimedUSDT[user]){
                    totalAmount += amount * usdtPercent / TOTAL_PERCENT;
                }
                return totalAmount;
            }else{
                return 0;
            }
        } else {
            return 0;
        }
    }

    function setDice(address _lcDiceAddr, address _bnbDiceAddr, address _usdtDiceAddr) external onlyOwner{
        require(_lcDiceAddr != address(0) && _bnbDiceAddr != address(0) && _usdtDiceAddr != address(0), "Zero");
        lcDice = ILuckyDice(_lcDiceAddr);
        bnbDice = ILuckyDice(_bnbDiceAddr);
        usdtDice = ILuckyDice(_usdtDiceAddr);
    }

    function setPercent(uint256 _lcPercent, uint256 _bnbPerent, uint256 _usdtPercent) external onlyOwner{
        require(_lcPercent + _bnbPerent + _usdtPercent == TOTAL_PERCENT, "Sum to TOTAL_PERCENT");
        lcPercent = _lcPercent;
        bnbPercent = _bnbPerent;
        usdtPercent = _usdtPercent;
    }

    function isDicePlayed(address user) public view returns (bool lcPlayed, bool bnbPlayed, bool usdtPlayed) {
        if(address(lcDice) != address(0) && lcDice.getUserPrivateBetLength(user) > 0){
            lcPlayed = true;
        }
        if(address(bnbDice) != address(0) && bnbDice.getUserPrivateBetLength(user) > 0){
            bnbPlayed = true;
        }
        if(address(usdtDice) != address(0) && usdtDice.getUserPrivateBetLength(user) > 0){
            usdtPlayed = true;
        }
    }

    /**
     * @notice Pause airdrop
     */
    function pauseAirdrop() external onlyOwner whenNotPaused {
        _pause();
    }

    /**
     * @notice Set merkle root for airdrop
     * @param _merkleRoot merkle root
     */
    function setMerkleRoot(bytes32 _merkleRoot) external onlyOwner {
        require(!isMerkleRootSet, "Owner: Merkle root already set");

        isMerkleRootSet = true;
        merkleRoot = _merkleRoot;

        emit MerkleRootSet(_merkleRoot);
    }

    /**
     * @notice Unpause airdrop
     */
    function unpauseAirdrop() external onlyOwner whenPaused {
        _unpause();
    }

    /**
     * @notice Update end timestamp
     * @param newEndTimestamp new endtimestamp
     * @dev Must be within 30 days
     */
    function updateEndTimestamp(uint256 newEndTimestamp) external onlyOwner {
        require(block.timestamp + 30 days > newEndTimestamp, "Owner: New timestamp too far");
        endTimestamp = newEndTimestamp;

        emit NewEndTimestamp(newEndTimestamp);
    }

    /**
     * @notice Transfer tokens back to owner
     */
    function withdrawTokenRewards() external onlyOwner {
        require(block.timestamp > (endTimestamp + 1 days), "Owner: Too early to remove rewards");
        uint256 balanceToWithdraw = lcToken.balanceOf(address(this));
        lcToken.safeTransfer(msg.sender, balanceToWithdraw);

        emit TokensWithdrawn(balanceToWithdraw);
    }
}