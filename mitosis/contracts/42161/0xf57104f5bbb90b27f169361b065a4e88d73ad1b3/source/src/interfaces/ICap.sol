// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;
pragma abicoder v2;

interface ICap {
    function addLoad(uint256 amount, address spender) external returns (uint256 spent);

    function subLoad(uint256 amount, address saver) external returns (uint256 saved);

    function setEpochCap(uint256 epoch_, uint256 cap_) external;

    function setManager(address manager, bool allowed) external;

    function isManager(address spender) external view returns (bool);

    function cap(uint256 epoch_) external view returns (uint256);

    function load() external view returns (uint256);

    function epoch() external view returns (uint256);

    function calcAdded(uint256 amount) external view returns (uint256);

    function calcSubbed(uint256 amount) external view returns (uint256);
}
