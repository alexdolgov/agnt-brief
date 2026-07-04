// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.24;

import {EnumerableSet} from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import {AccessControlUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IGeneralError} from "../common/IGeneralError.sol";

contract Vesting is IGeneralError, AccessControlUpgradeable {
    using EnumerableSet for EnumerableSet.UintSet;

    struct Schedule {
        address beneficiary;
        uint256 cliffEndTs;
        uint256 vestingStartTs;
        uint256 vestingDuration;
        uint256 totalAllocation;
        uint256 withdrawn;
    }

    event AddSchedule(uint256 scheduleId, address beneficiary, uint256 amount);
    event Withdraw(uint256 scheduleId, address beneficiary, uint256 amount);

    bytes32 private constant CONTRACT_ID = "Vesting";
    bytes32 public constant ADMIN_ROLE = keccak256("ADMIN_ROLE");

    IERC20 private daoToken;

    Schedule[] public schedules;
    mapping(address beneficiary => EnumerableSet.UintSet) private beneficiarySchedules;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(address defaultAdmin, IERC20 _daoToken) public initializer {
        __AccessControl_init();
        _grantRole(DEFAULT_ADMIN_ROLE, defaultAdmin);
        daoToken = _daoToken;
    }

    function withdrawERC20(IERC20 tokenToWithdraw, address receiver, uint256 amount) external onlyRole(ADMIN_ROLE) {
        tokenToWithdraw.transfer(receiver, amount);
    }

    function addSchedules(Schedule[] calldata _schedules) external onlyRole(ADMIN_ROLE) {
        for (uint256 i; i < _schedules.length; i++) {
            uint256 scheduleId = schedules.length;
            bool added = beneficiarySchedules[_schedules[i].beneficiary].add(scheduleId);
            if (!added) {
                revert GeneralError(CONTRACT_ID, 50001);
            }
            schedules.push(_schedules[i]);
            emit AddSchedule(scheduleId, _schedules[i].beneficiary, _schedules[i].totalAllocation);
        }
    }

    function getSchedules(address beneficiary) external view returns (uint256[] memory) {
        return beneficiarySchedules[beneficiary].values();
    }

    function withdraw(uint256 scheduleId) external {
        uint256 amount = vestedAmount(scheduleId, block.timestamp);
        if (amount == 0) {
            revert GeneralError(CONTRACT_ID, 400);
        }
        Schedule storage schedule = schedules[scheduleId];
        uint256 newWithdrawnAmount = schedule.withdrawn + amount;
        if (newWithdrawnAmount > schedule.totalAllocation) {
            revert GeneralError(CONTRACT_ID, 500);
        }
        schedule.withdrawn = newWithdrawnAmount;
        SafeERC20.safeTransfer(daoToken, schedule.beneficiary, amount);
        emit Withdraw(scheduleId, schedule.beneficiary, amount);
    }

    function vestedAmount(uint256 scheduleId, uint256 timestamp) public view returns (uint256) {
        Schedule memory schedule = schedules[scheduleId];
        if (timestamp < schedule.cliffEndTs || timestamp < schedule.vestingStartTs) {
            return 0;
        } else if (timestamp >= schedule.vestingStartTs + schedule.vestingDuration) {
            return schedule.totalAllocation - schedule.withdrawn;
        } else {
            uint256 elapsedTime = timestamp - schedule.vestingStartTs;
            return (schedule.totalAllocation * elapsedTime) / schedule.vestingDuration - schedule.withdrawn;
        }
    }
}
