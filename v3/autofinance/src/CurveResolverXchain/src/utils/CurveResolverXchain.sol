// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2023 Tokemak Foundation. All rights reserved.

pragma solidity ^0.8.24;

import { Errors } from "src/utils/Errors.sol";
import { ICurveResolver } from "src/interfaces/utils/ICurveResolver.sol";
import { IPool } from "src/interfaces/external/curve/IPool.sol";

// solhint-disable max-line-length

/// @notice This resolver is used to resolve Curve pools on different chains than mainnet
/// @dev This resolver doesn't use CurveMetaRegistry as it's not available on other chains
/// @dev Here is the list of pools contracts that have been identified:
/// https://github.com/curvefi/stableswap-ng/blob/fd54b9a1a110d0e2e4f962583761d9e236b70967/contracts/main/CurveStableSwapNG.vy#L5
/// https://github.com/curvefi/curve-crypto-contract/blob/d7d04cd9ae038970e40be850df99de8c1ff7241b/contracts/two/CurveCryptoSwap2.vy#L4
/// https://github.com/curvefi/tricrypto-ng/blob/584591e6613cb6cdb46e4659488a8cccdfff69ad/contracts/main/CurveTricryptoOptimizedWETH.vy#L5
/// https://github.com/curvefi/curve-stablecoin/blob/af14c214320607bdfb458bf892233e92dedf87f7/contracts/Stableswap.vy#L4

// solhint-enable max-line-length

contract CurveResolverXchain is ICurveResolver {
    error CouldNotResolve(address poolAddress);

    /// @inheritdoc ICurveResolver
    /// @notice Attempts to get the pool tokens by trying the following:
    /// 1. coins(uint256) - iterates through indices until it hits an empty/failed response
    /// 2. coins(int128) - fallback for older pools that use int128 indices
    /// 3. Determines pool type by checking for gamma() function (_isStableSwap())
    function resolve(
        address poolAddress
    ) public view returns (address[8] memory tokens, uint256 numTokens, bool isStableSwap) {
        Errors.verifyNotZero(poolAddress, "poolAddress");

        bytes4 coinsSelector = IPool.coins.selector;
        // We have to try other means to get the information
        do {
            //slither-disable-start low-level-calls,missing-zero-check
            (bool success, bytes memory retData) =
                poolAddress.staticcall(abi.encodeWithSelector(coinsSelector, numTokens));
            //slither-disable-end low-level-calls,missing-zero-check

            if (!success && coinsSelector == IPool.coins.selector) {
                coinsSelector = 0x23746eb8; // coins(int128)
                continue;
            }
            if (!success) {
                break;
            }
            if (retData.length > 0) {
                tokens[numTokens] = abi.decode(retData, (address));
            }
            if (tokens[numTokens] == address(0)) {
                break;
            }
            unchecked {
                ++numTokens;
            }
        } while (numTokens < 8);

        if (numTokens == 0) {
            revert CouldNotResolve(poolAddress);
        }

        isStableSwap = _isStableSwap(poolAddress);
    }

    /// @inheritdoc ICurveResolver
    /// @dev Combines resolve() and getLpToken() to get both pool tokens and LP token:
    function resolveWithLpToken(
        address poolAddress
    ) external view returns (address[8] memory tokens, uint256 numTokens, address lpToken, bool isStableSwap) {
        (tokens, numTokens, isStableSwap) = resolve(poolAddress);
        lpToken = getLpToken(poolAddress);
    }

    /// @inheritdoc ICurveResolver
    /// @dev Attempts to get the LP token address by trying the following functions in order:
    /// 1. totalSupply() - if this exists, the pool itself is the LP token
    /// 2. lp_token()
    /// 3. token()
    function getLpToken(
        address poolAddress
    ) public view returns (address) {
        //slither-disable-start low-level-calls,missing-zero-check
        (bool success, bytes memory retData) = poolAddress.staticcall(abi.encodeCall(IPool.totalSupply, ()));
        if (success && retData.length > 0) {
            // If the pool address has a totalSupply() call then pool is lpToken
            return poolAddress;
        }

        (success, retData) = poolAddress.staticcall(abi.encodeCall(IPool.lp_token, ()));
        if (success && retData.length > 0) {
            return abi.decode(retData, (address));
        }

        (success, retData) = poolAddress.staticcall(abi.encodeCall(IPool.token, ()));
        if (success && retData.length > 0) {
            return abi.decode(retData, (address));
        }
        //slither-disable-end low-level-calls,missing-zero-check

        revert CouldNotResolve(poolAddress);
    }

    /// @inheritdoc ICurveResolver
    /// @dev Attempts to get the pool reserves by trying the following:
    /// 1. balances(uint256) - iterates through indices until it hits an empty/failed response
    /// 2. balances(int128) - fallback for older pools that use int128 indices
    /// @dev Most of the pools use this method outside of mainnet
    function getReservesInfo(
        address poolAddress
    ) external view returns (uint256[8] memory ret) {
        Errors.verifyNotZero(poolAddress, "poolAddress");

        bytes4 balancesSelector = IPool.balances.selector;
        uint256 i = 0;
        do {
            //slither-disable-start low-level-calls,missing-zero-check
            (bool success, bytes memory retData) = poolAddress.staticcall(abi.encodeWithSelector(balancesSelector, i));
            //slither-disable-end low-level-calls,missing-zero-check

            if (!success && balancesSelector == IPool.balances.selector) {
                balancesSelector = 0x065a80d8; // balances(int128)
                continue;
            }
            if (success && retData.length > 0) {
                ret[i] = abi.decode(retData, (uint256));
            } else {
                break;
            }

            unchecked {
                ++i;
            }
        } while (i < 8);

        if (i == 0) {
            revert CouldNotResolve(poolAddress);
        }
    }

    function _isStableSwap(
        address pool
    ) private view returns (bool) {
        // Using the presence of a gamma() fn as an indicator of pool type
        // Zero check for the poolAddress is above
        // slither-disable-start low-level-calls,missing-zero-check,unchecked-lowlevel
        // solhint-disable-next-line avoid-low-level-calls
        (bool success,) = pool.staticcall(abi.encodeCall(IPool.gamma, ()));
        // slither-disable-end low-level-calls,missing-zero-check,unchecked-lowlevel

        return !success;
    }
}
