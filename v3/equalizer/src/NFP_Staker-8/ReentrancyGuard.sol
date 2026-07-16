// ftm.guru's Simple re-entrency guard
// SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.9;

contract ReentrancyGuard {
    /// @dev counter to allow mutex lock with only one SSTORE operation
    uint256 public interactions;

    /**
     * @dev Prevents a contract from calling itself, directly or indirectly.
     * Calling a `nonReentrant` function from another `nonReentrant`
     * function is not supported. It is possible to prevent this from happening
     * by making the `nonReentrant` function external, and make it call a
     * `private` function that does the actual work.
     */
    modifier nonReentrant() {
        interactions += 1;
        uint256 localCounter = interactions;
        _;
        require(localCounter == interactions, "RG!");
    }
}