// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "openzeppelin/token/ERC20/IERC20.sol";
import "openzeppelin/utils/math/Math.sol";
import {AccessControlEnumerable} from "openzeppelin/access/extensions/AccessControlEnumerable.sol";
import {SafeERC20} from "openzeppelin/token/ERC20/utils/SafeERC20.sol";

import "./interfaces/LSP/IStaking.sol";

/// @title Topupper
/// @notice This is a Mantle internal tool used to calculate and execute daily topups to achieve a
/// boosted APY on METH (Mantle ETH). The contract manages the distribution of additional rewards
/// to METH stakers through automated topup operations.
/// @dev Implements AccessControlEnumerable for role-based access control with RISKMANAGER_ROLE
/// and OPERATOR_ROLE permissions
contract Topupper is AccessControlEnumerable {
    using SafeERC20 for IERC20;

    // Errors.
    error DoesNotReceiveETH();

    // Constants.
    bytes32 public constant RISKMANAGER_ROLE = keccak256("RISKMANAGER_ROLE");
    bytes32 public constant OPERATOR_ROLE = keccak256("OPERATOR_ROLE");

    uint256 private constant BPS_DENOMINATOR = 10000;
    uint256 private constant SECONDS_IN_A_DAY = 86400;
    uint256 private constant DAYS_IN_YEAR = 365;
    uint256 private constant YEARLY_DENOMINATOR = BPS_DENOMINATOR * DAYS_IN_YEAR;

    // State variables.
    /// @notice Core state variables for topup calculations and tracking
    /// @dev checkpointTime - Timestamp of contract deployment, used as reference for topup calculations
    /// @dev targetTopupAPYinBPS - Target annual percentage yield in basis points (default: 20 BPS = 0.2%)
    /// @dev topupCounter - Tracks number of successful topups, manageable by risk manager
    /// @dev cumulativeTopupAmt - Total amount of ETH used for topups since deployment
    address public methStaking;
    address public defundTreasuryAddress;

    uint256 public checkpointTime;
    uint256 public topupCounter;

    uint256 public targetTopupAPYinBPS;
    uint256 public cumulativeTopupAmt;

    // Constructor
    constructor(address staking, address MTreasuryL1_SC, address MTreasuryL1_FF, address TreasuryEOA) {
        require(staking != address(0), "Invalid staking address");
        require(MTreasuryL1_SC != address(0), "Invalid treasury SC address");
        require(MTreasuryL1_FF != address(0), "Invalid treasury FF address");
        require(TreasuryEOA != address(0), "Invalid treasury EOA address");
        methStaking = staking;
        defundTreasuryAddress = MTreasuryL1_FF;

        _setRoleAdmin(RISKMANAGER_ROLE, DEFAULT_ADMIN_ROLE);
        _setRoleAdmin(OPERATOR_ROLE, DEFAULT_ADMIN_ROLE);
        _setRoleAdmin(OPERATOR_ROLE, RISKMANAGER_ROLE);

        // operator role ot be granted to engineering node later; or we can enable topup_byanyone"
        _grantRole(DEFAULT_ADMIN_ROLE, MTreasuryL1_SC); // MTreasuryL1-SC
        _grantRole(OPERATOR_ROLE, TreasuryEOA); // TreasuryEOA-M??
        _grantRole(RISKMANAGER_ROLE, TreasuryEOA); // TreasuryEOA-M

        checkpointTime = block.timestamp;
        targetTopupAPYinBPS = 20;
    }

    /// @notice Executes an automatic topup if conditions are met
    /// @dev Checks operator authorization and ensures proper time has passed since last topup
    /// If no operators are assigned, anyone can call this function
    function autoTopUp() external {
        // Check if there are any operators assigned
        uint256 operatorCount = getRoleMemberCount(OPERATOR_ROLE);

        // If operators exist, require caller to have operator role
        if (operatorCount > 0) {
            require(hasRole(OPERATOR_ROLE, msg.sender), "Caller must be operator");
        }

        uint256 dayCount = getCountByDays();
        uint256 currentCounter = topupCounter;
        require(dayCount >= currentCounter, "Too early for topup");
        
        uint256 topupAmt = getTopupAmt();
        if (topupAmt > 0) {
            _wrapTopup(topupAmt);
            topupCounter = currentCounter + 1;
            cumulativeTopupAmt += topupAmt;
        }
    }

    // Add new function for batch topups if needed
    function batchTopUp(uint256 count) external {
        uint256 operatorCount = getRoleMemberCount(OPERATOR_ROLE);
        
        if (operatorCount > 0) {
            require(hasRole(OPERATOR_ROLE, msg.sender), "Caller must be operator");
        }

        uint256 dayCount = getCountByDays();
        uint256 currentCounter = topupCounter;
        
        // First check if any topups are allowed
        require(dayCount >= currentCounter, "Too early for topup");
        
        // Calculate available topups (safe math)
        uint256 maxTopups = 1 + dayCount - currentCounter;  // Reordered to prevent underflow
        if (count > maxTopups) {
            count = maxTopups;
        }

        for (uint256 i = 0; i < count;) {
            uint256 topupAmt = getTopupAmt();
            if (topupAmt > 0) {
                topupCounter += 1;  // Just increment by 1 for each successful topup
                cumulativeTopupAmt += topupAmt;
                _wrapTopup(topupAmt);
            }
            unchecked { ++i; }
        }
    }

    // Helper Functions
    function getCountByDays() public view returns (uint256) {
        // Use unchecked for gas optimization since we already verify timestamp is greater
        unchecked {
            return (block.timestamp >= checkpointTime) ? (block.timestamp - checkpointTime) / SECONDS_IN_A_DAY : 0;
        }
    }

    function getTopupAmt() public view returns (uint256) {
        uint256 controlled = getTotalControlled();
        if (controlled == 0 || targetTopupAPYinBPS == 0) return 0;
        return Math.mulDiv(controlled, targetTopupAPYinBPS, YEARLY_DENOMINATOR);
    }

    function getTotalControlled() public view returns (uint256) {
        return IStaking(methStaking).totalControlled();
    }

    function _wrapTopup(uint256 _amount) internal {
        require(address(this).balance >= _amount, "Insufficient balance");
        IStaking(methStaking).topUp{value: _amount}();
    }

    // Risk Manager Config
    /// @notice Sets the target APY for topups in basis points
    /// @dev Only callable by RISKMANAGER_ROLE
    /// @param _newTargetTopupAPYinBPS New target APY in basis points (1 BPS = 0.01%)
    /// Must be between 0 and 400 (0% to 4% per year)
    function setTargetTopupAPYinBPS(uint256 _newTargetTopupAPYinBPS) external onlyRole(RISKMANAGER_ROLE) {
        require(_newTargetTopupAPYinBPS >= 0 && _newTargetTopupAPYinBPS <= 400, "Apy in bps out of range");

        targetTopupAPYinBPS = _newTargetTopupAPYinBPS;
    }

    /// @notice Adjusts the checkpoint time and counter for topup calculations
    /// @dev Only callable by RISKMANAGER_ROLE
    /// @param _daysToAdjust Number of days to adjust backwards. Reduces both checkpoint time and counter
    function setCheckpointAndCounter(uint256 _daysToAdjust) external onlyRole(RISKMANAGER_ROLE) {
        checkpointTime -= SECONDS_IN_A_DAY * _daysToAdjust;
    }

    /// @notice Updates the treasury address where defunded assets will be sent
    /// @dev Only callable by RISKMANAGER_ROLE
    /// @param _newTreasuryAddress Address of the new treasury that will receive defunded assets
    function setDefundTreasuryAddress(address _newTreasuryAddress) external onlyRole(RISKMANAGER_ROLE) {
        require(_newTreasuryAddress != address(0), "Invalid treasury address");
        defundTreasuryAddress = _newTreasuryAddress;
    }

    /// @notice Allows the contract to receive ETH for topup operations
    /// @dev Direct ETH transfers through receive() are disabled
    function fundETH() external payable {
        // no need for implementation if just receiving ETH
        // usging transaction value to trace deposit history
    }

    /// @notice Withdraws ETH from the contract to the treasury
    /// @dev Only callable by RISKMANAGER_ROLE
    /// @param amount Amount of ETH to withdraw in wei
    function defundETH(uint256 amount) external onlyRole(RISKMANAGER_ROLE) {
        require(amount <= address(this).balance, "Insufficient balance");
        (bool success,) = payable(defundTreasuryAddress).call{value: amount}("");
        require(success, "ETH transfer failed");
    }

    /// @notice Recovers any ERC20 tokens accidentally sent to the contract
    /// @dev Only callable by RISKMANAGER_ROLE
    /// @param token Address of the ERC20 token to recover
    /// @param amount Amount of tokens to recover
    function rescueERC20(address token, uint256 amount) external onlyRole(RISKMANAGER_ROLE) {
        require(token != address(0), "Invalid token");
        IERC20(token).safeTransfer(defundTreasuryAddress, amount);
    }

    // Quality of life functions
    receive() external payable {
        revert DoesNotReceiveETH();
    }

    fallback() external payable {
        revert DoesNotReceiveETH();
    }
}
