// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./token/oft/v2/OFTV2.sol";
import {IVersionable} from "../Interfaces/IVersionable.sol";

/// @notice This contract locks tokens on source, on outgoing send(), and unlocks tokens when receiving from other chains.
contract OFTDebtToken is OFTV2, IVersionable {
    string public constant override VERSION = "1.0.0";
    string public constant NAME = "OFTDebtToken";

    string private constant _NAME = "Debt Token";
    string private constant _SYMBOL = "USDD";

    constructor(address _layerZeroEndpoint) OFTV2(_NAME, _SYMBOL, _layerZeroEndpoint) {}
}
