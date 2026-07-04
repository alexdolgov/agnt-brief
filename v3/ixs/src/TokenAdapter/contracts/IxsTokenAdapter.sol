// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IWormhole} from "wormhole-solidity-sdk/interfaces/IWormhole.sol";
import {ITokenBridge} from "wormhole-solidity-sdk/interfaces/ITokenBridge.sol";
import {IIxsTokenAdapter} from "./interfaces/IIxsTokenAdapter.sol";
import {TokenAdapter} from "./TokenAdapter.sol";

contract IxsTokenAdapter is IIxsTokenAdapter, TokenAdapter {
    /**
     * This ensures that the contract is automatically locked when deployed,
     * preventing its use before initialization and safeguarding against unauthorized takeovers.
     */
    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /// @dev Initialization function for configuring the initial logic and values for state variables of the parent contract.
    /// @param tokenBridge The address of the Wormhole Token Bridge contract.
    /// @param wormhole The address of the Wormhole Core contract.
    /// @param ixsToken The address of the IXS token contract.
    /// @param treasury The address of the multisig wallet used as treasury.
    /// @param watchdog The address of the watchdog wallet.
    /// @param superAdmin The addres of the super-admin wallet.
    function initialize(
        address tokenBridge,
        address wormhole,
        address ixsToken,
        address treasury,
        address watchdog,
        address superAdmin
    ) public initializer {
        initTokenAdapter(tokenBridge, wormhole, ixsToken, treasury, watchdog, superAdmin);
    }

    // @inheritdoc IIxsTokenAdapter
    function initiateCrossChainTransfer(
        uint16 targetChain,
        address targetToken,
        address receiver,
        uint256 amount,
        bytes memory payload
    ) external payable whenNotPaused nonReentrant {
        _validateInitiateCrossChainTransferParams(targetChain, targetToken, receiver, amount);

        TokenAdapterStorage storage $ = _getTokenAdapterStorage();

        // allow only cross-chain transfers
        if (targetChain == $.wormhole.chainId()) revert IxsTokenAdapterWrongTargetChain(targetChain);

        // only whitelisted tokens can be bridged through adapter
        if (!_isWhitelisted(targetToken)) revert IxsTokenAdapterWrongToken(targetChain, targetToken);

        // normalized amount should be non-zero
        amount = _getTransferAmount(address($.ixsToken), amount);
        if (amount == 0) revert IxsTokenInvalidNormalizedAmount(0);

        // confirm that the caller has sent enough
        // funds for paying the Wormhole message fee
        uint256 wormholeFee = $.wormhole.messageFee();
        if (msg.value != wormholeFee) revert IxsTokenInvalidMessageFee();

        // get corresponding wrapped format of the target token
        address wrappedToken = $.wrappedTokensMap[targetToken];

        // burn native IXS tokens
        $.ixsToken.burn(_msgSender(), amount);

        // unlock equal amount of wrapped tokens from treasury
        SafeERC20.safeTransferFrom(IERC20(wrappedToken), $.treasury, address(this), amount);

        // approve wormhole token bridge to spend received tokens
        IERC20(wrappedToken).approve(address($.tokenBridge), amount);

        // transfer equal amount of wrapped tokens for burning
        $.tokenBridge.transferTokensWithPayload{value: $.wormhole.messageFee()}(
            wrappedToken,
            amount,
            targetChain,
            _toWormholeFormat(receiver),
            0,
            payload
        );

        emit LogInitiateCrossChainTransfer(
            _msgSender(),
            receiver,
            amount,
            address($.ixsToken),
            targetToken,
            targetChain
        );
    }

    // @inheritdoc IIxsTokenAdapter
    function completeCrossChainTransfer(bytes memory encodedVM) external whenNotPaused nonReentrant {
        TokenAdapterStorage storage $ = _getTokenAdapterStorage();

        // decode VAA
        IWormhole.VM memory parsedVM = $.wormhole.parseVM(encodedVM);

        // extract global tranfer payload
        ITokenBridge.TransferWithPayload memory transfer = $.tokenBridge.parseTransferWithPayload(parsedVM.payload);
        address sourceToken = _fromWormholeFormat(transfer.tokenAddress);

        // revert if cross-chain transfer message does not target this adapter
        address transferRequestDestination = _fromWormholeFormat(transfer.to);
        if (transferRequestDestination != address(this))
            revert IxsTokenAdapterWrongRequestDestination(transferRequestDestination);

        // allow only transfers to this chain
        if (transfer.toChain != $.wormhole.chainId()) revert IxsTokenAdapterWrongTargetChain(transfer.toChain);

        // only whitelisted tokens can be bridged through adapter
        if (!_isWhitelisted(sourceToken)) revert IxsTokenAdapterWrongToken(transfer.tokenChain, sourceToken);

        // decode the sender and receiver from the additional payload
        (address sender, address receiver, ) = abi.decode(transfer.payload, (address, address, bytes32));
        _validateAddress(sender);
        _validateAddress(receiver);

        // complete the redeem process and receive wormhole-wrapped tokens
        $.tokenBridge.completeTransferWithPayload(encodedVM);

        // get parsed amount of tokens and lock wrapped format
        address wrappedToken = $.wrappedTokensMap[sourceToken];
        uint256 amount = _denormalizeAmount(wrappedToken, transfer.amount);
        SafeERC20.safeTransfer(IERC20(wrappedToken), $.treasury, amount);

        // mint equivalent amount of unwrapped tokens
        $.ixsToken.mint(receiver, amount);

        emit LogCompleteCrossChainTransfer(
            sender,
            receiver,
            amount,
            sourceToken,
            address($.ixsToken),
            transfer.tokenChain
        );
    }

    function _validateInitiateCrossChainTransferParams(
        uint16 targetChain,
        address targetToken,
        address receiver,
        uint256 amount
    ) internal pure {
        if (targetChain == 0) revert IxsTokenAdapterInvalidChainId(0);
        if (amount == 0) revert IxsTokenAdapterInvalidAmount(0);
        _validateAddress(targetToken);
        _validateAddress(receiver);
    }
}
