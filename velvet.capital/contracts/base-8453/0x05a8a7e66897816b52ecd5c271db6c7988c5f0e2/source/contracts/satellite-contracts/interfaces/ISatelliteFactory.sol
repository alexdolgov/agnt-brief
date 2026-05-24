// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.17;

import { FunctionParameters } from "../../FunctionParameters.sol";

interface ISatelliteFactory {
    struct SatelliteInfo {
        address vaultAddress;
        address gnosisModule;
    }

    /**
     * @notice Initializes the SatelliteFactory with deployment parameters
     * @param initData Struct containing initialization parameters
     */
    function initialize(FunctionParameters.SatelliteFactoryInitData memory initData) external;

    /**
     * @notice Deploys a Gnosis Safe with a module
     * @param _owner Array of owner addresses
     * @param _threshold Required number of approvals
     */
    function deployGnosisSafe(address[] memory _owner, uint256 _threshold) external;

    /**
     * @notice Returns the base Velvet Gnosis Safe Module Address
     */
    function baseVelvetGnosisSafeModuleAddress() external view returns (address);

    /**
     * @notice Returns the Gnosis singleton address
     */
    function gnosisSingleton() external view returns (address);

    /**
     * @notice Returns the Gnosis fallback library address
     */
    function gnosisFallbackLibrary() external view returns (address);

    /**
     * @notice Returns the Gnosis multisend library address
     */
    function gnosisMultisendLibrary() external view returns (address);

    /**
     * @notice Returns the Gnosis Safe Proxy Factory address
     */
    function gnosisSafeProxyFactory() external view returns (address);

    /**
     * @notice Returns the list of deployed SatelliteInfo structs
     */
    function SatelliteInfolList(uint256 index) external view returns (address vaultAddress, address gnosisModule);
}