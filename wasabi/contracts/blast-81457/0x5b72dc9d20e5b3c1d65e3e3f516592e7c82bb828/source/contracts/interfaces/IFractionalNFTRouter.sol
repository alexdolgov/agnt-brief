// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

interface IFractionalNFTRouter {
    /// @dev Sells fractionalized NFTs into Thruster
    /// @param contractAddress The address of the fractionalized NFT contract
    /// @param ids The IDs of the NFTs to sell
    /// @param poolFee The pool fee
    /// @param deadline The deadline for the transaction
    /// @param amountOutMin The minimum amount of Thruster to receive
    function sellFractionalizedNFTs(
        address contractAddress,
        uint256[] calldata ids,
        uint24 poolFee,
        uint256 deadline,
        uint256 amountOutMin
    ) external payable;
}