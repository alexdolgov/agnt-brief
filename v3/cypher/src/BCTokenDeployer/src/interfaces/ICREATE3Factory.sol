// SPDX-License-Identifier: MIT

pragma solidity 0.8.20;

interface ICREATE3Factory {
    /// @notice Deploys a contract using CREATE3
    /// @param salt The salt for the deployment
    /// @param bytecode The creation bytecode of the contract to deploy
    /// @return deployed The address of the deployed contract
    function deploy(bytes32 salt, bytes memory bytecode) external payable returns (address deployed);

    /// @notice Computes the address of a contract deployed using CREATE3
    /// @dev This may be view or pure depending on implementation
    /// @param deployer The address of the deployer
    /// @param salt The salt used for deployment
    /// @return deployed The predicted address of the deployed contract
    function getDeployed(address deployer, bytes32 salt) external view returns (address deployed);
}
