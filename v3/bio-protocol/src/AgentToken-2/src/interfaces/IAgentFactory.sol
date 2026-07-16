// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "oz/contracts/governance/IGovernor.sol";

interface IAgentFactory {
    function proposeAgent(string memory name, string memory symbol, uint256 coolDownPeriod)
        external
        returns (uint256);

    function withdraw(uint256 id) external;

    function totalAgents() external view returns (uint256);

    function initFromApplication(
        string memory name,
        string memory symbol,
        uint256 coolDownPeriod,
        uint256 applicationThreshold_,
        address creator
    ) external returns (uint256);

    function executeFactoryApplication(uint256 id, uint256 lpSupply) external returns (address);

    function executeFactoryApplicationSalt(uint256 id, uint256 lpSupply, bytes32 salt) external returns (address);

    function grantLaunchRole(address account) external;
}
