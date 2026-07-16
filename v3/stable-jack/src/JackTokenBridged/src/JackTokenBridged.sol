// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {Pausable} from "@openzeppelin/contracts/utils/Pausable.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import {AccessControl, IAccessControl} from "@openzeppelin/contracts/access/AccessControl.sol";
import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {SafeERC20, IERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import {OFTCore, SendParam, MessagingFee, MessagingReceipt, OFTReceipt} from "@layerzerolabs/oft-evm/contracts/OFTCore.sol";
import {IOFT} from "@layerzerolabs/oft-evm/contracts/interfaces/IOFT.sol";

import {CustomRevert} from "./libs/CustomRevert.sol";
import {IJack} from "./interfaces/IJack.sol";
import {Treasury} from "./Treasury.sol";

/**
 * @title JackToken
 * @notice Implementation of the cross-chain JackToken with treasury management and LayerZero bridging.
 */
contract JackTokenBridged is
    Ownable,
    OFTCore,
    ERC20,
    AccessControl,
    Pausable,
    ReentrancyGuard,
    IJack
{
    using SafeERC20 for IERC20;
    using CustomRevert for bytes4;

    /// @notice Total maximum supply of Jack tokens (0)
    uint256 public constant INITIAL_SUPPLY = 0;

    /// @notice Total maximum supply of Jack tokens (100M with 18 decimals)
    uint256 public constant MAX_SUPPLY = 100_000_000 * 10 ** 18;

    /// @notice The treasury contract where the initial supply is minted.
    Treasury public immutable treasury;

    bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");

    bool public sendAllowed;
    bool public isApprovalRequired;

    /**
     * @notice Constructor to initialize the JackToken contract.
     * @param _name The name of the token.
     * @param _symbol The symbol of the token.
     * @param _lzEndpoint The LayerZero endpoint address.
     * @param _admin The initial admin address.
     * @param _delegate The delegate address for OApp configurations.
     */
    constructor(
        string memory _name,
        string memory _symbol,
        address _lzEndpoint,
        address _admin,
        address _delegate
    )
        ERC20(_name, _symbol)
        OFTCore(18, _lzEndpoint, _delegate)
        Ownable(_admin)
    {
        if (_admin == address(0) || _delegate == address(0)) {
            IJack.ErrorZeroAddress.selector.revertWith();
        }

        bool success = _grantRole(DEFAULT_ADMIN_ROLE, _admin);
        bool success_pauser = _grantRole(PAUSER_ROLE, _admin);

        if (!success || !success_pauser) {
            IJack.ErrorRoleGrantFailed.selector.revertWith();
        }

        treasury = new Treasury(address(this), _admin);
        if (address(treasury) == address(0)) {
            IJack.ErrorTreasuryDeploymentFailed.selector.revertWith();
        }

        sendAllowed = true;

        emit TreasuryCreated(address(treasury), address(this), _admin);
    }

    /**
     * @notice Returns the address of the token contract.
     * @return The token contract address.
     */
    function token() public view returns (address) {
        return address(this);
    }

    // ----------------------------------------------------------------------
    // Standard Overrides
    // ----------------------------------------------------------------------

    /**
     * @notice Fallback function to receive Ether.
     */
    receive() external payable {}

    /**
     * @notice Fallback function for unmatched calls. Reverts with a not permitted error.
     */
    fallback() external payable {
        IJack.ErrorNotPermitted.selector.revertWith();
    }

    /**
     * @notice Indicates whether token approval is required for sending.
     * @return Always returns false as no approval is needed.
     */
    function approvalRequired() external view returns (bool) {
        return isApprovalRequired;
    }

    /**
     * @notice Toggle's approval requirements on cross bridging
     * @param _isRequired indicates the targeted status of the bridging approval
     */
    function setApprovalRequired(
        bool _isRequired
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        isApprovalRequired = _isRequired;
        emit UpdateBridgeApproveRequirement(isApprovalRequired);
    }

    /**
     * @notice Burns tokens from the sender's balance for a cross-chain transfer.
     * @param _from The address to debit tokens from.
     * @param _amountLD The amount of tokens to debit.
     * @param _minAmountLD The minimum amount expected.
     * @param _dstEid The destination chain ID.
     * @return amountSentLD The amount sent after conversion.
     * @return amountReceivedLD The amount received after conversion.
     */
    function _debit(
        address _from,
        uint256 _amountLD,
        uint256 _minAmountLD,
        uint32 _dstEid
    )
        internal
        override
        whenNotPaused
        returns (uint256 amountSentLD, uint256 amountReceivedLD)
    {
        (amountSentLD, amountReceivedLD) = _debitView(
            _amountLD,
            _minAmountLD,
            _dstEid
        );
        _burn(_from, amountSentLD);
        return (amountSentLD, amountReceivedLD);
    }

    /**
     * @notice Mints tokens to the recipient after a cross-chain transfer.
     * @param _to The address to credit tokens to.
     * @param _amountLD The amount of tokens to mint.
     * @param /_srcEid The source chain ID.
     * @return The amount of tokens minted.
     */
    function _credit(
        address _to,
        uint256 _amountLD,
        uint32 /*_srcEid*/
    ) internal override returns (uint256) {
        if (_to == address(0x0)) {
            _to = address(0xdead);
        }
        _mint(_to, _amountLD);
        return _amountLD;
    }

    /*
     * @notice Sends tokens to a recipient with optional messaging and fees.
     * @param _sendParam The send parameters.
     * @param _fee The messaging fee parameters.
     * @param _refundAddress The address to refund excess funds to.
     * @return msgReceipt The messaging receipt.
     * @return oftReceipt The OFT receipt.
     */
    function send(
        SendParam calldata _sendParam,
        MessagingFee calldata _fee,
        address _refundAddress
    )
        external
        payable
        override(OFTCore, IOFT)
        nonReentrant
        returns (
            MessagingReceipt memory msgReceipt,
            OFTReceipt memory oftReceipt
        )
    {
        if (!sendAllowed) IJack.ErrorSendNotAllowed.selector.revertWith();
        return _send(_sendParam, _fee, _refundAddress);
    }

    /**
     * @notice Returns the number of decimals used for token amounts.
     * @return The number of decimals.
     */
    function decimals() public pure override returns (uint8) {
        return 18;
    }

    /**
     * @notice Pauses the contract, preventing certain actions.
     */
    function pause() external onlyRole(PAUSER_ROLE) {
        _pause();
    }

    /**
     * @notice Unpauses the contract, allowing actions to resume.
     */
    function unpause() external onlyRole(DEFAULT_ADMIN_ROLE) {
        _unpause();
    }

    /**
     * @notice Allows recovery of ERC20 tokens mistakenly sent to this contract.
     * @param tokenAddress The address of the ERC20 token.
     * @param tokenAmount The amount of tokens to recover.
     */
    function recoverERC20(
        address tokenAddress,
        uint256 tokenAmount
    ) external onlyRole(DEFAULT_ADMIN_ROLE) nonReentrant {
        if (tokenAddress == address(this)) {
            IJack.ErrorCannotRecoverToken.selector.revertWith();
        }
        IERC20(tokenAddress).safeTransfer(_msgSender(), tokenAmount);
    }

    /**
     * @notice Allows withdrawing the native balance
     * @param _to for the destination
     */
    function withdrawNative(
        address payable _to
    ) external nonReentrant onlyRole(DEFAULT_ADMIN_ROLE) {
        uint256 balance = address(this).balance;
        require(balance > 0, "No balance to withdraw");
        _to.transfer(balance);
    }

    /**
     * @notice Gets the address of the treasury contract.
     * @return The address of the treasury contract.
     */
    function getTreasury() external view override returns (address) {
        return address(treasury);
    }

    /**
     * @notice Sets the send permission for the token.
     * @param _isAllowed The new send permission.
     */
    function setSendAllowed(
        bool _isAllowed
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        sendAllowed = _isAllowed;
        emit UpdateBridgeAllowed(_isAllowed);
    }

    /**
     * @notice Implementation of ERC165 interface detection.
     * @param interfaceId The interface identifier.
     * @return True if the contract supports the given interface.
     */
    function supportsInterface(
        bytes4 interfaceId
    ) public view override(AccessControl) returns (bool) {
        return
            interfaceId == type(IJack).interfaceId ||
            super.supportsInterface(interfaceId);
    }

    /**
     * @notice Overrides the renounceOwnership function to disable ownership renouncement.
     */
    function renounceOwnership() public view override(Ownable) onlyOwner {
        IJack.ErrorRenounceOwnership.selector.revertWith();
    }

    /**
     * @notice Prevents renouncing roles for security purposes.
     * @param /role Unused role parameter.
     * @param /account Unused account parameter.
     */
    function renounceRole(
        bytes32 /*role*/,
        address /*account*/
    ) public pure override(AccessControl, IAccessControl) {
        IJack.ErrorRoleRenounceNotAllowed.selector.revertWith();
    }
}
