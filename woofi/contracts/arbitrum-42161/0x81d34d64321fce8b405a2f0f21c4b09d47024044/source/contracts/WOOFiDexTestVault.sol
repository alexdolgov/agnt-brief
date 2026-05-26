// SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;

// OpenZeppelin Contracts
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {Pausable} from "@openzeppelin/contracts/security/Pausable.sol";

// Uniswap Periphery
import {TransferHelper} from "@uniswap/v3-periphery/contracts/libraries/TransferHelper.sol";

// Local Contracts
import {IWOOFiDexVault} from "./interfaces/IWOOFiDexVault.sol";

contract WOOFiDexTestVault is IWOOFiDexVault, Ownable, Pausable {
    /* ----- Constants ----- */

    address public constant NATIVE_PLACEHOLDER = 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE;

    /* ----- Variables ----- */

    address public token;
    uint64 public depositId;
    uint256 public baseOrderlyNativeFees;
    bool public orderlyFeeToggle;

    /* ----- Constructor ----- */

    constructor(address _token, uint256 _baseOrderlyNativeFees) {
        token = _token;
        baseOrderlyNativeFees = _baseOrderlyNativeFees;
    }

    /* ----- Functions ----- */

    function depositTo(address receiver, VaultDepositFE calldata data) external payable whenNotPaused {
        uint256 fees = orderlyNativeFees();
        require(msg.value >= fees, "WOOFiDexTestVault: orderlyNativeFees not enough");

        if (token == NATIVE_PLACEHOLDER) {
            uint256 tokenAmount = msg.value - fees;
            require(tokenAmount == uint256(data.tokenAmount), "WOOFiDexTestVault: data.tokenAmount not enough");
            TransferHelper.safeTransferETH(receiver, tokenAmount);
        } else {
            TransferHelper.safeTransferFrom(token, _msgSender(), receiver, data.tokenAmount);
        }
        TransferHelper.safeTransferETH(receiver, fees);
        _newDepositId();
        emit AccountDepositTo(data.accountId, receiver, depositId, data.tokenHash, data.tokenAmount);
    }

    function orderlyNativeFees() public view returns (uint256) {
        return orderlyFeeToggle ? baseOrderlyNativeFees : 0;
    }

    function _newDepositId() internal returns (uint64) {
        return ++depositId;
    }

    function setBaseOrderlyNativeFees(uint256 _baseOrderlyNativeFees) external onlyOwner {
        baseOrderlyNativeFees = _baseOrderlyNativeFees;
    }

    function setOrderlyFeeToggle(bool _orderlyFeeToggle) external onlyOwner {
        orderlyFeeToggle = _orderlyFeeToggle;
    }

    function inCaseTokenGotStuck(address _token) external onlyOwner {
        address msgSender = _msgSender();
        if (_token == NATIVE_PLACEHOLDER) {
            TransferHelper.safeTransferETH(msgSender, address(this).balance);
        } else {
            uint256 bal = IERC20(_token).balanceOf(address(this));
            TransferHelper.safeTransfer(_token, msgSender, bal);
        }
    }
}
