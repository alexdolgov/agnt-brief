// SPDX-License-Identifier: MIT

pragma solidity 0.8.0;

interface IERC20 {
    function transferFrom(address, address, uint) external returns (bool);
}

contract OTC {

    address public constant DBR = 0xAD038Eb671c44b853887A7E32528FaB35dC5D710;
    address public constant DOLA = 0x865377367054516e17014CcdED1e7d814EDC9ce4;
    address public constant buyer = 0x7a16fF8270133F063aAb6C9977183D9e72835428;
    address public constant inverse = 0x9D5Df30F475CEA915b1ed4C0CCa59255C897b61B;
    bool public swapped;

    function swap() public {
        require(!swapped);
        IERC20(DBR).transferFrom(inverse, buyer, 4000000 ether);
        IERC20(DOLA).transferFrom(buyer, inverse, 262000 ether);
        swapped = true;
    }
}