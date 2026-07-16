// SPDX-License-Identifier: MIT

pragma solidity 0.8.30;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { IERC20Metadata } from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";

import { IReservoir } from "../../interfaces/IReservoir.sol";

import { Types } from "../shared/Types.sol";

import { LibAppStorage } from "./LibAppStorage.sol";

/**
 * @title LibUtilsPosition
 * @author Rain Team
 * @notice Utility library for position-related arithmetic and hashing.
 */
library LibUtilsPosition {
    /* ========================== FUNCTIONS ========================== */

    /**
     * @dev See {IHelper-minPosition}.
     */
    function minPosition() internal view returns (uint256) {
        uint256 decimals = IERC20Metadata(LibAppStorage.defaultAsset()).decimals();

        if (decimals == 6) {
            return 1e6;
        }

        if (decimals == 18) {
            return 1e18;
        }

        unchecked {
            return 10 ** decimals;
        }
    }

    /**
     * @dev See {IHelper-maxPosition}.
     */
    function maxPosition() internal view returns (uint256) {
        IERC20 defaultAsset = IERC20(LibAppStorage.defaultAsset());
        IReservoir reservoir = IReservoir(LibAppStorage.reservoir());

        return
            (reservoir.totalAssets(defaultAsset) - reservoir.totalFees(defaultAsset)) /
            LibAppStorage.maxPositionTotalAssetsDivisor();
    }

    /**
     * @dev See {IHelper-generatePositionId}.
     */
    function generatePositionId(
        Types.MarketType marketType,
        address user,
        uint256 index
    ) internal pure returns (bytes32) {
        return keccak256(abi.encode(marketType, user, index));
    }

    /**
     * @dev See {IHelper-generatePositionId}.
     */
    function generatePositionId(Types.MarketType marketType, address user) internal pure returns (bytes32) {
        return keccak256(abi.encode(marketType, user));
    }
}
