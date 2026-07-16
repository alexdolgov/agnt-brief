// SPDX-License-Identifier: MIT
pragma solidity =0.8.28;

interface IVestingStream {
    error NotRecipient();
    error NothingToClaim();
    error CliffNotEnded(uint256 cliffEnd, uint256 currentTime);
    error NotInitializer();
    error InitializerAlreadySet();
    error ZeroAddress();
    error ArrayLengthMismatch();
    error InvalidAllocationId(uint256 id);

    event Claimed(uint256 indexed allocationId, address indexed recipient, uint256 amount);
    event VestingInitialized(uint256 cliffEnd, uint256 vestingEnd, uint256 allocationCount);

    function setInitializer(
        address _initializer
    ) external;
    function initialize(
        address token,
        uint256 liquiditySeedTime,
        address[] calldata recipients,
        uint256[] calldata amounts,
        string[] calldata labels
    ) external;
    function claim(
        uint256 allocationId
    ) external;
    function claimable(
        uint256 allocationId
    ) external view returns (uint256);
    function allocationCount() external view returns (uint256);
    function cliffEnd() external view returns (uint256);
    function vestingEnd() external view returns (uint256);
}
