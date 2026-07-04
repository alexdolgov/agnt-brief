// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

/**
 * @title IWindowRedemption
 * @notice Interface for the batched/windowed redemption module coordinated by {RedemptionGateway}.
 * @dev Windows collect share requests, later settle pro‑rata using snapshot prices. Provides
 * view methods for UI and off-chain settlement monitoring.
 */
interface IWindowRedemption {
    // Struct needed for return values
    struct Window {
        uint256 openTime;
        uint256 submissionDeadline;
        uint256 closeTime;
        uint256 totalSharesRequested;
        uint256 totalValueRequested;
        uint256 fundingAmount;
        uint256 fulfillmentRate;
        uint256 totalClaimed;
        bool isSettled;
        bool isFinalized;
        address payoutToken;
        uint256 sharePriceAtClose;
        uint256 payoutPriceAtSettlement;
    }

    struct UserRequest {
        uint256 shares;
        uint256 claimed;
    }

    // Functions called by gateway
    function submitRequestFor(address user, uint256 shares) external;
    function adjustRequestFor(address user, uint256 newShares) external;
    function cancelRequestFor(address user) external;
    function claimFor(uint256 windowId, address user) external;

    // View functions for status
    function paused() external view returns (bool);
    function isWindowOpen() external view returns (bool);
    function currentWindowId() external view returns (uint256);
    function getWindow(uint256 windowId) external view returns (Window memory);
    function getUserRequest(uint256 windowId, address user)
        external
        view
        returns (UserRequest memory);
}
