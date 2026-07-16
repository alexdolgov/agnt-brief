// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.28;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {Ownable2Step} from "@openzeppelin/contracts/access/Ownable2Step.sol";
import {IERC20Metadata as IERC20} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";

import {NativeLPToken} from "./NativeLPToken.sol";
import {SafeERC20} from "./libraries/SafeERC20.sol";
import {ErrorsLib} from "./libraries/ErrorsLib.sol";
import {ReentrancyGuardTransient} from "./libraries/ReentrancyGuardTransient.sol";

/**
 * @title WNLP - Wrapped NativeLPToken
 * @dev Wrapper contract that converts rebasing NativeLPToken into a static-balance ERC20 token.
 * This makes NLP compatible with protocols that don't support rebasing tokens.
 * Users can wrap/unwrap at any time while preserving accumulated value.
 *
 * @notice For WNLP to function properly, it must be configured on the NLP contract:
 *         1. Set as trustedOperator
 *         2. Set as redeemCooldownExempt
 */
contract WNLP is ERC20, Ownable2Step, ReentrancyGuardTransient {
    using SafeERC20 for IERC20;

    /*//////////////////////////////////////////////////////////////////////////
                                    STATE VARIABLES
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice The Native LPToken address
    NativeLPToken public immutable nlp;

    /// @notice The underlying token of the NativeLPToken
    IERC20 public immutable underlying;

    /// @notice Address that receives early withdrawal fees
    address public earlyWithdrawFeeReceiver;

    /// @notice Mapping of trusted operators who can call depositFor and redeemTo functions
    mapping(address => bool) public trustedOperators;

    /// @notice Tracks the last deposit timestamp to enforce cooldown restrictions
    mapping(address => uint256) public lastDepositTimestamp;

    /*//////////////////////////////////////////////////////////////////////////
                                    EVENTS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Event emitted when NLP tokens are wrapped into wNLP tokens
    event Wrapped(address indexed user, uint256 nlpAmount, uint256 wNLPAmount);

    /// @notice Event emitted when wNLP tokens are unwrapped back to NLP tokens
    event Unwrapped(address indexed user, uint256 wNLPAmount, uint256 nlpAmount);

    /// @notice Event emitted when underlying tokens are deposited and wrapped into wNLP tokens
    event DepositAndWrapped(
        address indexed from,
        address indexed to,
        address indexed beneficiary,
        uint256 underlyingAmount,
        uint256 wNLPAmount
    );

    /// @notice Event emitted when wNLP tokens are unwrapped and redeemed for underlying tokens
    event UnwrappedAndRedeemed(
        address indexed from,
        address indexed to,
        address indexed beneficiary,
        uint256 wNLPAmount,
        uint256 underlyingAmount,
        uint256 feeAmount
    );

    /// @notice Event emitted when a trusted operator status is updated
    event TrustedOperatorUpdated(address indexed account, bool status);

    /// @notice Event emitted when early withdraw fee is charged
    event EarlyWithdrawFeeCollected(address indexed beneficiary, uint256 feeAmount);

    /// @notice Event emitted when early withdraw fee receiver is updated
    event EarlyWithdrawFeeReceiverUpdated(address indexed oldReceiver, address indexed newReceiver);

    /// @notice Event emitted when deposit timestamp is updated
    event DepositTimestampUpdated(address indexed user, uint256 timestamp);

    constructor(string memory _name, string memory _symbol, NativeLPToken _nlp) ERC20(_name, _symbol) {
        nlp = _nlp;

        underlying = nlp.underlying();
        earlyWithdrawFeeReceiver = msg.sender;
    }

    /*//////////////////////////////////////////////////////////////////////////
                                    WRAP AND UNWRAP
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Wraps NativeLP tokens into wNLP tokens
    /// @param amount Amount of NativeLP tokens to deposit
    /// @return Amount of wNLP tokens received
    function wrap(uint256 amount) external nonReentrant returns (uint256) {
        require(amount > 0, ErrorsLib.ZeroAmount());

        uint256 wNLPAmount = nlp.getSharesByUnderlying(amount);

        IERC20(nlp).safeTransferFrom(msg.sender, address(this), amount);

        _mint(msg.sender, wNLPAmount);

        emit Wrapped(msg.sender, amount, wNLPAmount);

        return wNLPAmount;
    }

    /// @notice Deposit underlying tokens directly into NLP and receive wNLP tokens
    /// @param amount Amount of underlying tokens to deposit
    /// @return Amount of wNLP tokens received
    function depositAndWrap(uint256 amount) external nonReentrant returns (uint256) {
        require(amount > 0, ErrorsLib.ZeroAmount());

        return _depositAndWrap(msg.sender, msg.sender, msg.sender, amount);
    }

    /// @notice Deposit underlying tokens directly into NLP and receive wNLP tokens for a specified recipient
    /// @param to The address to receive the wNLP tokens
    /// @param beneficiary The address of the beneficiary for tracking purposes
    /// @param amount Amount of underlying tokens to deposit
    /// @return Amount of wNLP tokens received
    function depositAndWrapFor(
        address to,
        address beneficiary,
        uint256 amount
    ) external nonReentrant returns (uint256) {
        require(to != address(0), ErrorsLib.ZeroAddress());
        require(amount > 0, ErrorsLib.ZeroAmount());
        require(trustedOperators[msg.sender], ErrorsLib.NotTrustedOperator());

        return _depositAndWrap(msg.sender, to, beneficiary, amount);
    }

    /// @notice Unwraps wNLP tokens back to NativeLP tokens
    /// @param wNLPAmount Amount of wNLP tokens to unwrap
    /// @return Amount of NativeLP tokens received
    function unwrap(uint256 wNLPAmount) external nonReentrant returns (uint256) {
        require(wNLPAmount > 0, ErrorsLib.ZeroAmount());
        require(
            lastDepositTimestamp[msg.sender] + nlp.minRedeemInterval() <= block.timestamp
                || nlp.redeemCooldownExempt(msg.sender),
            ErrorsLib.TransferInCooldown()
        );

        uint256 nlpAmount = nlp.getUnderlyingByShares(wNLPAmount);
        _burn(msg.sender, wNLPAmount);
        IERC20(nlp).safeTransfer(msg.sender, nlpAmount);

        emit Unwrapped(msg.sender, wNLPAmount, nlpAmount);

        return nlpAmount;
    }

    /// @notice Unwrap wNLP tokens and redeem underlying tokens directly
    /// @param wNLPAmount Amount of wNLP tokens to unwrap and redeem
    /// @return Amount of underlying tokens received
    function unwrapAndRedeem(uint256 wNLPAmount) external nonReentrant returns (uint256) {
        require(wNLPAmount > 0, ErrorsLib.ZeroAmount());
        return _unwrapAndRedeem(wNLPAmount, msg.sender, msg.sender);
    }

    /// @notice Unwrap wNLP tokens and redeem underlying tokens to a specified address with beneficiary
    /// @param wNLPAmount Amount of wNLP tokens to unwrap and redeem
    /// @param to Address that will receive the underlying tokens
    /// @param beneficiary Address of the beneficiary for tracking purposes
    /// @return Amount of underlying tokens sent to the recipient
    function unwrapAndRedeemTo(
        uint256 wNLPAmount,
        address to,
        address beneficiary
    ) external nonReentrant returns (uint256) {
        require(wNLPAmount > 0, ErrorsLib.ZeroAmount());
        require(to != address(0), ErrorsLib.ZeroAddress());
        require(beneficiary != address(0), ErrorsLib.ZeroAddress());
        require(trustedOperators[msg.sender], ErrorsLib.NotTrustedOperator());

        return _unwrapAndRedeem(wNLPAmount, to, beneficiary);
    }

    /*//////////////////////////////////////////////////////////////////////////
                                    ADMIN FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Sets the trusted operator status for multiple addresses
    /// @param accounts The addresses to update
    /// @param statuses The new operator statuses corresponding to each account
    function setTrustedOperator(address[] calldata accounts, bool[] calldata statuses) external onlyOwner {
        for (uint256 i = 0; i < accounts.length; i++) {
            require(accounts[i] != address(0), ErrorsLib.ZeroAddress());

            trustedOperators[accounts[i]] = statuses[i];
            emit TrustedOperatorUpdated(accounts[i], statuses[i]);
        }
    }

    /// @notice Sets the address that receives early withdrawal fees
    /// @param _earlyWithdrawFeeReceiver The new early withdraw fee receiver address
    function setEarlyWithdrawFeeReceiver(address _earlyWithdrawFeeReceiver) external onlyOwner {
        require(_earlyWithdrawFeeReceiver != address(0), ErrorsLib.ZeroAddress());

        address oldReceiver = earlyWithdrawFeeReceiver;
        earlyWithdrawFeeReceiver = _earlyWithdrawFeeReceiver;

        emit EarlyWithdrawFeeReceiverUpdated(oldReceiver, _earlyWithdrawFeeReceiver);
    }

    /// @notice Update user's last deposit timestamp
    /// @dev This is a emergency function, should only be called when certain protocols
    ///      need to bypass cooldown restrictions in exceptional circumstances.
    /// @param user User address to update
    /// @param timestamp New timestamp for the user
    function updateLastDepositTimestamp(address user, uint256 timestamp) external {
        require(trustedOperators[msg.sender], ErrorsLib.NotTrustedOperator());
        require(timestamp <= block.timestamp, ErrorsLib.InvalidAmount());

        lastDepositTimestamp[user] = timestamp;

        emit DepositTimestampUpdated(user, timestamp);
    }

    /*//////////////////////////////////////////////////////////////////////////
                                    VIEW FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Gets the number of decimals for this token
    /// @return The number of decimals, matching the underlying token
    function decimals() public view override returns (uint8) {
        return nlp.decimals();
    }

    /// @notice Calculates the amount of wNLP tokens for a given amount of NLP tokens
    /// @param _nlpAmount Amount of NLP tokens
    /// @return Amount of wNLP tokens
    function getWnlpByNlp(uint256 _nlpAmount) external view returns (uint256) {
        return nlp.getSharesByUnderlying(_nlpAmount);
    }

    /// @notice Calculates the amount of NLP tokens for a given amount of wNLP tokens
    /// @param wNLPAmount Amount of wNLP tokens
    /// @return Amount of NLP tokens
    function getNlpByWnlp(uint256 wNLPAmount) external view returns (uint256) {
        return nlp.getUnderlyingByShares(wNLPAmount);
    }

    /// @notice Returns the amount of NLP tokens per 1 wNLP token
    /// @dev Used to calculate the exchange rate from wNLP to NLP
    /// @return Amount of NLP tokens equivalent to 1 wNLP token
    function nlpPerToken() external view returns (uint256) {
        return nlp.getUnderlyingByShares(10 ** decimals());
    }

    /// @notice Returns the amount of wNLP tokens per 1 NLP token
    /// @dev Used to calculate the exchange rate from NLP to wNLP
    /// @return Amount of wNLP tokens equivalent to 1 NLP token
    function tokensPerNlp() external view returns (uint256) {
        return nlp.getSharesByUnderlying(10 ** decimals());
    }

    /*//////////////////////////////////////////////////////////////////////////
                                INTER FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    function _depositAndWrap(
        address from,
        address to,
        address beneficiary,
        uint256 amount
    ) internal returns (uint256) {
        // Transfer underlying tokens from caller to this contract
        underlying.safeTransferFrom(from, address(this), amount);

        // Approve NLP to spend underlying tokens
        underlying.safeApprove(address(nlp), amount);

        uint256 wNLPAmount = nlp.deposit(amount);

        // Update the beneficiary's deposit timestamp for cooldown tracking
        lastDepositTimestamp[beneficiary] = block.timestamp;

        // Mint wNLP tokens to the specified recipient
        _mint(to, wNLPAmount);

        emit DepositAndWrapped(from, to, beneficiary, amount, wNLPAmount);

        return wNLPAmount;
    }

    function _unwrapAndRedeem(
        uint256 wNLPAmount,
        address to,
        address beneficiary
    ) internal returns (uint256 underlyingAmount) {
        _burn(msg.sender, wNLPAmount);

        // Get the gross underlying amount before fees
        uint256 grossUnderlyingAmount = nlp.getUnderlyingByShares(wNLPAmount);
        underlyingAmount = grossUnderlyingAmount;

        // Calculate fee only when potentially needed
        uint256 fee = 0;
        if (block.timestamp < lastDepositTimestamp[beneficiary] + nlp.minRedeemInterval()) {
            fee = (grossUnderlyingAmount * nlp.earlyWithdrawFeeBips()) / 10_000;
        }

        if (fee > 0) {
            underlyingAmount = grossUnderlyingAmount - fee;

            // Redeem to this contract first for fee collection
            nlp.redeemTo(wNLPAmount, address(this));

            // Transfer fee to earlyWithdrawFeeReceiver
            underlying.safeTransfer(earlyWithdrawFeeReceiver, fee);

            // Transfer remaining amount to the specified address
            underlying.safeTransfer(to, underlyingAmount);

            emit EarlyWithdrawFeeCollected(beneficiary, fee);
        } else {
            underlyingAmount = nlp.redeemTo(wNLPAmount, to);
        }

        emit UnwrappedAndRedeemed(msg.sender, to, beneficiary, wNLPAmount, underlyingAmount, fee);
    }

    /// @notice Override ERC20's _transfer to enforce cooldown periods
    function _transfer(address from, address to, uint256 amount) internal override {
        require(to != address(this), ErrorsLib.TransferToContract());

        // Unlike NLP's transfer validation, wNLP allows transfers if either the sender
        // or the recipient is in the redeemCooldownExempt, providing more flexibility
        require(
            lastDepositTimestamp[from] + nlp.minRedeemInterval() <= block.timestamp || nlp.redeemCooldownExempt(from)
                || nlp.redeemCooldownExempt(to),
            ErrorsLib.TransferInCooldown()
        );

        super._transfer(from, to, amount);
    }
}
