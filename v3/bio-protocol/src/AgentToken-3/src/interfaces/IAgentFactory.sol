// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "oz/contracts/governance/IGovernor.sol";
import {ConcentratedRange} from "../Launch/LaunchTypes.sol";

interface IAgentFactory {
    function proposeAgent(string memory name, string memory symbol, uint24 fee, ConcentratedRange[] memory ranges)
        external
        returns (uint256);

    function withdraw(uint256 id) external;

    function totalAgents() external view returns (uint256);

    function initFromApplication(
        string memory name,
        string memory symbol,
        uint256 applicationThreshold_,
        address creator,
        uint24 fee,
        ConcentratedRange[] memory ranges
    ) external returns (uint256);

    function executeFactoryApplication(uint256 id, bytes memory mintData) external returns (address);

    function executeFactoryApplicationSalt(uint256 id, bytes memory mintData, bytes32 salt)
        external
        returns (address);

    function grantLaunchRole(address account) external;

    function toKey(string memory name) external pure returns (bytes32);

    function updateAgentState(bytes32 _key, bool _exists) external;
}
