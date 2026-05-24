// SPDX-License-Identifier: MIT

pragma solidity >=0.8.24 <0.9.0;

import {Ownable} from "./abstract/Ownable.sol";
import {ReentrancyGuard} from "./abstract/ReentrancyGuard.sol";
import {MathLib} from "./library/MathLib.sol";
import {IBaseContracts} from "./interface/IBaseContracts.sol";
import {IERC20Custom} from "./interface/IERC20Custom.sol";
import {IERC20Token} from "./interface/IERC20Token.sol";
import {IMiscHelper} from "./interface/IMiscHelper.sol";
import {IOracle} from "./interface/IOracle.sol";
import {IPSM} from "./interface/IPSM.sol";
import {IStableOwner} from "./interface/IStableOwner.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC20 as IERC20Safe} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

/**
 * @title PegStabilityModule
 * @dev Token swap system for price stability
 * @notice Manages DUSX-stablecoin swaps
 */
contract PegStabilityModule is Ownable, ReentrancyGuard, IPSM {
    /*//////////////////////////////////////////////////////////////
                        SWAP DIRECTION ENUM
    //////////////////////////////////////////////////////////////*/
    /// @notice Defines swap direction for price calculations
    enum Direction {
        IN, // Swapping stablecoins for DUSX
        OUT // Swapping DUSX for stablecoins
    }
    /*//////////////////////////////////////////////////////////////
                            STATE VARIABLES
    //////////////////////////////////////////////////////////////*/
    bool public initialized;
    /// @notice Base contracts registry
    IBaseContracts public immutable baseContracts;
    /// @notice DUSX token contract
    /// @dev Immutable reference to core protocol token
    IERC20Token public immutable dusx;
    /// @notice Stablecoin token contract
    /// @dev Immutable reference to supported stablecoin
    IERC20Custom public immutable stableToken;
    /// @notice Stable token owner contract
    /// @dev Used for controlled minting and burning
    IStableOwner public immutable stableOwner;
    /// @notice Price oracle contract
    /// @dev Provides real-time price information
    IOracle public oracle;
    /// @notice Protocol helper contract
    /// @dev Facilitates cross-contract interactions
    IMiscHelper public helper;
    /// @notice Maximum amount of DUSX that can be minted
    /// @dev Prevents excessive token creation
    uint256 public dusxMintCap;
    /// @notice Current amount of DUSX minted through this module
    /// @dev Tracks minted tokens for cap enforcement
    uint256 public dusxMinted;
    /// @notice Precision factor for stable token
    /// @dev Accounts for different stable token decimal places
    uint256 public immutable stablePrecision;
    /// @notice Treasury address for receiving leftover stablecoins
    address public treasury;
    /// @notice Precision constants
    uint256 public constant MANTISSA_ONE = 1e18;
    /*//////////////////////////////////////////////////////////////
                                EVENTS
    //////////////////////////////////////////////////////////////*/
    /// @notice Emitted when DUSX mint cap is changed
    event DUSXMintCapChanged(uint256 oldCap, uint256 newCap);
    /// @notice Emitted when stable tokens are swapped for DUSX
    event StableForDUSXSwapped(uint256 stableIn, uint256 mintedDUSX);
    /// @notice Emitted when DUSX is swapped for stable tokens
    event DUSXForStableSwapped(uint256 burnedDUSX, uint256 stableOut);
    /// @notice Emitted when treasury address is updated
    event TreasuryAddressUpdated(address oldTreasury, address newTreasury);
    /// @notice Emitted when contract is initialized
    event Initialized(address helper, address oracle);
    /*//////////////////////////////////////////////////////////////
                            CUSTOM ERRORS
    //////////////////////////////////////////////////////////////*/
    error alreadyInitialized();
    /// @notice Thrown when an invalid token amount is provided
    error InvalidAmount();
    /// @notice Thrown when token decimals are incompatible
    error InvalidDecimals();
    /// @notice Thrown when a zero address is provided
    error ZeroAddress();
    /// @notice Thrown when a zero amount is provided
    error ZeroAmount();
    /// @notice Thrown when DUSX mint cap would be exceeded
    error DUSXMintCapReached();
    /*//////////////////////////////////////////////////////////////
                            MODIFIERS
    //////////////////////////////////////////////////////////////*/
    /// @notice Restricts function access to helper contract
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
     * @notice Initializes Peg Stability Module with core tokens
     * @param baseContracts_ BaseContracts instance for protocol integration
     * @param stableToken_ Stablecoin token contract address
     * @param treasury_ Address that can withdraw fees
     *
     * Requirements:
     * · Non-zero addresses for all parameters
     * · Stablecoin decimals must be ≤ 18
     *
     * Effects:
     * · Sets core token references
     * · Calculates stable token precision
     */
    constructor(
        IBaseContracts baseContracts_,
        IERC20Custom stableToken_,
        address treasury_
    ) {
        _ensureNonzeroAddress(address(baseContracts_));
        _ensureNonzeroAddress(address(stableToken_));
        _ensureNonzeroAddress(treasury_);
        baseContracts = baseContracts_;
        treasury = treasury_;
        // Get core contracts from BaseContracts
        dusx = baseContracts.dusx();
        stableOwner = baseContracts.stableOwner();
        // Validate addresses
        _ensureNonzeroAddress(address(dusx));
        _ensureNonzeroAddress(address(stableOwner));
        // Initialize contract state
        stableToken = stableToken_;
        uint8 decimals_ = stableToken.decimals();
        if (decimals_ > 18) {
            revert InvalidDecimals();
        }
        stablePrecision = 10 ** decimals_;
    }

    /*//////////////////////////////////////////////////////////////
                        INITIALIZATION FUNCTIONS
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Initializes contract with helper, oracle and treasury
     *
     * Requirements:
     * · Caller must be contract owner
     * · Non-zero addresses for all parameters
     * · Contract must not be already initialized
     *
     * Effects:
     * · Sets helper contract
     * · Sets oracle contract
     * · Sets treasury address
     * · Sets maximum DUSX mint cap
     */
    function initialize() external onlyOwner {
        if (initialized) revert alreadyInitialized();
        // Get contracts from BaseContracts
        helper = baseContracts.helper();
        oracle = baseContracts.oracleChainlink();
        // Validate addresses
        _ensureNonzeroAddress(address(helper));
        _ensureNonzeroAddress(address(oracle));
        dusxMintCap = type(uint256).max;
        initialized = true;
        emit Initialized(address(helper), address(oracle));
    }

    /**
     * @notice Sets the treasury address for receiving leftover stablecoins
     * @param newTreasury The new treasury address
     */
    function setTreasury(address newTreasury) external onlyOwner {
        _ensureNonzeroAddress(newTreasury);
        address oldTreasury = treasury;
        treasury = newTreasury;
        emit TreasuryAddressUpdated(oldTreasury, newTreasury);
    }

    /*//////////////////////////////////////////////////////////////
                            SWAP FUNCTIONS
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Swaps DUSX for stable tokens
     * @param msgSender Original swap initiator
     * @param receiver Recipient of stable tokens
     * @param amountDUSX DUSX amount to swap
     *
     * Requirements:
     * · Only callable by helper
     * · Non-zero receiver address
     * · Sufficient DUSX minted
     *
     * Effects:
     * · Burns DUSX tokens
     * · Transfers stable tokens
     * · Updates oracle price
     * · Emits DUSXForStableSwapped event
     */
    function swapDUSXForStable(
        address msgSender,
        address receiver,
        uint256 amountDUSX
    ) external nonReentrant onlyHelper {
        _ensureNonzeroAddress(receiver);
        _ensureNonzeroAmount(amountDUSX);
        _ensureNonzeroAddress(treasury);
        // Check if there's enough DUSX minted to burn
        if (dusxMinted < amountDUSX) {
            revert InvalidAmount();
        }
        // Burn DUSX first to prevent reentrancy
        unchecked {
            dusxMinted -= amountDUSX;
        }
        stableOwner.burn(msgSender, amountDUSX);
        // oracle.updatePrice(address(stableToken));
        uint256 stableTokenAmountUSD = _previewTokenUSDAmount(
            amountDUSX,
            Direction.OUT
        );
        SafeERC20.safeTransfer(
            IERC20Safe(address(stableToken)),
            receiver,
            stableTokenAmountUSD
        );
        uint256 remainingStable = MathLib.subWithZeroFloor(
            (amountDUSX * 10 ** stableToken.decimals()) / MANTISSA_ONE,
            stableTokenAmountUSD
        );
        if (
            remainingStable > 0 &&
            remainingStable <= stableToken.balanceOf(address(this))
        ) {
            SafeERC20.safeTransfer(
                IERC20Safe(address(stableToken)),
                treasury,
                remainingStable
            );
        }
        emit DUSXForStableSwapped(amountDUSX, stableTokenAmountUSD);
    }

    /**
     * @notice Swaps stable tokens for DUSX
     * @param msgSender Original swap initiator
     * @param receiver DUSX token recipient
     * @param amountStable Stable token amount to swap
     *
     * Requirements:
     * · Only callable by helper
     * · Non-zero receiver address
     * · Within DUSX mint cap
     *
     * Effects:
     * · Transfers stable tokens
     * · Mints DUSX tokens
     * · Updates oracle price
     * · Emits StableForDUSXSwapped event
     */
    function swapStableForDUSX(
        address msgSender,
        address receiver,
        uint256 amountStable
    ) external nonReentrant onlyHelper {
        _ensureNonzeroAddress(receiver);
        _ensureNonzeroAmount(amountStable);
        _ensureNonzeroAddress(treasury);
        uint256 balanceBefore = stableToken.balanceOf(address(this));
        SafeERC20.safeTransferFrom(
            IERC20Safe(address(stableToken)),
            msgSender,
            address(this),
            amountStable
        );
        uint256 balanceAfter = stableToken.balanceOf(address(this));
        uint256 actualTransferAmt = balanceAfter - balanceBefore;
        // oracle.updatePrice(address(stableToken));
        uint256 actualTransferAmtInUSD = _previewTokenUSDAmount(
            actualTransferAmt,
            Direction.IN
        );
        if (dusxMinted + actualTransferAmtInUSD > dusxMintCap) {
            revert DUSXMintCapReached();
        }
        unchecked {
            dusxMinted += actualTransferAmtInUSD;
        }
        stableOwner.mint(receiver, actualTransferAmtInUSD);
        uint256 remainingStable = (MathLib.subWithZeroFloor(
            (actualTransferAmt * MANTISSA_ONE) / 10 ** stableToken.decimals(),
            actualTransferAmtInUSD
        ) * 10 ** stableToken.decimals()) / MANTISSA_ONE;
        if (
            remainingStable > 0 &&
            remainingStable <= stableToken.balanceOf(address(this))
        ) {
            SafeERC20.safeTransfer(
                IERC20Safe(address(stableToken)),
                treasury,
                remainingStable
            );
        }
        emit StableForDUSXSwapped(actualTransferAmt, actualTransferAmtInUSD);
    }

    /**
     * @notice Sets the maximum amount of DUSX that can be minted through this contract
     * @param dusxMintCap_ The new maximum amount of DUSX that can be minted
     */
    function setDUSXMintCap(uint256 dusxMintCap_) external onlyOwner {
        uint256 oldDUSXMintCap = dusxMintCap;
        dusxMintCap = dusxMintCap_;
        emit DUSXMintCapChanged(oldDUSXMintCap, dusxMintCap_);
    }

    /*//////////////////////////////////////////////////////////////
                            VIEW FUNCTIONS
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Preview the amount of stable tokens received for burning DUSX
     * @param amountDUSX Amount of DUSX to hypothetically burn
     * @return Amount of stable tokens that would be received
     */
    function previewSwapDUSXForStable(
        uint256 amountDUSX
    ) external view returns (uint256) {
        _ensureNonzeroAmount(amountDUSX);
        uint256 stableTokenAmountUSD = _previewTokenUSDAmount(
            amountDUSX,
            Direction.OUT
        );
        if (
            dusxMinted <
            ((stableTokenAmountUSD * MANTISSA_ONE) /
                10 ** stableToken.decimals())
        ) {
            revert InvalidAmount();
        }
        return stableTokenAmountUSD;
    }

    /**
     * @notice Preview the amount of DUSX received for depositing stable tokens
     * @param amountStable Amount of stable tokens to hypothetically deposit
     * @return Amount of DUSX that would be received
     */
    function previewSwapStableForDUSX(
        uint256 amountStable
    ) external view returns (uint256) {
        _ensureNonzeroAmount(amountStable);
        uint256 dusxTokenAmountUSD = _previewTokenUSDAmount(
            amountStable,
            Direction.IN
        );
        if (dusxMinted + dusxTokenAmountUSD > dusxMintCap) {
            revert DUSXMintCapReached();
        }
        return dusxTokenAmountUSD;
    }

    /*//////////////////////////////////////////////////////////////
                            PRIVATE FUNCTIONS
    //////////////////////////////////////////////////////////////*/
    /**
     * @dev Calculates the USD value of tokens based on swap direction
     * @param amount The token amount to convert
     * @param direction Swap direction (IN/OUT)
     * @return USD value scaled by 1e18
     */
    function _previewTokenUSDAmount(
        uint256 amount,
        Direction direction
    ) private view returns (uint256) {
        if (direction == Direction.IN) {
            // amount (6) * price (18) / stablePrecision (6) = 18 decimals
            return (amount * _getPriceInUSD(direction)) / stablePrecision;
        } else {
            // amount (18) * stablePrecision (6) / price (18) = 6 decimals
            return (amount * stablePrecision) / _getPriceInUSD(direction);
        }
    }

    /**
     * @dev Gets the USD price of stable token with direction-based adjustments
     * @param direction Swap direction (IN/OUT)
     * @return Adjusted USD price
     */
    function _getPriceInUSD(
        Direction direction
    ) private view returns (uint256) {
        uint256 price = oracle.getPrice(address(stableToken));
        if (direction == Direction.IN) {
            return price < MANTISSA_ONE ? price : MANTISSA_ONE;
        } else {
            return price > MANTISSA_ONE ? price : MANTISSA_ONE;
        }
    }

    // Validates that an address is not zero
    function _ensureNonzeroAddress(address addr) private pure {
        if (addr == address(0)) {
            revert ZeroAddress();
        }
    }

    // Validates that an amount is greater than zero
    function _ensureNonzeroAmount(uint256 amount) private pure {
        if (amount == 0) {
            revert ZeroAmount();
        }
    }
}
