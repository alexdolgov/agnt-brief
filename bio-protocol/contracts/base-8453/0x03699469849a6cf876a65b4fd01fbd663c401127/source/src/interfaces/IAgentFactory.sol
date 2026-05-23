// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "oz/contracts/governance/IGovernor.sol";

interface IAgentFactory {
    struct AgentAddress {
        address vestingToken;
        address agentToken;
        address stakedToken;
        bool exists;
    }

    function proposeAgent(string memory name, string memory symbol, int24 tickSpacing) external returns (uint256);

    function withdraw(uint256 id) external;

    function totalAgents() external view returns (uint256);

    function initFromApplication(
        string memory name,
        string memory symbol,
        uint256 applicationThreshold_,
        address creator,
        int24 tickSpacing,
        uint32 duration,
        address baseToken
    ) external returns (uint256);

    function executeFactoryApplication(uint256 id, bytes memory mintData) external returns (address);

    function executeFactoryApplicationSalt(uint256 id, bytes memory mintData, bytes32 salt)
        external
        returns (address);

    function grantLaunchRole(address account) external;

    function toKey(string memory name) external pure returns (bytes32);

    function updateAgentState(bytes32 _key, bool _exists) external;

    function getAgentAddresses(bytes32 key, uint256 launch) external view returns (AgentAddress memory);
}
