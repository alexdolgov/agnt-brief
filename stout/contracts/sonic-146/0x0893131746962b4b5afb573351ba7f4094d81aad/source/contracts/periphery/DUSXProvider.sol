// SPDX-License-Identifier: MIT

pragma solidity >=0.8.24 <0.9.0;

import {Context} from "../abstract/Context.sol";
import {IBaseContracts} from "../interface/IBaseContracts.sol";
import {IDUSXProvider} from "../interface/IDUSXProvider.sol";
import {IERC20Token} from "../interface/IERC20Token.sol";
import {ILender} from "../interface/ILender.sol";
import {IStableOwner} from "../interface/IStableOwner.sol";
import {IVault} from "../interface/IVault.sol";

/**
 * @title DUSXProvider
 * @dev Manages DUSX token provision and distribution for lending markets
 * @notice Facilitates:
 * · DUSX token minting and provision
 * · Vault deposits for lending markets
 * · Token approval management
 */
contract DUSXProvider is Context, IDUSXProvider {
    /*//////////////////////////////////////////////////////////////
                                STORAGE
    //////////////////////////////////////////////////////////////*/
    /// @notice DUSX token contract reference
    /// @dev Immutable for gas optimization and security
    IERC20Token public immutable dusx;
    /// @notice Stable token owner contract for minting
    /// @dev Immutable for gas optimization and security
    IStableOwner public immutable stableOwner;
    /// @notice Base contracts registry
    IBaseContracts public immutable baseContracts;
    /*//////////////////////////////////////////////////////////////
                                EVENTS
    //////////////////////////////////////////////////////////////*/
    /// @notice Emitted when DUSX tokens are provided to a lending market
    /// @param lender Address of the lending market receiving tokens
    /// @param amount Quantity of DUSX tokens provided
    event DUSXProvided(address indexed lender, uint256 amount);
    /*//////////////////////////////////////////////////////////////
                            CUSTOM ERRORS
    //////////////////////////////////////////////////////////////*/
    /// @notice Thrown when operation exceeds available balance
    error InsufficientBalance();
    /// @notice Thrown when zero address is provided where not allowed
    error ZeroAddress();
    /// @notice Thrown when caller is not a vault controller
    error NotVaultController(address caller);
    /*//////////////////////////////////////////////////////////////
                            MODIFIERS
    //////////////////////////////////////////////////////////////*/
    /// @notice Ensures caller is a controller in the vault
    modifier onlyVaultController() {
        if (!isVaultController()) {
            revert NotVaultController(_msgSender());
        }
        _;
    }

    /*//////////////////////////////////////////////////////////////
                            CONSTRUCTOR
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Configures the provider with base contracts registry
     * @param baseContracts_ Base contracts registry address
     */
    constructor(IBaseContracts baseContracts_) {
        _ensureNonzeroAddress(address(baseContracts_));
        baseContracts = baseContracts_;
        address dusxAddr = address(baseContracts.dusx());
        _ensureNonzeroAddress(dusxAddr);
        dusx = IERC20Token(dusxAddr);
        address stableOwnerAddr = address(baseContracts.stableOwner());
        _ensureNonzeroAddress(stableOwnerAddr);
        stableOwner = IStableOwner(stableOwnerAddr);
    }

    /*//////////////////////////////////////////////////////////////
                        PROVISION OPERATIONS
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Provides DUSX tokens to a lending market
     * @param amount Quantity of DUSX tokens to provide
     * @dev Process flow:
     * 1. Validate amount and caller
     * 2. Emit provision event
     * 3. Mint stable tokens
     * 4. Handle vault approval
     * 5. Execute vault deposit
     */
    function provide(uint256 amount) external onlyVaultController {
        if (amount == 0) return;
        address lender = _msgSender();
        emit DUSXProvided(lender, amount);
        // Mint stable tokens
        stableOwner.mint(address(this), amount);
        // Approve and deposit to vault
        IVault vault = ILender(lender).vault();
        if (dusx.allowance(address(this), address(vault)) < type(uint256).max) {
            dusx.approve(address(vault), type(uint256).max);
        }
        vault.deposit(dusx, address(this), lender, amount, 0);
    }

    /*//////////////////////////////////////////////////////////////
                            PRIVATE HELPERS
    //////////////////////////////////////////////////////////////*/
    function isVaultController() private view returns (bool) {
        IVault vault = baseContracts.vault();
        address[] memory controllers = vault.getControllers();
        uint256 length = controllers.length;
        for (uint256 i = 0; i < length; i++) {
            if (controllers[i] == _msgSender()) {
                return true;
            }
        }
        return false;
    }

    // Validates that an address is not zero
    function _ensureNonzeroAddress(address addr) private pure {
        if (addr == address(0)) {
            revert ZeroAddress();
        }
    }
}
