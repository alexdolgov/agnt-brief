// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import "../Interfaces/IERC20Decimals.sol";

library SafetyTransfer {
    error EthUnsupportedError();
    error NonAlignedTokenUnits(uint8 tokenDecimals, uint256 alignmentFactor);

    /// @notice Converts an amount from protocol units (18 decimals) to token-specific decimal units
    /// @dev The protocol standardizes on 18 decimals internally, but needs to handle tokens with different decimals
    /// @param _token The ERC20 token address to check decimals for
    /// @param _amountX18 The amount in protocol units (18 decimals)
    /// @return The amount converted to the token's decimal precision
    /// @custom:throws EthUnsupportedError if _token is address(0)
    function decimalsCorrection(address _token, uint256 _amountX18) internal view returns (uint256) {
        if (_token == address(0)) {
            revert EthUnsupportedError();
        }
        if (_amountX18 == 0) {
            return 0;
        }
        uint8 decimals = IERC20Decimals(_token).decimals();
        if (decimals < 18) {
            uint256 divisor = 10 ** (18 - decimals);
            /// @dev Floor division, possibly zero
            return _amountX18 / divisor;
        } else if (decimals > 18) {
            uint256 multiplier = 10 ** (decimals - 18);
            return _amountX18 * multiplier;
        }
        return _amountX18;
    }

    /// @notice Reverts if the provided 18-decimal amount is not integrally representable in the token's decimals
    /// @dev Enforce only on inbound user-provided adds to prevent accounting drift for non-18 decimals
    function requireAlignedAmount(address _token, uint256 _amountX18) internal view {
        if (_amountX18 == 0) return;
        if (_token == address(0)) {
            revert EthUnsupportedError();
        }
        uint8 decimals = IERC20Decimals(_token).decimals();
        if (decimals < 18) {
            uint256 divisor = 10 ** (18 - decimals);
            if (_amountX18 % divisor != 0) {
                revert NonAlignedTokenUnits(decimals, divisor);
            }
        }
    }

    /// @notice Converts a token amount from its native decimals to protocol units (18 decimals)
    /// @dev This is a view function that can be used in tests and frontend to get valid 18-decimal amounts
    /// @param _token The ERC20 token address to check decimals for
    /// @param _amountInTokenDecimals The amount in the token's native decimal precision
    /// @return amountX18 The amount converted to protocol units (18 decimals)
    function getAlignedTokenAmount(
        address _token,
        uint256 _amountInTokenDecimals
    ) internal view returns (uint256 amountX18) {
        if (_token == address(0)) {
            revert EthUnsupportedError();
        }

        uint8 decimals = IERC20Decimals(_token).decimals();

        if (decimals == 18) {
            return _amountInTokenDecimals;
        } else if (decimals < 18) {
            uint256 multiplier = 10 ** (18 - decimals);
            return _amountInTokenDecimals * multiplier;
        } else {
            uint256 divisor = 10 ** (decimals - 18);
            return _amountInTokenDecimals / divisor;
        }
    }
}
