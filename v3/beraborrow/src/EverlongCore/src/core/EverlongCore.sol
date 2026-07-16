// SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

import {Ownable2Step, Ownable} from "@openzeppelin/contracts/access/Ownable2Step.sol";
import {IEverlongCore} from "src/interfaces/core/IEverlongCore.sol";
import {IMetaCore} from "src/interfaces/utils/IMetaCore.sol";

/**
 * @title EverlongCore
 * @author Everlong Labs
 * @notice Contract that serves as single source of truth for the owner across all Everlong contracts
 */
contract EverlongCore is Ownable2Step, IEverlongCore {
    IMetaCore public immutable metaCore;
    address public feeReceiver;

    error ZeroAddress();

    event FeeReceiverUpdated(address indexed newFeeReceiver);

    constructor(address _metaCore, address _owner, address _feeReceiver) {
        if (_metaCore == address(0)) revert ZeroAddress();

        metaCore = IMetaCore(_metaCore);
        feeReceiver = _feeReceiver;

        _transferOwnership(_owner);

        emit FeeReceiverUpdated(_feeReceiver);
    }

    function setFeeReceiver(address _feeReceiver) external onlyOwner {
        if (_feeReceiver == address(0)) revert ZeroAddress();

        feeReceiver = _feeReceiver;

        emit FeeReceiverUpdated(_feeReceiver);
    }

    function owner() public view override(IEverlongCore, Ownable) returns (address) {
        return super.owner();
    }

    function priceFeed() external view returns (address) {
        return metaCore.priceFeed();
    }
}