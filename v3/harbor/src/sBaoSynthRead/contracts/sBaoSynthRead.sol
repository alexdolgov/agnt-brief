// SPDX-License-Identifier: MIT

pragma solidity ^0.8.22;

import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { MessagingFee, Origin } from "@layerzerolabs/oapp-evm/contracts/oapp/OApp.sol";
import { OAppRead } from "@layerzerolabs/oapp-evm/contracts/oapp/OAppRead.sol";
import { MessagingReceipt } from "@layerzerolabs/oapp-evm/contracts/oapp/OAppSender.sol";
import { ReadCodecV1, EVMCallRequestV1 } from "@layerzerolabs/oapp-evm/contracts/oapp/libs/ReadCodecV1.sol";
import { OptionsBuilder } from "@layerzerolabs/oapp-evm/contracts/oapp/libs/OptionsBuilder.sol";
import { OAppOptionsType3, EnforcedOptionParam } from "@layerzerolabs/oapp-evm/contracts/oapp/libs/OAppOptionsType3.sol";

interface IAssetToShareRate {
    function assetToShareRate() external view returns (uint256);
}

contract sBaoSynthRead is OAppRead, OAppOptionsType3 {
    struct EvmReadRequest {
        uint16 appRequestLabel;
        uint32 targetEid;
        bool isBlockNum;
        uint64 blockNumOrTimestamp;
        uint16 confirmations;
        address to;
    }
    using OptionsBuilder for bytes;
    
    uint32 public constant ETHEREUM_LZ_CHAIN_ID = 30101;
    address public constant MAINNET_CONTRACT = 0x69378e2142BE773C86c78320EAc929770d3d740E; // sBaoUSD
    address public constant LZ_ENDPOINT = 0x1a44076050125825900e736c501f859c50fE728c; // Arbitrum Endpoint

    uint32 public constant READ_CHANNEL = 4294967295;

    uint256 private latestRateValue;
    uint256 private lastUpdated;

    event AssetRateRequested(bytes32 guid);
    event AssetRateReceived(bytes32 guid, uint256 rate);

    constructor(
        address _delegate,
        string memory _identifier
    ) OAppRead(LZ_ENDPOINT, _delegate) Ownable(_delegate) {
        identifier = _identifier;
    }

    string public identifier;
    bytes public data = abi.encode("Nothing received yet.");

    /**
     * @notice Send a read command in loopback through channelId
     * @param _requests An array of `EvmReadRequest` structs containing the read requests to be made.
     * @param _options An array of `Options` containing paramters to be passed on.
     * @dev Encodes the message as bytes and sends it using the `_lzSend` internal function.
     * @return receipt A `MessagingReceipt` struct containing details of the message sent.
     */
    function requestAssetToShareRate(
        EvmReadRequest[] memory _requests,
        bytes memory _options
    ) external payable returns (MessagingReceipt memory receipt) {
        bytes memory cmd = buildCmd(_requests); // Generate the read command

        receipt = _lzSend(
            READ_CHANNEL, 
            cmd, 
            _options, 
            MessagingFee(msg.value, 0), 
            payable(msg.sender)
        );

        emit AssetRateRequested(receipt.guid); // Use receipt GUID for tracking
    }

    /**
     * @notice Quotes the gas needed to pay for the full read command in native gas or ZRO token.
     * @param _requests An array of `EvmReadRequest` structs containing the read requests to be made.
     * @param _options An array of `Options` containing paramters to be passed on.
     * @param _payInLzToken Whether to return fee in ZRO token.
     * @return fee A `MessagingFee` struct containing the calculated gas fee in either the native token or ZRO token.
     */
    function quote(
        EvmReadRequest[] memory _requests,
        bytes memory _options,
        bool _payInLzToken
    ) public view returns (MessagingFee memory fee) {
        bytes memory cmd = buildCmd(_requests);
        fee = _quote(READ_CHANNEL, cmd, _options, _payInLzToken);
    }

    /**
     * @notice Builds the command to be sent
     * @param _readRequests An array of `EvmReadRequest` structs containing the read requests to be made.
     * @return cmd The encoded command to be sent to the channel.
     */
    function buildCmd(
        EvmReadRequest[] memory _readRequests
    ) public view returns (bytes memory) {
        require(_readRequests.length > 0, "LzReadCounter: empty requests");
        // build read requests
        EVMCallRequestV1[] memory readRequests = new EVMCallRequestV1[](_readRequests.length);
        for (uint256 i = 0; i < _readRequests.length; i++) {
            EvmReadRequest memory req = _readRequests[i];
            readRequests[i] = EVMCallRequestV1({
                appRequestLabel: req.appRequestLabel,
                targetEid: ETHEREUM_LZ_CHAIN_ID,
                isBlockNum: false,
                blockNumOrTimestamp: uint64(block.timestamp),
                confirmations: 15,
                to: MAINNET_CONTRACT,
                callData: abi.encodeWithSelector(IAssetToShareRate.assetToShareRate.selector)
            });
        }

        bytes memory cmd = ReadCodecV1.encode(0, readRequests);

        return cmd;
    }

    /**
     * @dev Internal function override to handle incoming messages from another chain.
     * @param payload The encoded message payload being received. This is the resolved command from the DVN
     *
     * @dev The following params are unused in the current implementation of the OApp.
     * @dev _origin A struct containing information about the message sender.
     * @dev _guid A unique global packet identifier for the message.
     * @dev _executor The address of the Executor responsible for processing the message.
     * @dev _extraData Arbitrary data appended by the Executor to the message.
     *
     * Decodes the received payload and processes it as per the business logic defined in the function.
     */
    function _lzReceive(
        Origin calldata /*_origin*/,
        bytes32 _guid,
        bytes calldata payload,
        address /*_executor*/,
        bytes calldata /*_extraData*/
    ) internal override {
        require(payload.length == 32, "Invalid message length");
        
        uint256 rate = abi.decode(payload, (uint256));

        // Update stored rate
        latestRateValue = rate;
        lastUpdated = block.timestamp;

        emit AssetRateReceived(_guid, rate);
    }

    function latestRate() external view returns (uint256) {
        return latestRateValue;
    }

    function latestRateAnswer() external view returns (uint256 rate, uint256 timestamp) {
        return (latestRateValue, lastUpdated);
    }

    function generateReadOptions(
        uint256 gasLimit, 
        uint256 calldataSize, 
        uint256 msgValue
    ) external pure returns (bytes memory) {
        return OptionsBuilder.newOptions()
            .addExecutorLzReadOption(
                uint128(gasLimit), 
                uint32(calldataSize), 
                uint128(msgValue)
            );
    }
}
