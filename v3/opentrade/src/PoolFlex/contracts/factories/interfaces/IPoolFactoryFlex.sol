// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

import "../../interfaces/IPoolFlex.sol";

/**
 * @title Interface for the PoolFactory.
 */
interface IPoolFactoryFlex {
    /**
     * @dev Emitted when a pool is created.
     */
    event PoolCreated(address indexed addr);

    /**
     * @dev Creates a Pool.
     * @dev Emits `PoolCreated` event.
     */
    function createPool(
        address,
        IPoolConfigurableSettingsFlex calldata,
        string calldata,
        string calldata
    ) external returns (address);

    function getPoolControllerFactoryFlex() external view returns (address);


    function getWithdrawDepositControllerFactoryFlex() external view returns (address);


    function getVaultFactory() external view returns (address);

    function getPoolAccessControlFactory() external view returns (address);
}
