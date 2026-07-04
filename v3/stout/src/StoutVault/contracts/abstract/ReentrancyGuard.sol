// SPDX-License-Identifier: MIT

pragma solidity >=0.8.24 <0.9.0;

/**
 * @title ReentrancyGuard
 * @dev Contract module that helps prevent reentrant calls to a function
 * @notice This module is used through inheritance. It will make available the modifier
 * `nonReentrant`, which can be applied to functions to make sure there are no nested
 * (reentrant) calls to them.
 */
abstract contract ReentrancyGuard {
    /*//////////////////////////////////////////////////////////////
                            STATE VARIABLES
    //////////////////////////////////////////////////////////////*/
    /// @notice Guard state constants
    uint256 private constant NOT_ENTERED = 1;
    uint256 private constant ENTERED = 2;
    /// @notice Current state of the guard
    uint256 private _status;
    /*//////////////////////////////////////////////////////////////
                            CUSTOM ERRORS
    //////////////////////////////////////////////////////////////*/
    error ReentrantCall();
    /*//////////////////////////////////////////////////////////////
                                MODIFIERS
    //////////////////////////////////////////////////////////////*/
    /**
     * @dev Prevents a contract from calling itself, directly or indirectly.
     * Calling a `nonReentrant` function from another `nonReentrant`
     * function is not supported. It is possible to prevent this from happening
     * by making the `nonReentrant` function external, and making it call a
     * `private` function that does the actual work.
     */
    modifier nonReentrant() {
        _nonReentrantBefore();
        _;
        _nonReentrantAfter();
    }

    /*//////////////////////////////////////////////////////////////
                            CONSTRUCTOR
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Initializes the contract by setting the initial reentrancy guard state
     */
    constructor() {
        _status = NOT_ENTERED;
    }

    /*//////////////////////////////////////////////////////////////
                            VIEW FUNCTIONS
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Checks if a protected function is currently executing
     * @return True if the contract is in the entered state
     */
    function _reentrancyGuardEntered() internal view returns (bool) {
        return _status == ENTERED;
    }

    /*//////////////////////////////////////////////////////////////
                            PRIVATE FUNCTIONS
    //////////////////////////////////////////////////////////////*/
    /**
     * @dev Sets guard state before protected function execution
     * @notice Reverts if a reentrant call is detected
     */
    function _nonReentrantBefore() private {
        if (_status == ENTERED) {
            revert ReentrantCall();
        }
        _status = ENTERED;
    }

    /**
     * @dev Resets guard state after protected function execution
     */
    function _nonReentrantAfter() private {
        _status = NOT_ENTERED;
    }
}
