// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "./interfaces/IDackiePool.sol";

contract IDackie is Ownable {
    using SafeMath for uint256;

    IDackiePool public immutable cakePool;

    address public admin;
    // threshold of locked duration
    uint256 public ceiling;

    uint256 public constant MIN_CEILING_DURATION = 1 weeks;

    event UpdateCeiling(uint256 newCeiling);

    /**
     * @notice Checks if the msg.sender is the admin address
     */
    modifier onlyAdmin() {
        require(msg.sender == admin, "None admin!");
        _;
    }

    /**
     * @notice Constructor
     * @param _dackiePool: Dackie pool contract
     * @param _admin: admin of the this contract
     * @param _ceiling: the max locked duration which the linear decrease start
     */
    constructor(
        IDackiePool _dackiePool,
        address _admin,
        uint256 _ceiling
    ) {
        require(_ceiling >= MIN_CEILING_DURATION, "Invalid ceiling duration");
        cakePool = _dackiePool;
        admin = _admin;
        ceiling = _ceiling;
    }

    /**
     * @notice calculate iDackie credit per user.
     * @param _user: user address.
     */
    function getUserCredit(address _user) external view returns (uint256) {
        require(_user != address(0), "getUserCredit: Invalid address");

        (, , , , uint256 lockStartTime, uint256 lockEndTime, , bool locked , uint256 lockedAmount) = cakePool.userInfo(_user);

        if (!locked || block.timestamp > lockEndTime) {
            return 0;
        }

        // lockEndTime always >= lockStartTime
        uint256 lockDuration = lockEndTime.sub(lockStartTime);

        if (lockDuration >= ceiling) {
            return lockedAmount;
        } else if (lockDuration < ceiling && lockDuration >= 0) {
            return (lockedAmount.mul(lockDuration)).div(ceiling);
        }

        // If none of the above conditions are met, return 0.
        return 0;
    }

    /**
     * @notice update ceiling thereshold duration for iDackie calculation.
     * @param _newCeiling: new threshold duration.
     */
    function updateCeiling(uint256 _newCeiling) external onlyAdmin {
        require(_newCeiling >= MIN_CEILING_DURATION, "updateCeiling: Invalid ceiling");
        require(ceiling != _newCeiling, "updateCeiling: Ceiling not changed");
        ceiling = _newCeiling;
        emit UpdateCeiling(ceiling);
    }
}