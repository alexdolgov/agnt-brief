// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.28;

import {IERC4626, IERC20} from "@openzeppelin/contracts/interfaces/IERC4626.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {RouterModuleBase} from "src/router/modules/RouterModuleBase.sol";

interface IVault {
    function token() external view returns (address);
    function withdraw(uint256 shares) external;
}

contract RouterModuleMigrationStakeDAOV1 is RouterModuleBase {
    using SafeERC20 for IERC20;

    string public constant name = type(RouterModuleMigrationStakeDAOV1).name;
    string public constant version = "2.0.0";

    error VaultNotCompatible();

    /// @notice Migrates shares from a liquidity gauge to a reward vault
    /// @param from The address of the old vault
    /// @param to The address of the new reward vault
    /// @param shares The number of shares to migrate
    /// @dev The router must own the tokens to migrate when this function is called.
    ///      For doing so, the caller must have signed a permit2 authorization and used it by
    ///      calling the function `transferFromPermit2` of the RouterModuleERC20Manager module
    ///      in the **SAME TRANSACTION**. The composition ability of the router allows for this.
    function migrate(address from, address to, uint256 shares) external onlyDelegateCall {
        address asset = IERC4626(to).asset();
        require(IVault(from).token() == asset, VaultNotCompatible());

        // Withdraw the shares from the old vault
        IVault(from).withdraw(shares);

        // Deposit the shares in the new reward vault
        IERC20(asset).forceApprove(to, shares);
        IERC4626(to).deposit(shares, msg.sender);
    }
}
