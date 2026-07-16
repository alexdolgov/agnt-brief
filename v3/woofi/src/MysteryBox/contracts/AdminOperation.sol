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
* Copyright (c) 2023 WOO Network
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
import {Pausable} from "@openzeppelin/contracts/security/Pausable.sol";

import {TransferHelper} from "@uniswap/v3-periphery/contracts/libraries/TransferHelper.sol";

abstract contract AdminOperation is Ownable, Pausable {
    /* ----- Events ----- */

    event AdminUpdated(address indexed account, bool flag);

    /* ----- Constants ----- */

    address public constant NATIVE_PLACEHOLDER = 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE;

    /* ----- Variables ----- */

    mapping(address => bool) public isAdmin;

    /* ----- Modifiers ----- */

    modifier onlyAdmin() {
        require(_msgSender() == owner() || isAdmin[_msgSender()], "AdminOperation: not admin");
        _;
    }

    /* ----- Functions ----- */

    function inCaseTokenGotStuck(address token) external virtual onlyOwner {
        if (token == NATIVE_PLACEHOLDER) {
            TransferHelper.safeTransferETH(_msgSender(), address(this).balance);
        } else {
            uint256 amount = IERC20(token).balanceOf(address(this));
            TransferHelper.safeTransfer(token, _msgSender(), amount);
        }
    }

    function setAdmin(address account, bool flag) external virtual onlyOwner {
        isAdmin[account] = flag;
        emit AdminUpdated(account, flag);
    }

    function pause() public virtual onlyAdmin {
        _pause();
    }

    function unpause() public virtual onlyAdmin {
        _unpause();
    }
}
