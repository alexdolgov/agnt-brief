// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.20;

import "./MintableBurnableToken.sol";

/**
 * @title Perpetual Note ETH receipt token
 */
contract pnETH is MintableBurnableToken {
    constructor(address owner, ITripwireController controller_, address guardian_) MintableBurnableToken("Perpetual Note ETH", "pnETH", owner, controller_, guardian_) {}
}
