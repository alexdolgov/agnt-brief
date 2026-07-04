// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.23;

import { IPMsgSendEndpoint } from "../interfaces/ICrossChainMsg/IPMsgSendEndpoint.sol";

import { Errors } from "../libraries/Errors.sol";

import { EnumerableMap } from "@openzeppelin/contracts/utils/structs/EnumerableMap.sol";
import { Address } from "@openzeppelin/contracts/utils/Address.sol";
import { OwnableUpgradeable } from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";

// solhint-disable no-empty-blocks

abstract contract MsgSenderAppUpg is OwnableUpgradeable {
    using EnumerableMap for EnumerableMap.UintToAddressMap;
    using Address for address;

    uint256 public approxDstExecutionGas;

    IPMsgSendEndpoint public msgSendEndpoint;

    // destinationContracts mapping contains one address for each chainId only
    EnumerableMap.UintToAddressMap internal destinationContracts;

    uint256[50] private __gap;

    event DestinationContractAdded(uint256 chainId, address addr);

    event ApproxDstExecutionGasUpdated(uint256 gas);

    modifier refundUnusedEth() {
        _;
        if (address(this).balance > 0) {
            Address.sendValue(payable(msg.sender), address(this).balance);
        }
    }

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function __MsgSenderAppUpg_init(address _msgSendEndpoint, uint256 _approxDstExecutionGas) internal onlyInitializing {
        msgSendEndpoint = IPMsgSendEndpoint(_msgSendEndpoint);
        approxDstExecutionGas = _approxDstExecutionGas;
        __Ownable_init(msg.sender);
    }

    function _sendMessage(uint256 chainId, bytes memory message) internal {
        assert(destinationContracts.contains(chainId));
        address toAddr = destinationContracts.get(chainId);
        uint256 estimatedGasAmount = approxDstExecutionGas;
        uint256 fee = msgSendEndpoint.calcFee(toAddr, chainId, message, estimatedGasAmount);
        // LM contracts won't hold ETH on its own so this is fine
        if (address(this).balance < fee) revert Errors.InsufficientFeeToSendMsg(address(this).balance, fee);
        msgSendEndpoint.sendMessage{ value: fee }(toAddr, chainId, message, estimatedGasAmount);
    }

    function addDestinationContract(address _address, uint256 _chainId) public payable onlyOwner {
        destinationContracts.set(_chainId, _address);
        emit DestinationContractAdded(_chainId, _address);
    }

    function setApproxDstExecutionGas(uint256 gas) external onlyOwner {
        approxDstExecutionGas = gas;
        emit ApproxDstExecutionGasUpdated(gas);
    }

    function getAllDestinationContracts() public view returns (uint256[] memory chainIds, address[] memory addrs) {
        uint256 length = destinationContracts.length();
        chainIds = new uint256[](length);
        addrs = new address[](length);

        for (uint256 i = 0; i < length; ++i) {
            (chainIds[i], addrs[i]) = destinationContracts.at(i);
        }
    }

    function _getSendMessageFee(uint256 chainId, bytes memory message) internal view returns (uint256) {
        return msgSendEndpoint.calcFee(destinationContracts.get(chainId), chainId, message, approxDstExecutionGas);
    }
}
