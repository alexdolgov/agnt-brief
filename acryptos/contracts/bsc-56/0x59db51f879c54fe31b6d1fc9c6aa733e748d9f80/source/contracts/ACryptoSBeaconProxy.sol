//          .8.              ,o888888o.    8 888888888o.   `8.`8888.      ,8' 8 888888888o   8888888 8888888888     ,o888888o.        d888888o.
//         .888.            8888     `88.  8 8888    `88.   `8.`8888.    ,8'  8 8888    `88.       8 8888        . 8888     `88.    .`8888:' `88.
//        :88888.        ,8 8888       `8. 8 8888     `88    `8.`8888.  ,8'   8 8888     `88       8 8888       ,8 8888       `8b   8.`8888.   Y8
//       . `88888.       88 8888           8 8888     ,88     `8.`8888.,8'    8 8888     ,88       8 8888       88 8888        `8b  `8.`8888.
//      .8. `88888.      88 8888           8 8888.   ,88'      `8.`88888'     8 8888.   ,88'       8 8888       88 8888         88   `8.`8888.
//     .8`8. `88888.     88 8888           8 888888888P'        `8. 8888      8 888888888P'        8 8888       88 8888         88    `8.`8888.
//    .8' `8. `88888.    88 8888           8 8888`8b             `8 8888      8 8888               8 8888       88 8888        ,8P     `8.`8888.
//   .8'   `8. `88888.   `8 8888       .8' 8 8888 `8b.            8 8888      8 8888               8 8888       `8 8888       ,8P  8b   `8.`8888.
//  .888888888. `88888.     8888     ,88'  8 8888   `8b.          8 8888      8 8888               8 8888        ` 8888     ,88'   `8b.  ;8.`8888
// .8'       `8. `88888.     `8888888P'    8 8888     `88.        8 8888      8 8888               8 8888           `8888888P'      `Y8888P ,88P'

// SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.13;

// Using @openzeppelin/contracts@4.5.0
import "@openzeppelin/contracts/proxy/beacon/BeaconProxy.sol";

contract ACryptoSBeaconProxy is BeaconProxy {
    constructor(address beacon, bytes memory data)
        payable
        BeaconProxy(beacon, data)
    {}

    /**
     * @dev Fallback function that delegates calls to the address returned by `_implementation()`. Will run if call data
     * is empty.
     */
    receive() external payable override {}
}
