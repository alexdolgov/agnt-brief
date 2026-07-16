// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.0;

import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {IPool} from "@maverickprotocol/maverick-v1-interfaces/contracts/interfaces/IPool.sol";
import {IFactory} from "@maverickprotocol/maverick-v1-interfaces/contracts/interfaces/IFactory.sol";
import {IPosition} from "@maverickprotocol/maverick-v1-interfaces/contracts/interfaces/IPosition.sol";
import {Math as MavMath} from "./libraries/Math.sol";
import {IPositionInspector} from "./interfaces/IPositionInspector.sol";
import {IPoolPositionSlim} from "./interfaces/IPoolPositionSlim.sol";

contract PositionInspector is IPositionInspector {
    /// @dev The tick and merge states of a bin are not modified before the
    //swap callback is called inside of a pool when a user calls swap. This was
    //an intentional design decision that makes it easier for aggregators to
    //project the price of a swap without having to know the precise time of
    //the swap. But one implication of this decision is that the binstate in
    //the callback and after the swap may differ.  In many cases, it is not
    //desirable to have users values read from inside of a callback because
    //a user may get unpredictable results.  When using the functions in this
    //contract for an integration, it is best practice to not allow users to
    //call your integration from inside of the swap callback. The
    //IPool.getState().status field indicates whether the pool is in a
    //reentrancy lock status if that status value is 1.  When using functions
    //from this contract in an integration that can be used by outside users,
    //consider checking to ensure the status of the pool is != 1 before
    //allowing a user to interact with your integration.  This will prevent the
    //user from calling your integration from inside of a swap callback.
    //
    // Example check to be added to integrations using this contract:
    //
    // if (pool.getState().status == 1) revert;
    //

    uint8 constant KIND_ALL = 4;
    uint256 constant ONE = 1e18;

    ////////////////////
    /// Reserves by pool position
    ////////////////////

    function poolPositionReserves(IPoolPositionSlim poolPosition) public view returns (uint256 amountA, uint256 amountB) {
        (amountA, amountB) = tokenBinReservesByBinList(poolPosition.tokenId(), poolPosition.pool(), poolPosition.allBinIds());
    }

    function poolPositionReservesByAddress(IPoolPositionSlim poolPosition, address owner) public view returns (uint256 amountA, uint256 amountB) {
        (uint256 A, uint256 B) = tokenBinReservesByBinList(poolPosition.tokenId(), poolPosition.pool(), poolPosition.allBinIds());

        uint256 ownerBalance = poolPosition.balanceOf(owner);
        uint256 totalSupply = poolPosition.totalSupply();

        amountA = Math.mulDiv(A, ownerBalance, totalSupply);
        amountB = Math.mulDiv(B, ownerBalance, totalSupply);
    }

    ////////////////////
    /// Reserves by address
    ////////////////////

    function addressBinReservesByKind(address owner, uint256 tokenIdIndex, IPool pool, uint8 kind) public view returns (uint256 amountA, uint256 amountB) {
        IFactory factory = pool.factory();
        IPosition position = factory.position();
        uint256 tokenId = position.tokenOfOwnerByIndex(owner, tokenIdIndex);
        (amountA, amountB) = tokenBinReservesByKind(tokenId, pool, kind);
    }

    function addressBinReservesByKindAllTokenIds(address owner, IPool pool, uint8 kind) public view returns (uint256 amountA, uint256 amountB) {
        IFactory factory = pool.factory();
        IPosition position = factory.position();
        for (uint256 tokenIdIndex; tokenIdIndex < type(uint256).max; tokenIdIndex++) {
            if (!position.tokenOfOwnerByIndexExists(owner, tokenIdIndex)) break;
            uint256 tokenId = position.tokenOfOwnerByIndex(owner, tokenIdIndex);
            (uint256 A, uint256 B) = tokenBinReservesByKind(tokenId, pool, kind);
            amountA += A;
            amountB += B;
        }
    }

    function addressBinReservesAllKindsAllTokenIds(address owner, IPool pool) public view returns (uint256 amountA, uint256 amountB) {
        (amountA, amountB) = addressBinReservesByKindAllTokenIds(owner, pool, KIND_ALL);
    }

    function addressBinReservesAllKinds(address owner, uint256 tokenIdIndex, IPool pool) public view returns (uint256 amountA, uint256 amountB) {
        (amountA, amountB) = addressBinReservesByKind(owner, tokenIdIndex, pool, KIND_ALL);
    }

    ////////////////////
    /// Reserves by tokenId
    ////////////////////

    function tokenBinReservesByKind(uint256 tokenId, IPool pool, uint8 kind, uint128 startBin, uint128 endBin) public view returns (uint256 amountA, uint256 amountB) {
        uint128 binCounter = pool.getState().binCounter;
        binCounter = endBin < binCounter ? endBin : binCounter;

        uint256 lpBalance;
        for (uint128 i = startBin; i <= binCounter; i++) {
            lpBalance = pool.balanceOf(tokenId, i);
            if (lpBalance != 0) {
                (, , uint256 A, uint256 B) = lpBalanceInActive(tokenId, i, lpBalance, pool, kind);
                amountA += A;
                amountB += B;
            }
        }
        amountA = MavMath.toScale(amountA, pool.tokenAScale(), false);
        amountB = MavMath.toScale(amountB, pool.tokenBScale(), false);
    }

    function tokenBinReservesAllKinds(uint256 tokenId, IPool pool) public view returns (uint256 amountA, uint256 amountB) {
        (amountA, amountB) = tokenBinReservesByKind(tokenId, pool, KIND_ALL, 0, type(uint128).max);
    }

    function tokenBinReservesAllKinds(uint256 tokenId, IPool pool, uint128 startBin, uint128 endBin) public view returns (uint256 amountA, uint256 amountB) {
        (amountA, amountB) = tokenBinReservesByKind(tokenId, pool, KIND_ALL, startBin, endBin);
    }

    function tokenBinReservesByKind(uint256 tokenId, IPool pool, uint8 kind) public view returns (uint256 amountA, uint256 amountB) {
        (amountA, amountB) = tokenBinReservesByKind(tokenId, pool, kind, 0, type(uint128).max);
    }

    function tokenBinReservesByBinList(uint256 tokenId, IPool pool, uint128[] memory userBins) public view returns (uint256 amountA, uint256 amountB) {
        uint256 length = userBins.length;
        for (uint128 i; i < length; i++) {
            uint128 binId = userBins[i];
            uint256 lpBalance = pool.balanceOf(tokenId, binId);
            if (lpBalance != 0) {
                (, , uint256 A, uint256 B) = lpBalanceInActive(tokenId, binId, lpBalance, pool, KIND_ALL);
                amountA += A;
                amountB += B;
            }
        }
        amountA = MavMath.toScale(amountA, pool.tokenAScale(), false);
        amountB = MavMath.toScale(amountB, pool.tokenBScale(), false);
    }

    ////////////////////
    /// Utility
    ////////////////////

    function getTokenBinIds(uint256 tokenId, IPool pool, uint128 startBin, uint128 endBin) external view returns (uint128[] memory binIds) {
        uint128 binCounter = pool.getState().binCounter;
        binCounter = endBin < binCounter ? endBin : binCounter;

        binIds = new uint128[](binCounter);
        uint128 activeCounter = 0;
        for (uint128 i = startBin; i < binCounter; i++) {
            uint256 lpBalance = pool.balanceOf(tokenId, i);
            if (lpBalance != 0) {
                binIds[activeCounter] = i;
                activeCounter++;
            }
        }
        if (activeCounter != binCounter) {
            uint128 binCountToRemove = binCounter - activeCounter;
            assembly {
                mstore(binIds, sub(mload(binIds), binCountToRemove))
            }
        }
    }

    ////////////////////
    /// Internal
    ////////////////////

    function lpBalanceInActive(
        uint256 tokenId,
        uint128 binId,
        uint256 prevBalance,
        IPool pool,
        uint8 kindToKeep
    ) internal view returns (uint256 balance, uint128 activeBin, uint256 amountA, uint256 amountB) {
        IPool.BinState memory bin = pool.getBin(binId);

        if (kindToKeep == KIND_ALL || kindToKeep == bin.kind) {
            if (bin.mergeId != 0) {
                return lpBalanceInActive(tokenId, bin.mergeId, Math.mulDiv(prevBalance, bin.mergeBinBalance, bin.totalSupply), pool, kindToKeep);
            }
            balance = prevBalance;
            activeBin = binId;
            amountA = Math.mulDiv(balance, bin.reserveA, bin.totalSupply);
            amountB = Math.mulDiv(balance, bin.reserveB, bin.totalSupply);
        }
    }
}
