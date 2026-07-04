// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import {OFT} from "@layerzerolabs/oft-evm/contracts/OFT.sol";
import {ERC20Permit} from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

/**
 * @dev An Omnichain Fungible Token (OFT) that can be transferred across LayerZero-supported chains.
 * This is the Layer 2 version of AlmanakToken, designed for deployment on L2 networks.
 * Includes ERC20Permit for gasless approvals.
 */
contract AlmanakTokenL2 is OFT, ERC20Permit {
    constructor(
        string memory _name,
        string memory _symbol,
        address _lzEndpoint,
        address _owner
    )
        OFT(_name, _symbol, _lzEndpoint, _owner)
        ERC20Permit(_name)
        Ownable(_owner)
    {
        require(_lzEndpoint != address(0), "ATL2: endpoint cannot be zero address");
        require(_owner != address(0), "ATL2: owner cannot be zero address");
    }
}
