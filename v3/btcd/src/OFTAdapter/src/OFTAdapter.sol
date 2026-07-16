// SPDX-License-Identifier: MIT
pragma solidity 0.8.29;

import {OFTAdapter as OFTAbstractAdapter} from "@layerzerolabs/oft-evm/contracts/OFTAdapter.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

contract OFTAdapter is OFTAbstractAdapter {
    constructor(address owner_, address token_, address lzEndpoint_, address delegate_)
        Ownable(owner_)
        OFTAbstractAdapter(token_, lzEndpoint_, delegate_)
    {}
}
