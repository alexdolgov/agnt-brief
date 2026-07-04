// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

import "./IRequestWithdrawable.sol";

import "./IServiceConfigurationV3.sol";
import "./IPoolAccessControl.sol";
import {IERC20Upgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol";
enum IPoolType {
    TermPool,
    FlexRatePool
}

interface IPoolBase is IERC20Upgradeable, IRequestWithdrawable {
    function poolType() external view returns (IPoolType);

    function liquidityAssetAddr() external view returns (address);

    function version() external view returns (uint16);

    /**
     * @dev The ServiceConfiguration.
     */
    function serviceConfiguration()
        external
        view
        returns (IServiceConfigurationV3);

    /**
     * @dev The admin for the pool.
     */
    function admin() external view returns (address);

    function borrowerManagerAddr() external view returns (address);

    function borrowerWalletAddr() external view returns (address);

    /**
     * @dev The activation timestamp of the pool.
     */
    function activatedAt() external view returns (uint256);

    function poolAccessControl() external view returns (IPoolAccessControl);

    /**
     * @dev The sum of all assets available in the liquidity pool, excluding
     * any assets that are marked for withdrawal.
     */
    function liquidityPoolAssets() external view returns (uint256);

    function isPermittedLender(address) external view returns (bool);

    function maxDeposit(address owner) external view returns (uint256);
}
