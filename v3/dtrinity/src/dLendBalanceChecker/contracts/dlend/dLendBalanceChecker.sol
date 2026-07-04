// SPDX-License-Identifier: BUSL-1.1
/* ———————————————————————————————————————————————————————————————————————————————— *
 *    _____     ______   ______     __     __   __     __     ______   __  __       *
 *   /\  __-.  /\__  _\ /\  == \   /\ \   /\ "-.\ \   /\ \   /\__  _\ /\ \_\ \      *
 *   \ \ \/\ \ \/_/\ \/ \ \  __<   \ \ \  \ \ \-.  \  \ \ \  \/_/\ \/ \ \____ \     *
 *    \ \____-    \ \_\  \ \_\ \_\  \ \_\  \ \_\\"\_\  \ \_\    \ \_\  \/\_____\    *
 *     \/____/     \/_/   \/_/ /_/   \/_/   \/_/ \/_/   \/_/     \/_/   \/_____/    *
 *                                                                                  *
 * ————————————————————————————————— dtrinity.org ————————————————————————————————— *
 *                                                                                  *
 *                                         ▲                                        *
 *                                        ▲ ▲                                       *
 *                                                                                  *
 * ———————————————————————————————————————————————————————————————————————————————— *
 * dTRINITY Protocol: https://github.com/dtrinity                                   *
 * ———————————————————————————————————————————————————————————————————————————————— */

pragma solidity ^0.8.20;

import "./interfaces/IBalanceChecker.sol";
import "../lending/core/interfaces/IAToken.sol";
import "../lending/core/interfaces/IVariableDebtToken.sol";
import "../lending/core/interfaces/IPool.sol";
import "../lending/core/protocol/libraries/types/DataTypes.sol";
import "@openzeppelin/contracts-5/access/AccessControl.sol";
import "../lending/core/dependencies/openzeppelin/contracts/IERC20.sol";

/// @notice Error thrown when trying to get balances for an external token that isn't mapped to a dToken
error ExternalTokenNotMapped(address externalToken);

/**
 * @title dLendBalanceChecker
 * @author dTrinity
 * @notice Contract for checking effective balances of dLEND tokens
 * @dev The effective balance is the portion of a user's position which is not borrowed against,
 *      calculated as: userBalance * (totalSupply - totalDebt) / totalSupply
 */
