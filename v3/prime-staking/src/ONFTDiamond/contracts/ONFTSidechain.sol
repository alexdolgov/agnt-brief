// SPDX-License-Identifier: MIT
pragma solidity ^0.8.29;

import {ERC721MetadataStorage} from "@primenumberslabs/layerzero-v2-upgradeable/contracts/oapp/onft721/ONFT721Enumerable.sol";
import {Context} from "@openzeppelin/contracts/utils/Context.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {Strings} from "@openzeppelin/contracts/utils/Strings.sol";
import {ONFTComposeMsgCodec} from "@primenumberslabs/layerzero-v2-upgradeable/contracts/oapp/libs/ONFTComposeMsgCodec.sol";
import {ONFT721Enumerable} from "@primenumberslabs/layerzero-v2-upgradeable/contracts/oapp/onft721/ONFT721Enumerable.sol";
import {OptionsBuilder} from "@primenumberslabs/layerzero-v2-upgradeable/contracts/oapp/oapp/libs/OptionsBuilder.sol";
import {Origin, MessagingReceipt} from "@primenumberslabs/layerzero-v2-upgradeable/contracts/protocol/interfaces/ILayerZeroEndpointV2.sol";
import {Pausable} from "@solidstate/contracts/security/pausable/Pausable.sol";
import {ReentrancyGuard} from "@solidstate/contracts/security/reentrancy_guard/ReentrancyGuard.sol";
import {ERC721Metadata, IERC721Metadata} from "@solidstate/contracts/token/ERC721/metadata/ERC721Metadata.sol";
import {SendParam, MessagingFee} from "@primenumberslabs/layerzero-v2-upgradeable/contracts/oapp/onft721/interfaces/IONFT721.sol";
import {LibString} from "./libs/LibString.sol";
import {ABDKMathQuad} from "./libs/ABDKMathQuad.sol";
import "./libs/ONFTSidechainStorage.sol";

/**
 * @title ONFTSidechain Contract
 * @author PrimeFinance - @rodaemonic
 */
