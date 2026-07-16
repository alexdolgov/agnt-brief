// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.24;

import "../managers/StrategyAccountManager.sol";
import "../interfaces/IAssetPriceProvider.sol";
import "../libraries/accounts/AccountLib.sol";
import "../libraries/Errors.sol";
import "./JuiceAccount.sol";
import "../managers/CollateralAccountManager.sol";
import "./periphery/BlastGas.sol";
import "./periphery/BlastPoints.sol";

/// @title JuiceAccountManager supports one account implementation.
/// @dev Facilitates collateralization of a standard ERC20.
/// @notice The AccountManager contract deploys Account contracts.
contract JuiceERC20AccountManager is CollateralAccountManager, BlastGas, BlastPoints {
    using EnumerableSet for EnumerableSet.AddressSet;
    using SafeERC20 for IERC20;
    using Address for address;

    /// @notice Constructs the factory
    /// @param params The parameters for the JuiceAccountManager
    constructor(
        address protocolGovernor_,
        address pointsOperator_,
        InitParams memory params
    )
        CollateralAccountManager(protocolGovernor_, params)
    {
        __BlastGas_init(protocolGovernor_);
        __BlastPoints_init(protocolGovernor_, pointsOperator_);
    }
}
