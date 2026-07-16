// SPDX-License-Identifier: MIT

pragma solidity ^0.7.0;

/**
 * @dev Contract module that helps prevent reentrant calls to a function.
 *
 * Unlike the OpenZeppelin ReentrancyGuard which uses the {nonReentrant} modifier,
 * this implementation requires manually calling {_beforeNonReentrant} at the start
 * of your function and {_afterNonReentrant} at the end of your function.
 *
 * IMPORTANT: You must ensure you call both functions in all execution paths to avoid
 * locking the contract. It's recommended to use try/catch blocks when necessary.
 *
 * Example usage:
 *
 * function withdraw() public {
 *     _beforeNonReentrant();
 *
 *     // Your function logic here
 *
 *     _afterNonReentrant();
 * }
 */
abstract contract ManualReentrancyGuard {
    // Booleans are more expensive than uint256 or any type that takes up a full
    // word because each write operation emits an extra SLOAD to first read the
    // slot's contents, replace the bits taken up by the boolean, and then write
    // back. This is the compiler's defense against contract upgrades and
    // pointer aliasing, and it cannot be disabled.

    // The values being non-zero value makes deployment a bit more expensive,
    // but in exchange the refund on every call to nonReentrant will be lower in
    // amount. Since refunds are capped to a percentage of the total
    // transaction's gas, it is best to keep them low in cases like this one, to
    // increase the likelihood of the full refund coming into effect.
    uint256 private constant _NOT_ENTERED = 1;
    uint256 private constant _ENTERED = 2;

    uint256 private _status;

    constructor () {
        _status = _NOT_ENTERED;
    }

    /**
     * @dev Should be called at the beginning of functions that need reentrancy protection.
     * Checks if the contract is already in an entered state and sets it to entered.
     */
    function _beforeNonReentrant() internal {
        // On the first call, _status will be _NOT_ENTERED
        require(_status != _ENTERED, "R!");

        // Any calls after this point will fail
        _status = _ENTERED;
    }

    /**
     * @dev Should be called at the end of functions that need reentrancy protection.
     * Resets the status to not entered.
     */
    function _afterNonReentrant() internal {
        // By storing the original value once again, a refund is triggered (see
        // https://eips.ethereum.org/EIPS/eip-2200)
        _status = _NOT_ENTERED;
    }
}
