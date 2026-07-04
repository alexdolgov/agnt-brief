// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.28;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {Ownable2Step} from "@openzeppelin/contracts/access/Ownable2Step.sol";
import {IERC20Metadata as IERC20} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";

import {NativeLPToken} from "./NativeLPToken.sol";
import {WithdrawQueue} from "./WithdrawQueue.sol";
import {SafeERC20} from "./libraries/SafeERC20.sol";
import {ErrorsLib} from "./libraries/ErrorsLib.sol";
import {ReentrancyGuardTransient} from "./libraries/ReentrancyGuardTransient.sol";

/**
 * @title WrappedNLP - Wrapped NativeLPToken
 * @dev Converts rebasing NativeLPToken into static-balance ERC20 for protocol compatibility
 * while preserving accumulated yield value.
 *
 * @notice Redemption Options:
 * - Queue-based: Free redemption via WithdrawQueue contract (time-delayed for JIT protection)
 * - Instant: Direct redemption with configurable fee (immediate, open to all users)
 */
contract WrappedNLP is ERC20, Ownable2Step, ReentrancyGuardTransient {
    using SafeERC20 for IERC20;

    /*//////////////////////////////////////////////////////////////////////////
                                    STATE VARIABLES
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Whether instant redeem is enabled
    bool public instantRedeemEnabled = true;

    /// @notice The Native LPToken address
    NativeLPToken public immutable nlp;

    /// @notice The underlying token of the NativeLPToken
    IERC20 public immutable underlying;

    /// @notice Address that receives instant redeem fees
    address public feeRecipient;

    /// @notice The authorized WithdrawQueue contract
    WithdrawQueue public withdrawQueue;

    /// @notice Minimum amount for instant redeem
    uint256 public constant MIN_INSTANT_REDEEM_AMOUNT = 1000;

    /// @notice Instant redeem fee in basis points (1 bip = 0.01%)
    uint256 public instantRedeemFeeBips;

    /// @notice Mapping of whitelisted addresses that can directly call unwrapAndRedeem
    mapping(address => bool) public redeemWhitelist;

    /*//////////////////////////////////////////////////////////////////////////
                                    EVENTS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Event emitted when NativeLP tokens are wrapped into WrappedNLP tokens
    event Wrapped(address indexed user, uint256 nlpAmount, uint256 wNLPAmount);

    /// @notice Event emitted when underlying tokens are deposited and wrapped into WrappedNLP tokens
    event DepositAndWrapped(address indexed from, address indexed to, uint256 underlyingAmount, uint256 wNLPAmount);

    /// @notice Event emitted when WrappedNLP tokens are unwrapped and redeemed for underlying tokens
    event UnwrappedAndRedeemed(address indexed from, address indexed to, uint256 wNLPAmount, uint256 underlyingAmount);

    /// @notice Event emitted when instant redeem fee is charged
    event InstantRedeemFeeCollected(address indexed user, uint256 feeAmount);

    /// @notice Event emitted when fee recipient is updated
    event FeeRecipientUpdated(address indexed oldRecipient, address indexed newRecipient);

    /// @notice Event emitted when instant redeem is executed
    event InstantRedeemed(address indexed user, uint256 wNLPAmount, uint256 underlyingAmount, uint256 feeAmount);

    /// @notice Event emitted when withdraw queue address is updated
    event WithdrawQueueUpdated(address indexed oldQueue, address indexed newQueue);

    /// @notice Event emitted when redeem whitelist status is updated
    event RedeemWhitelistUpdated(address indexed account, bool status);

    /// @notice Event emitted when instant redeem fee bips is updated
    event InstantRedeemFeeBipsUpdated(uint256 oldFeeBips, uint256 newFeeBips);

    /// @notice Event emitted when instant redeem enabled status is updated
    event InstantRedeemEnabledUpdated(bool enabled);

    constructor(string memory _name, string memory _symbol, NativeLPToken _nlp) ERC20(_name, _symbol) {
        nlp = _nlp;
        underlying = nlp.underlying();
        feeRecipient = msg.sender;

        instantRedeemFeeBips = nlp.earlyWithdrawFeeBips();
    }

    /*//////////////////////////////////////////////////////////////////////////
                                    WRAP AND REDEEM
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Wraps NativeLP tokens into WrappedNLP tokens
    /// @param amount Amount of NativeLP tokens to deposit
    /// @return wNLPAmount Amount of WrappedNLP tokens received
    function wrap(
        uint256 amount
    ) external nonReentrant returns (uint256 wNLPAmount) {
        require(amount > 0, ErrorsLib.ZeroAmount());

        wNLPAmount = nlp.getSharesByUnderlying(amount);

        IERC20(nlp).safeTransferFrom(msg.sender, address(this), amount);

        _mint(msg.sender, wNLPAmount);

        emit Wrapped(msg.sender, amount, wNLPAmount);
    }

    /// @notice Deposit underlying tokens directly into NLP and receive WrappedNLP tokens for a specified recipient
    /// @param to The address to receive the WrappedNLP tokens
    /// @param amount Amount of underlying tokens to deposit
    /// @return wNLPAmount Amount of WrappedNLP tokens received
    function depositAndWrap(address to, uint256 amount) external nonReentrant returns (uint256 wNLPAmount) {
        require(amount > 0, ErrorsLib.ZeroAmount());
        require(to != address(0), ErrorsLib.ZeroAddress());

        underlying.safeTransferFrom(msg.sender, address(this), amount);
        underlying.safeApprove(address(nlp), amount);

        wNLPAmount = nlp.deposit(amount);

        _mint(to, wNLPAmount);

        emit DepositAndWrapped(msg.sender, to, amount, wNLPAmount);
    }

    /// @notice Unwrap WrappedNLP tokens and redeem underlying tokens to a specified address
    /// @dev Only WithdrawQueue contract or whitelisted addresses can call this function
    /// @param wNLPAmount Amount of WrappedNLP tokens to unwrap and redeem
    /// @param to Address that will receive the underlying tokens
    /// @return underlyingAmount Amount of underlying tokens sent to the recipient
    function unwrapAndRedeem(uint256 wNLPAmount, address to) external nonReentrant returns (uint256 underlyingAmount) {
        require(wNLPAmount > 0, ErrorsLib.ZeroAmount());
        require(to != address(0), ErrorsLib.ZeroAddress());
        require(msg.sender == address(withdrawQueue) || redeemWhitelist[msg.sender], ErrorsLib.NotTrustedOperator());

        _burn(msg.sender, wNLPAmount);

        underlyingAmount = nlp.redeemTo(wNLPAmount, to);

        emit UnwrappedAndRedeemed(msg.sender, to, wNLPAmount, underlyingAmount);
    }

    /// @notice Instantly redeem WrappedNLP tokens for underlying tokens with fee
    /// @param wNLPAmount Amount of WrappedNLP tokens to redeem
    /// @param to Address that will receive the underlying tokens
    /// @return underlyingAmount Amount of underlying tokens received after fee
    function instantRedeem(uint256 wNLPAmount, address to) external nonReentrant returns (uint256 underlyingAmount) {
        require(instantRedeemEnabled, "Instant redeem disabled");
        require(wNLPAmount >= MIN_INSTANT_REDEEM_AMOUNT, "Below minimum instant redeem amount");
        require(to != address(0), ErrorsLib.ZeroAddress());

        _burn(msg.sender, wNLPAmount);

        underlyingAmount = nlp.redeemTo(wNLPAmount, address(this));

        uint256 fee = (underlyingAmount * instantRedeemFeeBips) / 10_000;

        if (fee > 0) {
            underlyingAmount -= fee;
            // Transfer fee to fee recipient
            underlying.safeTransfer(feeRecipient, fee);
            emit InstantRedeemFeeCollected(msg.sender, fee);
        }

        underlying.safeTransfer(to, underlyingAmount);

        emit InstantRedeemed(msg.sender, wNLPAmount, underlyingAmount, fee);
    }

    /*//////////////////////////////////////////////////////////////////////////
                                    VIEW FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Gets the number of decimals for this token
    /// @return The number of decimals, matching the underlying token
    function decimals() public view override returns (uint8) {
        return nlp.decimals();
    }

    /// @notice Calculates the amount of WrappedNLP tokens for a given amount of NativeLP tokens
    /// @param _nlpAmount Amount of NativeLP tokens
    /// @return Amount of WrappedNLP tokens
    function getWnlpByNlp(
        uint256 _nlpAmount
    ) external view returns (uint256) {
        return nlp.getSharesByUnderlying(_nlpAmount);
    }

    /// @notice Calculates the amount of NLP tokens for a given amount of WrappedNLP tokens
    /// @param wNLPAmount Amount of WrappedNLP tokens
    /// @return Amount of NativeLP tokens
    function getNlpByWnlp(
        uint256 wNLPAmount
    ) external view returns (uint256) {
        return nlp.getUnderlyingByShares(wNLPAmount);
    }

    /// @notice Returns the amount of NativeLP tokens per 1 WrappedNLP token
    /// @dev Used to calculate the exchange rate from WrappedNLP to NativeLP
    /// @return Amount of NativeLP tokens equivalent to 1 WrappedNLP token
    function nlpPerToken() external view returns (uint256) {
        return nlp.getUnderlyingByShares(10 ** decimals());
    }

    /// @notice Returns the amount of WrappedNLP tokens per 1 NativeLP token
    /// @dev Used to calculate the exchange rate from NativeLP to WrappedNLP
    /// @return Amount of WrappedNLP tokens equivalent to 1 NativeLP token
    function tokensPerNlp() external view returns (uint256) {
        return nlp.getSharesByUnderlying(10 ** decimals());
    }

    /*//////////////////////////////////////////////////////////////////////////
                                    ADMIN FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Sets the WithdrawQueue contract address
    /// @param _withdrawQueue The new WithdrawQueue contract address
    function setWithdrawQueue(
        address _withdrawQueue
    ) external onlyOwner {
        require(_withdrawQueue != address(0), ErrorsLib.ZeroAddress());

        address oldQueue = address(withdrawQueue);
        withdrawQueue = WithdrawQueue(_withdrawQueue);

        emit WithdrawQueueUpdated(oldQueue, _withdrawQueue);
    }

    /// @notice Sets the redeem whitelist status for multiple addresses
    /// @param accounts The addresses to update
    /// @param statuses The new whitelist statuses corresponding to each account
    function setRedeemWhitelist(address[] calldata accounts, bool[] calldata statuses) external onlyOwner {
        for (uint256 i = 0; i < accounts.length; i++) {
            require(accounts[i] != address(0), ErrorsLib.ZeroAddress());

            redeemWhitelist[accounts[i]] = statuses[i];
            emit RedeemWhitelistUpdated(accounts[i], statuses[i]);
        }
    }

    /// @notice Sets the address that receives instant redeem fees
    /// @param _feeRecipient The new fee recipient address
    function setFeeRecipient(
        address _feeRecipient
    ) external onlyOwner {
        require(_feeRecipient != address(0), ErrorsLib.ZeroAddress());

        address oldRecipient = feeRecipient;
        feeRecipient = _feeRecipient;

        emit FeeRecipientUpdated(oldRecipient, _feeRecipient);
    }

    /// @notice Sets the instant redeem fee in basis points
    /// @param _instantRedeemFeeBips The new instant redeem fee in basis points
    function setInstantRedeemFeeBips(
        uint256 _instantRedeemFeeBips
    ) external onlyOwner {
        require(_instantRedeemFeeBips <= 2500, ErrorsLib.InvalidFeeBips());

        uint256 oldFeeBips = instantRedeemFeeBips;
        instantRedeemFeeBips = _instantRedeemFeeBips;

        emit InstantRedeemFeeBipsUpdated(oldFeeBips, _instantRedeemFeeBips);
    }

    /// @notice Sets whether instant redeem is enabled
    /// @param _enabled Whether instant redeem should be enabled
    function setInstantRedeemEnabled(
        bool _enabled
    ) external onlyOwner {
        instantRedeemEnabled = _enabled;

        emit InstantRedeemEnabledUpdated(_enabled);
    }
}
