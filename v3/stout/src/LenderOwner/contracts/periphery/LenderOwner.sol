// SPDX-License-Identifier: MIT

pragma solidity >=0.8.24 <0.9.0;

import {Ownable} from "../abstract/Ownable.sol";
import {IBaseContracts} from "../interface/IBaseContracts.sol";
import {IERC20Token} from "../interface/IERC20Token.sol";
import {ILender} from "../interface/ILender.sol";
import {ILenderOwner} from "../interface/ILenderOwner.sol";
import {IMiscHelper} from "../interface/IMiscHelper.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC20 as IERC20Safe} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

/**
 * @title LenderOwner
 * @dev Manages administrative control and configuration for lending markets
 * @notice Facilitates:
 * · Lender configuration management
 * · Interest rate adjustments
 * · Supply control
 * · Borrowing limits
 * · Fee distribution
 */
contract LenderOwner is Ownable, ILenderOwner {
    /*//////////////////////////////////////////////////////////////
                                STORAGE
    //////////////////////////////////////////////////////////////*/
    /// @notice Treasury address for fee collection
    /// @dev Mutable to allow updates
    address public treasury;
    /// @notice DUSX token contract reference
    /// @dev Immutable for gas optimization
    IERC20Token public immutable dusx;
    /// @notice Tracks manual lender markets
    /// @dev Lender address => manual status
    mapping(address => bool) public manual;
    /// @notice Tracks deprecated lender markets
    /// @dev Lender address => deprecated status
    mapping(address => bool) public deprecated;
    /// @notice Protocol helper contract
    /// @dev Facilitates cross-contract interactions
    IMiscHelper public helper;
    /// @notice Base contracts registry
    IBaseContracts public immutable baseContracts;
    /*//////////////////////////////////////////////////////////////
                                EVENTS
    //////////////////////////////////////////////////////////////*/
    /// @notice Emitted when lender manual changes
    /// @param lender Target lender address
    /// @param previous Old manual status
    /// @param current New manual status
    event Manual(address indexed lender, bool previous, bool current);
    /// @notice Emitted when lender deprecation changes
    /// @param lender Target lender address
    /// @param previous Old deprecation status
    /// @param current New deprecation status
    event Deprecated(address indexed lender, bool previous, bool current);
    /// @notice Emitted when treasury updates
    /// @param previous Old treasury address
    /// @param current New treasury address
    event TreasuryChanged(address indexed previous, address indexed current);
    /*//////////////////////////////////////////////////////////////
                            CUSTOM ERRORS
    //////////////////////////////////////////////////////////////*/
    /// @notice Zero address not allowed
    error ZeroAddress();
    /// @notice Invalid parameter
    error InvalidParameter();
    /// @notice Error thrown when attempting to modify a lender that is not in manual mode
    error LenderNotInManualMode();
    modifier onlyHelper() {
        if (address(helper) != _msgSender()) {
            revert UnauthorizedAccount(_msgSender());
        }
        _;
    }

    /*//////////////////////////////////////////////////////////////
                            CONSTRUCTOR
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Configures contract with core parameters
     * @param baseContracts_ Base contracts registry address
     * @param treasury_ Treasury address for fee collection
     */
    constructor(IBaseContracts baseContracts_, address treasury_) {
        _ensureNonzeroAddress(address(baseContracts_));
        baseContracts = baseContracts_;
        _ensureNonzeroAddress(treasury_);
        treasury = treasury_;
        dusx = baseContracts_.dusx();
        _ensureNonzeroAddress(address(dusx));
        helper = baseContracts_.helper();
        _ensureNonzeroAddress(address(helper));
    }

    /*//////////////////////////////////////////////////////////////
                            TOKEN OPERATIONS
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Rescues DUSX tokens to treasury
     * @dev Process:
     * 1. Check balance
     * 2. Transfer to treasury
     *
     * Security:
     * · Owner-only
     * · Safe transfer
     */
    function rescueDUSX() external onlyOwner {
        SafeERC20.safeTransfer(
            IERC20Safe(address(dusx)),
            treasury,
            dusx.balanceOf(address(this))
        );
    }

    /*//////////////////////////////////////////////////////////////
                        CONFIGURATION FUNCTIONS
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Updates lender interest rate
     * @param lender Target lender
     * @param newInterestRate New rate value
     * @dev Process:
     * 1. Update rate
     * 2. Accrue interest
     *
     * Security:
     * · Owner-only
     */
    function changeInterestRate(
        ILender lender,
        uint256 newInterestRate
    ) external onlyHelper {
        // Check if lender's collateral is veSTTX
        if (address(lender.collateral()) == address(baseContracts.veSTTX())) {
            // Apply different interest rate for veSTTX collateral
            lender.changeInterestRate(newInterestRate / 4);
        } else {
            // Apply normal interest rate for other collaterals
            lender.changeInterestRate(newInterestRate);
        }
        lender.accrue();
    }

    /**
     * @notice Updates lender borrow limits
     * @param lender Target lender
     * @param newBorrowLimit New total limit
     * @param perAddressPart Per-address limit
     * @dev Security:
     * · Owner-only
     */
    function changeBorrowLimit(
        ILender lender,
        uint256 newBorrowLimit,
        uint256 perAddressPart
    ) external onlyHelper {
        lender.changeBorrowLimit(newBorrowLimit, perAddressPart);
    }

    /**
     * @notice Updates lender borrow limits manually
     * @param lender Target lender
     * @param newBorrowLimit New total limit
     * @param perAddressPart Per-address limit
     * @dev Security:
     * · Owner-only
     * · Requires lender to be in manual mode
     */
    function changeBorrowLimitManually(
        ILender lender,
        uint256 newBorrowLimit,
        uint256 perAddressPart
    ) external onlyOwner {
        if (!manual[address(lender)]) {
            revert LenderNotInManualMode();
        }
        lender.changeBorrowLimit(newBorrowLimit, perAddressPart);
    }

    /**
     * @notice Sets lender manual status
     * @param lender Target lender
     * @dev Security:
     * · Owner-only
     */
    function setManual(ILender lender) external onlyOwner {
        emit Manual(address(lender), manual[address(lender)], true);
        manual[address(lender)] = true;
        emit Deprecated(address(lender), deprecated[address(lender)], false);
        deprecated[address(lender)] = false;
    }

    /**
     * @notice Sets lender auto status
     * @param lender Target lender
     * @dev Security:
     * · Owner-only
     */
    function setAuto(ILender lender) external onlyOwner {
        emit Manual(address(lender), manual[address(lender)], false);
        manual[address(lender)] = false;
        emit Deprecated(address(lender), deprecated[address(lender)], false);
        deprecated[address(lender)] = false;
    }

    /**
     * @notice Sets lender deprecation status
     * @param lender Target lender
     * @dev Security:
     * · Owner-only
     */
    function setDeprecated(ILender lender) external onlyOwner {
        lender.changeBorrowLimit(0, 0);
        emit Manual(address(lender), manual[address(lender)], false);
        manual[address(lender)] = false;
        emit Deprecated(address(lender), deprecated[address(lender)], true);
        deprecated[address(lender)] = true;
    }

    /**
     * @notice Updates treasury address
     * @param treasury_ New treasury address
     * @dev Security:
     * · Owner-only
     * · Address validation
     *
     * Events:
     * · Emits TreasuryChanged
     */
    function setTreasury(address treasury_) external onlyOwner {
        _ensureNonzeroAddress(treasury_);
        emit TreasuryChanged(treasury, treasury_);
        treasury = treasury_;
    }

    /*//////////////////////////////////////////////////////////////
                            PRIVATE FUNCTIONS
    //////////////////////////////////////////////////////////////*/
    // Validates that an address is not zero
    function _ensureNonzeroAddress(address addr) private pure {
        if (addr == address(0)) {
            revert ZeroAddress();
        }
    }
}
