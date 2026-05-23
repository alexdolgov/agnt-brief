// SPDX-License-Identifier: MIT
pragma solidity 0.6.12;

import "@openzeppelin/contracts/token/ERC20/SafeERC20.sol";

import "../interface/IStakedDF.sol";

/**
 * @title dForce's Liquidity Swap Deposit Model
 * @author dForce
 */
contract sDFStrategy {
    using SafeERC20 for IERC20;

    /// @dev Address of StakedDF.
    IStakedDF internal immutable StakedDF_;

    /// @dev Emitted when deposit.
    event Deposit(address token, address target, uint256 amount);

    /// @dev Emitted when redeem.
    event Redeem(address token, address from, uint256 amount);

    /**
     * @notice Constructor for StakedDF deposit model contract.
     * @param _StakedDF StakedDF address.
     */
    constructor(IStakedDF _StakedDF) public {
        StakedDF_ = _StakedDF;
    }

    /**
     * @notice Initialize approval StakedDF.
     */
    function _initialize() internal virtual {
        IERC20(StakedDF_.DF()).safeApprove(address(StakedDF_), uint256(-1));
    }

    /**
     * @dev Deposit tokens to StakedDF.
     * @param _amount Deposit token amount.
     */
    function _deposit(uint256 _amount) internal virtual {
        emit Deposit(
            StakedDF_.DF(),
            address(StakedDF_),
            StakedDF_.stake(address(this), _amount)
        );
    }

    /**
     * @dev Redeem tokens from StakedDF.
     * @param _amount Redeem token(sDF) amount.
     */
    function _redeem(uint256 _amount) internal virtual {
        emit Redeem(
            StakedDF_.DF(),
            address(StakedDF_),
            StakedDF_.unstake(address(this), _amount)
        );
    }

    /**
     * @dev Redeem tokens from StakedDF.
     * @param _amount Redeem token(DF) amount.
     */
    function _redeemUnderlying(uint256 _amount) internal virtual {
        StakedDF_.unstakeUnderlying(address(this), _amount);
        emit Redeem(StakedDF_.DF(), address(StakedDF_), _amount);
    }

    /**
     * @dev Address of StakedDF.
     */
    function StakedDF() external view returns (IStakedDF) {
        return StakedDF_;
    }
}
