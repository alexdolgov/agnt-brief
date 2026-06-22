// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.21;

import "@openzeppelin/IERC20Metadata.sol";

interface IEsXai is IERC20Metadata {
    struct RedemptionRequest {
        uint256 amount;
        uint256 startTime;
        uint256 duration;
        bool completed;
    }

    struct RedemptionRequestExt {
        uint256 amount;
        uint256 startTime;
        uint256 duration;
        uint256 endTime;
        bool completed;
        bool cancelled;
        uint256[5] __gap;
    }

    event RedemptionStarted(address indexed user, uint256 indexed index);
    event RedemptionCancelled(address indexed user, uint256 indexed index);
    event RedemptionCompleted(address indexed user, uint256 indexed index);
    event RedemptionStatusChanged(bool isActive);

    function changeRedemptionStatus(bool isActive) external;

    function mint(address to, uint256 amount) external;

    function startRedemption(uint256 amount, uint256 duration) external;

    function cancelRedemption(uint256 index) external;

    function completeRedemption(uint256 index) external;

    function getRedemptionRequest(address account, uint256 index) external view returns (RedemptionRequestExt memory);

    function getRedemptionRequestCount(address account) external view returns (uint256);

    /// @dev Derived from storage variables marked public
    function xai() external view returns (address);
}
