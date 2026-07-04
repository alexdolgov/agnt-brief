// SPDX-License-Identifier: UNLICENSED
// Copyright (c) Eywa.Fi, 2021-2023 - all rights reserved
pragma solidity 0.8.17;

import "@openzeppelin/contracts/access/Ownable.sol";
import "../interfaces/IGateKeeper.sol";
import "../interfaces/IAddressBook.sol";
import "../interfaces/IVirtualPriceReceiver.sol";
import "../interfaces/I3Pool.sol";


contract VirtualPriceSender is Ownable {

    /// @dev addressBook contract
    address public addressBook;
    /// @dev stablePool from which get virtual price
    address public stablePool;
    /// @dev cryptoPool from which get virtual price
    address public cryptoPool;
    /// @dev virtual price receiver contract where send virtual price
    address public virtualPriceReceiver;
    /// @dev chainId of virtual price receiver contract where send virtual price
    uint64 public virtualPriceReceiverChainId;

    event PriceSent(uint256 virtualPriceStable, uint256 virtualPriceCrypto);
    
    constructor(address addressBook_, address stablePool_, address cryptoPool_, address virtualPriceReceiver_, uint64 virtualPriceReceiverChainId_) {
        require(addressBook_ != address(0), "VirtualPriceReceiver: zero addressBook address");
        addressBook = addressBook_;
        stablePool = stablePool_;
        cryptoPool = cryptoPool_;
        virtualPriceReceiver = virtualPriceReceiver_;
        virtualPriceReceiverChainId = virtualPriceReceiverChainId_;
    }

    function setAddressBook(address addressBook_) external onlyOwner {
        addressBook = addressBook_;
    }

    function setStablePool(address newPool) external onlyOwner {
        stablePool = newPool;
    }

    function setCryptoPool(address newPool) external onlyOwner {
        cryptoPool = newPool;
    }

    function setVirtualPriceReceiver(address newVirtualPriceReceiver) external onlyOwner {
        virtualPriceReceiver = newVirtualPriceReceiver;
    }

    function setVirtualPriceReceiverChainId(uint64 newVirtualPriceReceiverChainId) external onlyOwner {
        virtualPriceReceiverChainId = newVirtualPriceReceiverChainId;
    }

    function sendVirtualPrice() onlyOwner public {
        I3Pool poolImpl = I3Pool(stablePool);
        uint256 virtualPriceStable = poolImpl.get_virtual_price();
        uint256 virtualPriceCrypto = 0;
        if (cryptoPool != address(0)) {
            poolImpl = I3Pool(cryptoPool);
            virtualPriceCrypto = poolImpl.get_virtual_price();
        }

        bytes memory out = abi.encodeWithSelector(
            IVirtualPriceReceiver.receiveVirtualPrice.selector,
            virtualPriceStable,
            virtualPriceCrypto,
            block.chainid
        );
        address gateKeeper = IAddressBook(addressBook).gateKeeper();
        IGateKeeper gateKeeperImpl = IGateKeeper(gateKeeper);
        gateKeeperImpl.sendData(out, virtualPriceReceiver, virtualPriceReceiverChainId, address(0));
        emit PriceSent(virtualPriceStable, virtualPriceCrypto);
    }
}
