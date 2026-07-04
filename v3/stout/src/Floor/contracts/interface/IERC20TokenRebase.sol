// SPDX-License-Identifier: MIT

pragma solidity >=0.8.24 <0.9.0;

import {IERC20Custom} from "./IERC20Custom.sol";

/**
 * @title IERC20TokenRebase
 * @dev Extended interface for ERC20 tokens with elastic supply and safe management
 * @notice Defines functionality for:
 * 1. Supply elasticity (rebasing)
 * 2. Safe-based token management
 * 3. Supply control mechanisms
 * 4. Configuration management
 */
interface IERC20TokenRebase is IERC20Custom {
    /*//////////////////////////////////////////////////////////////
                        SUPPLY MANAGEMENT
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Mints new tokens to specified account
     * @param account Address to receive minted tokens
     * @param amount Quantity of tokens to mint in base units
     * @dev Requires:
     * · Caller is authorized minter
     * · Within maxSupply limits
     * · Valid recipient
     */
    function mint(address account, uint256 amount) external;

    /**
     * @notice Burns tokens from specified account
     * @param account Address to burn tokens from
     * @param amount Quantity of tokens to burn in base units
     * @dev Requires:
     * · Caller is authorized
     * · Account has sufficient balance
     * · Amount > 0
     */
    function burn(address account, uint256 amount) external;

    /*//////////////////////////////////////////////////////////////
                        REBASE OPERATIONS
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Executes supply rebase based on current parameters
     * @dev Triggers:
     * · Supply adjustment
     * · Balance recalculation
     * · Event emission
     *
     * Considers:
     * · Rebase interval
     * · Basis points
     * · Supply limits
     */
    function rebase() external;

    /**
     * @notice Configures rebase parameters
     * @param rebaseInterval Time period between rebases (in seconds)
     * @param rebaseBasisPoints Scale factor for rebase (in basis points)
     * @dev Controls:
     * · Rebase frequency
     * · Rebase magnitude
     * · Supply elasticity
     */
    function setRebaseConfig(
        uint256 rebaseInterval,
        uint256 rebaseBasisPoints
    ) external;

    /*//////////////////////////////////////////////////////////////
                        SAFE MANAGEMENT
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Initializes new token management safe
     * @param safe Address of safe to create
     * @dev Establishes:
     * · Safe permissions
     * · Access controls
     * · Management capabilities
     */
    function createSafe(address safe) external;

    /**
     * @notice Removes existing token management safe
     * @param safe Address of safe to remove
     * @dev Handles:
     * · Permission revocation
     * · State cleanup
     * · Access termination
     */
    function destroySafe(address safe) external;

    /*//////////////////////////////////////////////////////////////
                            VIEW FUNCTIONS
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Retrieves floor contract address
     * @return address Active floor contract
     * @dev Used for:
     * · Price stability
     * · Supply control
     */
    function floor() external view returns (address);

    /**
     * @notice Retrieves authorized minter address
     * @return address Active minter contract
     * @dev Controls:
     * · Mint permissions
     * · Supply expansion
     */
    function minter() external view returns (address);

    /**
     * @notice Returns absolute maximum token supply
     * @return uint256 Maximum supply cap in base units
     * @dev Enforces:
     * · Hard supply limit
     * · Mint restrictions
     */
    function maxSupply() external view returns (uint256);

    /**
     * @notice Calculates maximum supply after rebase
     * @return uint256 Post-rebase maximum supply in base units
     * @dev Considers:
     * · Current max supply
     * · Rebase parameters
     * · Supply caps
     */
    function maxSupplyRebased() external view returns (uint256);

    /**
     * @notice Calculates total supply after rebase
     * @return uint256 Post-rebase total supply in base units
     * @dev Reflects:
     * · Current supply
     * · Rebase effects
     * · Supply limits
     */
    function totalSupplyRebased() external view returns (uint256);
}
