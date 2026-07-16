// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.27;

import "../../Errors/Errors.sol";
import {
    IEulerSwapFactory
} from "contracts/Strategies/EulerSwap/interfaces/Euler/IEulerSwapFactory.sol";
import { IEVault } from "contracts/Strategies/EulerSwap/interfaces/Euler/IEVault.sol";
import { IEulerSwap } from "contracts/Strategies/EulerSwap/interfaces/Euler/IEulerSwap.sol";
import { IEVC } from "ethereum-vault-connector/interfaces/IEthereumVaultConnector.sol";
import { EVCUtil } from "ethereum-vault-connector/utils/EVCUtil.sol";
import {
    IWithdrawQueue,
    WithdrawRequest
} from "contracts/Strategies/EulerSwap/interfaces/Renzo/IWithdrawQueue.sol";
import { IWeth } from "contracts/Strategies/EulerSwap/interfaces/Renzo/IWeth.sol";
import { IRateProvider } from "contracts/Strategies/EulerSwap/interfaces/Renzo/IRateProvider.sol";
import {
    IRestakeManager
} from "contracts/Strategies/EulerSwap/interfaces/Renzo/IRestakeManager.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "../interfaces/IDelegateStrategy.sol";

/**
 * @author  .
 * @title   .
 * @dev     This contract is used to manage a EulerSwap pool for ezETH collateral and WETH borrow.
 * @notice  .
 */