contract ONFTSidechain is ONFT721Enumerable, ReentrancyGuard, Pausable, Context {
    using LibString for string;

    using ABDKMathQuad for bytes16;

    using Strings for uint256;

    using SafeERC20 for IERC20;

    using OptionsBuilder for bytes;

    using ERC721MetadataStorage for ERC721MetadataStorage.Layout;

    using ONFTSidechainStorage for ONFTSidechainStorage.Layout;

    event StakedRequest(address indexed user, bytes32 indexed guid, uint256 indexed tokenId, uint256 stakeAmount);

    event ClaimRequest(address indexed user, bytes32 indexed guid, uint256 indexed tokenId);

    event WithdrawRequest(address indexed user, bytes32 indexed guid, uint256 indexed tokenId, uint256 withdrawAmount);

    event BurnAndRedeemRequest(address indexed user, bytes32 indexed guid, uint256 indexed tokenId);

    event ConfirmAction(bytes32 indexed guid, ActionType indexed actionType);

    event RevertAction(bytes32 indexed guid, ActionType indexed actionType);

    error AlreadyInitialized();
    error Unauthorized();
    error InsufficientValueForFee();
    error InvalidOwner();
    error ActionAlreadyConfirmedOrReverted();

    uint256 constant WHOLE = 1e18;

    uint128 public constant MAX_GAS_LIMIT = 1_000_000;

    modifier onlyAuthorized() {
        ONFTSidechainStorage.Layout storage s = ONFTSidechainStorage.layout();
        require(s.isAuthorized[_msgSender()], Unauthorized());
        _;
    }

    function initialize(
        StakerConfig memory config,
        address _lzEndpoint,
        address _delegate,
        address[] memory authorizedAddresses
    ) external initializer {
        __ONFT721Enumerable_init(config.nftConfig.name, config.nftConfig.symbol, _lzEndpoint, _delegate);
        _init_staker(config, authorizedAddresses);
    }

    function _init_staker(StakerConfig memory config, address[] memory authorizedAddresses) internal {
        ONFTSidechainStorage.Layout storage $ = ONFTSidechainStorage.layout();
        StakerStorage storage stakerData = $.stakerData;
        require(stakerData.stakeToken == IERC20(address(0)), AlreadyInitialized());

        stakerData.minLockedTime = config.minLockedTime;
        stakerData.minLockedAmount = config.minLockedAmount;
        stakerData.maxStakeAmount = config.maxStakeAmount;

        ERC721MetadataStorage.layout().baseURI = config.nftConfig.baseURI;

        for (uint256 i; i < config.stakedNeededForLevels.length; i++) {
            stakerData.levelStakedNeeded[i] = config.stakedNeededForLevels[i];
        }

        for (uint256 i; i < config.rarityMultipliers.length; i++) {
            stakerData.rarityMultiplier[Rarity(i)] = config.rarityMultipliers[i];
            stakerData.nftRarity[i] = Rarity(i);
        }

        stakerData.stakeToken = IERC20(config.stakeToken);

        mapping(address => bool) storage isAuthorized = $.isAuthorized;

        for (uint256 i; i < authorizedAddresses.length; i++) {
            isAuthorized[authorizedAddresses[i]] = true;
        }
    }

    function sendStake(uint256 tokenId, uint256 stakeAmount) external payable nonReentrant whenNotPaused {
        ONFTSidechainStorage.Layout storage $ = ONFTSidechainStorage.layout();
        StakerStorage storage stakerData = $.stakerData;

        require(_ownerOf(tokenId) == _msgSender(), InvalidOwner());

        stakerData.stakeToken.safeTransferFrom(_msgSender(), address(this), stakeAmount);

        bytes memory actionData = abi.encode(tokenId, stakeAmount);

        bytes memory payload = abi.encode(ActionType.Stake, actionData);

        bytes32 guid = _sendToMainChain($.mainChainEid, tokenId, payload);

        $.receipts[guid].amount = stakeAmount;

        emit StakedRequest(_msgSender(), guid, tokenId, stakeAmount);
    }

    function requestClaimRewards(uint256 tokenId) external payable nonReentrant whenNotPaused {
        ONFTSidechainStorage.Layout storage $ = ONFTSidechainStorage.layout();

        require(_ownerOf(tokenId) == _msgSender(), InvalidOwner());

        bytes memory actionData = abi.encode(tokenId);

        bytes memory payload = abi.encode(ActionType.Claim, actionData);

        bytes32 guid = _sendToMainChain($.mainChainEid, tokenId, payload);

        emit ClaimRequest(_msgSender(), guid, tokenId);
    }

    function requestWithdrawStaked(uint256 tokenId, uint256 withdrawAmount) external payable nonReentrant whenNotPaused {
        ONFTSidechainStorage.Layout storage $ = ONFTSidechainStorage.layout();

        require(_ownerOf(tokenId) == _msgSender(), InvalidOwner());

        bytes memory actionData = abi.encode(tokenId, withdrawAmount);

        bytes memory payload = abi.encode(ActionType.Withdraw, actionData);

        bytes32 guid = _sendToMainChain($.mainChainEid, tokenId, payload);

        $.receipts[guid].amount = withdrawAmount;

        emit WithdrawRequest(_msgSender(), guid, tokenId, withdrawAmount);
    }

    function requestBurnAndRedeem(uint256 tokenId) external payable nonReentrant whenNotPaused {
        ONFTSidechainStorage.Layout storage $ = ONFTSidechainStorage.layout();

        require(_ownerOf(tokenId) == _msgSender(), InvalidOwner());

        _safeTransferFrom(_msgSender(), address(this), tokenId);

        bytes memory actionData = abi.encode(tokenId);

        bytes memory payload = abi.encode(ActionType.BurnAndRedeem, actionData);

        bytes32 guid = _sendToMainChain($.mainChainEid, tokenId, payload);

        emit BurnAndRedeemRequest(_msgSender(), guid, tokenId);
    }

    function send(
        SendParam calldata _sendParam,
        MessagingFee calldata _fee,
        address _refundAddress
    ) external payable override returns (MessagingReceipt memory msgReceipt) {
        _debit(msg.sender, _sendParam.tokenId, _sendParam.dstEid);

        bytes memory options = OptionsBuilder.newOptions().addExecutorLzReceiveOption(MAX_GAS_LIMIT, 0);

        bytes memory transferPayload = abi.encode(_sendParam.to, _sendParam.tokenId);

        ONFTSidechainStorage.Layout storage $ = ONFTSidechainStorage.layout();

        StakerStorage storage stakerData = $.stakerData;

        NftData storage nftData = stakerData.nftData[_sendParam.tokenId];

        bytes memory nftDataEncoded = abi.encode(nftData.staked, nftData.nftMultiplier, nftData.lockedData);

        bytes memory actionData = abi.encode(transferPayload, nftDataEncoded);

        bytes memory message = abi.encode(ActionType.Transfer, actionData);

        // @dev Sends the message to the LayerZero Endpoint, returning the MessagingReceipt.
        msgReceipt = _lzSend(_sendParam.dstEid, message, options, _fee, _refundAddress);
        emit ONFTSent(msgReceipt.guid, _sendParam.dstEid, msg.sender, _sendParam.tokenId);
    }

    /**
     * @dev Internal function to handle the receive on the LayerZero endpoint.
     * @param _origin The origin information.
     *  - srcEid: The source chain endpoint ID.
     *  - sender: The sender address from the src chain.
     *  - nonce: The nonce of the LayerZero message.
     * @param _guid The unique identifier for the received LayerZero message.
     * @param _message The encoded message.
     * @dev _executor The address of the executor.
     * @dev _extraData Additional data.
     */
    function _lzReceive(
        Origin calldata _origin,
        bytes32 _guid,
        bytes calldata _message,
        address /*_executor*/, // @dev unused in the default implementation.
        bytes calldata /*_extraData*/ // @dev unused in the default implementation.
    ) internal virtual override {
        (ActionType actionType, bytes memory actionData) = abi.decode(_message, (ActionType, bytes));
        if (actionType == ActionType.Transfer) {
            _makeTransfer(_origin, _guid, actionData);
        } else if (actionType == ActionType.ConfirmAction) {
            (bytes32 guidToConfirm, bytes memory confirmationData) = abi.decode(actionData, (bytes32, bytes));
            _confirmAction(guidToConfirm, confirmationData);
        } else if (actionType == ActionType.RevertAction) {
            (bytes32 guidToRevert, ) = abi.decode(actionData, (bytes32, bytes));
            _revertAction(guidToRevert);
        }
    }

    function _makeTransfer(Origin memory _origin, bytes32 _guid, bytes memory _message) internal {
        (bytes memory transferMessage, NftData memory receivedNftData) = abi.decode(_message, (bytes, NftData));

        (bytes32 to, uint256 tokenId) = abi.decode(transferMessage, (bytes32, uint256));

        address toAddress = address(uint160(uint256(to)));

        _credit(toAddress, tokenId, _origin.srcEid);

        ONFTSidechainStorage.Layout storage $ = ONFTSidechainStorage.layout();

        StakerStorage storage stakerData = $.stakerData;

        NftData storage nftData = stakerData.nftData[tokenId];

        nftData.staked = receivedNftData.staked;
        nftData.nftMultiplier = receivedNftData.nftMultiplier;
        nftData.lockedData = receivedNftData.lockedData;

        emit ONFTReceived(_guid, _origin.srcEid, toAddress, tokenId);
    }

    function _sendToMainChain(uint32 dstEid, uint256 tokenId, bytes memory payload) internal returns (bytes32) {
        ONFTSidechainStorage.Layout storage $ = ONFTSidechainStorage.layout();

        bytes memory options = OptionsBuilder.newOptions().addExecutorLzReceiveOption(MAX_GAS_LIMIT, 0);
        MessagingFee memory fee = _quote(dstEid, payload, options, false);

        require(msg.value >= fee.nativeFee, InsufficientValueForFee());

        MessagingReceipt memory msgReceipt = _lzSend(dstEid, payload, options, fee, address(this));

        ONFTReceipt storage receipt = $.receipts[msgReceipt.guid];
        receipt.tokenId = tokenId;
        receipt.actionType = ActionType.Claim;
        receipt.status = ActionStatus.Pending;
        receipt.user = _msgSender();

        return msgReceipt.guid;
    }

    function _confirmAction(bytes32 guidToConfirm, bytes memory confirmationData) internal {
        ONFTSidechainStorage.Layout storage $ = ONFTSidechainStorage.layout();

        StakerStorage storage stakerData = $.stakerData;

        IERC20 stakeToken = stakerData.stakeToken;

        ONFTReceipt storage receipt = $.receipts[guidToConfirm];

        uint256 tokenId = receipt.tokenId;

        NftData storage nftData = stakerData.nftData[tokenId];

        require(receipt.status == ActionStatus.Pending, ActionAlreadyConfirmedOrReverted());

        receipt.status = ActionStatus.Success;

        if (receipt.actionType == ActionType.Withdraw) {
            (uint256 amountToWithdraw) = abi.decode(confirmationData, (uint256));

            stakeToken.safeTransfer(receipt.user, amountToWithdraw);

            nftData.staked -= receipt.amount;
        } else if (receipt.actionType == ActionType.Claim) {
            (uint256 amountToTransfer) = abi.decode(confirmationData, (uint256));

            stakeToken.safeTransfer(receipt.user, amountToTransfer);
        } else if (receipt.actionType == ActionType.BurnAndRedeem) {
            (uint256 amountToTransfer) = abi.decode(confirmationData, (uint256));

            _burn(tokenId);

            nftData.staked = 0;
            nftData.nftMultiplier = 0;
            nftData.lockedData = LockedData({lockedAmount: 0, unlockTimestamp: 0, isCurrentLocked: false});

            stakeToken.safeTransfer(receipt.user, amountToTransfer);
        }

        emit ConfirmAction(guidToConfirm, receipt.actionType);
    }

    function _revertAction(bytes32 guidToRevert) internal {
        ONFTSidechainStorage.Layout storage $ = ONFTSidechainStorage.layout();

        ONFTReceipt storage receipt = $.receipts[guidToRevert];

        receipt.status = ActionStatus.Failure;

        if (receipt.actionType == ActionType.Stake) {
            StakerStorage storage stakerData = $.stakerData;
            stakerData.stakeToken.safeTransfer(receipt.user, receipt.amount);
        }

        emit RevertAction(guidToRevert, receipt.actionType);
    }

    function tokenURI(uint256 tokenId) public view override(ERC721Metadata, IERC721Metadata) returns (string memory) {
        _exists(tokenId);

        StakerStorage storage s = ONFTSidechainStorage.layout().stakerData;
        NftData storage nftData = s.nftData[tokenId];
        uint256 nftRarity = uint256(s.nftRarity[nftData.nftMultiplier]);

        string memory baseUri = _baseURI();

        if (tokenId <= 4111) {
            return string(abi.encodePacked(baseUri, tokenId.toString(), ".json"));
        } else if (tokenId > 4111 && tokenId <= 9999) {
            return string(abi.encodePacked(baseUri, nftData.nftMultiplier.toString(), "og.json"));
        }

        return string(abi.encodePacked(baseUri, nftRarity.toString(), ".json"));
    }
}
