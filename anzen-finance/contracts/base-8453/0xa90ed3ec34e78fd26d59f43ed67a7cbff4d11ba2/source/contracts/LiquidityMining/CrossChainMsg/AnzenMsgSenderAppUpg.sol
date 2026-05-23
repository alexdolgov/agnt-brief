// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.23;

import "../../interfaces/IAMsgSendEndpoint.sol";
import "../../core/libraries/BoringOwnableUpgradeable.sol";
import "../../core/libraries/Errors.sol";
import "@openzeppelin/contracts/utils/structs/EnumerableMap.sol";

// solhint-disable no-empty-blocks

abstract contract AnzenMsgSenderAppUpg is BoringOwnableUpgradeable {
    using EnumerableMap for EnumerableMap.UintToAddressMap;

    uint256 public approxDstExecutionGas;

    IAMsgSendEndpoint public immutable anzenMsgSendEndpoint;

    // destinationContracts mapping contains one address for each chainId only
    EnumerableMap.UintToAddressMap internal destinationContracts;

    uint256[100] private __gap;

    modifier refundUnusedEth() {
        _;
        if (address(this).balance > 0) {
            AddressUpgradeable.sendValue(payable(msg.sender), address(this).balance);
        }
    }

    constructor(address _anzenMsgSendEndpoint, uint256 _approxDstExecutionGas) {
        anzenMsgSendEndpoint = IAMsgSendEndpoint(_anzenMsgSendEndpoint);
        approxDstExecutionGas = _approxDstExecutionGas;
    }

    function _sendMessage(uint256 chainId, bytes memory message) internal {
        assert(destinationContracts.contains(chainId));
        address toAddr = destinationContracts.get(chainId);
        uint256 estimatedGasAmount = approxDstExecutionGas;
        uint256 fee = anzenMsgSendEndpoint.calcFee(toAddr, chainId, message, estimatedGasAmount);
        // LM contracts won't hold ETH on its own so this is fine
        if (address(this).balance < fee) revert Errors.InsufficientFeeToSendMsg(address(this).balance, fee);
        anzenMsgSendEndpoint.sendMessage{value: fee}(toAddr, chainId, message, estimatedGasAmount);
    }

    function addDestinationContract(address _address, uint256 _chainId) external payable onlyOwner {
        destinationContracts.set(_chainId, _address);
    }

    function setApproxDstExecutionGas(uint256 gas) external onlyOwner {
        approxDstExecutionGas = gas;
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
        return
            anzenMsgSendEndpoint.calcFee(destinationContracts.get(chainId), chainId, message, approxDstExecutionGas);
    }
}
