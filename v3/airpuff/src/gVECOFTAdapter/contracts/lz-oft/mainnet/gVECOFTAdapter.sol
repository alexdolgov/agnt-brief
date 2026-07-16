pragma solidity 0.8.20;

import "@layerzerolabs/lz-evm-oapp-v2/contracts/oft/OFTAdapter.sol";

contract gVECOFTAdapter is OFTAdapter {

    address public constant gVEC = 0xb2D007293a421471586D6BC3FBfEB1990fdFa2e6;
    address public constant LZ_ENDPOINT = 0x1a44076050125825900e736c501f859c50fE728c;
    address public constant DELEGATE = 0xe0EB63B4E18FF1e646ab7E37510E6EaF287AdE3D;

    constructor() OFTAdapter(gVEC, LZ_ENDPOINT, DELEGATE){}

}