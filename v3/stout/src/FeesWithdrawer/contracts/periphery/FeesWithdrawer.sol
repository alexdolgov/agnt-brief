// SPDX-License-Identifier: MIT

pragma solidity >=0.8.24 <0.9.0;

import {Ownable} from "../abstract/Ownable.sol";
import {IBaseContracts} from "../interface/IBaseContracts.sol";
import {IDUSXProvider} from "../interface/IDUSXProvider.sol";
import {IERC20Token} from "../interface/IERC20Token.sol";
import {IFeesDistributor} from "../interface/IFees.sol";
import {IFeesWithdrawer} from "../interface/IFees.sol";
import {ILender} from "../interface/ILender.sol";
import {IMiscHelper} from "../interface/IMiscHelper.sol";
import {IVault} from "../interface/IVault.sol";

/**
 * @title FeesWithdrawer
 * @dev Manages centralized fee collection and distribution system
 * @notice Facilitates:
 * · Multi-lender fee collection
 * · Vault-based fee management
 * · Configurable fee distribution
 * · Override mechanisms
 */
contract FeesWithdrawer is Ownable, IFeesWithdrawer {
    /*//////////////////////////////////////////////////////////////
                            STORAGE
    //////////////////////////////////////////////////////////////*/
    /// @notice DUSX provider contract address
    /// @dev Immutable for gas optimization
    IDUSXProvider public immutable dusxProvider;
    /// @notice DUSX receiver contract address
    /// @dev Immutable for gas optimization
    IFeesDistributor public immutable feesDistributor;
    /// @notice DUSX token contract reference
    /// @dev Immutable for gas optimization
    IERC20Token public immutable dusx;
    /// @notice Vault contract
    /// @dev Immutable for gas optimization
    IVault public immutable vault;
    /// @notice Protocol helper contract
    /// @dev Facilitates cross-contract interactions
    IMiscHelper public helper;
    /// @notice Base contracts registry
    IBaseContracts public immutable baseContracts;
    /*//////////////////////////////////////////////////////////////
                                EVENTS
    //////////////////////////////////////////////////////////////*/
    /// @notice Emitted when total DUSX is withdrawn
    /// @param amount Total withdrawn amount
    event DUSXTotalWithdrawn(uint256 amount);
    /// @notice Emitted per-vault withdrawal
    /// @param vault Vault contract address
    /// @param amount Withdrawn amount
    event DUSXWithdrawn(IVault indexed vault, uint256 amount);
    /*//////////////////////////////////////////////////////////////
                            CUSTOM ERRORS
    //////////////////////////////////////////////////////////////*/
    /// @notice Invalid fee recipient configuration
    error InvalidFeeTo();
    /// @notice Zero address provided
    error ZeroAddress();

    /*//////////////////////////////////////////////////////////////
                            CONSTRUCTOR
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Configures the withdrawer with base contracts registry
     * @param baseContracts_ Base contracts registry address
     */
    constructor(IBaseContracts baseContracts_) {
        _ensureNonzeroAddress(address(baseContracts_));
        baseContracts = baseContracts_;
        dusxProvider = baseContracts_.dusxProvider();
        feesDistributor = baseContracts_.feesDistributor();
        dusx = baseContracts_.dusx();
        vault = baseContracts_.vault();
        helper = baseContracts_.helper();
        _ensureNonzeroAddress(address(dusxProvider));
        _ensureNonzeroAddress(address(feesDistributor));
        _ensureNonzeroAddress(address(dusx));
        _ensureNonzeroAddress(address(vault));
        _ensureNonzeroAddress(address(helper));
        transferOwnership(address(helper));
    }

    /*//////////////////////////////////////////////////////////////
                        WITHDRAWAL OPERATIONS
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Executes complete fee withdrawal cycle
     * @dev Process:
     * 1. Process each lender
     *   · Validate configuration
     *   · Accrue fees
     *   · Calculate amounts
     *   · Handle transfers
     * 2. Process vault withdrawals
     */
    function withdraw() external onlyOwner {
        address[] memory lenders = vault.getControllers();
        uint256 length = lenders.length;
        for (uint256 i; i < length; i++) {
            ILender lender = ILender(lenders[i]);
            if (lender.feeTo() != address(this)) {
                revert InvalidFeeTo();
            }
            lender.accrue();
            uint256 feesEarned = 0;
            (, feesEarned, ) = lender.accrueInfo();
            uint256 lenderDUSXAmount = vault.toAmount(
                dusx,
                vault.balanceOf(dusx, address(lender)),
                false
            );
            uint256 amountToProvide;
            if (feesEarned > lenderDUSXAmount) {
                amountToProvide = feesEarned - lenderDUSXAmount;
            } else {
                amountToProvide = 0;
            }
            lender.withdrawFees(amountToProvide);
            address vaultAddress = address(lender.vault());
            uint256 vaultDUSXBalance = vault.balanceOf(dusx, vaultAddress);
            vault.transfer(dusx, vaultAddress, address(this), vaultDUSXBalance);
        }
        uint256 totalAmount = 0;
        uint256 share = vault.balanceOf(dusx, address(this));
        if (share != 0) {
            (uint256 amount, ) = vault.withdraw(
                dusx,
                address(this),
                address(feesDistributor),
                0,
                share
            );
            totalAmount += amount;
            emit DUSXWithdrawn(vault, amount);
        }
        emit DUSXTotalWithdrawn(totalAmount);
    }

    /*//////////////////////////////////////////////////////////////
                            VIEW FUNCTIONS
    //////////////////////////////////////////////////////////////*/
    // Validates that an address is not zero
    function _ensureNonzeroAddress(address addr) private pure {
        if (addr == address(0)) {
            revert ZeroAddress();
        }
    }
}
