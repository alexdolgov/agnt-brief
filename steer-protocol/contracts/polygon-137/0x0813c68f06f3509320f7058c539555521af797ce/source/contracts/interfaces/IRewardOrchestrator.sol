// SPDX-License-Identifier: BUSL-1.1

pragma solidity 0.8.12;

interface IRewardOrchestrator {
    enum State {
        PENDING,
        COMPLETED
    }

    /// @dev Triggered when a hash change request/proposal is executed.
    event ExecutedHashChangeRequest(uint256 indexed requestId, bytes32 hash);

    function actionApprovalStatus(uint256 _hashId)
        external
        view
        returns (bool);

    function createHashChangeRequest(bytes32 _hash) external returns (uint256);

    function voteOnHashChangeRequest(uint256 _hashId, bool vote) external;

    function executeHashChangeRequest(uint256 _hashId)
        external
        returns (State);
}