contract dLendBalanceChecker is IBalanceChecker, AccessControl {
    /// @notice The Pool contract address
    IPool public immutable POOL;

    /// @notice Mapping from external token to its corresponding dToken
    mapping(address => address) public externalSourceToDToken;

    // No events needed - this is a view function

    /**
     * @param pool The address of the Pool contract
     */
    constructor(address pool) {
        require(pool != address(0), "INVALID_POOL_ADDRESS");
        POOL = IPool(pool);
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
    }

    /**
     * @notice Maps an external token to its corresponding dToken
     * @param externalToken The address of the external token
     * @param dToken The address of the corresponding dToken
     */
    function mapExternalSource(
        address externalToken,
        address dToken
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        require(dToken != address(0), "INVALID_DTOKEN_ADDRESS");
        externalSourceToDToken[externalToken] = dToken;
    }

    /**
     * @inheritdoc IBalanceChecker
     */
    function tokenBalances(
        address token,
        address[] memory addresses
    ) external view override returns (uint256[] memory result) {
        result = new uint256[](addresses.length);

        address dToken = token;
        address debtToken;
        address balanceToken;
        address underlying;

        // Check if the passed in token is a mapped external token
        address mappedDToken = externalSourceToDToken[token];
        if (mappedDToken != address(0)) {
            dToken = mappedDToken;
        }

        // If the passed in token is not a dToken and we haven't mapped to it, return zero balances
        if (dToken == address(0)) {
            return result;
        }

        // At this point either token is a valid dToken or we have mapped to the dToken
        try IAToken(dToken).UNDERLYING_ASSET_ADDRESS() returns (
            address _underlying
        ) {
            underlying = _underlying;
            DataTypes.ReserveData memory data = POOL.getReserveData(underlying);
            debtToken = data.variableDebtTokenAddress;
            balanceToken = dToken;
        } catch {
            // If we haven't identified a valid token by now, return zero balances
            return result;
        }

        // Get total supply from aToken
        uint256 totalSupply = IAToken(dToken).totalSupply();
        if (totalSupply == 0) return result;

        // Get total debt from variable debt token
        uint256 totalDebt = IVariableDebtToken(debtToken).scaledTotalSupply();

        // In case we are fully maxed out or have accrued bad debt
        if (totalDebt >= totalSupply) return result;

        // Calculate ratio of available supply (not borrowed)
        uint256 ratio = ((totalSupply - totalDebt) * 1e18) / totalSupply;

        // Calculate effective balance for each address using the original token
        for (uint256 i = 0; i < addresses.length; i++) {
            uint256 balance = IERC20(token).balanceOf(addresses[i]);

            // Apply ratio to get effective balance
            result[i] = (balance * ratio) / 1e18;
        }
    }

    /**
     * @inheritdoc IBalanceChecker
     */
    function batchTokenBalances(
        address[] memory sources,
        address[] memory addresses
    ) external view override returns (uint256[] memory result) {
        require(sources.length > 0, "NO_SOURCES_PROVIDED");

        result = new uint256[](addresses.length);

        // Process each source token
        for (uint256 i = 0; i < sources.length; i++) {
            address source = sources[i];
            address aToken;
            address balanceToken;
            bool isExternalToken = false;

            address debtToken;

            // Skip underlying tokens (ZeroAddress)
            if (source == address(0)) {
                continue;
            }

            // Check if this is an aToken/dToken
            address underlying;
            bool isValidAToken;

            try IAToken(source).UNDERLYING_ASSET_ADDRESS() returns (
                address _underlying
            ) {
                underlying = _underlying;
                isValidAToken = true;
            } catch {
                isValidAToken = false;
            }

            if (isValidAToken) {
                try POOL.getReserveData(underlying) returns (
                    DataTypes.ReserveData memory data
                ) {
                    if (data.aTokenAddress == source) {
                        debtToken = data.variableDebtTokenAddress;
                        aToken = source;
                        balanceToken = aToken;
                    }
                } catch {}
            }

            // Then check if this is a mapped external token
            if (aToken == address(0)) {
                address mappedDToken = externalSourceToDToken[source];
                if (mappedDToken != address(0)) {
                    address mappedUnderlying;
                    bool isValidMappedToken;

                    try
                        IAToken(mappedDToken).UNDERLYING_ASSET_ADDRESS()
                    returns (address _underlying) {
                        mappedUnderlying = _underlying;
                        isValidMappedToken = true;
                    } catch {
                        isValidMappedToken = false;
                    }

                    if (isValidMappedToken) {
                        try POOL.getReserveData(mappedUnderlying) returns (
                            DataTypes.ReserveData memory data
                        ) {
                            if (data.aTokenAddress == mappedDToken) {
                                debtToken = data.variableDebtTokenAddress;
                                aToken = mappedDToken;
                                balanceToken = source;
                                isExternalToken = true;
                            }
                        } catch {}
                    }
                }
            }

            // Skip this source if we haven't identified it as valid
            if (aToken == address(0)) {
                continue;
            }

            // Calculate ratio based on aToken's total supply and debt
            uint256 totalSupply = IAToken(aToken).totalSupply();
            if (totalSupply == 0) continue;

            uint256 totalDebt;
            if (isExternalToken) {
                // For external tokens, get the debt token from the reserve data
                totalDebt = IVariableDebtToken(
                    POOL
                        .getReserveData(
                            IAToken(aToken).UNDERLYING_ASSET_ADDRESS()
                        )
                        .variableDebtTokenAddress
                ).scaledTotalSupply();
            } else {
                totalDebt = IVariableDebtToken(debtToken).scaledTotalSupply();
            }
            if (totalDebt >= totalSupply) continue;

            uint256 ratio = ((totalSupply - totalDebt) * 1e18) / totalSupply;

            // Calculate balances for each address
            for (uint256 j = 0; j < addresses.length; j++) {
                uint256 balance;
                if (isExternalToken) {
                    // For external tokens, use the external token balance but apply aToken's ratio
                    balance = IERC20(source).balanceOf(addresses[j]);
                } else {
                    // For direct underlying or aToken, use the aToken balance
                    balance = IAToken(aToken).balanceOf(addresses[j]);
                }
                // Apply ratio to get effective balance
                result[j] += (balance * ratio) / 1e18;
            }
        }
    }
}
