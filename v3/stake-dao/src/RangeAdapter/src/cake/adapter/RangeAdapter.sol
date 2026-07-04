// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import "src/base/interfaces/IAdapter.sol";
import "src/base/interfaces/IRangeVault.sol";

import {Clone} from "solady/utils/Clone.sol";
import {ERC20} from "solady/tokens/ERC20.sol";
import {SafeTransferLib} from "solady/utils/SafeTransferLib.sol";

/// @notice Adapter for the DEdge strategy.
contract RangeAdapter is Clone {
    /// @notice Address of the vault.
    function vault() public pure returns (address) {
        return _getArgAddress(0);
    }

    /// @notice Address of the staking token.
    function stakingToken() public pure returns (address) {
        return _getArgAddress(20);
    }

    /// @notice Address of token0 required to mint LP tokens.
    function token0() public pure returns (address) {
        return _getArgAddress(40);
    }

    /// @notice Address of token1 required to mint LP tokens.
    function token1() public pure returns (address) {
        return _getArgAddress(60);
    }

    /// Throwed when the caller is not the vault.
    error NOT_VAULT();

    modifier onlyVault() {
        if (msg.sender != vault()) revert NOT_VAULT();
        _;
    }

    constructor() {
        SafeTransferLib.safeApproveWithRetry(token0(), stakingToken(), type(uint256).max);
        SafeTransferLib.safeApproveWithRetry(token1(), stakingToken(), type(uint256).max);
    }

    /// @notice Mint staking token and return them to the vault in order to deposit them into the strategy.
    /// @param _amount0 Amount of token0 to deposit.
    /// @param _amount1 Amount of token1 to deposit.
    /// @param _user Address to receive the receipt tokens.
    function deposit(uint256 _amount0, uint256 _amount1, address _user, bytes calldata)
        external
        onlyVault
        returns (uint256 mintAmount)
    {
        (uint256 amount0Current, uint256 amount1Current) = IRangeVault(stakingToken()).getUnderlyingBalances();
        uint256 totalSupply_ = IRangeVault(stakingToken()).totalSupply();

        if (amount0Current == 0 && amount1Current > 0) {
            mintAmount = _amount1 * totalSupply_ / amount1Current;
        } else if (amount1Current == 0 && amount0Current > 0) {
            mintAmount = _amount0 * totalSupply_ / amount0Current;
        } else {
            uint256 amount0Mint = _amount0 * totalSupply_ / amount0Current;
            uint256 amount1Mint = _amount1 * totalSupply_ / amount1Current;
            mintAmount = amount0Mint <= amount1Mint ? amount0Mint : amount1Mint;
        }

        SafeTransferLib.safeTransferFrom(token0(), vault(), address(this), _amount0);
        SafeTransferLib.safeTransferFrom(token1(), vault(), address(this), _amount1);

        IRangeVault(vault()).mint(mintAmount);

        SafeTransferLib.safeTransfer(stakingToken(), vault(), mintAmount);

        if (ERC20(token0()).balanceOf(address(this)) > 0) {
            SafeTransferLib.safeTransfer(token0(), _user, ERC20(token0()).balanceOf(address(this)));
        }
        if (ERC20(token1()).balanceOf(address(this)) > 0) {
            SafeTransferLib.safeTransfer(token1(), _user, ERC20(token1()).balanceOf(address(this)));
        }
    }

    /// @notice Withdraw staking token and burn them for the underlying tokens.
    /// @param _share Amount of staking token to withdraw.
    /// @param _user Address to receive the underlying tokens.
    function withdraw(uint256 _share, address _user, bytes calldata)
        external
        onlyVault
        returns (uint256 _amount0, uint256 _amount1)
    {
        SafeTransferLib.safeTransferFrom(stakingToken(), vault(), address(this), _share);

        (_amount0, _amount1) = IRangeVault(vault()).burn(_share);

        SafeTransferLib.safeTransfer(token0(), _user, _amount0);
        SafeTransferLib.safeTransfer(token1(), _user, _amount1);

        if (ERC20(stakingToken()).balanceOf(address(this)) > 0) {
            SafeTransferLib.safeTransfer(stakingToken(), _user, ERC20(stakingToken()).balanceOf(address(this)));
        }
    }
}
