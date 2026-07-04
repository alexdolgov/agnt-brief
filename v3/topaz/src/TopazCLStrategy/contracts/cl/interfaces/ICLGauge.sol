// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

/// @notice Topaz Slipstream CLGauge. Stakes the position NFT (not an ERC20) and
///         rewards are accounted PER tokenId. `getReward(address)` is voter-only;
///         the staker must call `getReward(uint256 tokenId)`.
interface ICLGauge {
    /// @notice Stake a position NFT (pull from msg.sender). Approve NFPM first.
    function deposit(uint256 tokenId) external;

    /// @notice Unstake a position NFT; auto-claims that tokenId's rewards.
    function withdraw(uint256 tokenId) external;

    /// @notice Claim rewards for a staked tokenId (depositor only).
    function getReward(uint256 tokenId) external;

    /// @notice Pending reward for a staked tokenId.
    function earned(address account, uint256 tokenId) external view returns (uint256);

    function stakedContains(address depositor, uint256 tokenId) external view returns (bool);

    function rewardToken() external view returns (address);

    function pool() external view returns (address);

    function nft() external view returns (address);
}
