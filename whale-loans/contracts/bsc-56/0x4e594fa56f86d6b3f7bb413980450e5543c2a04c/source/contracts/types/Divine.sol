// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity 0.7.5;

import '../types/ERC20.sol';
import '../types/Ownable.sol';

abstract contract Divine is ERC20, Ownable {

    constructor ( string memory name_, string memory symbol_, uint8 decimals_ ) ERC20( name_, symbol_, decimals_ ) {}
}
