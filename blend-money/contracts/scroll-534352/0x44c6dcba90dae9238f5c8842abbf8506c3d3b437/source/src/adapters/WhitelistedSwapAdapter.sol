// SPDX-License-Identifier: BSL-1.1
pragma solidity ^0.8.24;

import {SwapAdapter} from "./SwapAdapter.sol";
import {StrategyManager} from "../libraries/StrategyManager.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

/**
 * @title WhitelistedSwapAdapter
 * @notice Swap adapter with whitelisted timing restrictions for rebalancing and vault actions
 * @dev Extends SwapAdapter with temporal access controls based on strategy manager state.
 *
 * @author Blend Money
 * @custom:security-contact security@blend.money
 */
contract WhitelistedSwapAdapter is SwapAdapter {
    /*//////////////////////////////////////////////////////////////
                            IMMUTABLE STATE
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Strategy manager for checking operational state flags
     * @dev Provides access to rebalancing and vault action state indicators.
     *      Made immutable for gas optimization since it's set once in constructor.
     */
    StrategyManager public immutable STRATEGY_MANAGER;

    /*//////////////////////////////////////////////////////////////
                            CONFIGURATION STATE
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Flag controlling swap permissions during rebalancing periods
     * @dev When true, swaps are permitted during rebalancing operations.
     */
    bool public immutable ALLOW_ON_REBALANCE;

    /**
     * @notice Flag controlling swap permissions during vault action periods
     * @dev When true, swaps are permitted during vault action operations.
     */
    bool public immutable ALLOW_ON_VAULT_ACTION;

    /*//////////////////////////////////////////////////////////////
                            CUSTOM ERRORS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Reverts when a zero address is provided for role receiver
     * @dev Used to prevent deployment with invalid role receiver configuration.
     */
    error ZeroAddress();

    /**
     * @notice Reverts when swap is attempted outside allowed timing windows
     * @dev Enforced by inExecutionContext modifier based on strategy manager state.
     */
    error Unauthorized();

    /**
     * @notice Reverts when at least one allow flag must be true
     * @dev Enforced by constructor based on strategy manager state.
     */
    error MalformedAllowFlags();

    /*//////////////////////////////////////////////////////////////
                            CONSTRUCTOR
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Initialize the whitelisted swap adapter with timing controls
     *
     * @param _strategyManager Address of the strategy manager contract for access control.
     *                         Must be a valid StrategyManager contract that manages role-based permissions.
     * @param _allowOnRebalance Whether swaps should be permitted during rebalancing periods.
     * @param _allowOnVaultAction Whether swaps should be permitted during vault action periods.
     *
     * @custom:reverts ZeroAddress when _strategyManager address is zero
     */
    constructor(address _strategyManager, bool _allowOnRebalance, bool _allowOnVaultAction) SwapAdapter() {
        // Validate strategy manager address to ensure proper access control integration
        if (_strategyManager == address(0)) {
            revert ZeroAddress();
        }
        STRATEGY_MANAGER = StrategyManager(_strategyManager);

        // Validate that at least one allow flag is true. Otherwise, the adapter is meaningless.
        require(_allowOnRebalance || _allowOnVaultAction, MalformedAllowFlags());
        // Set temporal permission flags that define when swaps are allowed
        ALLOW_ON_REBALANCE = _allowOnRebalance;
        ALLOW_ON_VAULT_ACTION = _allowOnVaultAction;
    }

    /*//////////////////////////////////////////////////////////////
                            TIMING MODIFIER
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Restricts swap execution to allowed timing windows based on strategy manager state
     * @dev Implements temporal access control by checking strategy manager flags against configured permission policies.
     *      This modifier acts as a gatekeeper, allowing swaps only during designated operational windows
     *      when the protocol is in a safe state for liquidity operations.
     *
     * @custom:reverts Unauthorized when swap attempted outside allowed timing windows
     * @custom:access Applied to all swap functions to ensure consistent timing restrictions
     * @custom:gas Minimal gas overhead due to simple boolean checks
     */
    modifier inExecutionContext() {
        // Check if at least one enabled operational state is active
        bool isAllowed = false;

        // If rebalancing is enabled, check if it's currently active
        if (ALLOW_ON_REBALANCE && STRATEGY_MANAGER.isRebalanceInitiated()) {
            isAllowed = true;
        }

        // If vault action is enabled, check if it's currently active
        if (ALLOW_ON_VAULT_ACTION && STRATEGY_MANAGER.isVaultActionInitiated()) {
            isAllowed = true;
        }

        // Block swap if neither enabled operational state is active
        require(isAllowed, Unauthorized());

        // Execute the function
        _;
    }

    /*//////////////////////////////////////////////////////////////
                            SWAP FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Swaps loan token for collateral token during permitted operational windows
     * @dev Inherits SwapAdapter functionality with temporal access controls via inExecutionContext modifier
     * @custom:reverts Unauthorized when swap attempted outside allowed timing windows
     */
    function swapToCollateral(
        IERC20 loanToken,
        IERC20 collateralToken,
        address recipient,
        bytes calldata strategyData,
        bytes calldata extraData
    ) public override inExecutionContext {
        // Delegate to parent SwapAdapter implementation with all safety checks
        super.swapToCollateral(loanToken, collateralToken, recipient, strategyData, extraData);
    }

    /**
     * @notice Swaps collateral token for loan token during permitted operational windows
     * @dev Inherits SwapAdapter functionality with temporal access controls via inExecutionContext modifier
     * @custom:reverts Unauthorized when swap attempted outside allowed timing windows
     */
    function swapToLoanToken(
        IERC20 loanToken,
        IERC20 collateralToken,
        address recipient,
        bytes calldata strategyData,
        bytes calldata extraData
    ) public override inExecutionContext {
        // Delegate to parent SwapAdapter implementation with all safety checks
        super.swapToLoanToken(loanToken, collateralToken, recipient, strategyData, extraData);
    }
}
