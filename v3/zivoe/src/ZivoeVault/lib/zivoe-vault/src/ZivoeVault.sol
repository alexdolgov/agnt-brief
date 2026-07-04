// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.25;

import {ERC4626} from "../lib/openzeppelin-contracts/contracts/token/ERC20/extensions/ERC4626.sol";
import {ERC20} from "../lib/openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";
import {IERC20} from "../lib/openzeppelin-contracts/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "../lib/openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol";
import {Math} from "../lib/openzeppelin-contracts/contracts/utils/math/Math.sol";
import {IZivoeRewards} from "./IZivoeRewards.sol";
import {IZivoeTranches} from "./IZivoeTranches.sol";
import {IZivoeGlobals} from "./IZivoeGlobals.sol";

/// @title Zivoe Vault - An ERC4626 Tokenized Vault
/// @notice Implements an ERC4626 vault using zSTT as the underlying asset and auto-stakes into stSTT
contract ZivoeVault is ERC4626 {
    using SafeERC20 for IERC20;
    using Math for uint256;

    IERC20 public immutable zSTT;
    IZivoeRewards public immutable stSTT;
    IZivoeTranches public immutable ZVT;
    IZivoeGlobals public immutable GBL;

    address public immutable DAO = 0xB65a66621D7dE34afec9b9AC0755133051550dD7;

    /// @notice Constructor to initialize the ERC4626 vault
    /// @param _zSTT The address of the zSTT token (underlying asset)
    /// @param _stSTT The address of the ZivoeRewards staking contract
    /// @param _ZVT The address of the ZivoeTranches contract
    /// @param _GBL The address of the ZivoeGlobals contract
    constructor(
        IERC20 _zSTT, 
        IZivoeRewards _stSTT, 
        IZivoeTranches _ZVT,
        IZivoeGlobals _GBL
    ) ERC4626(_zSTT) ERC20("Zivoe Vault", "zVLT") {
        zSTT = _zSTT;
        stSTT = _stSTT;
        ZVT = _ZVT;
        GBL = _GBL;
    }

    /// @notice Overrides totalAssets(), returns staked amount of zSTT (represented by stSTT)
    function totalAssets() public view override returns (uint256) {
        return stSTT.balanceOf(address(this));
    }

    /// @notice Overrides _deposit(), handles staking deposited zSTT (to receive stSTT)
    function _deposit(address caller, address receiver, uint256 assets, uint256 shares) internal override {
        zSTT.safeTransferFrom(caller, address(this), assets);
        _mint(receiver, shares);
        zSTT.safeIncreaseAllowance(address(stSTT), assets);
        stSTT.stake(assets);
        emit Deposit(caller, receiver, assets, shares);
    }

    /// @notice Overrides _withdraw(), handles unstaking stSTT (to receive zSTT)
    function _withdraw(address caller, address receiver, address owner, uint256 assets, uint256 shares)
        internal
        override
    {
        if (caller != owner) _spendAllowance(owner, caller, shares);
        _burn(owner, shares);
        stSTT.withdraw(assets);
        zSTT.safeTransfer(receiver, assets);
        emit Withdraw(caller, receiver, owner, assets, shares);
    }

    /// @notice Claims rewards from stSTT, mints zSTT with USDC, and stakes the zSTT
    function compound(address stablecoin) external {
        stSTT.getRewards();
        IERC20 USD = IERC20(stablecoin);
        uint256 bal = USD.balanceOf(address(this));
        if (bal > 0) {
            USD.safeIncreaseAllowance(address(ZVT), bal);
            ZVT.depositSenior(bal, stablecoin);
            uint256 bal2 = zSTT.balanceOf(address(this));
            zSTT.safeIncreaseAllowance(address(stSTT), bal2);
            stSTT.stake(bal2);
        }
    }

    /// @notice Returns any external tokens to the DAO.
    function passThrough(IERC20 asset) external {
        require(!GBL.stablecoinWhitelist(address(asset)));
        asset.safeTransfer(DAO, asset.balanceOf(address(this)));
    }
}
