// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {OAppCore} from "@layerzerolabs/oapp-evm/contracts/oapp/OAppCore.sol";
import {OAppReceiver, Origin} from "@layerzerolabs/oapp-evm/contracts/oapp/OAppReceiver.sol";
import {IAggregatorInterfaceMinimal} from "./interfaces/IAggregatorInterfaceMinimal.sol";

/// @title Receive xUSD rate from other chain via LayerZero V2 and show it
/// @author Alien Deployer (https://github.com/a17)
contract XUSDBridgedOracle is OAppReceiver, IAggregatorInterfaceMinimal {
    uint128 public round;
    uint128 public sharePrice;
    address public immutable usdcOracle;

    constructor(address _endpoint, address _delegate, address usdcOracle_)
        OAppCore(_endpoint, _delegate)
        Ownable(_delegate)
    {
        usdcOracle = usdcOracle_;
    }

    /// @inheritdoc IAggregatorInterfaceMinimal
    function latestAnswer() external view returns (int256) {
        return _getPrice();
    }

    /// @inheritdoc IAggregatorInterfaceMinimal
    function latestRoundData()
        external
        view
        returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound)
    {
        answer = _getPrice();
        roundId = uint80(round - 1);
        startedAt = block.timestamp;
        updatedAt = block.timestamp;
        answeredInRound = roundId;
    }

    function addressToBytes32(address addr) external pure returns (bytes32) {
        return bytes32(uint256(uint160(addr)));
    }

    /**
     * @dev Internal function override to handle incoming messages from another chain.
     * @dev _origin A struct containing information about the message sender.
     * @dev _guid A unique global packet identifier for the message.
     * @param payload The encoded message payload being received.
     *
     * @dev The following params are unused in the current implementation of the OApp.
     * @dev _executor The address of the Executor responsible for processing the message.
     * @dev _extraData Arbitrary data appended by the Executor to the message.
     *
     * Decodes the received payload and processes it as per the business logic defined in the function.
     */
    function _lzReceive(
        Origin calldata, /*_origin*/
        bytes32, /*_guid*/
        bytes calldata payload,
        address, /*_executor*/
        bytes calldata /*_extraData*/
    ) internal override {
        (round, sharePrice) = abi.decode(payload, (uint128, uint128));
    }

    function _getPrice() internal view returns (int256) {
        int256 usdcPrice = IAggregatorInterfaceMinimal(usdcOracle).latestAnswer();
        return int256(uint256(sharePrice)) * usdcPrice / 1e6;
    }
}
