// SPDX-License-Identifier: MIT
pragma solidity 0.8.11;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {Pausable} from "@openzeppelin/contracts/security/Pausable.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/security/ReentrancyGuard.sol";

import "../interfaces/IBEP20.sol";
import "../libraries/SafeBEP20.sol";

interface ILuckyDice {
    function getUserPrivateBetLength(address user) external view returns (uint256);
}

/**
 * @title LuckyChip Airdrop For Player
 */
contract PlayerAirdrop is Pausable, ReentrancyGuard, Ownable {
    using SafeBEP20 for IBEP20;

    IBEP20 public immutable lcToken;
    uint256 public immutable MAXIMUM_AMOUNT_TO_CLAIM;

    uint256 public singleAmount;
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
        uint256 _singleAmount,
        address _lcToken,
        address _lcDiceAddr,
        address _bnbDiceAddr,
        address _usdtDiceAddr
    ) {
        endTimestamp = _endTimestamp;
        MAXIMUM_AMOUNT_TO_CLAIM = _maximumAmountToClaim;
        singleAmount = _singleAmount;

        lcToken = IBEP20(_lcToken);

        lcDice = ILuckyDice(_lcDiceAddr);
        bnbDice = ILuckyDice(_bnbDiceAddr);
        usdtDice = ILuckyDice(_usdtDiceAddr);
    }

    /**
     * @notice Claim tokens for airdrop
     */
    function claim() external whenNotPaused nonReentrant {
        require(block.timestamp <= endTimestamp, "Airdrop: Too late to claim");

        // Verify the user has claimed
        require(!hasClaimedLC[msg.sender] || !hasClaimedBNB[msg.sender] || !hasClaimedUSDT[msg.sender], "Airdrop: Already claimed");

        // Set as claimed
        uint256 totalAmount = 0;
        uint256 amount = singleAmount;
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
     */
    function pendingAirdrop(
        address user
    ) public view returns (uint256) {
        if (block.timestamp <= endTimestamp) {
            uint256 totalAmount = 0;
            uint256 amount = singleAmount;
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
        } else {
            return 0;
        }
    }

    function setSingleAmount(uint256 _singleAmount) external onlyOwner{
        require(_singleAmount <= MAXIMUM_AMOUNT_TO_CLAIM, "Airdrop: singleAmount too high");
        singleAmount = _singleAmount;
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