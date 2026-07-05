pragma solidity 0.8.20;

import "@layerzerolabs/lz-evm-oapp-v2/contracts/oft/OFTAdapter.sol";

contract vETHOFTAdapter is OFTAdapter {

    address public constant vETH = 0x38D64ce1Bdf1A9f24E0Ec469C9cAde61236fB4a0;
    address public constant LZ_ENDPOINT = 0x1a44076050125825900e736c501f859c50fE728c;
    address public constant DELEGATE = 0xe0EB63B4E18FF1e646ab7E37510E6EaF287AdE3D;

    constructor() OFTAdapter(vETH, LZ_ENDPOINT, DELEGATE){}

}