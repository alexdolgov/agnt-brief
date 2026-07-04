// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

interface IPositionToken {
    function openPosition(address _owner) external returns (uint256);

    function closePosition(uint256 _positionId) external;

    function ownerOf(uint256 _positionId) external view returns (address owner);

    function exists(uint256 _positionId) external view returns (bool);
}
