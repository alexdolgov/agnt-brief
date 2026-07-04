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

/*//////////////////////////////////////////////////////////////////////////
                           sBaoSynthRead Contract
//////////////////////////////////////////////////////////////////////////*/
/**
 * @title sBaoSynthRead
 * @dev Contract for reading and relaying asset-to-share rate data.
 */
contract sBaoSynthReadV3 is OAppRead, OAppOptionsType3 {
    using OptionsBuilder for bytes;

    /*//////////////////////////////////////////////////////////////////////////
                           STATE VARIABLES & CONSTANTS
    //////////////////////////////////////////////////////////////////////////*/
    uint32 public constant ETHEREUM_LZ_CHAIN_ID = 30101;
    address public constant MAINNET_CONTRACT = 0x69378e2142BE773C86c78320EAc929770d3d740E; // sBaoUSD
    address public constant LZ_ENDPOINT = 0x1a44076050125825900e736c501f859c50fE728c; // Arbitrum Endpoint

    uint32 public constant READ_CHANNEL = 4294967295; //ETH channel
    uint32 public constant GAS_LIMIT = 250000;
    uint32 public constant CALLDATA_SIZE = 32;
    uint32 public constant MSG_VALUE = 0;

    uint256 private latestRateValue;
    uint256 private lastUpdated;

    string public identifier;
    bytes public data = abi.encode("Nothing received yet.");

    /*//////////////////////////////////////////////////////////////////////////
                                EVENTS
    //////////////////////////////////////////////////////////////////////////*/
    event AssetRateRequested(bytes32 guid);
    event AssetRateReceived(bytes32 guid, uint256 rate);

    /*//////////////////////////////////////////////////////////////////////////
                         CONSTRUCTOR / INITIALIZER
    //////////////////////////////////////////////////////////////////////////*/
    /**
     * @dev Initializes the sBaoSynthRead contract.
     * @param _delegate Delegate address for Ownable and OAppRead.
     * @param _identifier Identifier string for the contract.
     */
    constructor(
        address _delegate,
        string memory _identifier
    ) OAppRead(LZ_ENDPOINT, _delegate) Ownable(_delegate) {
        identifier = _identifier;
    }

    /*//////////////////////////////////////////////////////////////////////////
                         EXTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/
    /**
     * @notice Sends a read command in loopback through the channel.
     * @dev Encodes the message as bytes and sends it using the internal _lzSend function.
     * @return receipt A MessagingReceipt struct containing details of the sent message.
     */
    function requestAssetToShareRate() external payable returns (MessagingReceipt memory receipt) {
        bytes memory cmd = buildCmd(); // Generate the read command
        bytes memory options = generateReadOptions();

        receipt = _lzSend(
            READ_CHANNEL,
            cmd,
            options,
            MessagingFee(msg.value, 0),
            payable(msg.sender)
        );

        emit AssetRateRequested(receipt.guid);
    }

    /**
     * @notice Sends a read command with fee validation.
     * @dev Computes the required fee on-chain and reverts if msg.value is insufficient.
     * @return receipt A MessagingReceipt struct containing details of the sent message.
     */
    function requestAssetToShareRateV2() external payable returns (MessagingReceipt memory receipt) {
        bytes memory cmd = buildCmd();
        bytes memory options = generateReadOptions();

        MessagingFee memory requiredFee = _quote(READ_CHANNEL, cmd, options, false);
        require(msg.value >= requiredFee.nativeFee, "Insufficient fee");

        receipt = _lzSend(
            READ_CHANNEL,
            cmd,
            options,
            MessagingFee(msg.value, 0),
            payable(msg.sender)
        );

        emit AssetRateRequested(receipt.guid);
    }

    /*//////////////////////////////////////////////////////////////////////////
                          PUBLIC / VIEW FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/
    /**
     * @notice Quotes the gas needed to pay for the full read command in native gas.
     * @return fee A MessagingFee struct containing the calculated fee.
     */
    function quote() public view returns (MessagingFee memory fee) {
        bytes memory cmd = buildCmd();
        bytes memory options = generateReadOptions();
        fee = _quote(READ_CHANNEL, cmd, options, false);
    }

    /**
     * @notice Builds the command to be sent.
     * @return cmd The encoded command.
     */
    function buildCmd() public view returns (bytes memory) {
        EVMCallRequestV1[] memory readRequests = new EVMCallRequestV1[](1);
        readRequests[0] = EVMCallRequestV1({
            appRequestLabel: 1,
            targetEid: ETHEREUM_LZ_CHAIN_ID,
            isBlockNum: false,
            blockNumOrTimestamp: uint64(block.timestamp),
            confirmations: 15,
            to: MAINNET_CONTRACT,
            callData: abi.encodeWithSelector(IAssetToShareRate.assetToShareRate.selector)
        });

        bytes memory cmd = ReadCodecV1.encode(0, readRequests);
        return cmd;
    }

    /**
     * @notice Returns the latest stored rate.
     * @return The latest rate value.
     */
    function latestRate() external view returns (uint256) {
        return latestRateValue;
    }

    /**
     * @notice Returns the latest stored rate along with its timestamp.
     * @return rate The latest rate value.
     * @return timestamp The timestamp of the latest update.
     */
    function latestRateAnswer() external view returns (uint256 rate, uint256 timestamp) {
        return (latestRateValue, lastUpdated);
    }

    /**
     * @notice Returns the time elapsed since the last update.
     * @return The time difference in seconds.
     */
    function timeSinceLastUpdate() external view returns (uint256) {
        return block.timestamp - lastUpdated;
    }

    /**
     * @notice Generates the options for the read operation.
     * @return A bytes array representing the options.
     */
    function generateReadOptions() public pure returns (bytes memory) {
        return OptionsBuilder.newOptions()
            .addExecutorLzReadOption(
                uint128(GAS_LIMIT),
                uint32(CALLDATA_SIZE),
                uint128(MSG_VALUE)
            );
    }

    /*//////////////////////////////////////////////////////////////////////////
                           INTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/
    /**
     * @dev Handles incoming messages from another chain.
     * @param _guid A unique global packet identifier for the message.
     * @param payload The encoded message payload.
     *
     * Requirements:
     * - The payload must be exactly 32 bytes.
     * - The current block timestamp must be greater than the last update timestamp.
     */
    function _lzReceive(
        Origin calldata, /* _origin */
        bytes32 _guid,
        bytes calldata payload,
        address, /* _executor */
        bytes calldata /* _extraData */
    ) internal override {
        require(payload.length == 32, "Invalid message length");

        uint256 rate = abi.decode(payload, (uint256));

        // Ensure the new update's timestamp is higher than the last update.
        require(block.timestamp > lastUpdated, "Update timestamp must be higher than previous");

        // Update stored rate and timestamp
        latestRateValue = rate;
        lastUpdated = block.timestamp;

        emit AssetRateReceived(_guid, rate);
    }
}
