// SPDX-License-Identifier: MIT

pragma solidity 0.8.17;

interface IVestedEscrow {
    function initialize(
        address _owner,
        address _token,
        uint256 _startTime,
        uint256 _lockDuration,
        uint256 _lockPercent,
        uint256 _releaseDuration
    ) external;

    function fund(
        address[] calldata _recipients,
        uint256[] calldata _amounts
    ) external;

    event Funded(address indexed _recipient, uint256 _amount);
    event Claimed(address indexed _recipient, uint256 _amount);
}
