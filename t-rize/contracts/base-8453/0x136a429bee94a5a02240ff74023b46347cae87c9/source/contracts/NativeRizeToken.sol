// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {ERC20FlashMint} from "@openzeppelin/contracts/token/ERC20/extensions/ERC20FlashMint.sol";
import {ERC20Permit} from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";
import {ERC20Capped} from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Capped.sol";
import {EIP3009} from "./EIP3009.sol";
import {IWETH9} from "./interfaces/IWETH9.sol";
import {INativeMinter} from "./interfaces/INativeMinter.sol";
import {AccessRestricted, IAccessList} from "./configuration/AccessRestricted.sol";
import {RizeToken} from "./RizeToken.sol";

/**
 * @title Native Rize Token
 * @author Michael Duchesne (michael.duchesne@t-rize.io)
 * @notice
 *
 * Rize token is the WETH9 equivalent on Rizenet.
 *
 * It will be bridged as an ERC20 on Rizenet and unwrapped to get the gas token.
 *
 */
contract NativeRizeToken is RizeToken, IWETH9 {
    uint256 private _feesBps;
    // solhint-disable-next-line
    address private _NATIVE_MINTER_PRECOMPILE =
        0x0200000000000000000000000000000000000001;

    event Deposit(address indexed dst, uint256 wad);
    event Withdrawal(address indexed src, uint256 wad);

    constructor(address accessList) RizeToken(accessList) {}

    receive() external payable {
        deposit();
    }

    function deposit() public payable {
        _mint(msg.sender, msg.value);
        emit Deposit(msg.sender, msg.value);
    }

    function withdraw(uint256 wad) public {
        _withdraw(wad, msg.sender);
    }

    function _withdraw(uint256 wad, address from) internal {
        _burn(from, wad);
        uint256 balance = address(this).balance;
        if (balance < wad) {
            INativeMinter minter = INativeMinter(_NATIVE_MINTER_PRECOMPILE);
            minter.mintNativeCoin(from, wad);
        } else {
            (bool success, ) = payable(from).call{value: wad}("");
            if (!success) {
                revert TransferFailed(from, wad);
            }
        }

        emit Withdrawal(from, wad);
    }
}