// Warning: This strategy uses balanceOf() for WETH.  It should not be combined with other strategies that also use this token.  This should be used with a single strategy vault.
// Warning 2: This strategy should be whitelisted and not allow the public to deposit... the borrow market has limited ETH capacity.
contract EulerSwapEzEthDelegateStrategy is IDelegateStrategy {
    using SafeERC20 for IERC20;

    /// @dev Renzo Address constant for Native ETH
    address public constant IS_NATIVE = 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE;

    /// @dev Eulerswap factory - gateway to Euler protocol
    IEulerSwapFactory public immutable factory;

    /// @dev ezETH and WETH tokens
    IERC20 public immutable ezEthToken;
    IERC20 public immutable wethToken;

    /// @dev ezETH and WETH vaults where collateral is deposited and borrowed from
    IEVault public immutable ezEthVault;
    IEVault public immutable wethVault;

    /// @dev Renzo ezETH Contracts
    IWithdrawQueue public immutable withdrawQueue;
    IRestakeManager public immutable restakeManager;
    IRateProvider public immutable rateProvider;

    constructor(
        address _factory,
        address _ezEthToken,
        address _wethToken,
        address _ezEthVault,
        address _wethVault,
        address _withdrawQueue,
        address _restakeManager,
        address _rateProvider
    ) {
        if (_factory == address(0)) revert InvalidZeroInput();
        factory = IEulerSwapFactory(_factory);

        if (_ezEthToken == address(0)) revert InvalidZeroInput();
        ezEthToken = IERC20(_ezEthToken);

        if (_wethToken == address(0)) revert InvalidZeroInput();
        wethToken = IERC20(_wethToken);

        if (_ezEthVault == address(0)) revert InvalidZeroInput();
        ezEthVault = IEVault(_ezEthVault);

        if (_wethVault == address(0)) revert InvalidZeroInput();
        wethVault = IEVault(_wethVault);

        if (_withdrawQueue == address(0)) revert InvalidZeroInput();
        withdrawQueue = IWithdrawQueue(_withdrawQueue);

        if (_restakeManager == address(0)) revert InvalidZeroInput();
        restakeManager = IRestakeManager(_restakeManager);

        if (_rateProvider == address(0)) revert InvalidZeroInput();
        rateProvider = IRateProvider(_rateProvider);
    }

    // Always use the contract address as the euler account - since it is delegated called, get it at run time
    function getEulerAccount() internal view returns (address) {
        return address(this);
    }

    function installPool(
        IEulerSwap.Params memory params,
        IEulerSwap.InitialState memory initialState,
        bytes32 salt,
        address predictedPoolAddress
    ) external {
        address eulerAccount = getEulerAccount();

        // Check params and enforce only WETH debt is allowed (do not allow ezETH borrow) - equilibriumReserve0 cannot be higher than currReserve0 and cannot be greater than ezETH position size (in ezETH terms)
        // This limits the pool to only allow ezETH purchases up to the ezETH collateral size
        if (params.equilibriumReserve0 > initialState.currReserve0)
            revert InvalidEquilibriumReserve();
        if (
            params.equilibriumReserve0 >
            ezEthVault.convertToAssets(ezEthVault.balanceOf(eulerAccount))
        ) revert InvalidEquilibriumReserve();

        // Sanity check that a pool is not already installed
        address pool = factory.poolByEulerAccount(eulerAccount);
        if (pool != address(0)) revert PoolAlreadyInstalled();

        IEVC evc = IEVC(EVCUtil(address(factory)).EVC());
        IEVC.BatchItem[] memory items = new IEVC.BatchItem[](2);

        items[0] = IEVC.BatchItem({
            onBehalfOfAccount: address(0),
            targetContract: address(evc),
            value: 0,
            data: abi.encodeCall(evc.setAccountOperator, (eulerAccount, predictedPoolAddress, true))
        });
        items[1] = IEVC.BatchItem({
            onBehalfOfAccount: eulerAccount,
            targetContract: address(factory),
            value: 0,
            data: abi.encodeCall(IEulerSwapFactory.deployPool, (params, initialState, salt))
        });
        evc.batch(items);
    }

    function uninstallPool() external {
        address eulerAccount = getEulerAccount();

        IEVC evc = IEVC(EVCUtil(address(factory)).EVC());
        IEVC.BatchItem[] memory items = new IEVC.BatchItem[](2);

        address pool = factory.poolByEulerAccount(eulerAccount);

        // Sanity check that a pool is actually installed
        if (pool == address(0)) revert NoPoolInstalled();

        items[0] = IEVC.BatchItem({
            onBehalfOfAccount: address(0),
            targetContract: address(evc),
            value: 0,
            data: abi.encodeCall(evc.setAccountOperator, (eulerAccount, pool, false))
        });
        items[1] = IEVC.BatchItem({
            onBehalfOfAccount: eulerAccount,
            targetContract: address(factory),
            value: 0,
            data: abi.encodeCall(IEulerSwapFactory.uninstallPool, ())
        });
        evc.batch(items);
    }

    function enableWethBorrow() external {
        address eulerAccount = getEulerAccount();

        // Enable the vault as collateral
        IEVC evc = IEVC(EVCUtil(address(factory)).EVC());
        evc.enableCollateral(eulerAccount, address(ezEthVault));

        // Enable the vault as a controller (so can borrow)
        evc.enableController(eulerAccount, address(wethVault));
    }

    function depositCollateral(address asset, uint256 amount) external {
        address eulerAccount = getEulerAccount();

        if (asset == address(ezEthToken)) {
            ezEthToken.forceApprove(address(ezEthVault), amount);
            ezEthVault.deposit(amount, eulerAccount);
        } else if (asset == address(wethToken)) {
            wethToken.forceApprove(address(wethVault), amount);
            wethVault.deposit(amount, eulerAccount);
        } else {
            revert InvalidAsset();
        }
    }

    function withdrawCollateral(address asset, uint256 amount) external {
        address eulerAccount = getEulerAccount();

        if (asset == address(ezEthToken)) {
            ezEthVault.withdraw(amount, eulerAccount, eulerAccount);
        } else if (asset == address(wethToken)) {
            wethVault.withdraw(amount, eulerAccount, eulerAccount);
        } else {
            revert InvalidAsset();
        }
    }

    function borrow(address asset, uint256 amount) external {
        address eulerAccount = getEulerAccount();

        if (asset == address(wethToken)) {
            wethVault.borrow(amount, eulerAccount);
        } else {
            revert InvalidAsset();
        }
    }

    function repay(address asset, uint256 amount) external {
        address eulerAccount = getEulerAccount();

        if (asset == address(wethToken)) {
            wethToken.forceApprove(address(wethVault), amount);
            wethVault.repay(amount, eulerAccount);
        } else {
            revert InvalidAsset();
        }
    }

    function convertWethToEzEth(uint256 wethAmount) external {
        // Convert WETH to ETH and then deposit ETH to depositQueue
        IWeth(address(wethToken)).withdraw(wethAmount);
        restakeManager.depositETH{ value: wethAmount }();
    }

    function startConvertEzEthToWeth(uint256 ezEthAmount) external {
        // Start a withdrawal from the withdrawQueue
        // Approve ezETH first then trigger withdraw
        ezEthToken.forceApprove(address(withdrawQueue), ezEthAmount);
        withdrawQueue.withdraw(ezEthAmount, IS_NATIVE);
    }

    function completeConvertEzEthToWeth(uint256 withdrawIndex) external {
        // Complete a withdrawal from the withdrawQueue
        withdrawQueue.claim(withdrawIndex, address(this));

        // Convert received ETH to WETH
        uint256 ethBalance = address(this).balance;
        IWeth(address(wethToken)).deposit{ value: ethBalance }();
    }

    function getPendingEthWithdrawals(uint256 ezEthRate) internal view returns (uint256) {
        uint256 withdrawalCount = withdrawQueue.getOutstandingWithdrawRequests(address(this));

        // Iterate and get the withdrawal amounts
        uint256 totalPending = 0;
        for (uint256 i = 0; i < withdrawalCount; i++) {
            WithdrawRequest memory request = withdrawQueue.withdrawRequests(address(this), i);

            // Sanity check
            if (request.collateralToken != IS_NATIVE) {
                revert InvalidAsset();
            }

            // Check the current rate of ezETH - if it is lower than the withdraw request, then use that (handle slashing)
            uint256 currentAmountToRedeem = (request.ezETHLocked * ezEthRate) / 1e18; // Convert to WETH value
            if (currentAmountToRedeem < request.amountToRedeem) {
                totalPending += currentAmountToRedeem;
            } else {
                totalPending += request.amountToRedeem;
            }
        }
        return totalPending;
    }

    function underlyingValue(address _asset) external view returns (uint256) {
        // Enforce asset must be ezETH
        if (_asset != address(ezEthToken)) {
            revert InvalidAsset();
        }

        address eulerAccount = getEulerAccount();

        // Start with ETH value
        uint256 totalWeth = 0;

        // Get the ezETH rate
        uint256 ezEthRate = rateProvider.getRate();

        // Get the WETH balance from the vault
        totalWeth += wethVault.convertToAssets(wethVault.balanceOf(eulerAccount));

        // Get WETH in this contract
        totalWeth += wethToken.balanceOf(address(this));

        // Get ETH in this contract
        totalWeth += address(this).balance;

        // Get pending ETH withdrawals from withdrawQueue
        totalWeth += getPendingEthWithdrawals(ezEthRate);

        // Get the ezETH balance from the vault
        uint256 totalEzEth = ezEthVault.convertToAssets(ezEthVault.balanceOf(eulerAccount));

        // Add the converted WETH to ezETH balance
        // Note: ezETH has 18 decimals and WETH has 18 decimals so no adjustment needed
        totalEzEth += ((totalWeth * 1e18) / ezEthRate);

        // Subtract the WETH debt converted to ezETH
        uint256 wethDebt = wethVault.debtOf(eulerAccount);
        if (wethDebt > 0) {
            totalEzEth -= ((wethDebt * 1e18) / ezEthRate);
        }

        return totalEzEth;
    }
}
