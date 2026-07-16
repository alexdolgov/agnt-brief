// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "../interfaces/ITimelock.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/**
 * @title TimelockProtection
 * @author github.com/SifexPro
 * @notice Contract that provides timelock protection functionality
 * @dev This contract is meant to be inherited by contracts that need timelock protection
 */
abstract contract TimelockProtection {
    // ============ State Variables ============
    ITimelock public timelockMain;
    ITimelock public timelockAdmin;
    
    // ============ Events ============
    event TimelockMainSet(address indexed newTimelock);
    event TimelockAdminSet(address indexed newTimelock);
    
    // ============ Constructor ============
    constructor(address _timelockMain, address _timelockAdmin) {
        if (_timelockMain != address(0)) {
            timelockMain = ITimelock(_timelockMain);
        }
        if (_timelockAdmin != address(0)) {
            timelockAdmin = ITimelock(_timelockAdmin);
        }
    }
    
    // ============ Admin Functions ============
    /**
     * @notice Set the main timelock address
     * @param _timelockMain The new timelock address
     */
    function _setTimelockMain(address _timelockMain) internal {
        require(_timelockMain != address(0), "TimelockProtection: zero address");
        timelockMain = ITimelock(_timelockMain);
        emit TimelockMainSet(_timelockMain);
    }
    
    /**
     * @notice Set the admin timelock address
     * @param _timelockAdmin The new timelock address
     */
    function _setTimelockAdmin(address _timelockAdmin) internal {
        require(_timelockAdmin != address(0), "TimelockProtection: zero address");
        timelockAdmin = ITimelock(_timelockAdmin);
        emit TimelockAdminSet(_timelockAdmin);
    }
    
    // ============ Modifiers ============
    /**
     * @notice Modifier that requires the main timelock to be activated or allows owner if not active
     * @dev This should be used for critical functions that change the system's structure
     */
    modifier requireTimelockMain() {
        // First check if timelock is set and active
        if (address(timelockMain) != address(0)) {
            (bool activated, ) = timelockMain.checkTimelock();
            if (activated) {
                // If active, only allow the timelock to call
                require(msg.sender == address(timelockMain), "TimelockProtection: caller is not main timelock");
                _;
                return;
            }
        }
        
        // If timelock is not set or not active, allow the owner to call
        require(msg.sender == Ownable(address(this)).owner(), "TimelockProtection: caller is not owner");
        _;
    }
    
    /**
     * @notice Modifier that requires the admin timelock to be activated or allows owner if not active
     * @dev This should be used for administrative functions that need some protection
     */
    modifier requireTimelockAdmin() {
        // First check if timelock is set and active
        if (address(timelockAdmin) != address(0)) {
            (bool activated, ) = timelockAdmin.checkTimelock();
            if (activated) {
                // If active, only allow the timelock to call
                require(msg.sender == address(timelockAdmin), "TimelockProtection: caller is not admin timelock");
                _;
                return;
            }
        }
        
        // If timelock is not set or not active, allow the owner to call
        require(msg.sender == Ownable(address(this)).owner(), "TimelockProtection: caller is not owner");
        _;
    }
} 