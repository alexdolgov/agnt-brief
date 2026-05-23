// SPDX-License-Identifier: MIT
pragma solidity ^0.8.29;

import {
    ONFT721Enumerable,
    ERC721MetadataStorage
} from "@primenumberslabs/layerzero-v2-upgradeable/contracts/oapp/onft721/ONFT721Enumerable.sol";
import {Pausable} from "@solidstate/contracts/security/pausable/Pausable.sol";
import {SendParam, MessagingFee} from "@primenumberslabs/layerzero-v2-upgradeable/contracts/oapp/onft721/interfaces/IONFT721.sol";
import {OptionsBuilder} from "@primenumberslabs/layerzero-v2-upgradeable/contracts/oapp/oapp/libs/OptionsBuilder.sol";
import {Origin, MessagingReceipt} from "@primenumberslabs/layerzero-v2-upgradeable/contracts/protocol/interfaces/ILayerZeroEndpointV2.sol";
import {
    IOFT,
    SendParam as IOFTSendParam,
    MessagingFee as IOFTMessagingFee
} from "@layerzerolabs/lz-evm-oapp-v2/contracts/oft/interfaces/IOFT.sol";
import {ERC721Metadata, IERC721Metadata} from "@solidstate/contracts/token/ERC721/metadata/ERC721Metadata.sol";
import {IERC721Enumerable} from "@solidstate/contracts/token/ERC721/enumerable/IERC721Enumerable.sol";
import {IERC721} from "@solidstate/contracts/interfaces/IERC721.sol";
import {ReentrancyGuard} from "@solidstate/contracts/security/reentrancy_guard/ReentrancyGuard.sol";
import {Context} from "@openzeppelin/contracts/utils/Context.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {LibString} from "./libs/LibString.sol";
import {ABDKMathQuad} from "./libs/ABDKMathQuad.sol";
import {ONFTComposeMsgCodec} from "@primenumberslabs/layerzero-v2-upgradeable/contracts/oapp/libs/ONFTComposeMsgCodec.sol";
import {Strings} from "@openzeppelin/contracts/utils/Strings.sol";
import "./interfaces/IStaker.sol";
import "./libs/ONFTStakerStorage.sol";

/**
 * @title ONFTStaker Contract
 * @author PrimeFinance - @rodaemonic
 */
