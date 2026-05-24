// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "./interfaces/IPRFIVesting.sol";

/**
 * @title PRFI Token Vesting Contract
 * @notice Manages token vesting with cliff and price-based vesting conditions
 */
contract PRFIVestingV2 is
    Initializable,
    ReentrancyGuardUpgradeable,
    OwnableUpgradeable,
    IPRFIVesting
{
    using SafeERC20 for IERC20;

    event VestingScheduleCreated(
        address indexed beneficiary,
        uint256 amount,
        uint256 immediateAmount
    );
    event TokensClaimed(address indexed beneficiary, uint256 amount);
    event VestingTransferred(address indexed from, address indexed to);

    error MigrationNotAllowed();
    error InvalidAmount();
    error NoVestingSchedule();
    error NothingToClaim();
    error InvalidBeneficiary();
    error NewAddressHasSchedule();
    error ScheduleExists();
    error LengthMismatch();
    error CannotTransferToSelf();

    /// @custom:storage-location erc7201:primenumbers.storage.vestingv2
    struct PRFIVestingV2Storage {
        IPRFIVesting oldPrfiVesting;
        IERC20 prfiToken;
        uint256 totalVestingAmount; // Total amount in vesting (including immediate release)
        uint256 startTime;
        mapping(address => VestingSchedule) vestingSchedules;
        mapping(address => bool) migrated;
        mapping(bytes32 => VestingSchedule) legacyVestingSchedules;
        mapping(address => bool) isWhitelisted;
    }

    uint256 public constant VESTING_DURATION = 365 days; // 12 months
    uint256 public constant IMMEDIATE_RELEASE = 5; // 5% immediate release
    uint256 public constant WHOLE = 1e18;

    // keccak256(abi.encode(uint256(keccak256("primenumbers.storage.vestingv2")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant PRFIVestingV2StorageLocation =
        0x6bb9b4e265ff6a10f8709db26bbb1baabb9e682df189b54e48b9ef685371c100;

    function _getPRFIVestingV2Storage()
        private
        pure
        returns (PRFIVestingV2Storage storage $)
    {
        assembly {
            $.slot := PRFIVestingV2StorageLocation
        }
    }

    constructor() {
        _disableInitializers();
    }

    function initialize(address _prfiVestingV1) public initializer {
        require(address(_prfiVestingV1) != address(0), InvalidBeneficiary());
        __Ownable_init(_msgSender());
        PRFIVestingV2Storage storage $ = _getPRFIVestingV2Storage();
        $.oldPrfiVesting = IPRFIVesting(_prfiVestingV1);
        $.prfiToken = IERC20($.oldPrfiVesting.prfiToken());

        $.startTime = block.timestamp;

        $.totalVestingAmount = IPRFIVesting(_prfiVestingV1)
            .totalVestingAmount();
    }

    function whitelistAddresses(address[] memory _address) external onlyOwner {
        PRFIVestingV2Storage storage $ = _getPRFIVestingV2Storage();
        uint256 length = _address.length;
        for (uint256 i = 0; i < length; i++) {
            $.isWhitelisted[_address[i]] = true;
        }
    }

    /**
     * @notice Creates a vesting schedule for a beneficiary
     * @param beneficiary Address of the beneficiary
     * @param amount Total amount of tokens to vest
     */
    function createVestingSchedule(
        address beneficiary,
        uint256 amount,
        uint256 vestingDuration,
        uint256 immediateRelease,
        uint256 cliffTime
    ) public onlyOwner {
        require(beneficiary != address(0), InvalidBeneficiary());
        require(amount != 0, InvalidAmount());

        PRFIVestingV2Storage storage $ = _getPRFIVestingV2Storage();
        VestingSchedule storage schedule = $.vestingSchedules[beneficiary];
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

        $.totalVestingAmount += amount;

        // Transfer immediate release
        $.prfiToken.safeTransfer(beneficiary, immediateAmount);

        emit VestingScheduleCreated(beneficiary, amount, immediateAmount);
        emit TokensClaimed(beneficiary, immediateAmount);
    }

    function createVestingScheduleBatch(
        address[] memory beneficiaries,
        uint256[] memory amounts,
        uint256[] memory vestingDurations,
        uint256[] memory immediateReleases,
        uint256[] memory cliffTimes
    ) external {
        uint256 beneficiariesLength = beneficiaries.length;
        require(
            beneficiariesLength == amounts.length &&
                beneficiariesLength == vestingDurations.length &&
                beneficiariesLength == immediateReleases.length,
            LengthMismatch()
        );
        for (uint256 i; i < beneficiariesLength; i++) {
            createVestingSchedule(
                beneficiaries[i],
                amounts[i],
                vestingDurations[i],
                immediateReleases[i],
                cliffTimes[i]
            );
        }
    }

    function migrateVesting() internal {
        PRFIVestingV2Storage storage $ = _getPRFIVestingV2Storage();
        require(address($.oldPrfiVesting) != address(0), MigrationNotAllowed());

        address beneficiary = _msgSender();

        require(!$.migrated[beneficiary], MigrationNotAllowed());

        $.migrated[beneficiary] = true;

        IPRFIVesting.VestingSchedule memory oldSchedule = $
            .oldPrfiVesting
            .vestingSchedules(beneficiary);
        require(oldSchedule.totalAmount != 0, NoVestingSchedule());

        require(
            oldSchedule.lastClaimTime <= $.startTime,
            MigrationNotAllowed()
        );

        bytes32 legacyKey = keccak256(
            abi.encodePacked(
                oldSchedule.totalAmount,
                oldSchedule.claimedAmount,
                oldSchedule.startTime,
                oldSchedule.lastClaimTime,
                oldSchedule.immediateAmount,
                oldSchedule.vestingDuration,
                oldSchedule.immediateRelease
            )
        );

        if (!$.isWhitelisted[beneficiary]) {
            require(
                $.legacyVestingSchedules[legacyKey].totalAmount == 0,
                MigrationNotAllowed()
            );
        }

        $.legacyVestingSchedules[legacyKey] = oldSchedule;

        VestingSchedule storage newSchedule = $.vestingSchedules[beneficiary];
        require(newSchedule.totalAmount == 0, ScheduleExists());

        newSchedule.totalAmount = oldSchedule.totalAmount;
        newSchedule.claimedAmount = oldSchedule.claimedAmount;
        newSchedule.startTime = oldSchedule.startTime;
        newSchedule.lastClaimTime = oldSchedule.lastClaimTime;
        newSchedule.immediateAmount = oldSchedule.immediateAmount;
        newSchedule.vestingDuration = oldSchedule.vestingDuration;
        newSchedule.immediateRelease = oldSchedule.immediateRelease;
    }

    /**
     * @notice Calculates claimable tokens for a beneficiary
     * @param beneficiary Address of the beneficiary
     * @return claimableAmount Amount of tokens that can be claimed
     */
    function getClaimableAmount(
        address beneficiary
    ) public view returns (uint256 claimableAmount) {
        PRFIVestingV2Storage storage $ = _getPRFIVestingV2Storage();
        VestingSchedule memory schedule = $.vestingSchedules[beneficiary];

        uint256 blockTimestamp = block.timestamp;

        claimableAmount =
            _vestingSchedule(
                schedule.totalAmount,
                blockTimestamp,
                schedule.startTime,
                schedule.startTime + schedule.vestingDuration,
                schedule.vestingDuration
            ) -
            schedule.claimedAmount;
    }

    /**
     * @notice Claims vested tokens
     */
    function claimTokens() external nonReentrant {
        PRFIVestingV2Storage storage $ = _getPRFIVestingV2Storage();
        address beneficiary = _msgSender();
        VestingSchedule storage schedule = $.vestingSchedules[beneficiary];
        // If no V2 schedule, attempt migration from V1 if available
        if (!$.migrated[beneficiary]) {
            migrateVesting();
        }

        require(schedule.totalAmount != 0, NoVestingSchedule());

        uint256 claimableAmount = getClaimableAmount(beneficiary);
        require(claimableAmount != 0, NothingToClaim());

        schedule.claimedAmount += claimableAmount;
        schedule.lastClaimTime = block.timestamp;

        $.prfiToken.safeTransfer(beneficiary, claimableAmount);

        emit TokensClaimed(beneficiary, claimableAmount);
    }

    /**
     * @notice Gets the last claim timestamp for an address
     * @param beneficiary Address to check
     * @return Last claim timestamp
     */
    function getLastClaimTimestamp(
        address beneficiary
    ) external view returns (uint256) {
        PRFIVestingV2Storage storage $ = _getPRFIVestingV2Storage();
        return $.vestingSchedules[beneficiary].lastClaimTime;
    }

    /**
     * @notice Gets the total amount of tokens that can be claimed by all addresses
     * @return Total vesting amount
     */
    function getTotalVestingAmount() external view returns (uint256) {
        PRFIVestingV2Storage storage $ = _getPRFIVestingV2Storage();
        return $.totalVestingAmount;
    }

    /**
     * @notice Gets the PRFI token contract
     * @return The PRFI token contract
     */
    function prfiToken() external view returns (IERC20) {
        PRFIVestingV2Storage storage $ = _getPRFIVestingV2Storage();
        return $.prfiToken;
    }

    /**
     * @notice Gets the total amount of tokens that can be claimed by all addresses
     * @return Total vesting amount
     */
    function totalVestingAmount() external view returns (uint256) {
        PRFIVestingV2Storage storage $ = _getPRFIVestingV2Storage();
        return $.totalVestingAmount;
    }

    /**
     * @notice Gets the vesting schedule for a beneficiary
     * @param beneficiary Address of the beneficiary
     * @return The vesting schedule for the beneficiary
     */
    function vestingSchedules(
        address beneficiary
    ) external view returns (VestingSchedule memory) {
        PRFIVestingV2Storage storage $ = _getPRFIVestingV2Storage();
        return $.vestingSchedules[beneficiary];
    }

    /**
     * @notice Transfers vesting schedule to a new address
     * @param newAddress Address to transfer the vesting schedule to
     */
    function transferVesting(address newAddress) external nonReentrant {
        require(newAddress != address(0), InvalidBeneficiary());
        address oldBeneficiary = _msgSender();
        require(newAddress != oldBeneficiary, CannotTransferToSelf());

        PRFIVestingV2Storage storage $ = _getPRFIVestingV2Storage();

        if (!$.migrated[oldBeneficiary]) {
            migrateVesting();
        }

        if ($.oldPrfiVesting.getLastClaimTimestamp(newAddress) > 0) {
            require($.migrated[newAddress], InvalidBeneficiary());
        }

        VestingSchedule storage currentSchedule = $.vestingSchedules[
            oldBeneficiary
        ];

        require(currentSchedule.totalAmount != 0, NoVestingSchedule());
        require(
            currentSchedule.claimedAmount != currentSchedule.totalAmount,
            NothingToClaim()
        );

        VestingSchedule storage newSchedule = $.vestingSchedules[newAddress];
        require(newSchedule.totalAmount == 0, NewAddressHasSchedule());

        // Copy the schedule to new address
        $.vestingSchedules[newAddress] = currentSchedule;

        // Delete the old schedule
        delete $.vestingSchedules[oldBeneficiary];

        emit VestingTransferred(oldBeneficiary, newAddress);
    }

    function _vestingSchedule(
        uint256 totalAllocation,
        uint256 timestamp,
        uint256 start,
        uint256 end,
        uint256 duration
    ) internal view virtual returns (uint256) {
        if (timestamp < start) {
            return 0;
        } else if (timestamp >= end) {
            return totalAllocation;
        } else {
            return (totalAllocation * (timestamp - start)) / duration;
        }
    }
}
