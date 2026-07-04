// SPDX-License-Identifier: GPL-2.0
pragma solidity ^0.8.20;

import { Codec, BridgeSendPayload } from "../../libs/Codec.sol";
import { Common } from "../../libs/Common.sol";
import { Constants } from "../../libs/Constants.sol";

import { Client } from "@chainlink/contracts-ccip/src/v0.8/ccip/libraries/Client.sol";
import { CCIPReceiver } from "@chainlink/contracts-ccip/src/v0.8/ccip/applications/CCIPReceiver.sol";
import { IRouterClient } from "@chainlink/contracts-ccip/src/v0.8/ccip/interfaces/IRouterClient.sol";
import { LinkTokenInterface } from "@chainlink/contracts/src/v0.8/shared/interfaces/LinkTokenInterface.sol";

import { IBlackList } from "../../administrator/interface/IBlackList.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { ILockBox } from "../../core/interface/ILockBox.sol";
import { IManager, ManageAssetAndShares } from "../../core/interface/IManager.sol";
import { IRole } from "../../administrator/interface/IRole.sol";
import { IPausable } from "../../administrator/interface/IPausable.sol";

import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";

import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

event SetLockbox(address indexed caller, address indexed token, address indexed lockbox);
event SetAdministrator(address indexed caller, address indexed administrator);
event SetToken(address indexed caller, uint64 indexed dstId, address indexed token);
event MessageReceived(bytes32 indexed messageId, uint64 indexed sourceChainSelector, address sender, bytes data);
event MessageSent(bytes32 indexed messageId);
event ManagerSet(address indexed caller, address indexed manager);