contract ONFTMainchain is ONFT721Enumerable, ReentrancyGuard, Pausable, Context {
    using ONFTStakerStorage for ONFTStakerStorage.Layout;

    using ERC721MetadataStorage for ERC721MetadataStorage.Layout;

    using LibString for string;

    using Strings for uint256;

    using ABDKMathQuad for bytes16;

    using SafeERC20 for IERC20;

    using OptionsBuilder for bytes;

    event StakeInNFT(uint256 tokenId, uint256 stakeAmount);

    error Unauthorized();

    error InvalidTokenId();

    error AlreadyInitialized();

    error InvalidRarity();

    error InvalidInputArrays();

    error MaxStakeAmountReached();

    error InsufficientValueForFee();

    error NotEnoughPRFIForThisOperation();

    uint256 constant WHOLE = 1e18;
    uint128 constant MAX_GAS_LIMIT = 1000000;

    modifier onlyAuthorized() {
        ONFTStakerStorage.Layout storage $ = ONFTStakerStorage.layout();
        require($.isAuthorized[_msgSender()], Unauthorized());
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

    function bulkMint(address[] calldata to, uint256[] calldata tokenId, uint256[] calldata staked, uint256[] calldata nftMultiplier) external onlyAuthorized whenNotPaused {
        uint256 length = to.length;
        require(length == tokenId.length && length == staked.length && length == nftMultiplier.length, InvalidInputArrays());
        for (uint256 i; i < length; i++) {
            _mint(to[i], tokenId[i], staked[i], nftMultiplier[i]);
        }
    }

    function _mint(address to, uint256 tokenId, uint256 staked, uint256 nftMultiplier) internal {
        ONFTStakerStorage.Layout storage $ = ONFTStakerStorage.layout();
        StakerStorage storage s = $.stakerData;

        require(s.nftData[tokenId].staked == 0, InvalidTokenId());

        require(s.nftData[tokenId].nftMultiplier == 0, InvalidRarity());

        require(staked <= s.maxStakeAmount, MaxStakeAmountReached());

        _mint(to, tokenId);

        NftData storage nftData = s.nftData[tokenId];
        nftData.nftMultiplier = nftMultiplier;

        if (staked > 0) {
            LockedData storage lockedData = nftData.lockedData;
            IStaker staker = IStaker(address(this));
            nftData.staked = staked;
            lockedData.initialVestingAmount = staked;
            lockedData.initialUnlockTimestamp = block.timestamp + (1 days * 365); // 1 year lock
            uint256 level = staker.checkLevel(staked);
            uint256 weight = staker.calcWeight(staked, nftMultiplier + level);

            s.totalWeight += weight;
            s.totalMultipliers += nftMultiplier;
            s.totalLevels += level;
            emit StakeInNFT(tokenId, staked);
        }
    }


    function burn(uint256 tokenId) external whenNotPaused {
        require(_msgSender() == address(this), Unauthorized());

        _burn(tokenId);
    }

    function mint(address to, uint256 tokenId) external whenNotPaused {
        require(_msgSender() == address(this), Unauthorized());

        _mint(to, tokenId);
    }

    function send(
        SendParam calldata _sendParam,
        MessagingFee calldata _fee,
        address _refundAddress
    ) external payable override returns (MessagingReceipt memory msgReceipt) {
        _debit(msg.sender, _sendParam.tokenId, _sendParam.dstEid);

        bytes memory options = OptionsBuilder.newOptions().addExecutorLzReceiveOption(MAX_GAS_LIMIT, 0);

        bytes memory transferPayload = abi.encode(_sendParam.to, _sendParam.tokenId);

        ONFTStakerStorage.Layout storage $ = ONFTStakerStorage.layout();

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
        } else if (actionType == ActionType.Stake) {
            (uint256 tokenId, uint256 amount) = abi.decode(actionData, (uint256, uint256));
            try IStaker(address(this)).stake(tokenId, amount) {
                _sendResponseToSideChain(
                    _guid,
                    _origin.srcEid,
                    tokenId,
                    ActionStatus.Success,
                    ActionType.ConfirmAction,
                    abi.encode(tokenId)
                );
            } catch {
                _sendResponseToSideChain(_guid, _origin.srcEid, tokenId, ActionStatus.Failure, ActionType.RevertAction, "0x");
            }
        } else if (actionType == ActionType.Claim) {
            (uint256 tokenId) = abi.decode(actionData, (uint256));
            try IStaker(address(this)).claim(tokenId) returns (uint256 claimedRewards) {
                bool prfiSent = _sendPrfiToSideChain(_origin.sender, _origin.srcEid, claimedRewards);

                if (!prfiSent) {
                    _sendResponseToSideChain(_guid, _origin.srcEid, tokenId, ActionStatus.Failure, ActionType.RevertAction, "0x");
                    return;
                } else {
                    _sendResponseToSideChain(
                        _guid,
                        _origin.srcEid,
                        tokenId,
                        ActionStatus.Success,
                        ActionType.ConfirmAction,
                        abi.encode(claimedRewards)
                    );
                }
            } catch {
                _sendResponseToSideChain(_guid, _origin.srcEid, tokenId, ActionStatus.Failure, ActionType.RevertAction, "0x");
            }
        } else if (actionType == ActionType.Withdraw) {
            (uint256 tokenId, uint256 amount) = abi.decode(actionData, (uint256, uint256));
            try IStaker(address(this)).withdraw(tokenId, amount) returns (uint256 amountToWithdraw) {
                bool prfiSent = _sendPrfiToSideChain(_guid, _origin.srcEid, amountToWithdraw);

                if (!prfiSent) {
                    _sendResponseToSideChain(_guid, _origin.srcEid, tokenId, ActionStatus.Failure, ActionType.RevertAction, "0x");
                } else {
                    // send the amount to peer on dstEid

                    _sendResponseToSideChain(
                        _guid,
                        _origin.srcEid,
                        tokenId,
                        ActionStatus.Success,
                        ActionType.ConfirmAction,
                        abi.encode(amountToWithdraw)
                    );
                }
            } catch {
                _sendResponseToSideChain(_guid, _origin.srcEid, tokenId, ActionStatus.Failure, ActionType.RevertAction, "0x");
            }
        } else if (actionType == ActionType.BurnAndRedeem) {
            (uint256 tokenId) = abi.decode(actionData, (uint256));
            try IStaker(address(this)).burnAndRedeem(tokenId) {
                uint256 nftStaked = ONFTStakerStorage.layout().stakerData.nftData[tokenId].staked;
                bool prfiSent = _sendPrfiToSideChain(_guid, _origin.srcEid, nftStaked);

                if (!prfiSent) {
                    _sendResponseToSideChain(_guid, _origin.srcEid, tokenId, ActionStatus.Failure, ActionType.RevertAction, "0x");
                    return;
                } else {
                    _sendResponseToSideChain(
                        _guid,
                        _origin.srcEid,
                        tokenId,
                        ActionStatus.Success,
                        ActionType.ConfirmAction,
                        abi.encode(nftStaked)
                    );
                }
            } catch {
                _sendResponseToSideChain(_guid, _origin.srcEid, tokenId, ActionStatus.Failure, ActionType.RevertAction, "0x");
            }
        }
    }

    function _makeTransfer(Origin calldata _origin, bytes32 _guid, bytes memory _message) internal {
        (bytes memory transferMessage, ) = abi.decode(_message, (bytes, NftData));

        (bytes32 to, uint256 tokenId) = abi.decode(transferMessage, (bytes32, uint256));

        address toAddress = address(uint160(uint256(to)));

        _credit(toAddress, tokenId, _origin.srcEid);

        emit ONFTReceived(_guid, _origin.srcEid, toAddress, tokenId);
    }

    function _sendPrfiToSideChain(bytes32 sender, uint32 dstEid, uint256 amount) internal returns (bool success) {
        ONFTStakerStorage.Layout storage $ = ONFTStakerStorage.layout();
        StakerStorage storage stakerData = $.stakerData;
        IERC20 stakeToken = stakerData.stakeToken;

        if (amount > stakeToken.balanceOf(address(this))) {
            return false; // Not enough PRFI in the contract to send
        }

        IOFT oft = IOFT(address(stakeToken));
        IOFTSendParam memory sendParam = IOFTSendParam({
            to: sender,
            dstEid: dstEid,
            amountLD: amount,
            minAmountLD: 0,
            extraOptions: OptionsBuilder.newOptions().addExecutorLzReceiveOption(MAX_GAS_LIMIT >> 1, 0),
            composeMsg: bytes(""),
            oftCmd: bytes("")
        });

        IOFTMessagingFee memory fee = oft.quoteSend(sendParam, false);

        oft.send{value: fee.nativeFee}(sendParam, fee, address(this));

        return true; // Successfully sent PRFI to the side chain
    }

    function _sendResponseToSideChain(
        bytes32 guid,
        uint32 dstEid,
        uint256 tokenId,
        ActionStatus status,
        ActionType actionType,
        bytes memory message
    ) internal returns (bytes32) {
        ONFTStakerStorage.Layout storage $ = ONFTStakerStorage.layout();

        bytes memory options = OptionsBuilder.newOptions().addExecutorLzReceiveOption(MAX_GAS_LIMIT, 0);

        bytes memory payload = abi.encode(guid, message);

        bytes memory sendMessage = abi.encode(actionType, payload);

        MessagingFee memory fee = _quote(dstEid, sendMessage, options, false);

        require(msg.value >= fee.nativeFee, InsufficientValueForFee());

        MessagingReceipt memory msgReceipt = _lzSend(dstEid, sendMessage, options, fee, address(this));

        ONFTReceipt storage receipt = $.receipts[guid];
        receipt.tokenId = tokenId;
        receipt.actionType = actionType;
        receipt.status = status;
        receipt.user = _msgSender();

        return msgReceipt.guid;
    }

    function _init_staker(StakerConfig memory config, address[] memory authorizedAddresses) internal {
        ONFTStakerStorage.Layout storage $ = ONFTStakerStorage.layout();
        StakerStorage storage stakerData = $.stakerData;
        require(stakerData.stakeToken == IERC20(address(0)), AlreadyInitialized());

        stakerData.minLockedTime = config.minLockedTime;
        stakerData.minLockedAmount = config.minLockedAmount;
        stakerData.maxStakeAmount = config.maxStakeAmount;
        stakerData.startMergeTokenId = config.startMergeTokenId;
        stakerData.withdrawFee = config.withdrawFee;

        ERC721MetadataStorage.layout().baseURI = config.nftConfig.baseURI;

        for (uint256 i; i < config.stakedNeededForLevels.length; i++) {
            stakerData.levelStakedNeeded[i] = config.stakedNeededForLevels[i];
            stakerData.stakedNeededForMaxLevel += config.stakedNeededForLevels[i];
        }

        for (uint256 i; i < config.rarityMultipliers.length; i++) {
            stakerData.rarityMultiplier[Rarity(i)] = config.rarityMultipliers[i];
            stakerData.nftRarity[config.rarityMultipliers[i]] = Rarity(i);
        }

        stakerData.stakeToken = IERC20(config.stakeToken);

        mapping(address => bool) storage isAuthorized = $.isAuthorized;

        for (uint256 i; i < authorizedAddresses.length; i++) {
            isAuthorized[authorizedAddresses[i]] = true;
        }

        _setSupportsInterface(
            type(IERC721).interfaceId,
            true
        );
        _setSupportsInterface(
            type(IERC721Metadata).interfaceId,
            true
        );
        _setSupportsInterface(
            type(IERC721Enumerable).interfaceId,
            true
        );
    }

    function tokenURI(uint256 tokenId) public view override(ERC721Metadata, IERC721Metadata) returns (string memory) {
        _exists(tokenId);

        StakerStorage storage s = ONFTStakerStorage.layout().stakerData;
        NftData storage nftData = s.nftData[tokenId];

        string memory baseUri = _baseURI();

        if (tokenId <= 4111) {
            return string(abi.encodePacked(baseUri, tokenId.toString(), ".json"));
        } else if (tokenId > 4111 && tokenId <= 9999) {
            return string(abi.encodePacked(baseUri, nftData.nftMultiplier.toString(), "og.json"));
        }

        return string(abi.encodePacked(baseUri, nftData.nftMultiplier.toString(), "merged.json"));
    }
}
