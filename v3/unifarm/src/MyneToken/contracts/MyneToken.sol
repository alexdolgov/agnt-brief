// contracts/MyneToken.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MyneToken is ERC20 {
    constructor() ERC20("ITSMYNE", "MYNE") {
        _mint(0x94FC82B287815C2321C85C650bf3680917B138e3, 4140000 * 10**uint(decimals()));
        _mint(0x2Ac123Fcd4afd896A21e953fb9990bf73752CBd6, 11190000 * 10**uint(decimals()));
        _mint(0xDc1C1B2d91bdCc037315905Dd8349bCDa30DC503, 4170000 * 10**uint(decimals()));
        _mint(0x6CF60db05C87ca9947632ea6F6bF206699B08cd2, 5500000 * 10**uint(decimals()));
        _mint(0x3C31667CaCBabF99FA50643b158bcF9665bD3d77, 42000000 * 10**uint(decimals()));
        _mint(0x2986317fc49e74a6A91425C45D4d9Ef45a63C3D3, 10000000 * 10**uint(decimals()));
        _mint(0xBd941b90F30A624f6842B8A8Fc7703ebdbB6861F, 17000000 * 10**uint(decimals()));
        _mint(0x4A5fD72FB89325e0b63F722B59C042639Ffbf7dd, 6000000 * 10**uint(decimals()));
    }
}
