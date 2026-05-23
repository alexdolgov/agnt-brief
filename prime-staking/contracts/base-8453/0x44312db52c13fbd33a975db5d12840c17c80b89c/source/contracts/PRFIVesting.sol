// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/**
 * @title PRFI Token Vesting Contract
 * @notice Manages token vesting with cliff and price-based vesting conditions
 */
contract PRFIVesting is ReentrancyGuard, Ownable {
    using SafeERC20 for IERC20;

    event VestingScheduleCreated(address indexed beneficiary, uint256 amount, uint256 immediateAmount);
    event TokensClaimed(address indexed beneficiary, uint256 amount);
    event VestingTransferred(address indexed from, address indexed to);

    error InvalidAmount();
    error NoVestingSchedule();
    error NothingToClaim();
    error InvalidBeneficiary();
    error NewAddressHasSchedule();
    error ScheduleExists();
    error LengthMismatch();

    struct VestingSchedule {
        uint256 totalAmount;        // Total amount to be vested (excluding immediate release)
        uint256 claimedAmount;      // Amount already claimed
        uint256 startTime;          // When vesting begins
        uint256 lastClaimTime;      // Last time tokens were claimed
        uint256 immediateAmount;    // Amount released immediately
        uint256 vestingDuration;    // Duration of vesting
        uint256 immediateRelease;   // Immediate release percentage
    }
    
    uint256 public constant WHOLE = 1e18;
    
    IERC20 public immutable prfiToken;

    uint256 public totalVestingAmount;   // Total amount in vesting (including immediate release)
    
    mapping(address => VestingSchedule) public vestingSchedules;

    constructor(
        address _prfiToken
    ) Ownable(msg.sender) {
        require(_prfiToken != address(0), InvalidBeneficiary());
        prfiToken = IERC20(_prfiToken);
    }


    /**
     * @notice Creates a vesting schedule for a beneficiary
     * @param beneficiary Address of the beneficiary
     * @param amount Total amount of tokens to vest
     */
    function createVestingSchedule(address beneficiary, uint256 amount, uint256 vestingDuration, uint256 immediateRelease, uint256 cliffTime) public onlyOwner {
        require(beneficiary != address(0), InvalidBeneficiary());
        require(amount != 0, InvalidAmount());

        VestingSchedule storage schedule = vestingSchedules[beneficiary];
        require(schedule.totalAmount == 0, ScheduleExists());

        uint256 immediateAmount = (amount * immediateRelease) / WHOLE;

        uint256 startTime = block.timestamp + cliffTime;
        
        schedule.totalAmount = amount;
        schedule.claimedAmount = immediateAmount;
        schedule.startTime = startTime;
        schedule.lastClaimTime = startTime;
        schedule.immediateAmount = immediateAmount;
        schedule.vestingDuration = vestingDuration;
        schedule.immediateRelease = immediateRelease;

        
        totalVestingAmount += amount;
        
        // Transfer immediate release
        prfiToken.safeTransfer(beneficiary, immediateAmount);
        
        emit VestingScheduleCreated(beneficiary, amount, immediateAmount);
        emit TokensClaimed(beneficiary, immediateAmount);
    }

    function createVestingScheduleBatch(address[] memory beneficiaries, uint256[] memory amounts, uint256[] memory vestingDurations, uint256[] memory immediateReleases, uint256[] memory cliffTimes) external {
        uint256 beneficiariesLength = beneficiaries.length;
        require(beneficiariesLength == amounts.length && beneficiariesLength == vestingDurations.length && beneficiariesLength == immediateReleases.length, LengthMismatch());
        for (uint256 i; i < beneficiariesLength; i++) {
            createVestingSchedule(beneficiaries[i], amounts[i], vestingDurations[i], immediateReleases[i], cliffTimes[i]);
        }
    }

    /**
     * @notice Calculates claimable tokens for a beneficiary
     * @param beneficiary Address of the beneficiary
     * @return Amount of tokens that can be claimed
     */
    function getClaimableAmount(address beneficiary) public view returns (uint256) {
        VestingSchedule memory schedule = vestingSchedules[beneficiary];
        
        uint256 claimedAmount = schedule.claimedAmount;

        uint256 blockTimestamp = block.timestamp;

        uint256 vestingTotalAmount = schedule.totalAmount;

        // Check if there's anything left to claim
        if (claimedAmount == vestingTotalAmount) {
            return 0;
        }

        uint256 vestingStartTime = schedule.startTime;

        // Check if vesting has started
        if (blockTimestamp < vestingStartTime) {
            return 0;
        }

        uint256 lastClaimTime = schedule.lastClaimTime;

        uint256 vestingEndTime = vestingStartTime + schedule.vestingDuration;
        
        uint256 currentClaimTime = blockTimestamp > vestingEndTime ? vestingEndTime : blockTimestamp;

        uint256 elapsedTime = currentClaimTime - lastClaimTime;

        uint256 vestingDuration = schedule.vestingDuration;

        // Calculate vested amount based on elapsed time
        uint256 claimableAmount = ((vestingTotalAmount - claimedAmount) * elapsedTime * WHOLE / vestingDuration) / WHOLE;
        
        return claimableAmount;
    }

    /**
     * @notice Claims vested tokens
     */
    function claimTokens() external nonReentrant {
        VestingSchedule storage schedule = vestingSchedules[msg.sender];
        require(schedule.totalAmount != 0, NoVestingSchedule());
                
        uint256 claimableAmount = getClaimableAmount(msg.sender);
        require(claimableAmount != 0, NothingToClaim());
        
        schedule.claimedAmount += claimableAmount;
        schedule.lastClaimTime = block.timestamp;
        
        prfiToken.safeTransfer(msg.sender, claimableAmount);
        
        emit TokensClaimed(msg.sender, claimableAmount);
    }

    /**
     * @notice Gets the last claim timestamp for an address
     * @param beneficiary Address to check
     * @return Last claim timestamp
     */
    function getLastClaimTimestamp(address beneficiary) external view returns (uint256) {
        return vestingSchedules[beneficiary].lastClaimTime;
    }

    /**
     * @notice Gets the total amount of tokens that can be claimed by all addresses
     * @return Total vesting amount
     */
    function getTotalVestingAmount() external view returns (uint256) {
        return totalVestingAmount;
    }

    /**
     * @notice Transfers vesting schedule to a new address
     * @param newAddress Address to transfer the vesting schedule to
     */
    function transferVesting(address newAddress) external nonReentrant {
        require(newAddress != address(0), InvalidBeneficiary());
        
        VestingSchedule storage currentSchedule = vestingSchedules[msg.sender];
        require(currentSchedule.totalAmount != 0, NoVestingSchedule());
        
        VestingSchedule storage newSchedule = vestingSchedules[newAddress];
        require(newSchedule.totalAmount == 0, NewAddressHasSchedule());
        
        // Copy the schedule to new address
        vestingSchedules[newAddress] = currentSchedule;
        
        // Delete the old schedule
        delete vestingSchedules[msg.sender];
        
        emit VestingTransferred(msg.sender, newAddress);
    }
}
