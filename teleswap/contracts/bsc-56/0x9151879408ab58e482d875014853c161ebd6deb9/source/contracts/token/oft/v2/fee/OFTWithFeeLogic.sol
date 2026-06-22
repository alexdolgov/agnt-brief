// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./OFTWithFee.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

contract OFTWithFeeLogic is OFTWithFee {

    constructor(string memory _name, string memory _symbol, uint8 _sharedDecimals, address _lzEndpoint) OFTWithFee(_name, _symbol, _sharedDecimals, _lzEndpoint) {}

    function initialize(string memory _name, string memory _symbol, uint8 _sharedDecimals, address _lzEndpoint) public initializer {

        _transferOwnership(_msgSender());
        
        lzEndpoint = ILayerZeroEndpoint(_lzEndpoint);
        
        sharedDecimals = _sharedDecimals;

        feeOwner = owner();
        
        ERC20Upgradeable.__ERC20_init(_name, _symbol);

        uint8 decimals = decimals();
        require(_sharedDecimals <= decimals, "OFTWithFee: sharedDecimals must be <= decimals");
        ld2sdRate = 10 ** (decimals - _sharedDecimals);
    }
}
