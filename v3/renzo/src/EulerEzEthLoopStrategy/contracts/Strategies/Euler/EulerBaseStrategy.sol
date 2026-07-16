// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.27;

import "../../Errors/Errors.sol";
import { IEVault } from "contracts/Strategies/Euler/interfaces/Euler/IEVault.sol";
import { IEVC } from "ethereum-vault-connector/interfaces/IEthereumVaultConnector.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

/**
 * @author  .
 * @title   .
 * @dev     This contract is used to manage a Euler ezETH leverage strategy.
 *          The strategy will lever up by depositing ezETH and borrowing WETH.
 *          The strategy will lever down by withdrawing ezETH and repaying WETH.
 * @notice  .
 */
abstract contract EulerBaseStrategy {
    using SafeERC20 for IERC20;

    /// @dev Renzo Address constant for Native ETH
    address public constant IS_NATIVE = 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE;

    /// @dev Euler Vault Connector
    IEVC public immutable eulerVaultConnector;

    /**
     * @notice  Constructor
     * @dev     This function will initialize the Euler Base Strategy.
     * @param   _eulerVaultConnector  The address of the Euler Vault Connector.
     */
    constructor(address _eulerVaultConnector) {
        if (_eulerVaultConnector == address(0)) revert InvalidZeroInput();
        eulerVaultConnector = IEVC(_eulerVaultConnector);
    }

    // Always use the contract address as the euler account - since it is delegated called, get it at run time
    function getEulerAccount() internal view returns (address) {
        return address(this);
    }

    /**
     * @notice  Enable Vault Borrow
     * @dev     This function will enable the vault as collateral and controller.
     * @param   collateralVault  The address of the collateral vault.
     * @param   controllerVault  The address of the controller vault.
     */
    function enableVaultBorrow(IEVault collateralVault, IEVault controllerVault) internal {
        address eulerAccount = getEulerAccount();

        // Enable the vault as collateral
        eulerVaultConnector.enableCollateral(eulerAccount, address(collateralVault));

        // Enable the vault as a controller (so can borrow)
        eulerVaultConnector.enableController(eulerAccount, address(controllerVault));
    }

    /**
     * @notice  Deposit Collateral to Vault
     * @dev     This function will deposit collateral to the vault.
     * @param   asset  The address of the asset to deposit.
     * @param   vault  The address of the vault to deposit collateral to.
     * @param   amount  The amount of collateral to deposit.
     */
    function depositCollateralToVault(IERC20 asset, IEVault vault, uint256 amount) internal {
        address eulerAccount = getEulerAccount();

        asset.forceApprove(address(vault), amount);
        vault.deposit(amount, eulerAccount);
    }

    /**
     * @notice  Withdraw Collateral from Vault
     * @dev     This function will withdraw collateral from the vault.
     * @param   vault  The address of the vault to withdraw collateral from.
     * @param   amount  The amount of collateral to withdraw.
     */
    function withdrawCollateralFromVault(IEVault vault, uint256 amount) internal {
        address eulerAccount = getEulerAccount();

        vault.withdraw(amount, eulerAccount, eulerAccount);
    }

    /**
     * @notice  Borrow from Vault
     * @dev     This function will borrow from the vault.
     * @param   vault  The address of the vault to borrow from.
     * @param   amount  The amount of asset to borrow.
     */
    function borrowFromVault(IEVault vault, uint256 amount) internal {
        address eulerAccount = getEulerAccount();

        vault.borrow(amount, eulerAccount);
    }

    /**
     * @notice  Repay Asset to Vault
     * @dev     This function will repay an asset to the vault.
     * @param   asset  The address of the asset to repay.
     * @param   vault  The address of the vault to repay to.
     * @param   amount  The amount of asset to repay.
     */
    function repayAssetToVault(IERC20 asset, IEVault vault, uint256 amount) internal {
        address eulerAccount = getEulerAccount();

        asset.forceApprove(address(vault), amount);
        vault.repay(amount, eulerAccount);
    }
}
