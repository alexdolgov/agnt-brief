// SPDX-License-Identifier: MIT
pragma solidity>=0.6.9;

import '../../base/ElasticSupplyToken.sol';
import '../../tauElastic/ElasticTokenWFixedRate.sol';

contract tBTC is ElasticTokenWFixedRate{
    using SafeMathUpgradeable for uint256;
    
    function initialize() public initializer{
        super.initialize("τBitcoin","τBTC");
    }
}