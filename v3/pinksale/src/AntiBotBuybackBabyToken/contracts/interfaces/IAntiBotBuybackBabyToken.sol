// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0;

interface IAntiBotBuybackBabyToken {
    function initialize(
        address[4] memory addrs_, // [0] = owner, [1] = reward, [2] = router, [3] = anti bot
        address dividendDistributorImplementation_,
        string memory name_,
        string memory symbol_,
        uint256 totalSupply_,
        uint256[5] memory feeSettings_
    ) external;
}
