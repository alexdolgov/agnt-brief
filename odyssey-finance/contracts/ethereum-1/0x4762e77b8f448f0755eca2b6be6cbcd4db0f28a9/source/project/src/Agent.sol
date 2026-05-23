// SPDX-License-Identifier: MIT
pragma solidity 0.8.29;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IGateway} from "src/interfaces/vetro/IGateway.sol";
import {IStakingVault} from "src/interfaces/vetro/IStakingVault.sol";
import {IPeggedToken} from "src/interfaces/vetro/IPeggedToken.sol";
import {MSG_DEPOSIT_REQUEST, MSG_REDEEM_REQUEST} from "src/types/Constants.sol";
import {CrossChainMessages} from "src/libs/CrossChainMessages.sol";
import {UsingLZ} from "src/UsingLZ.sol";

contract Agent is UsingLZ {
    using SafeERC20 for IERC20;
    using SafeERC20 for IPeggedToken;

    struct PendingRequest {
        address tokenIn;
        uint256 amountIn;
        bytes msg;
        uint256 nativeFee;
    }

    /// @custom:storage-location erc7201:hemi-earn.Agent
    struct AgentStorage {
        mapping(address asset => IStakingVault) assetsData;
        mapping(uint256 requestId => PendingRequest) pendingRequests;
    }

    // keccak256(abi.encode(uint256(keccak256("hemi-earn.Agent")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant _AGENT_STORAGE_LOCATION =
        0x08cab2914845412fa869a131b9114d5fea4234656ac690bd330591ea1c144e00;

    error ZeroAddress();
    error InvalidMessageType(uint8 msgType);
    error NotSelf(address caller);
    error RequestNotFound(uint256 requestId);

    event DepositRequestReceived(uint256 indexed requestId, address asset, uint256 assets);
    event RedeemRequestReceived(uint256 indexed requestId, address share, address asset, uint256 shares);
    event RequestFailed(uint256 indexed requestId);
    event RequestRetried(uint256 indexed requestId);
    event RequestUndone(uint256 indexed requestId);
    event AssetDataUpdated(address indexed asset, address vault);

    modifier onlySelf() {
        if (msg.sender != address(this)) revert NotSelf(msg.sender);
        _;
    }

    constructor(address lzEndpoint_, uint32 homeEid_) UsingLZ(lzEndpoint_, homeEid_) {
        _disableInitializers();
    }

    function initialize(address owner_) external initializer {
        __UsingLZ_init(owner_);

        UsingLZStorage storage $lz = _getUsingLZStorage();
        $lz.lzPeerReceiveGas = 200_000;
        $lz.lzPeerComposeGas = 300_000;
    }

    function _getAgentStorage() internal pure returns (AgentStorage storage $) {
        assembly {
            $.slot := _AGENT_STORAGE_LOCATION
        }
    }

    function quoteDepositFulfilment(address asset_) external view returns (uint256) {
        return
            _quote({
                token_: asset_,
                amount_: 0, // placeholder
                msg_: CrossChainMessages.encodeRequestFulfillment(0) // placeholder
            });
    }

    function quoteRedeemFulfillment(address asset_) external view returns (uint256) {
        return
            _quote({
                token_: address(assetsData(asset_)),
                amount_: 0, // placeholder
                msg_: CrossChainMessages.encodeRequestFulfillment(0) // placeholder
            });
    }

    function handleDepositRequest(
        uint256 requestId_,
        address asset_,
        uint256 assets_,
        uint256 nativeFee_
    ) external payable onlySelf {
        IStakingVault _share = assetsData(asset_);
        IPeggedToken _peggedToken = IPeggedToken(_share.asset());
        IGateway _gateway = IGateway(_peggedToken.gateway());

        // 1. deposit asset and mint vetToken
        uint256 _amountOutMin = 0; // This is safe because `amountOut` is calculated using oracle
        IERC20(asset_).forceApprove(address(_gateway), assets_);
        uint256 _peggedAmount = _gateway.deposit(asset_, assets_, _amountOutMin, address(this));
        IERC20(asset_).forceApprove(address(_gateway), 0);

        // 2. stake vetToken and mint sVetToken
        _peggedToken.forceApprove(address(_share), _peggedAmount);
        uint256 _shares = _share.deposit(_peggedAmount, address(this));
        _peggedToken.forceApprove(address(_share), 0);

        bytes memory _msg = CrossChainMessages.encodeRequestFulfillment(requestId_);
        _send(address(_share), _shares, _msg, nativeFee_);
    }

    /// @dev Assume instant unstake/redeem is enabled
    function handleRedeemRequest(
        uint256 requestId_,
        address share_,
        address asset_,
        uint256 shares_,
        uint256 nativeFee_
    ) external payable onlySelf {
        IStakingVault _staking = IStakingVault(share_);
        IPeggedToken _peggedToken = IPeggedToken(_staking.asset());
        IGateway _gateway = IGateway(_peggedToken.gateway());

        // 1. burn sVetToken and redeem vetToken
        uint256 _unstaked = _staking.redeem(shares_, address(this), address(this));

        // 2.burn vetToken and redeem asset
        uint256 _amountOutMin = 0; // This is safe because `amountOut` is calculated using oracle
        _peggedToken.forceApprove(address(_gateway), _unstaked);
        uint256 _assets = _gateway.redeem(asset_, _unstaked, _amountOutMin, address(this));
        _peggedToken.forceApprove(address(_gateway), 0);

        bytes memory _msg = CrossChainMessages.encodeRequestFulfillment(requestId_);
        _send(asset_, _assets, _msg, nativeFee_);
    }

    /// @dev more ETH can be added if request's native drop isn't enough
    function retry(uint256 requestId_) external payable nonReentrant {
        AgentStorage storage $ = _getAgentStorage();
        PendingRequest memory _r = $.pendingRequests[requestId_];

        if (_r.tokenIn == address(0)) revert RequestNotFound(requestId_);

        delete $.pendingRequests[requestId_];

        emit RequestRetried(requestId_);

        _receive(_r.tokenIn, _r.amountIn, _r.msg, _r.nativeFee + msg.value);
    }

    /// @dev more ETH can be added if request's native drop isn't enough
    function undo(uint256 requestId_) external payable onlyOwner nonReentrant {
        AgentStorage storage $ = _getAgentStorage();
        PendingRequest memory _r = $.pendingRequests[requestId_];

        if (_r.tokenIn == address(0)) revert RequestNotFound(requestId_);

        delete $.pendingRequests[requestId_];

        bytes memory _msg = CrossChainMessages.encodeRequestUndo(requestId_);
        _send(_r.tokenIn, _r.amountIn, _msg, _r.nativeFee + msg.value);

        emit RequestUndone(requestId_);
    }

    function _quote(address token_, uint256 amount_, bytes memory msg_) internal view virtual returns (uint256) {
        return _quote(token_, amount_, msg_, 0);
    }

    function _send(address token_, uint256 amount_, bytes memory msg_, uint256 nativeFee_) internal virtual {
        _send(token_, amount_, msg_, 0, nativeFee_, owner());
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
            try this.handleDepositRequest(_requestId, tokenIn_, amountIn_, ethValue_) {
                emit DepositRequestReceived(_requestId, tokenIn_, amountIn_);
            } catch {
                _failed = true;
            }
        } else if (_msgType == MSG_REDEEM_REQUEST) {
            (, address _tokenOut) = CrossChainMessages.decodeRedeemRequest(msg_);
            try this.handleRedeemRequest(_requestId, tokenIn_, _tokenOut, amountIn_, ethValue_) {
                emit RedeemRequestReceived(_requestId, tokenIn_, _tokenOut, amountIn_);
            } catch {
                _failed = true;
            }
        } else {
            revert InvalidMessageType(_msgType);
        }

        if (_failed) {
            _getAgentStorage().pendingRequests[_requestId] = PendingRequest(tokenIn_, amountIn_, msg_, ethValue_);
            emit RequestFailed(_requestId);
        }
    }

    function assetsData(address asset) public view returns (IStakingVault) {
        return _getAgentStorage().assetsData[asset];
    }

    function pendingRequests(uint256 id) public view returns (PendingRequest memory) {
        return _getAgentStorage().pendingRequests[id];
    }

    function updateAssetData(address asset_, address vault_) external onlyOwner {
        if (asset_ == address(0)) revert ZeroAddress();
        if (vault_ == address(0)) revert ZeroAddress();

        _getAgentStorage().assetsData[asset_] = IStakingVault(vault_);

        emit AssetDataUpdated(asset_, vault_);
    }
}
