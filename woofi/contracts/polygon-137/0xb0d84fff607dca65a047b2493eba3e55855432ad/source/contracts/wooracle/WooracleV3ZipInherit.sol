// SPDX-License-Identifier: MIT
pragma solidity =0.8.14;

/*

░██╗░░░░░░░██╗░█████╗░░█████╗░░░░░░░███████╗██╗
░██║░░██╗░░██║██╔══██╗██╔══██╗░░░░░░██╔════╝██║
░╚██╗████╗██╔╝██║░░██║██║░░██║█████╗█████╗░░██║
░░████╔═████║░██║░░██║██║░░██║╚════╝██╔══╝░░██║
░░╚██╔╝░╚██╔╝░╚█████╔╝╚█████╔╝░░░░░░██║░░░░░██║
░░░╚═╝░░░╚═╝░░░╚════╝░░╚════╝░░░░░░░╚═╝░░░░░╚═╝

*
* MIT License
* ===========
*
* Copyright (c) 2020 WooTrade
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in all
* copies or substantial portions of the Software.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
* AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
* LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
* OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

import {WooracleV3} from "./WooracleV3.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import "../libraries/TransferHelper.sol";

/// @title Wooracle V3 contract for L2 chains for calldata zip.
contract WooracleV3ZipInherit is WooracleV3 {
    mapping(uint8 => address) public bases;

    function setBase(uint8 _id, address _base) external onlyAdmin {
        require(getBase(_id) == address(0), "WooracleV3ZipInherit: !id_SET_ALREADY");
        bases[_id] = _base;
    }

    function getBase(uint8 _id) public view returns (address) {
        address[7] memory CONST_BASES = [
            // mload
            // NOTE: Update token address for different chains, polygon
            0x0d500B1d8E8eF31E21C99d1Db9A6444d3ADf1270, //WMATIC
            0x7ceB23fD6bC0adD59E62ac25578270cFf1b9f619, // WETH
            0x1BFD67037B42Cf73acF2047067bd4F2C47D9BfD6, // WBTC
            0x1B815d120B3eF02039Ee11dC2d33DE7aA4a8C603, // WOO
            0x3c499c542cEF5E3811e1192ce70d8cC03d5c3359, // USDC
            0x2791Bca1f2de4661ED88A30C99A7a9449Aa84174, // USDC.e
            0xc2132D05D31c914a87C6611C10748AEb04B58e8F // USDT

        ];

        return _id < 7 ? CONST_BASES[_id] : bases[_id];
    }

    /* ----- External Functions ----- */

    // https://docs.soliditylang.org/en/v0.8.12/contracts.html#fallback-function
    // prettier-ignore
    fallback (bytes calldata _input) external onlyAdmin returns (bytes memory _output) {
        /*
            2 bit: 0: post prices, 1: post states, 2,3: TBD
            6 bits: length

            post prices:
               [price] -->
                  base token: 8 bites (1 byte)
                  price data: 32 bits = (27, 5)

            post states:
               [states] -->
                  base token: 8 bites (1 byte)
                  price:      32 bits (4 bytes) = (27, 5)
                  k coeff:    16 bits (2 bytes) = (11, 5)
                  s spread:   16 bits (2 bytes) = (11, 5)
        */

        uint256 x = _input.length;
        require(x > 0, "WooracleV3ZipInherit: !calldata");

        uint8 firstByte = uint8(bytes1(_input[0]));
        uint8 op = firstByte >> 6; // 11000000
        uint8 len = firstByte & 0x3F; // 00111111
        if (op == 0) {
            // post prices list
            address base;
            uint128 p;

            for (uint256 i = 0; i < len; ++i) {
                base = getBase(uint8(bytes1(_input[1 + i * 5:1 + i * 5 + 1])));
                p = _price(uint32(bytes4(_input[1 + i * 5 + 1:1 + i * 5 + 5])));
                infos[base].price = p;
            }

            timestamp = block.timestamp;
        } else if (op == 1) {
            // post states list
            address base;
            uint128 p;
            uint64 s;
            uint64 k;

            for (uint256 i = 0; i < len; ++i) {
                base = getBase(uint8(bytes1(_input[1 + i * 9:1 + i * 9 + 1])));
                p = _price(uint32(bytes4(_input[1 + i * 9 + 1:1 + i * 9 + 5])));
                s = _ks(uint16(bytes2(_input[1 + i * 9 + 5:1 + i * 9 + 7])));
                k = _ks(uint16(bytes2(_input[1 + i * 9 + 7:1 + i * 9 + 9])));
                _setState(base, p, s, k);
            }

            timestamp = block.timestamp;
        } else {
            // not supported
        }
    }

    function _price(uint32 b) internal pure returns (uint128) {
        return uint128((b >> 5) * (10**(b & 0x1F))); // 0x1F = 00011111
    }

    function _ks(uint16 b) internal pure returns (uint64) {
        return uint64((b >> 5) * (10**(b & 0x1F)));
    }

    function inCaseTokenGotStuck(address stuckToken) external onlyAdmin {
        if (stuckToken == 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE) {
            TransferHelper.safeTransferETH(msg.sender, address(this).balance);
        } else {
            uint256 amount = IERC20(stuckToken).balanceOf(address(this));
            TransferHelper.safeTransfer(stuckToken, msg.sender, amount);
        }
    }
}
