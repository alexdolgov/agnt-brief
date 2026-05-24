// SPDX-License-Identifier: MIT

pragma solidity >=0.8.24 <0.9.0;

import {Ownable} from "./Ownable.sol";

/**
 * @title Controller
 * @dev Contract module that extends Ownable to provide a more flexible authorization
 * system where multiple addresses can be granted controller privileges.
 * @notice This allows for a multi-admin setup where both the owner and authorized
 * controllers can execute protected functions. The owner maintains the ability to
 * add or remove controllers.
 */
abstract contract Controller is Ownable {
    /*//////////////////////////////////////////////////////////////
                            STATE VARIABLES
    //////////////////////////////////////////////////////////////*/
    /// @notice Mapping of addresses to their controller status
    mapping(address => bool) public controllers;
    /// @notice Number of active controllers (excluding owner)
    uint256 private _numControllers;
    /// @notice Array of controller addresses
    address[] private _controllerList;
    /*//////////////////////////////////////////////////////////////
                                EVENTS
    //////////////////////////////////////////////////////////////*/
    /// @notice Emitted when a new controller is authorized
    event ControllerAdded(address indexed controller);
    /// @notice Emitted when a controller's authorization is revoked
    event ControllerRemoved(address indexed controller);
    /*//////////////////////////////////////////////////////////////
                            CUSTOM ERRORS
    //////////////////////////////////////////////////////////////*/
    /// @notice Thrown when a non-controller tries to access a protected function
    error SignerIsNotController();
    /*//////////////////////////////////////////////////////////////
                                MODIFIERS
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Restricts function access to authorized controllers and owner
     * @dev Reverts with SignerIsNotController if caller lacks authorization
     */
    modifier onlyController() {
        if (!isController(_msgSender())) {
            revert SignerIsNotController();
        }
        _;
    }

    /*//////////////////////////////////////////////////////////////
                            PUBLIC FUNCTIONS
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Adds a new controller
     * @dev Only the owner can add new controllers
     * @param controller Address to be granted controller privileges
     */
    function addController(address controller) external onlyOwner {
        if (!controllers[controller] && controller != owner()) {
            controllers[controller] = true;
            _numControllers++;
            _controllerList.push(controller);
            emit ControllerAdded(controller);
        }
    }

    /**
     * @notice Removes a controller
     * @dev Only the owner can remove controllers
     * @param controller Address to have controller privileges revoked
     */
    function removeController(address controller) external onlyOwner {
        if (controllers[controller]) {
            controllers[controller] = false;
            uint256 length = _controllerList.length;
            for (uint256 i = 0; i < length; i++) {
                if (_controllerList[i] == controller) {
                    _controllerList[i] = _controllerList[length - 1];
                    _controllerList.pop();
                    break;
                }
            }
            _numControllers--;
            emit ControllerRemoved(controller);
        }
    }

    /*//////////////////////////////////////////////////////////////
                            VIEW FUNCTIONS
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Checks if an address has controller privileges
     * @dev Returns true if the address is either the owner or an authorized controller
     * @param controller Address to check for authorization
     * @return True if the address has controller privileges
     */
    function isController(address controller) public view returns (bool) {
        return controller == owner() || controllers[controller];
    }

    /**
     * @notice Gets the number of controllers excluding the owner
     * @return The number of active controllers (excluding owner)
     */
    function numControllers() public view returns (uint256) {
        return _numControllers;
    }

    /**
     * @notice Gets the list of active controllers
     * @return Array of controller addresses
     */
    function getControllers() public view virtual returns (address[] memory) {
        return _controllerList;
    }
}
