// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.28;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {Ownable2Step} from "@openzeppelin/contracts/access/Ownable2Step.sol";
import {IERC20Metadata as IERC20} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";

import {NativeLPToken} from "./NativeLPToken.sol";
import {SafeERC20} from "./libraries/SafeERC20.sol";
import {ErrorsLib} from "./libraries/ErrorsLib.sol";

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
contract WNLP is ERC20, Ownable2Step {
    using SafeERC20 for IERC20;

    /// @notice The Native LPToken address
    NativeLPToken public immutable nlp;

    /// @notice The underlying token of the NativeLPToken
    IERC20 public immutable underlying;

    /// @notice Tracks the last deposit timestamp to enforce cooldown restrictions
    mapping(address => uint256) public lastDepositTimestamp;

    constructor(string memory _name, string memory _symbol, NativeLPToken _nlp) ERC20(_name, _symbol) {
        nlp = _nlp;

        underlying = nlp.underlying();
    }

    modifier whenNotInCooldown() {
        require(
            lastDepositTimestamp[msg.sender] + nlp.minRedeemInterval() <= block.timestamp
                || nlp.redeemCooldownExempt(msg.sender),
            ErrorsLib.TransferInCooldown()
        );
        _;
    }

    /// @notice Wraps NativeLP tokens into wNLP tokens
    /// @param amount Amount of NativeLP tokens to deposit
    /// @return Amount of wNLP tokens received
    function wrap(uint256 amount) external returns (uint256) {
        require(amount > 0, ErrorsLib.ZeroAmount());

        uint256 wNLPAmount = nlp.getSharesByUnderlying(amount);

        IERC20(nlp).safeTransferFrom(msg.sender, address(this), amount);

        _mint(msg.sender, wNLPAmount);

        return wNLPAmount;
    }

    /// @notice Deposit underlying tokens directly into NLP and receive wNLP tokens
    /// @param amount Amount of underlying tokens to deposit
    /// @return Amount of wNLP tokens received
    function depositAndWrap(uint256 amount) external returns (uint256) {
        require(amount > 0, ErrorsLib.ZeroAmount());

        // Transfer underlying tokens from user to this contract
        underlying.safeTransferFrom(msg.sender, address(this), amount);

        // Approve NLP to spend underlying tokens
        underlying.safeApprove(address(nlp), amount);

        uint256 nlpAmount = nlp.deposit(amount);

        lastDepositTimestamp[msg.sender] = block.timestamp;

        // Mint wNLP tokens to user
        _mint(msg.sender, nlpAmount);

        return nlpAmount;
    }

    /// @notice Unwraps wNLP tokens back to NativeLP tokens
    /// @param wNLPAmount Amount of wNLP tokens to unwrap
    /// @return Amount of NativeLP tokens received
    function unwrap(uint256 wNLPAmount) external whenNotInCooldown returns (uint256) {
        require(wNLPAmount > 0, ErrorsLib.ZeroAmount());

        uint256 nlpAmount = nlp.getUnderlyingByShares(wNLPAmount);
        _burn(msg.sender, wNLPAmount);
        IERC20(nlp).safeTransfer(msg.sender, nlpAmount);

        return nlpAmount;
    }

    /// @notice Unwrap wNLP tokens and redeem underlying tokens directly
    /// @param wNLPAmount Amount of wNLP tokens to unwrap and redeem
    /// @return Amount of underlying tokens received
    function unwrapAndRedeem(uint256 wNLPAmount) external whenNotInCooldown returns (uint256) {
        require(wNLPAmount > 0, ErrorsLib.ZeroAmount());

        // Burn wNLP tokens from user
        _burn(msg.sender, wNLPAmount);

        // Redeem underlying tokens from NLP directly to user
        uint256 underlyingAmount = nlp.redeemTo(wNLPAmount, msg.sender);

        return underlyingAmount;
    }

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
