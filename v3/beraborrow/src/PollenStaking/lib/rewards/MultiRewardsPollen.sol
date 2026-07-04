// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.26;

import {MultiRewards} from "./MultiRewards.sol";
import {IMultiRewards} from "./interfaces/IMultiRewards.sol";
import {Errors} from "./utils/Errors.sol";
import {SafeTransferLib} from "@solmate/utils/SafeTransferLib.sol";
import {ERC20} from "@solmate/tokens/ERC20.sol";

/**
 * @title  MultiRewardsPollen
 * @author Beraborrow
 * @notice Extension of MultiRewards contract with pollen router functionality
 *         This contract adds support for pollen router integration and overrides
 *         the withdraw function to handle router-specific logic.
 */
abstract contract MultiRewardsPollen is MultiRewards {
    using SafeTransferLib for ERC20;
    /**
     * @notice The address of the pollen router
     * @dev This contract is used to route pollen-specific operations
     */
    address public pollenRouter;

    /**
     * @notice Emitted when the pollen router is updated
     * @param oldRouter The previous pollen router address
     * @param newRouter The new pollen router address
     */
    event PollenRouterUpdated(address indexed oldRouter, address indexed newRouter);

    error NotSupportedMethod();

    /**
     * @notice Constructs the MultiRewardsPollen contract
     * @param _stakingToken The token that users stake to earn rewards
     * @param _metaBeraborrowCore The address of the MetaBeraborrowCore contract
     * @param _pollenRouter The address of the pollen router
     */
    constructor(
        address _stakingToken, 
        address _metaBeraborrowCore, 
        address _pollenRouter
    ) MultiRewards(_stakingToken, _metaBeraborrowCore) {
        pollenRouter = _pollenRouter;
    }

    /**
     * @notice Sets the pollen router address with event emission
     * @param _pollenRouter The new pollen router address
     * @dev Only callable by the MetaBeraborrowCore owner
     */
    function setPollenRouter(address _pollenRouter) external {
        if (msg.sender != metaBeraborrowCore.owner())
            revert Errors.Unauthorized(msg.sender);

        address oldRouter = pollenRouter;
        pollenRouter = _pollenRouter;
        
        emit PollenRouterUpdated(oldRouter, _pollenRouter);
    }

    function withdraw(uint256 amount, address user) public nonReentrant {     
        if (msg.sender != pollenRouter) {
            user = msg.sender;
        }

        super._withdrawInternal(amount, user);
    }

    /**
     * @notice Override the base withdraw function to use the custom withdraw logic.
     * @param amount The amount of tokens to withdraw.
     */
    function withdraw(uint256 amount) public override nonReentrant {
        revert NotSupportedMethod();
    }
} 