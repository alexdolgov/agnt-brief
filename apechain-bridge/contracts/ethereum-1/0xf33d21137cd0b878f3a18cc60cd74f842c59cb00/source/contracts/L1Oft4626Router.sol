// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.22;

import {OftERC4626} from "./OftERC4626.sol";
import {Oft4626Router} from "./Oft4626Router.sol";
import {FeeManager} from "./interfaces/IOftRouter.sol";

import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";
import {IERC20} from "@openzeppelin/contracts/interfaces/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {Ownable2Step} from "@openzeppelin/contracts/access/Ownable2Step.sol";
import {AccessControlDefaultAdminRules} from "@openzeppelin/contracts/access/extensions/AccessControlDefaultAdminRules.sol";

import {OptionsBuilder} from "@layerzerolabs/oapp-evm/contracts/oapp/libs/OptionsBuilder.sol";
import {MessagingFee, SendParam} from "@layerzerolabs/oft-evm/contracts/interfaces/IOFT.sol";
import {OFTComposeMsgCodec} from "@layerzerolabs/oft-evm/contracts/libs/OFTComposeMsgCodec.sol";
import {OAppSender, OAppCore} from "@layerzerolabs/oapp-evm/contracts/oapp/OApp.sol";


contract L1Oft4626Router is OAppSender, Oft4626Router, Ownable2Step, AccessControlDefaultAdminRules {
    using OptionsBuilder for bytes;
    using SafeERC20 for IERC20;
    using Math for uint256;

    uint256 public constant PRECISION = 1e18;
    IERC4626 public immutable vault;
    bytes32 public constant REBASE_ROLE = keccak256("REBASE_ROLE");
    FeeManager internal feeManager;

    error NoZeroAddress();
    error RebaseOutOfRange();

    constructor(address _vault, address _oft4626, address _endpoint)
        OAppCore(_endpoint, msg.sender)
        Ownable(msg.sender)
        AccessControlDefaultAdminRules(0 /* adminDelay */, msg.sender)
    {
        vault = IERC4626(_vault);
        oft4626 = OftERC4626(_oft4626);
        _grantRole(REBASE_ROLE, msg.sender);
    }

    function updateFeeManager(FeeManager calldata _feeManager) public onlyOwner {
        if (_feeManager.feeBps > 0 && _feeManager.feeRecipient == address(0)) {
            revert NoZeroAddress();
        }
        if (_feeManager.feeBps < 1e3) {
            feeManager = _feeManager;
        }
    }

    function getFeeAmount() public view returns (uint256 feeAmount) {
        feeAmount = feeManager.feeBps;
    }

    function getFeeRecipient() public view returns (address feeRecipient) {
        feeRecipient = feeManager.feeRecipient;
    }

    function _feeTaken(uint256 amount) internal view returns (uint256 amountForFees) {
        return amount.mulDiv(getFeeAmount(), 1e4, Math.Rounding.Floor);
    }

    // deposit to vault
    // amount is assets
    function _depositToVault(uint256 _amount) internal returns (uint256 shares) {
        IERC20(vault.asset()).forceApprove(address(vault), _amount);
        shares = vault.deposit(_amount, address(this));
    }

    // bridgeCall.amount == the amount of tokens to deposit to vault
    // returns the native fee, and the number of shares the user will
    // receive on the dst chain
    function quoteDepositAndSend(DecentBridgeCall memory bridgeCall)
        public
        view
        returns (uint256 nativeFee, uint256 shares)
    {
        // update amount to shares received from vault
        uint256 vaultShares = vault.previewDeposit(bridgeCall.amount);
        bridgeCall.amount = vaultShares - _feeTaken(vaultShares);
        SendParam memory sendParam = _getCallParams(bridgeCall);
        MessagingFee memory messagingFee = oft4626.quoteSend(sendParam, false);
        nativeFee = messagingFee.nativeFee;
        shares = sendParam.amountLD;
    }

    function depositAndSend(DecentBridgeCall memory bridgeCall) public payable {
        // transfer specified amount of vault asset to contract
        IERC20(vault.asset()).safeTransferFrom(msg.sender, address(this), bridgeCall.amount);
        // deposit amount to vault, Oft4626Router receives shares
        uint256 shares = _depositToVault(bridgeCall.amount);
        uint256 fee = _feeTaken(shares);
        // mint correlating oft shares
        oft4626.mintShares(address(this), shares);
        if (fee > 0) {
            oft4626.transferShares(feeManager.feeRecipient, fee);
        }
        // update bridgeCall amount to shares
        bridgeCall.amount = shares - fee;
        // burn shares + send to dst chain
        uint256 amountSd = _sendOft(bridgeCall);
        _refundDust(bridgeCall.amount - amountSd, bridgeCall.refundAddress);
    }

    function getExchangeRate() public view virtual returns (uint256 exchangeRate) {
        exchangeRate = PRECISION.mulDiv(vault.totalAssets(), vault.totalSupply(), Math.Rounding.Floor);
    }

    function redeem(uint256 shares, address receiver) external {
        oft4626.transferSharesFrom(msg.sender, address(this), shares);
        _redeem(shares, receiver);
    }

    function _redeem(uint256 shares, address receiver) internal {
        vault.redeem(shares, receiver, address(this));
        oft4626.burnShares(address(this), shares);
    }

    function lzCompose(
        address _from,
        bytes32, /*_guid*/
        bytes calldata _message,
        address, /*_executor*/
        bytes calldata /*_extraData*/
    ) external payable onlyLzEndpoint onlyOft4626(_from) {
        uint256 amount = OFTComposeMsgCodec.amountLD(_message);

        (bytes1 msgType, address recipient) = abi.decode(OFTComposeMsgCodec.composeMsg(_message), (bytes1, address));

        if (msgType == COMMAND_WITHDRAW) {
            _redeem(amount, recipient);
        } else {
            oft4626.transferShares(recipient, amount);
        }
        if (msg.value > 0) {
            (bool success, ) = recipient.call{value: msg.value}("");
            if (!success) revert RefundFailed();
        }
    }

    function _generateRebasePayload(uint256 _newRate) internal view returns (bytes memory _payload) {
        _payload = abi.encode(_newRate, block.timestamp);
    }

    /**
     * @dev Update the exchange rate on the synthetic token by accounting for additional yield accrued to the underlying vault
     * @param dstEid the lz id for the dst chain to rebase
     */
    function rebase(uint32 dstEid, uint256 minExpectedRate, uint256 maxExpectedRate) external payable onlyRole(REBASE_ROLE) {
        uint256 _newExchangeRate = getExchangeRate();
        if (_newExchangeRate < minExpectedRate || _newExchangeRate > maxExpectedRate) revert RebaseOutOfRange();
        oft4626.setExchangeRate(_newExchangeRate);
        bytes memory _payload = _generateRebasePayload(_newExchangeRate);
        bytes memory _options = OptionsBuilder.newOptions().addExecutorLzReceiveOption(gasLzReceive, 0);
        _lzSend(
            dstEid,
            _payload, // (uint256,uint256) exchangeRate, timestamp
            _options, // Message execution options (e.g., gas to use on destination).
            MessagingFee(msg.value, 0), // Fee struct containing native gas and ZRO token.
            payable(msg.sender) // The refund address in case the send call reverts.
        );
    }

    function quoteRebase(uint32 dstEid) external view returns (uint256 nativeFee) {
        uint256 _newExchangeRate = getExchangeRate();
        bytes memory _payload = _generateRebasePayload(_newExchangeRate);
        bytes memory _options = OptionsBuilder.newOptions().addExecutorLzReceiveOption(gasLzReceive, 0);
        MessagingFee memory fee = _quote(dstEid, _payload, _options, false);
        return (fee.nativeFee);
    }

    // dust in shares
    function _refundDust(uint256 dustShares, address refundAddress) internal override {
        if (dustShares > 0) {
            if (refundAddress == address(0)) revert NoZeroAddress();
            vault.redeem(dustShares, refundAddress, address(this));
            oft4626.burnShares(address(this), dustShares);
        }
    }

    function _createOftComposeMessage(DecentBridgeCall memory bridgeCall)
        internal
        pure
        override
        returns (bytes memory payload)
    {
        payload = abi.encode(bridgeCall.toAddress);
    }

    function owner() public view virtual override(Ownable, AccessControlDefaultAdminRules) returns (address) {
        return Ownable.owner();
    }

    function _transferOwnership(address newOwner) internal virtual override(Ownable2Step, Ownable) {
        Ownable2Step._transferOwnership(newOwner);
    }

    function transferOwnership(address newOwner) public virtual override(Ownable2Step, Ownable) onlyOwner {
        Ownable2Step.transferOwnership(newOwner);
    }
}
