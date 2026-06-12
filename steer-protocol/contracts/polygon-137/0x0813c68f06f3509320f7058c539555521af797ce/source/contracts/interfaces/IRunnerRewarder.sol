// SPDX-License-Identifier: BUSL-1.1

pragma solidity 0.8.12;

interface IRunnerRewarder {
    /// @dev Emitted after a successful token claim
    /// @param to recipient of claim
    /// @param amount of tokens claimed
    event Claim(address indexed to, uint256 amount);

    function setRewardOrchestrator(address _rewardOrchestrator) external;

    /**
     * @param hash -- proposed new merkle root hash.
     */
    function changeMerkleRootHash(bytes32 hash) external;

    function claim(uint256 amount, bytes32[] calldata proof) external;
}
