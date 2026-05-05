// ============================================================
// FILE: lib/forge-std/src/interfaces/IERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity >=0.6.2;

/// @dev Interface of the ERC20 standard as defined in the EIP.
/// @dev This includes the optional name, symbol, and decimals metadata.
interface IERC20 {
    /// @dev Emitted when `value` tokens are moved from one account (`from`) to another (`to`).
    event Transfer(address indexed from, address indexed to, uint256 value);

    /// @dev Emitted when the allowance of a `spender` for an `owner` is set, where `value`
    /// is the new allowance.
    event Approval(address indexed owner, address indexed spender, uint256 value);

    /// @notice Returns the amount of tokens in existence.
    function totalSupply() external view returns (uint256);

    /// @notice Returns the amount of tokens owned by `account`.
    function balanceOf(address account) external view returns (uint256);

    /// @notice Moves `amount` tokens from the caller's account to `to`.
    function transfer(address to, uint256 amount) external returns (bool);

    /// @notice Returns the remaining number of tokens that `spender` is allowed
    /// to spend on behalf of `owner`
    function allowance(address owner, address spender) external view returns (uint256);

    /// @notice Sets `amount` as the allowance of `spender` over the caller's tokens.
    /// @dev Be aware of front-running risks: https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
    function approve(address spender, uint256 amount) external returns (bool);

    /// @notice Moves `amount` tokens from `from` to `to` using the allowance mechanism.
    /// `amount` is then deducted from the caller's allowance.
    function transferFrom(address from, address to, uint256 amount) external returns (bool);

    /// @notice Returns the name of the token.
    function name() external view returns (string memory);

    /// @notice Returns the symbol of the token.
    function symbol() external view returns (string memory);

    /// @notice Returns the decimals places of the token.
    function decimals() external view returns (uint8);
}

// ============================================================
// FILE: script/scripts/infra/SwapHelper.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity 0.8.19;

import "forge-std/interfaces/IERC20.sol";

interface IZkBob {
    function fillMigrationOrder(uint256 _amount) external;
}

interface IUniswapPool {
    function swap(address recipient, bool zeroForOne, int256 amountSpecified, uint160 sqrtPriceLimitX96, bytes calldata data) external payable returns (int256 amount0, int256 amount1);
}

contract SwapHelper {
    address constant usdce = address(0x2791Bca1f2de4661ED88A30C99A7a9449Aa84174);
    address constant usdc = address(0x3c499c542cEF5E3811e1192ce70d8cC03d5c3359);
    address constant pool = address(0xD36ec33c8bed5a9F7B6630855f1533455b98a418);
    address constant zkBob = address(0x72e6B59D4a90ab232e55D4BB7ed2dD17494D62fB);

    constructor() {
        IERC20(usdc).approve(zkBob, type(uint256).max);
    }

    function swap(uint256 amount, uint256 maxFee) external {
        // USDC.e -> exact USDC
        IUniswapPool(pool).swap(address(this), true, -int256(amount), 4295128740, abi.encode(maxFee));
    }

    function uniswapV3SwapCallback(int256 amount0, int256 amount1, bytes calldata data) external {
        require(msg.sender == pool);
        require(amount0 > 0 && amount1 < 0, "amounts");

        (uint256 maxFee) = abi.decode(data, (uint256));

        // USDC -> USDC.e
        uint256 amount = uint256(-amount1);
        IZkBob(zkBob).fillMigrationOrder(amount);

        if (amount < uint256(amount0)) {
            require(amount + maxFee >= uint256(amount0), "slippage");
            IERC20(usdce).transferFrom(tx.origin, address(this), uint256(amount0) - amount);
        } else if (amount > uint256(amount0)) {
            IERC20(usdce).transfer(tx.origin, amount - uint256(amount0));
        }
        IERC20(usdce).transfer(pool, uint256(amount0));
    }
}
