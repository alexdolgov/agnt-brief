// SPDX-License-Identifier: AGPL-3.0
pragma solidity 0.8.25;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import {ILocker} from "./interfaces/ILocker.sol";
import {ILiquidLocker} from "./interfaces/ILiquidLocker.sol";

// @todo - enable redeeming afaura
contract LiquidLocker is ILiquidLocker, ERC20 {

    using SafeERC20 for ERC20;

    address public immutable locker;

    ERC20 public immutable asset;

    // ============================================================================================
    // Constructor
    // ============================================================================================

    /// @param _asset The address of the underlying asset, that will be locked in the locker
    /// @param _locker The address of the locker
    /// @param name_ The name of the token
    /// @param symbol_ The symbol of the token
    constructor(address _asset, address _locker, string memory name_, string memory symbol_) ERC20(name_, symbol_) {
        if (ILocker(_locker).asset() != _asset) revert InvalidAddress();

        asset = ERC20(_asset);
        locker = _locker;
    }

    // ============================================================================================
    // Minter
    // ============================================================================================

    /// @notice Mint the token to the receiver
    /// @param _amount The amount of the token to mint. Caller must approve `_amount` of `asset` to this contract
    ///          before calling this function. If `_amount` is `type(uint256).max`, transfer the entire user balance
    /// @param _receiver The address of the _receiver of the minted tokens
    /// @return The amount of the minted tokens
    function mint(uint256 _amount, address _receiver) external returns (uint256) {
        if (_receiver == address(0) || _receiver == address(this)) revert InvalidAddress();

        if (_amount == type(uint256).max) _amount = asset.balanceOf(msg.sender);
        if (_amount == 0) revert InvalidAmount();

        _mint(_receiver, _amount);
        asset.safeTransferFrom(msg.sender, locker, _amount);

        return _amount;
    }
}