// SPDX-License-Identifier: MIT
pragma solidity 0.8.29;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {EnumerableSet} from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import {IGateway} from "src/interfaces/vetro/IGateway.sol";
import {IStakingVault} from "src/interfaces/vetro/IStakingVault.sol";
import {IPeggedToken} from "src/interfaces/vetro/IPeggedToken.sol";
import {MSG_DEPOSIT_REQUEST, MSG_REDEEM_REQUEST} from "src/types/Constants.sol";
import {CrossChainMessages} from "src/libs/CrossChainMessages.sol";
import {UsingLZ} from "src/UsingLZ.sol";

/// @title Agent
/// @notice Executor on the remote chain that processes cross-chain deposit and redeem requests from the Router.
/// @dev Receives requests via LayerZero OFT compose messages, interacts with Vetro's gateway and staking vault,
///      and sends results back. Failed requests are stored in failedRequests for retry() or cancel().
contract Agent is UsingLZ {
    using SafeERC20 for IERC20;
    using SafeERC20 for IPeggedToken;
    using EnumerableSet for EnumerableSet.AddressSet;

    /// @notice Stores a failed request for later retry or cancel.
    struct FailedRequest {
        address tokenIn;
        uint256 amountIn;
        bytes msg;
        uint256 nativeFee;
    }

    /// @notice Stores a pending cooldown redemption
    struct UnstakeRequest {
        address share;
        address asset;
        address operator;
        uint256 amountOutMin;
        uint256 nativeFee;
        uint256 unstakingRequestId;
        uint256 claimableAt;
    }

    /// @custom:storage-location erc7201:hemi-earn.Agent
    struct AgentStorage {
        mapping(uint256 requestId => FailedRequest) failedRequests;
        mapping(uint256 requestId => UnstakeRequest) unstakeRequests;
        uint128 remoteCallbackGas;
        EnumerableSet.AddressSet keepers;
    }

    // keccak256(abi.encode(uint256(keccak256("hemi-earn.Agent")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant _AGENT_STORAGE_LOCATION =
        0x08cab2914845412fa869a131b9114d5fea4234656ac690bd330591ea1c144e00;

    /// @notice Emitted when a deposit request is received from the remote chain.
    /// @param requestId The originating request ID.
    /// @param asset The asset token received from the Router.
    /// @param assets Amount of `asset` received.
    event DepositRequestReceived(uint256 indexed requestId, address asset, uint256 assets);

    /// @notice Emitted when a keeper address is added.
    /// @param keeper The address added to the keepers set.
    event KeeperAdded(address indexed keeper);

    /// @notice Emitted when a keeper address is removed.
    /// @param keeper The address removed from the keepers set.
    event KeeperRemoved(address indexed keeper);

    /// @notice Emitted when a redeem request is received from the remote chain.
    /// @param requestId The originating request ID.
    /// @param share The sVetToken received from the Router.
    /// @param asset The underlying asset redeemed.
    /// @param shares Amount of `share` received.
    event RedeemRequestReceived(uint256 indexed requestId, address share, address asset, uint256 shares);

    /// @notice Emitted when the remote callback executor gas limit is updated.
    /// @param gas New gas limit for Router's lzCompose on fulfillment and cancel callbacks.
    event RemoteCallbackGasUpdated(uint128 gas);

    /// @notice Emitted when a cancellation message is dispatched from Agent to Router.
    /// @param requestId The cancelled request ID.
    event RequestCancellationTriggered(uint256 indexed requestId);

    /// @notice Emitted when a request fails and is stored for retry or cancel.
    /// @param requestId The failed request ID.
    event RequestFailed(uint256 indexed requestId);

    /// @notice Emitted when a fulfillment message is dispatched from Agent to Router (deposit success, instant redeem, or cooldown claim).
    /// @param requestId The originating request ID.
    event RequestFulfillmentTriggered(uint256 indexed requestId);

    /// @notice Emitted when a pending request is retried.
    /// @param requestId The retried request ID.
    event RequestRetried(uint256 indexed requestId);

    /// @notice Emitted when a redeem is deferred to the vault's cooldown queue.
    /// @param requestId The originating request ID.
    /// @param claimableAt The timestamp when the unstake becomes claimable.
    event UnstakeRequested(uint256 indexed requestId, uint256 claimableAt);

    /// @notice Thrown when an unrecognized message type is received.
    error InvalidMessageType(uint8 msgType);

    /// @notice Thrown when msg.sender is not authorized to cancel a request.
    /// @param sender The unauthorized sender address.
    error InvalidSender(address sender);

    /// @notice Thrown when adding an address that is already a keeper.
    error KeeperAlreadyAdded(address keeper);

    /// @notice Thrown when removing an address that is not a keeper.
    error KeeperNotFound(address keeper);

    /// @notice Thrown when a requestId has no corresponding pending request.
    error RequestNotFound(uint256 requestId);

    /// @notice Thrown when a request ID has not matured for claiming.
    /// @param requestId The Router request ID that was not found.
    /// @param claimableAt The timestamp when the unstake becomes claimable.
    /// @param currentTime The current block timestamp.
    error UnstakeNotMature(uint256 requestId, uint256 claimableAt, uint256 currentTime);

    /// @notice Thrown when a request ID has no corresponding unstake request.
    /// @param requestId The Router request ID that was not found.
    error UnstakeRequestNotFound(uint256 requestId);

    constructor(address lzEndpoint_, uint32 homeEid_) UsingLZ(lzEndpoint_, homeEid_) {
        _disableInitializers();
    }

    /// @notice Initializes the Agent with the given owner and default gas limits.
    /// @param owner_ The initial contract owner.
    function initialize(address owner_) external initializer {
        __UsingLZ_init(owner_);

        _getUsingLZStorage().lzPeerReceiveGas = 200_000;
        _getAgentStorage().remoteCallbackGas = 500_000; // both fulfill and cancel paths
    }

    function _getAgentStorage() internal pure returns (AgentStorage storage $) {
        assembly {
            $.slot := _AGENT_STORAGE_LOCATION
        }
    }

    /// @notice Quotes the native fee required to send a deposit fulfillment response to the Router.
    /// @param share_ The staking vault (sVetToken) address on the remote chain.
    /// @return The native fee in wei.
    function quoteDepositFulfillment(address share_) external view returns (uint256) {
        return
            _quote({
                token_: share_,
                amount_: 1, // placeholder
                msg_: CrossChainMessages.encodeRequestFulfillment(0) // placeholder
            });
    }

    /// @notice Quotes the native fee required to send a redeem fulfillment response to the Router.
    /// @param asset_ The underlying asset token on the remote chain.
    /// @return The native fee in wei.
    function quoteRedeemFulfillment(address asset_) external view returns (uint256) {
        return
            _quote({
                token_: asset_,
                amount_: 1, // placeholder
                msg_: CrossChainMessages.encodeRequestFulfillment(0) // placeholder
            });
    }

    /// @notice Executes a deposit: asset → vetToken → sVetToken, then sends shares back to Router.
    /// @dev Called via `this.handleDepositRequest` so that reverts can be caught in `_receive`.
    /// @param requestId_ The originating request ID.
    /// @param asset_ The asset token received from the Router.
    /// @param assets_ Amount of `asset_` received.
    /// @param share_ The staking vault (sVetToken) address on the remote chain, carried in the cross-chain message.
    /// @param operator_ The address to receive any fee refund on the fulfillment send.
    /// @param amountOutMin_ Minimum vetToken output enforced on the Vetro gateway deposit.
    /// @param nativeFee_ Native fee available for the fulfillment response.
    function handleDepositRequest(
        uint256 requestId_,
        address asset_,
        uint256 assets_,
        address share_,
        address operator_,
        uint256 amountOutMin_,
        uint256 nativeFee_
    ) external onlySelf {
        IStakingVault _staking = IStakingVault(share_);
        IPeggedToken _peggedToken = IPeggedToken(_staking.asset());
        IGateway _gateway = IGateway(_peggedToken.gateway());

        // 1. deposit asset and mint vetToken
        IERC20(asset_).forceApprove(address(_gateway), assets_);
        uint256 _peggedAmount = _gateway.deposit(asset_, assets_, amountOutMin_, address(this));
        IERC20(asset_).forceApprove(address(_gateway), 0);

        // 2. stake vetToken and mint sVetToken
        _peggedToken.forceApprove(address(_staking), _peggedAmount);
        uint256 _shares = _staking.deposit(_peggedAmount, address(this));
        _peggedToken.forceApprove(address(_staking), 0);

        bytes memory _msg = CrossChainMessages.encodeRequestFulfillment(requestId_);
        _send({token_: share_, amount_: _shares, msg_: _msg, nativeFee_: nativeFee_, refundAddress_: operator_});

        emit RequestFulfillmentTriggered(requestId_);
    }

    /// @notice Executes a redeem: sVetToken → vetToken → asset, then sends assets back to Router.
    /// @dev Called via `this.handleRedeemRequest` so that reverts can be caught in `_receive`.
    ///      If the vault has cooldown enabled and `caller_` is not whitelisted for instant withdraw,
    ///      the redemption waits for the cooldown period and must be finalized later via `claimUnstake()`.
    ///      If `isInstant_` does not match the vault's actual state, a cancel message is sent immediately.
    /// @param requestId_ The originating request ID.
    /// @param share_ The sVetToken (staking vault share) received from the Router.
    /// @param asset_ The target underlying asset to redeem into.
    /// @param shares_ Amount of `share_` received.
    /// @param caller_ The original caller of `requestRedeem` on the Router (used for whitelist check).
    /// @param operator_ The address authorized to call cancel() on this chain.
    /// @param amountOutMin_ Minimum asset output enforced on the Vetro gateway redeem.
    /// @param isInstant_ Whether the Router expects an instant (non-cooldown) redeem. If this mismatches
    ///                   the vault's actual state, a cancel is sent instead of executing the redeem.
    /// @param nativeFee_ Native fee available for the fulfillment response.
    function handleRedeemRequest(
        uint256 requestId_,
        address share_,
        address asset_,
        uint256 shares_,
        address caller_,
        address operator_,
        uint256 amountOutMin_,
        bool isInstant_,
        uint256 nativeFee_
    ) external onlySelf {
        IStakingVault _staking = IStakingVault(share_);

        bool _instantAllowed = !_staking.cooldownEnabled() || _staking.instantWithdrawWhitelist(caller_);

        if (isInstant_ != _instantAllowed) {
            bytes memory _msg = CrossChainMessages.encodeRequestCancel(requestId_);
            _send({token_: share_, amount_: shares_, msg_: _msg, nativeFee_: nativeFee_, refundAddress_: operator_});
            emit RequestCancellationTriggered(requestId_);
            return;
        }

        // Note: Assuming `Agent` contract is always whitelisted. That's why it can do both paths.
        if (_instantAllowed) {
            IPeggedToken _peggedToken = IPeggedToken(_staking.asset());
            IGateway _gateway = IGateway(_peggedToken.gateway());

            // 1. burn sVetToken and redeem vetToken
            uint256 _unstaked = _staking.redeem(shares_, address(this), address(this));

            // 2. burn vetToken and redeem asset
            _peggedToken.forceApprove(address(_gateway), _unstaked);
            uint256 _assets = _gateway.redeem(asset_, _unstaked, amountOutMin_, address(this));
            _peggedToken.forceApprove(address(_gateway), 0);

            bytes memory _msg = CrossChainMessages.encodeRequestFulfillment(requestId_);
            _send({token_: asset_, amount_: _assets, msg_: _msg, nativeFee_: nativeFee_, refundAddress_: operator_});
            emit RequestFulfillmentTriggered(requestId_);
        } else {
            (uint256 _unstakingRequestId, ) = _staking.requestRedeem(shares_, address(this));

            uint256 _claimableAt = _staking.getRequestDetails(_unstakingRequestId).claimableAt;

            _getAgentStorage().unstakeRequests[requestId_] = UnstakeRequest({
                share: share_,
                asset: asset_,
                operator: operator_,
                amountOutMin: amountOutMin_,
                nativeFee: nativeFee_,
                unstakingRequestId: _unstakingRequestId,
                claimableAt: _claimableAt
            });

            emit UnstakeRequested(requestId_, _claimableAt);
        }
    }

    /// @notice Finalizes a matured vault cooldown redemption and sends assets back to the Router.
    /// @dev Additional ETH can be supplied if the original native drop was insufficient.
    /// @param requestId_ The originating request ID.
    function claimUnstake(uint256 requestId_) external payable nonReentrant {
        AgentStorage storage $ = _getAgentStorage();
        UnstakeRequest memory _r = $.unstakeRequests[requestId_];

        if (_r.share == address(0)) revert UnstakeRequestNotFound(requestId_);
        if (block.timestamp < _r.claimableAt) revert UnstakeNotMature(requestId_, _r.claimableAt, block.timestamp);

        delete $.unstakeRequests[requestId_];

        IStakingVault _staking = IStakingVault(_r.share);
        IPeggedToken _peggedToken = IPeggedToken(_staking.asset());
        IGateway _gateway = IGateway(_peggedToken.gateway());

        // 1. claim vetToken
        uint256 _unstaked = _staking.claimWithdraw(_r.unstakingRequestId, address(this));

        // 2. burn vetToken and redeem asset
        _peggedToken.forceApprove(address(_gateway), _unstaked);
        uint256 _assets = _gateway.redeem(_r.asset, _unstaked, _r.amountOutMin, address(this));
        _peggedToken.forceApprove(address(_gateway), 0);

        bytes memory _msg = CrossChainMessages.encodeRequestFulfillment(requestId_);
        _send({
            token_: _r.asset,
            amount_: _assets,
            msg_: _msg,
            nativeFee_: _r.nativeFee + msg.value,
            refundAddress_: msg.sender
        });

        emit RequestFulfillmentTriggered(requestId_);
    }

    /// @notice Retries a previously failed request.
    /// @dev Additional ETH can be supplied if the original native drop was insufficient.
    /// @param requestId_ The ID of the pending request to retry.
    function retry(uint256 requestId_) external payable nonReentrant {
        AgentStorage storage $ = _getAgentStorage();
        FailedRequest memory _r = $.failedRequests[requestId_];

        if (_r.tokenIn == address(0)) revert RequestNotFound(requestId_);

        delete $.failedRequests[requestId_];

        _receive(_r.tokenIn, _r.amountIn, _r.msg, _r.nativeFee + msg.value);

        emit RequestRetried(requestId_);
    }

    /// @notice Cancels a pending request, returning the original tokens to the Router.
    /// @dev Keeper will call this function most of the times, the user can call it as a scape hatch.
    ///      Additional ETH can be supplied if the original native drop was insufficient.
    /// @param requestId_ The ID of the pending request to cancel.
    function cancel(uint256 requestId_) external payable nonReentrant {
        AgentStorage storage $ = _getAgentStorage();
        bytes memory _msg = CrossChainMessages.encodeRequestCancel(requestId_);

        if ($.failedRequests[requestId_].tokenIn != address(0)) {
            // Any excess goes to the user's operator (i.e., the user gets back the claim-related fee sent as drop if request fails)
            FailedRequest memory _r = $.failedRequests[requestId_];
            address _operator = CrossChainMessages.operator(_r.msg);

            if (msg.sender != _operator && !isKeeper(msg.sender)) revert InvalidSender(msg.sender);

            delete $.failedRequests[requestId_];

            _send({
                token_: _r.tokenIn,
                amount_: _r.amountIn,
                msg_: _msg,
                nativeFee_: _r.nativeFee + msg.value,
                refundAddress_: _operator
            });

            emit RequestCancellationTriggered(requestId_);

            return;
        }

        if ($.unstakeRequests[requestId_].share != address(0)) {
            // The users might trigger the cancellation of an on-going cooldown redemption on the Router contract
            // Any excess goes to the caller (i.e., the keeper gets the claim-related fee as an incentive to execute the call)
            UnstakeRequest memory _r = $.unstakeRequests[requestId_];

            if (msg.sender != _r.operator && !isKeeper(msg.sender)) revert InvalidSender(msg.sender);

            delete $.unstakeRequests[requestId_];

            uint256 _shares = IStakingVault(_r.share).cancelWithdraw(_r.unstakingRequestId);

            _send({
                token_: _r.share,
                amount_: _shares,
                msg_: _msg,
                nativeFee_: _r.nativeFee + msg.value,
                refundAddress_: msg.sender
            });

            emit RequestCancellationTriggered(requestId_);

            return;
        }

        revert RequestNotFound(requestId_);
    }

    function _quote(address token_, uint256 amount_, bytes memory msg_) internal view returns (uint256) {
        return _quote(token_, amount_, msg_, 0, _getAgentStorage().remoteCallbackGas);
    }

    function _send(
        address token_,
        uint256 amount_,
        bytes memory msg_,
        uint256 nativeFee_,
        address refundAddress_
    ) internal {
        _send({
            token_: token_,
            amount_: amount_,
            msg_: msg_,
            composeValue_: 0,
            nativeFee_: nativeFee_,
            refundAddress_: refundAddress_,
            composeGas_: _getAgentStorage().remoteCallbackGas
        });
    }

    function _receive(
        address tokenIn_,
        uint256 amountIn_,
        bytes memory msg_,
        uint256 ethValue_
    ) internal virtual override {
        uint8 _msgType = CrossChainMessages.msgType(msg_);
        uint256 _requestId = CrossChainMessages.requestId(msg_);

        bool _failed;

        if (_msgType == MSG_DEPOSIT_REQUEST) {
            _failed = _tryHandleDepositRequest(_requestId, tokenIn_, amountIn_, msg_, ethValue_);
        } else if (_msgType == MSG_REDEEM_REQUEST) {
            _failed = _tryHandleRedeemRequest(_requestId, tokenIn_, amountIn_, msg_, ethValue_);
        } else {
            revert InvalidMessageType(_msgType);
        }

        if (_failed) {
            _getAgentStorage().failedRequests[_requestId] = FailedRequest(tokenIn_, amountIn_, msg_, ethValue_);
            emit RequestFailed(_requestId);
        }
    }

    function _tryHandleDepositRequest(
        uint256 requestId_,
        address tokenIn_,
        uint256 amountIn_,
        bytes memory msg_,
        uint256 ethValue_
    ) private returns (bool _failed) {
        (, , address _operator, address _remoteShare, uint256 _amountOutMin) = CrossChainMessages.decodeDepositRequest(
            msg_
        );

        emit DepositRequestReceived(requestId_, tokenIn_, amountIn_);

        try
            this.handleDepositRequest(
                requestId_,
                tokenIn_,
                amountIn_,
                _remoteShare,
                _operator,
                _amountOutMin,
                ethValue_
            )
        {} catch {
            _failed = true;
        }
    }

    function _tryHandleRedeemRequest(
        uint256 requestId_,
        address tokenIn_,
        uint256 amountIn_,
        bytes memory msg_,
        uint256 ethValue_
    ) private returns (bool _failed) {
        (
            ,
            address _caller,
            address _operator,
            address _tokenOut,
            uint256 _amountOutMin,
            bool _isInstant
        ) = CrossChainMessages.decodeRedeemRequest(msg_);

        emit RedeemRequestReceived(requestId_, tokenIn_, _tokenOut, amountIn_);

        try
            this.handleRedeemRequest(
                requestId_,
                tokenIn_,
                _tokenOut,
                amountIn_,
                _caller,
                _operator,
                _amountOutMin,
                _isInstant,
                ethValue_
            )
        {} catch {
            _failed = true;
        }
    }

    function remoteCallbackGas() public view returns (uint128) {
        return _getAgentStorage().remoteCallbackGas;
    }

    /// @notice Updates the executor gas limit for callbacks sent from the Agent to the Router.
    /// @dev Applies to both MSG_REQUEST_FULFILL and MSG_REQUEST_CANCEL messages.
    ///      Should be set to cover Router's _receive handler including a potential autoFinalize transfer.
    /// @param gas_ New gas limit for the lzCompose executor option on callback messages.
    function setRemoteCallbackGas(uint128 gas_) external onlyOwner {
        _getAgentStorage().remoteCallbackGas = gas_;
        emit RemoteCallbackGasUpdated(gas_);
    }

    /// @notice Adds an address to the keepers set.
    /// @param keeper_ The address to add.
    function addKeeper(address keeper_) external onlyOwner {
        if (keeper_ == address(0)) revert NullAddress();
        if (!_getAgentStorage().keepers.add(keeper_)) revert KeeperAlreadyAdded(keeper_);
        emit KeeperAdded(keeper_);
    }

    /// @notice Removes an address from the keepers set.
    /// @param keeper_ The address to remove.
    function removeKeeper(address keeper_) external onlyOwner {
        if (!_getAgentStorage().keepers.remove(keeper_)) revert KeeperNotFound(keeper_);
        emit KeeperRemoved(keeper_);
    }

    /// @notice Returns whether an address is a registered keeper.
    /// @param addr_ The address to check.
    function isKeeper(address addr_) public view returns (bool) {
        return _getAgentStorage().keepers.contains(addr_);
    }

    /// @notice Returns all registered keeper addresses.
    function getKeepers() public view returns (address[] memory) {
        return _getAgentStorage().keepers.values();
    }

    /// @notice Returns the stored state for a failed request.
    /// @param id The request ID.
    /// @return The corresponding FailedRequest struct.
    function failedRequests(uint256 id) public view returns (FailedRequest memory) {
        return _getAgentStorage().failedRequests[id];
    }

    /// @notice Returns the stored state for a pending unstake request.
    /// @param id The originating Router request ID.
    /// @return The corresponding UnstakeRequest struct.
    function unstakeRequests(uint256 id) public view returns (UnstakeRequest memory) {
        return _getAgentStorage().unstakeRequests[id];
    }
}
