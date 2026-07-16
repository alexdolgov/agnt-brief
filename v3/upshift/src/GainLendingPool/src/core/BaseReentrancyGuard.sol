// SPDX-License-Identifier: BUSL-1.1
pragma solidity >= 0.8.26;

/**
 * @title Base reentrancy guard. This is constructor-less implementation for both proxies and standalone contracts.
 */
abstract contract BaseReentrancyGuard {
    uint256 internal constant _REENTRANCY_NOT_ENTERED = 1;
    uint256 internal constant _REENTRANCY_ENTERED = 2;

    uint256 internal _reentrancyStatus;

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

    function _nonReentrantBefore() private {
        // On the first call to nonReentrant, _status will be _NOT_ENTERED
        require(_reentrancyStatus != _REENTRANCY_ENTERED, "ReentrancyGuard: reentrant call");

        // Any calls to nonReentrant after this point will fail
        _reentrancyStatus = _REENTRANCY_ENTERED;
    }

    function _nonReentrantAfter() private {
        // By storing the original value once again, a refund is triggered (see
        // https://eips.ethereum.org/EIPS/eip-2200)
        _reentrancyStatus = _REENTRANCY_NOT_ENTERED;
    }

    /**
     * @dev Returns true if the reentrancy guard is currently set to "entered", which indicates there is a
     * `nonReentrant` function in the call stack.
     */
    function _reentrancyGuardEntered() internal view returns (bool) {
        return _reentrancyStatus == _REENTRANCY_ENTERED;
    }
}
