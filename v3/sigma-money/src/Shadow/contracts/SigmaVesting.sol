// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IMinter} from "./interfaces/IMinter.sol";
import {ISigmaVesting} from "./interfaces/ISigmaVesting.sol";

/**
 * @title SigmaVesting
 * @dev This contract manages vesting schedules for Sigma and xSigma tokens.
 * A key feature is the global `release()` function, which allows an operator
 * to process and release all currently available tokens for all beneficiaries in a single transaction.
 *
 */
contract SigmaVesting is ISigmaVesting {

    // ========== STATE VARIABLES ==========

    address public immutable sigma;
    address public immutable xSigma;
    address public immutable ACCESS_HUB;
    address public immutable MINTER;

    // To enable iteration, we must store a list of all beneficiaries.
    address[] public beneficiaries;
    mapping(address => bool) private isBeneficiary;
    
    mapping(address => mapping(address => VestingSchedule)) public vestingSchedules;

    // ========== MODIFIERS ==========

    modifier onlyGovernance() {
        require(msg.sender == ACCESS_HUB, NOT_AUTHORIZED(msg.sender));
        _;
    }

    // ========== CONSTRUCTOR ==========

    constructor(
        address _sigma,
        address _xSigma,
        address _accessHub,
        address _minter
    ) {
        if (_sigma == address(0) || _xSigma == address(0) || _accessHub == address(0)) {
            revert ZeroAddress();
        }
        sigma = _sigma;
        xSigma = _xSigma;
        ACCESS_HUB = _accessHub;
        MINTER = _minter;
    }

    // ========== Governance FUNCTIONS ==========

    function addVestingSchedule(
        address _beneficiary,
        address _tokenAddress,
        uint8 _category,
        UnlockEntry[] calldata _entries
    ) external onlyGovernance {
        if (_beneficiary == address(0)) revert ZeroAddress();
        if (_tokenAddress != sigma && _tokenAddress != xSigma) revert InvalidTokenAddress();
        if (_category < 1 || _category > 6) revert InvalidCategory();
        if (vestingSchedules[_beneficiary][_tokenAddress].isInitialized) revert ScheduleAlreadyExists();
        
        uint256 totalAmount = 0;
        uint64 lastTimestamp = 0;
        for (uint256 i = 0; i < _entries.length; i++) {
            if (_entries[i].timestamp <= lastTimestamp) revert UnorderedTimestamps();
            totalAmount += _entries[i].amount;
            lastTimestamp = _entries[i].timestamp;
        }
        if (totalAmount == 0) revert ZeroTotalAmount();

        // Add beneficiary to iterable list if they are new
        if (!isBeneficiary[_beneficiary]) {
            isBeneficiary[_beneficiary] = true;
            beneficiaries.push(_beneficiary);
        }

        VestingSchedule storage schedule = vestingSchedules[_beneficiary][_tokenAddress];
        schedule.isInitialized = true;
        schedule.vestingCategory = _category;
        schedule.totalAmount = totalAmount;
        schedule.unlockEntries = _entries;

        emit ScheduleAdded(_beneficiary, _tokenAddress, totalAmount, _category);
    }
    
    function removeVestingSchedule(address _beneficiary, address _tokenAddress) external onlyGovernance {
        if (!vestingSchedules[_beneficiary][_tokenAddress].isInitialized) {
            revert ScheduleNotFound();
        }
        delete vestingSchedules[_beneficiary][_tokenAddress];
        emit ScheduleRemoved(_beneficiary, _tokenAddress);
        // Note: We are not removing the user from the `beneficiaries` array for gas simplicity.
        // The release function will simply skip them if they have no active schedules.
    }

    /**
     * @notice Scans all vesting schedules and releases any available tokens.
     * @dev This function iterates through all registered beneficiaries and their potential
     * token schedules (Sigma and xSigma). It can be gas-intensive if the number of
     * beneficiaries is very large.
     */
    function release() external onlyGovernance {
        uint256 totalReleasedThisCall = 0;
        address[] memory tokens = new address[](2);
        tokens[0] = sigma;
        tokens[1] = xSigma;

        for (uint i = 0; i < beneficiaries.length; i++) {
            address beneficiary = beneficiaries[i];
            for (uint j = 0; j < tokens.length; j++) {
                address tokenAddress = tokens[j];
                
                // Check if a schedule exists before calculating releasable amount
                if (vestingSchedules[beneficiary][tokenAddress].isInitialized) {
                    uint256 releasableAmount = getReleasableAmount(beneficiary, tokenAddress);

                    if (releasableAmount > 0) {
                        vestingSchedules[beneficiary][tokenAddress].releasedAmount += releasableAmount;
                        IMinter(MINTER).releaseSigmaVesting(beneficiary, tokenAddress, releasableAmount);
                        emit TokensReleased(beneficiary, tokenAddress, releasableAmount);
                        totalReleasedThisCall += releasableAmount;
                    }
                }
            }
        }
        
        if (totalReleasedThisCall == 0) {
            revert NothingToRelease();
        }
    }

    // ========== VIEW FUNCTIONS ==========

    function getReleasableAmount(address _beneficiary, address _tokenAddress) public view returns (uint256) {
        VestingSchedule storage schedule = vestingSchedules[_beneficiary][_tokenAddress];
        if (!schedule.isInitialized) {
            return 0;
        }
        
        uint256 totalUnlockableAmount = 0;
        for (uint256 i = 0; i < schedule.unlockEntries.length; i++) {
            if (block.timestamp >= schedule.unlockEntries[i].timestamp) {
                totalUnlockableAmount += schedule.unlockEntries[i].amount;
            } else {
                break;
            }
        }
        
        return totalUnlockableAmount - schedule.releasedAmount;
    }
    
    function getVestingSchedule(address _beneficiary, address _tokenAddress) external view returns (VestingSchedule memory) {
        return vestingSchedules[_beneficiary][_tokenAddress];
    }

    function getBeneficiariesCount() external view returns (uint256) {
        return beneficiaries.length;
    }
}