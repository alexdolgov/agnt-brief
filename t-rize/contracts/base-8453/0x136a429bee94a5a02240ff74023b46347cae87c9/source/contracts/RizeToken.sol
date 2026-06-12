// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {ERC20FlashMint} from "@openzeppelin/contracts/token/ERC20/extensions/ERC20FlashMint.sol";
import {ERC20Permit} from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";
import {ERC20Capped} from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Capped.sol";
import {EIP3009} from "./EIP3009.sol";
import {AccessRestricted, IAccessList} from "./configuration/AccessRestricted.sol";

/**
 * @title Wrapped Rize Token
 * @author Michael Duchesne (michael.duchesne@t-rize.io)
 * @notice
 *
 * This is the ERC20 RIZE Token on non-native chains
 *
 */
contract RizeToken is
    ERC20FlashMint,
    ERC20Permit,
    ERC20Capped,
    EIP3009,
    AccessRestricted
{
    uint256 private _feesBps;

    event FlashloanFeesUpdated(uint256 newValue);
    error FeeTooBig(uint256 fee);
    error TransferFailed(address from, uint256 amount);

    constructor(
        address accessList
    )
        ERC20("RIZE", "RIZE")
        ERC20FlashMint()
        ERC20Permit("RIZE")
        ERC20Capped(5_000_000_000 * 10 ** decimals())
        AccessRestricted(accessList)
    {}

    function setFeesBps(uint256 feesBps) external onlyCommittee {
        if (feesBps > 10_000) {
            revert FeeTooBig(feesBps);
        }
        _feesBps = feesBps;
        emit FlashloanFeesUpdated(feesBps);
    }

    /**
     * @notice Execute a transfer with a signed authorization
     * @param from          Payer's address (Authorizer)
     * @param to            Payee's address
     * @param value         Amount to be transferred
     * @param validAfter    The time after which this is valid (unix time)
     * @param validBefore   The time before which this is valid (unix time)
     * @param nonce         Unique nonce
     * @param v             v of the signature
     * @param r             r of the signature
     * @param s             s of the signature
     */
    function transferWithAuthorization(
        address from,
        address to,
        uint256 value,
        uint256 validAfter,
        uint256 validBefore,
        bytes32 nonce,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external {
        _transferWithAuthorization(
            from,
            to,
            value,
            validAfter,
            validBefore,
            nonce,
            v,
            r,
            s
        );
    }

    /**
     * @notice Receive a transfer with a signed authorization from the payer
     * @dev This has an additional check to ensure that the payee's address matches
     * the caller of this function to prevent front-running attacks. (See security
     * considerations)
     * @param from          Payer's address (Authorizer)
     * @param to            Payee's address
     * @param value         Amount to be transferred
     * @param validAfter    The time after which this is valid (unix time)
     * @param validBefore   The time before which this is valid (unix time)
     * @param nonce         Unique nonce
     * @param v             v of the signature
     * @param r             r of the signature
     * @param s             s of the signature
     */
    function receiveWithAuthorization(
        address from,
        address to,
        uint256 value,
        uint256 validAfter,
        uint256 validBefore,
        bytes32 nonce,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external {
        _receiveWithAuthorization(
            from,
            to,
            value,
            validAfter,
            validBefore,
            nonce,
            v,
            r,
            s
        );
    }

    /**
     * @notice Attempt to cancel an authorization
     * @param authorizer    Authorizer's address
     * @param nonce         Nonce of the authorization
     * @param v             v of the signature
     * @param r             r of the signature
     * @param s             s of the signature
     */
    function cancelAuthorization(
        address authorizer,
        bytes32 nonce,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external {
        _cancelAuthorization(authorizer, nonce, v, r, s);
    }

    function mint(uint256 amount) public onlyBridge {
        _mint(msg.sender, amount);
    }

    function burn(uint256 amount) public onlyBridge {
        _burn(msg.sender, amount);
    }

    function maxFlashLoan(
        address token
    ) public view virtual override returns (uint256) {
        return token == address(this) ? type(uint256).max - totalSupply() : 0;
    }

    function _authorizedTransfer(
        address from,
        address to,
        uint256 amount
    ) internal virtual override {
        _transfer(from, to, amount);
    }

    function _update(
        address from,
        address to,
        uint256 value
    ) internal virtual override(ERC20Capped, ERC20) {
        ERC20Capped._update(from, to, value);
    }

    function _flashFee(
        address token,
        uint256 value
    ) internal view virtual override returns (uint256) {
        // silence warning about unused variable without the addition of bytecode.
        token;
        return (value * _feesBps) / 10_000;
    }

    function _flashFeeReceiver()
        internal
        view
        virtual
        override
        returns (address)
    {
        IAccessList accessList = IAccessList(getAccessList());
        return accessList.getTreasury();
    }
}
