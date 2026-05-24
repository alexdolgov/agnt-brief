pragma solidity 0.8.27;

import {OFTUpgradeable} from "@layerzerolabs/oft-evm-upgradeable/contracts/oft/OFTUpgradeable.sol";

contract Derive is OFTUpgradeable {
  constructor(address _lzEndpoint) OFTUpgradeable(_lzEndpoint) {
    _disableInitializers();
  }

  function initialize(address delegate, address initialRecipient) public initializer {
    __OFT_init("Derive", "DRV", delegate);
    __Ownable_init(delegate);
    _mint(initialRecipient, 1_000_000_000e18);
  }
}
