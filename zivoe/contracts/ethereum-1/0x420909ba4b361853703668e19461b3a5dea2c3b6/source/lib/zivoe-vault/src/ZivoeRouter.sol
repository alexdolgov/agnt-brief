// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.25;

import {IERC20} from "../lib/openzeppelin-contracts/contracts/token/ERC20/IERC20.sol";
import {ReentrancyGuard} from "../lib/openzeppelin-contracts/contracts/utils/ReentrancyGuard.sol";
import {SafeERC20} from "../lib/openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol";
import {IZivoeTranches} from "./IZivoeTranches.sol";
import {IZivoeVault} from "./IZivoeVault.sol";

interface IERC20Permit {
    function permit(address owner, address spender, uint256 value, uint256 deadline, uint8 v, bytes32 r, bytes32 s)
        external;
}

/// @title ZivoeRouter - A router for ZivoeVault interactions
/// @notice This contract facilitates batched transactions for deposits and withdrawals to ZivoeVault
contract ZivoeRouter is ReentrancyGuard {
    using SafeERC20 for IERC20;

    IERC20 public immutable zSTT;
    IERC20 public immutable ZVE;
    IZivoeTranches public immutable ZVT;
    IZivoeVault public immutable VLT;

    /// @notice Constructor to initialize the router
    /// @param _zSTT The zSTT token address
    /// @param _ZVE The ZVE token address
    /// @param _ZVT The ZivoeTranches contract address
    /// @param _VLT The ZivoeVault contract address
    constructor(IERC20 _zSTT, IERC20 _ZVE, IZivoeTranches _ZVT, IZivoeVault _VLT) {
        zSTT = _zSTT;
        ZVE = _ZVE;
        ZVT = _ZVT;
        VLT = _VLT;
    }

    /// @notice Allows a user to deposit USDC, mint zSTT, deposit into ZivoeVault, and receive vault tokens.
    /// @param amount The amount of USDC to deposit.
    function depositVault(address stablecoin, uint256 amount) external nonReentrant {
        require(amount > 0, "Amount must be greater than zero");

        IERC20 USD = IERC20(stablecoin);

        // Pull USDC, mint zSTT
        USD.safeTransferFrom(msg.sender, address(this), amount);
        USD.safeIncreaseAllowance(address(ZVT), amount);
        ZVT.depositSenior(amount, stablecoin);

        // Transfer ZVE if minted during depositSenior()
        uint256 balZVE = ZVE.balanceOf(address(this));
        if (balZVE > 0) {
            ZVE.safeTransfer(msg.sender, balZVE);
        }

        // Deposit zSTT to vault (receiver is mgs.sender)
        uint256 zSTT_bal = zSTT.balanceOf(address(this));
        zSTT.safeIncreaseAllowance(address(VLT), zSTT_bal);
        VLT.deposit(zSTT_bal, address(msg.sender));
    }

    /// @notice Allows a user to deposit USDC using a permit, mint zSTT, deposit into ZivoeVault, and receive vault tokens.
    /// @param owner The owner of the assets to be deposited.
    /// @param amount The amount of USDC to deposit.
    /// @param deadline The permit signature expiration time.
    /// @param v The recovery byte of the permit signature.
    /// @param r The first 32 bytes of the permit signature.
    /// @param s The second 32 bytes of the permit signature.
    function depositWithPermit(address owner, address stablecoin, uint256 amount, uint256 deadline, uint8 v, bytes32 r, bytes32 s)
        external
        nonReentrant
    {
        require(amount > 0, "Amount must be greater than zero");

        IERC20 USD = IERC20(stablecoin);

        // Use permit to approve USDC
        IERC20Permit(stablecoin).permit(owner, address(this), amount, deadline, v, r, s);

        // Continue with deposit logic
        USD.safeTransferFrom(owner, address(this), amount);
        USD.safeIncreaseAllowance(address(ZVT), amount);
        ZVT.depositSenior(amount, stablecoin);

        // Transfer ZVE if minted during depositSenior()
        uint256 balZVE = ZVE.balanceOf(address(this));
        if (balZVE > 0) {
            ZVE.safeTransfer(owner, balZVE);
        }

        // Deposit zSTT to vault (receiver is owner)
        uint256 zSTT_bal = zSTT.balanceOf(address(this));
        zSTT.safeIncreaseAllowance(address(VLT), zSTT_bal);
        VLT.deposit(zSTT_bal, owner);
    }
}
