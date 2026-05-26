// SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;

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

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {EnumerableSet} from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";

import {TransferHelper} from "./libraries/TransferHelper.sol";
import {IWooIntegrator} from "./interfaces/IWooIntegrator.sol";

contract WooIntegrator is Ownable, IWooIntegrator {
    using EnumerableSet for EnumerableSet.AddressSet;

    address public quoteToken;
    EnumerableSet.AddressSet private baseTokens;

    mapping(address => bool) public isAdmin;

    constructor(address _quoteToken, address[] memory _baseTokens) {
        quoteToken = _quoteToken;

        unchecked {
            for (uint256 i = 0; i < _baseTokens.length; ++i) {
                baseTokens.add(_baseTokens[i]);
            }
        }
    }

    modifier onlyAdmin() {
        require(_msgSender() == owner() || isAdmin[_msgSender()], "WooIntegrator: !admin");
        _;
    }

    function getSupportTokens() external view returns (address, address[] memory) {
        return (quoteToken, allBaseTokens());
    }

    function allBaseTokensLength() external view returns (uint256) {
        return baseTokens.length();
    }

    function allBaseTokens() public view returns (address[] memory) {
        uint256 length = baseTokens.length();
        address[] memory tokens = new address[](length);
        unchecked {
            for (uint256 i = 0; i < length; ++i) {
                tokens[i] = baseTokens.at(i);
            }
        }
        return tokens;
    }

    function setQuoteToken(address _quoteToken) external onlyAdmin {
        quoteToken = _quoteToken;
    }

    function addBaseToken(address token) external onlyAdmin {
        bool success = baseTokens.add(token);
        require(success, "WooIntegrator: token exist");
    }

    function removeBaseToken(address token) external onlyAdmin {
        bool success = baseTokens.remove(token);
        require(success, "WooIntegrator: token not exist");
    }

    function setAdmin(address addr, bool flag) public onlyAdmin {
        isAdmin[addr] = flag;
    }

    function inCaseTokenGotStuck(address stuckToken) external onlyOwner {
        if (stuckToken == 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE) {
            TransferHelper.safeTransferETH(_msgSender(), address(this).balance);
        } else {
            uint256 amount = IERC20(stuckToken).balanceOf(address(this));
            TransferHelper.safeTransfer(stuckToken, _msgSender(), amount);
        }
    }
}
