// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import {IPool} from "@src/Interfaces/IPool.sol";
import {IICNProtocolMini} from "@src/Interfaces/IICNProtocolMini.sol";

interface IPeriphery {
    /*//////////////////////////////////////////////////////////////
                              ERRORS
    //////////////////////////////////////////////////////////////*/

    error InvalidParams();

    /*//////////////////////////////////////////////////////////////
                              INITIALIZER
    //////////////////////////////////////////////////////////////*/

    /// @dev Initializes the contract
    /// @param _initialOwner The initial owner of the contract
    /// @param _pool The pool contract address
    /// @param _icnp The ICN protocol contract address
    function initialize(address _initialOwner, IPool _pool, IICNProtocolMini _icnp) external;

    /*//////////////////////////////////////////////////////////////
                          CORE HELPER METHODS
    //////////////////////////////////////////////////////////////*/

    /// @dev Returns the version of the contract
    /// @return The version
    function version() external view returns (uint64);

    /// @dev Returns the pool contract
    /// @return The pool contract address
    function pool() external view returns (IPool);

    /// @dev Returns the ICN protocol contract
    /// @return The ICN protocol contract address
    function icnp() external view returns (IICNProtocolMini);

    /// @dev Sets the pool contract (owner only)
    /// @param newPool The new pool contract address
    function setPool(IPool newPool) external;

    /// @dev Sets the ICN protocol contract (owner only)
    /// @param newIcnp The new ICN protocol contract address
    function setIcnp(IICNProtocolMini newIcnp) external;

    /// @dev Returns the total value locked in the pool
    /// @return The total assets in the pool
    function tvl() external view returns (uint256);

    /// @dev Checks if deposits should be flushed based on balance and time conditions
    /// @return True if deposits should be flushed
    function shouldFlushDeposits() external view returns (bool);

    /// @dev Checks if reward claims should be initialized
    /// @return True if reward claims should be initialized
    function shouldInitializeRewardClaims() external view returns (bool);

    /// @dev Initializes reward claims for positions that meet the threshold
    function initializeRewardClaims() external;

    /// @dev Checks if rewards should be claimed
    /// @return True if rewards should be claimed
    function shouldClaimRewards() external view returns (bool);

    /// @dev Claims rewards that have passed their unlock timestamp
    function claimRewards() external;

    /// @dev Returns the weighted average APY across all delegation positions
    /// @return The calculated weighted average APY as a percentage (1e18 = 100%)
    function apy() external view returns (uint256);
}
