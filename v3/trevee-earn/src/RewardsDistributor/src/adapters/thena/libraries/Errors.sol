//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

library Errors {
    // General errors
    error ZeroValue();
    error ZeroAddress();
    error EmptyArray();
    error DifferentSizeArrays(uint256 length1, uint256 length2);

    // Ownable errors
    error NotOperatorOrOwner();

    // MerkleDistributor errors
    error EpochAlreadyDistributed();
    error EpochNotInitialized();
    error AlreadyClaimed();
    error InvalidMerkleProof();
    error ClaimStillAvailable();

    // Swapper errors
    error NotPuppeteer();
    error WithdrawMoreThanMax();
    error SwapError();

    // Fees errors
    error InvalidFee();
}