contract BridgeCCIP is CCIPReceiver, Ownable {
    bool public immutable isL1;
    address public immutable link;
    address public administrator;
    mapping(bytes32 => bool) public processedMessages;
    mapping(address => address) public lockboxes;
    mapping(address => mapping(uint64 => address)) public tokens;
    address public manager;
    mapping(uint64 peerChainId => mapping(address peer => bool allowed)) public allowedPeers;
    enum PayFeesIn {
        Native,
        LINK
    }
    using SafeERC20 for IERC20;

    constructor(address _router, bool _isL1, address _administrator, address _link) CCIPReceiver(_router) Ownable(msg.sender) {
        isL1 = _isL1;
        administrator = _administrator;
        link = _link;
    }

    modifier onlyAdmin() {
        require(IRole(administrator).hasRole(Constants.ADMIN_ROLE, msg.sender), "!admin");
        _;
    }

    modifier notBlacklisted(address user) {
        require(!IBlackList(administrator).isBlackListed(user), "blacklisted");
        _;
    }

    modifier notPaused() {
        require(!IPausable(administrator).isPaused(address(this)), "paused");
        _;
    }

    function setAdministrator(address _administrator) external onlyOwner {
        require(Common.isContract(_administrator), "!address");
        administrator = _administrator;
        emit SetAdministrator(msg.sender, _administrator);
    }

    function setLockbox(address _ytoken, address _lockbox) external onlyAdmin {
        require(Common.isContract(_ytoken), "!token");
        require(Common.isContract(_lockbox), "!lockbox");
        lockboxes[_ytoken] = _lockbox;
        emit SetLockbox(msg.sender, _ytoken, _lockbox);
    }

    function setManager(address _manager) external onlyAdmin {
        require(Common.isContract(_manager), "!manager");
        manager = _manager;
        emit ManagerSet(msg.sender, _manager);
    }

    function setTokens(address _srcToken, uint64[] calldata _dstIds, address[] calldata _tokens) external onlyAdmin {
        require(_srcToken != address(0), "!src token");
        require(_dstIds.length == _tokens.length, "!length");
        for (uint256 i = 0; i < _dstIds.length; ) {
            require(_tokens[i] != address(0), "!token");
            tokens[_srcToken][_dstIds[i]] = _tokens[i];
            emit SetToken(msg.sender, _dstIds[i], _tokens[i]);

            unchecked {
                ++i;
            }
        }
    }

    /**
     * @notice Set allowed peers for a source chain
     * @param _peerChainId The peer chain id
     * @param _peer The peer
     * @param _allowed Whether the peer is allowed
     * @dev To ensure that messages can only be sent to allowed peers and received from allowed peers
     */
    function setAllowedPeers(uint64 _peerChainId, address _peer, bool _allowed) external onlyAdmin {
        allowedPeers[_peerChainId][_peer] = _allowed;
    }

    function quote(uint64 _dstChainId, address _receiver, bytes calldata _payload, Client.GenericExtraArgsV2 memory _extraArgs, PayFeesIn _payFeesIn) public view returns (uint256) {
        // setting allowOutOfOrderExecution to true to ensure that funds are not locked on chains which require it to be true
        _extraArgs.allowOutOfOrderExecution = true;
        // Sends the message to the destination endpoint
        Client.EVM2AnyMessage memory evm2AnyMessage = Client.EVM2AnyMessage({
            receiver: abi.encode(_receiver), // ABI-encoded receiver address
            data: abi.encode(_payload), // ABI-encoded string
            tokenAmounts: new Client.EVMTokenAmount[](0), // Empty array indicating no tokens are being sent
            extraArgs: Client._argsToBytes(_extraArgs),
            feeToken: _payFeesIn == PayFeesIn.LINK ? link : address(0) // For msg.value
        });

        // Get the fee required to send the message
        uint256 fees = IRouterClient(i_ccipRouter).getFee(_dstChainId, evm2AnyMessage);

        return fees;
    }

    function send(address _yToken, uint64 _dstChain, address _to, uint256 _amount, address _receiver, Client.GenericExtraArgsV2 memory _extraArgs, PayFeesIn _payFeesIn) external payable notBlacklisted(msg.sender) notBlacklisted(_to) notPaused {
        require(_amount > 0, "!amount");
        require(lockboxes[_yToken] != address(0), "!token !lockbox");
        require(IERC20(_yToken).balanceOf(msg.sender) >= _amount, "!balance");
        require(_to != address(0), "!receiver");
        require(tokens[_yToken][_dstChain] != address(0), "!destination");
        require(allowedPeers[_dstChain][_receiver], "!allowed");
        bytes memory _encodedMessage = abi.encode(_dstChain, _to, tokens[_yToken][_dstChain], _amount, Constants.BRIDGE_SEND_HASH);
        // setting allowOutOfOrderExecution to true to ensure that funds are not locked on chains which require it to be true
        _extraArgs.allowOutOfOrderExecution = true;

        // Sends the message to the destination endpoint
        Client.EVM2AnyMessage memory evm2AnyMessage = Client.EVM2AnyMessage({
            receiver: abi.encode(_receiver), // ABI-encoded receiver address
            data: abi.encode(_encodedMessage), // ABI-encoded string
            tokenAmounts: new Client.EVMTokenAmount[](0), // Empty array indicating no tokens are being sent
            extraArgs: Client._argsToBytes(_extraArgs),
            feeToken: _payFeesIn == PayFeesIn.LINK ? link : address(0) // For msg.value
        });

        // Get the fee required to send the message
        uint256 fees = IRouterClient(i_ccipRouter).getFee(_dstChain, evm2AnyMessage);


        // Transfer or burn tokens
        if (isL1) {
            // Lock the tokens in lockbox
            IERC20(_yToken).safeTransferFrom(msg.sender, lockboxes[_yToken], _amount);
            emit ILockBox.Lock(msg.sender, _yToken, msg.sender, _amount);
        } else {
            // Create manageAssetAndShares struct with isMint = false and updateAsset = false
            // as bridging does not need to update asset amount on L2
            ManageAssetAndShares memory manageAssetAndShares = ManageAssetAndShares({ yToken: _yToken, shares: _amount, assetAmount: 0, updateAsset: false, isMint: false, isNewYToken: false });
            // call manageAssetAndShares
            IManager(manager).manageAssetAndShares(msg.sender, manageAssetAndShares);
        }

        bytes32 messageId;
        if (_payFeesIn == PayFeesIn.LINK) {
            // transfer from msg.sender to this contract
            LinkTokenInterface(link).transferFrom(msg.sender,address(this),fees);
            // approve the router to spend the link
            LinkTokenInterface(link).approve(i_ccipRouter, fees);
            messageId = IRouterClient(i_ccipRouter).ccipSend(_dstChain, evm2AnyMessage);
        } else {
            messageId = IRouterClient(i_ccipRouter).ccipSend{value: fees}(_dstChain, evm2AnyMessage);
        }
        emit MessageSent(messageId);
    }

    /// handle a received message
    function _ccipReceive(Client.Any2EVMMessage memory any2EvmMessage) internal override {
        bytes memory message = abi.decode(any2EvmMessage.data, (bytes)); // abi-decoding of the sent text
        BridgeSendPayload memory payload = Codec.decodeBridgeSendPayload(message);
        bytes32 _hash = keccak256(abi.encode(message, any2EvmMessage.messageId));
        require(!processedMessages[_hash], "processed");
        address sender = abi.decode(any2EvmMessage.sender, (address));
        require(allowedPeers[any2EvmMessage.sourceChainSelector][sender], "!allowed");

        processedMessages[_hash] = true;

        require(payload.amount > 0, "!amount");

        if (isL1) {
            require(lockboxes[payload.token] != address(0), "!token !lockbox");
            ILockBox(lockboxes[payload.token]).unlock(payload.token, payload.to, payload.amount);
        } else {
            // Create manageAssetAndShares struct with isMint = true and updateAsset = false
            // as bridging does not need to update asset amount on L2
            ManageAssetAndShares memory manageAssetAndShares = ManageAssetAndShares({ yToken: payload.token, shares: payload.amount, assetAmount: 0, updateAsset: false, isMint: true, isNewYToken: false });
            // call manageAssetAndShares
            IManager(manager).manageAssetAndShares(payload.to, manageAssetAndShares);
        }
    }
}
