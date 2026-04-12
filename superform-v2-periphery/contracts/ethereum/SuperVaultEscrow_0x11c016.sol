// SPDX-License-Identifier: EXTRACTED
// Contract: SuperVaultEscrow
// Address: 0x11c016dfb1745a81587e5e3fa8fc75f5693f427b
// Compiler: v0.8.30+commit.73712a01
// Source: Etherscan verified source (project files only, libraries excluded)
// Extracted: 2026-04-12

// ======================================================================
// FILE: src/interfaces/SuperVault/ISuperVaultEscrow.sol
// ======================================================================

// SPDX-License-Identifier: Apache-2.0
pragma solidity 0.8.30;

/// @title ISuperVaultEscrow
/// @notice Interface for SuperVault escrow contract that holds shares during request/claim process
/// @author Superform Labs
interface ISuperVaultEscrow {
    /*//////////////////////////////////////////////////////////////
                                ERRORS
    //////////////////////////////////////////////////////////////*/
    error ALREADY_INITIALIZED();
    error UNAUTHORIZED();
    error ZERO_ADDRESS();
    error ZERO_AMOUNT();

    /*//////////////////////////////////////////////////////////////
                                EVENTS
    //////////////////////////////////////////////////////////////*/
    /// @notice Emitted when escrow is initialized
    /// @param vault The vault contract address
    event Initialized(address indexed vault);

    /// @notice Emitted when shares are transferred to escrow
    /// @param from The address shares were transferred from
    /// @param amount The amount of shares escrowed
    event SharesEscrowed(address indexed from, uint256 amount);

    /// @notice Emitted when shares are returned from escrow
    /// @param to The address shares were returned to
    /// @param amount The amount of shares returned
    event SharesReturned(address indexed to, uint256 amount);

    /// @notice Emitted when assets are returned from escrow
    /// @param to The address assets were returned to
    /// @param amount The amount of assets returned
    event AssetsReturned(address indexed to, uint256 amount);

    /*//////////////////////////////////////////////////////////////
                            INITIALIZATION
    //////////////////////////////////////////////////////////////*/

    /// @notice Initialize the escrow with required parameters
    /// @param vaultAddress The vault contract address
    function initialize(address vaultAddress) external;

    /*//////////////////////////////////////////////////////////////
                            VAULT FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /// @notice Transfer shares from user to escrow during redeem request
    /// @param from The address to transfer shares from
    /// @param amount The amount of shares to transfer
    function escrowShares(address from, uint256 amount) external;

    /// @notice Return shares from escrow to user during redeem cancellation
    /// @param to The address to return shares to
    /// @param amount The amount of shares to return
    function returnShares(address to, uint256 amount) external;

    /// @notice Return assets from escrow to vault during deposit cancellation
    /// @param to The address to return assets to
    /// @param amount The amount of assets to return
    function returnAssets(address to, uint256 amount) external;
}

// ======================================================================
// FILE: src/SuperVault/SuperVaultEscrow.sol
// ======================================================================

// SPDX-License-Identifier: Apache-2.0
pragma solidity 0.8.30;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { IERC4626 } from "@openzeppelin/contracts/interfaces/IERC4626.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { ISuperVaultEscrow } from "../interfaces/SuperVault/ISuperVaultEscrow.sol";

/// @title SuperVaultEscrow
/// @author Superform Labs
/// @notice Escrow contract for SuperVault shares during request/claim process
contract SuperVaultEscrow is ISuperVaultEscrow {
    using SafeERC20 for IERC20;

    /*//////////////////////////////////////////////////////////////
                                STATE
    //////////////////////////////////////////////////////////////*/
    bool public initialized;
    address public vault;

    /*//////////////////////////////////////////////////////////////
                                MODIFIERS
    //////////////////////////////////////////////////////////////*/
    modifier onlyVault() {
        _onlyVault();
        _;
    }

    function _onlyVault() internal view {
        if (msg.sender != vault) revert UNAUTHORIZED();
    }

    /*//////////////////////////////////////////////////////////////
                            INITIALIZATION
    //////////////////////////////////////////////////////////////*/

    /// @inheritdoc ISuperVaultEscrow
    function initialize(address vaultAddress) external {
        if (initialized) revert ALREADY_INITIALIZED();
        if (vaultAddress == address(0)) revert ZERO_ADDRESS();

        initialized = true;
        vault = vaultAddress;

        emit Initialized(vaultAddress);
    }

    /*//////////////////////////////////////////////////////////////
                            VAULT FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /// @inheritdoc ISuperVaultEscrow
    function escrowShares(address from, uint256 amount) external onlyVault {
        if (amount == 0) revert ZERO_AMOUNT();
        IERC20(vault).safeTransferFrom(from, address(this), amount);
        emit SharesEscrowed(from, amount);
    }

    /// @inheritdoc ISuperVaultEscrow
    function returnShares(address to, uint256 amount) external onlyVault {
        if (amount == 0) revert ZERO_AMOUNT();
        IERC20(vault).safeTransfer(to, amount);
        emit SharesReturned(to, amount);
    }

    /// @inheritdoc ISuperVaultEscrow
    function returnAssets(address to, uint256 amount) external onlyVault {
        if (amount == 0) revert ZERO_AMOUNT();
        if (to == address(0)) revert ZERO_ADDRESS();
        IERC20(IERC4626(vault).asset()).safeTransfer(to, amount);
        emit AssetsReturned(to, amount);
    }
}
