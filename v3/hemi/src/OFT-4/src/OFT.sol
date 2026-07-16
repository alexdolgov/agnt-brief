// SPDX-License-Identifier: MIT
pragma solidity 0.8.29;

import {OFT as OFTAbstract} from "@layerzerolabs/oft-evm/contracts/OFT.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

contract OFT is OFTAbstract {
    constructor(address owner_, string memory name_, string memory symbol_, address lzEndpoint_, address delegate_)
        Ownable(owner_)
        OFTAbstract(name_, symbol_, lzEndpoint_, delegate_)
    {}
}
