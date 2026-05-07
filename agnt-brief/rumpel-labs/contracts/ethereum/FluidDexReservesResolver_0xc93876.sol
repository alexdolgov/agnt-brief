// ============================================================
// FILE: contracts/libraries/addressCalcs.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.21;

/// @notice implements calculation of address for contracts deployed through CREATE.
/// Accepts contract deployed from which address & nonce
library AddressCalcs {

    /// @notice                         Computes the address of a contract based
    /// @param deployedFrom_            Address from which the contract was deployed
    /// @param nonce_                   Nonce at which the contract was deployed
    /// @return contract_               Address of deployed contract
    function addressCalc(address deployedFrom_, uint nonce_) internal pure returns (address contract_) {
        // @dev based on https://ethereum.stackexchange.com/a/61413

        // nonce of smart contract always starts with 1. so, with nonce 0 there won't be any deployment
        // hence, nonce of vault deployment starts with 1.
        bytes memory data;
        if (nonce_ == 0x00) {
            return address(0);
        } else if (nonce_ <= 0x7f) {
            data = abi.encodePacked(bytes1(0xd6), bytes1(0x94), deployedFrom_, uint8(nonce_));
        } else if (nonce_ <= 0xff) {
            data = abi.encodePacked(bytes1(0xd7), bytes1(0x94), deployedFrom_, bytes1(0x81), uint8(nonce_));
        } else if (nonce_ <= 0xffff) {
            data = abi.encodePacked(bytes1(0xd8), bytes1(0x94), deployedFrom_, bytes1(0x82), uint16(nonce_));
        } else if (nonce_ <= 0xffffff) {
            data = abi.encodePacked(bytes1(0xd9), bytes1(0x94), deployedFrom_, bytes1(0x83), uint24(nonce_));
        } else {
            data = abi.encodePacked(bytes1(0xda), bytes1(0x94), deployedFrom_, bytes1(0x84), uint32(nonce_));
        }

        return address(uint160(uint256(keccak256(data))));
    }

}

// ============================================================
// FILE: contracts/libraries/bytesSliceAndConcat.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.21;

library BytesSliceAndConcat {
    // @dev taken from https://github.com/GNSPS/solidity-bytes-utils/blob/master/contracts/BytesLib.sol
    function bytesConcat(
        bytes memory _preBytes,
        bytes memory _postBytes
    ) internal pure returns (bytes memory tempBytes) {
        assembly {
            // Get a location of some free memory and store it in tempBytes as
            // Solidity does for memory variables.
            tempBytes := mload(0x40)

            // Store the length of the first bytes array at the beginning of
            // the memory for tempBytes.
            let length := mload(_preBytes)
            mstore(tempBytes, length)

            // Maintain a memory counter for the current write location in the
            // temp bytes array by adding the 32 bytes for the array length to
            // the starting location.
            let mc := add(tempBytes, 0x20)
            // Stop copying when the memory counter reaches the length of the
            // first bytes array.
            let end := add(mc, length)

            for {
                // Initialize a copy counter to the start of the _preBytes data,
                // 32 bytes into its memory.
                let cc := add(_preBytes, 0x20)
            } lt(mc, end) {
                // Increase both counters by 32 bytes each iteration.
                mc := add(mc, 0x20)
                cc := add(cc, 0x20)
            } {
                // Write the _preBytes data into the tempBytes memory 32 bytes
                // at a time.
                mstore(mc, mload(cc))
            }

            // Add the length of _postBytes to the current length of tempBytes
            // and store it as the new length in the first 32 bytes of the
            // tempBytes memory.
            length := mload(_postBytes)
            mstore(tempBytes, add(length, mload(tempBytes)))

            // Move the memory counter back from a multiple of 0x20 to the
            // actual end of the _preBytes data.
            mc := end
            // Stop copying when the memory counter reaches the new combined
            // length of the arrays.
            end := add(mc, length)

            for {
                let cc := add(_postBytes, 0x20)
            } lt(mc, end) {
                mc := add(mc, 0x20)
                cc := add(cc, 0x20)
            } {
                mstore(mc, mload(cc))
            }

            // Update the free-memory pointer by padding our last write location
            // to 32 bytes: add 31 bytes to the end of tempBytes to move to the
            // next 32 byte block, then round down to the nearest multiple of
            // 32. If the sum of the length of the two arrays is zero then add
            // one before rounding down to leave a blank 32 bytes (the length block with 0).
            mstore(
                0x40,
                and(
                    add(add(end, iszero(add(length, mload(_preBytes)))), 31),
                    not(31) // Round down to the nearest 32 bytes.
                )
            )
        }

        return tempBytes;
    }

    // @dev taken from https://github.com/GNSPS/solidity-bytes-utils/blob/master/contracts/BytesLib.sol
    function bytesSlice(
        bytes memory _bytes,
        uint256 _start,
        uint256 _length
    ) internal pure returns (bytes memory tempBytes) {
        require(_length + 31 >= _length, "slice_overflow");
        require(_bytes.length >= _start + _length, "slice_outOfBounds");

        assembly {
            switch iszero(_length)
            case 0 {
                // Get a location of some free memory and store it in tempBytes as
                // Solidity does for memory variables.
                tempBytes := mload(0x40)

                // The first word of the slice result is potentially a partial
                // word read from the original array. To read it, we calculate
                // the length of that partial word and start copying that many
                // bytes into the array. The first word we copy will start with
                // data we don't care about, but the last `lengthmod` bytes will
                // land at the beginning of the contents of the new array. When
                // we're done copying, we overwrite the full first word with
                // the actual length of the slice.
                let lengthmod := and(_length, 31)

                // The multiplication in the next line is necessary
                // because when slicing multiples of 32 bytes (lengthmod == 0)
                // the following copy loop was copying the origin's length
                // and then ending prematurely not copying everything it should.
                let mc := add(add(tempBytes, lengthmod), mul(0x20, iszero(lengthmod)))
                let end := add(mc, _length)

                for {
                    // The multiplication in the next line has the same exact purpose
                    // as the one above.
                    let cc := add(add(add(_bytes, lengthmod), mul(0x20, iszero(lengthmod))), _start)
                } lt(mc, end) {
                    mc := add(mc, 0x20)
                    cc := add(cc, 0x20)
                } {
                    mstore(mc, mload(cc))
                }

                mstore(tempBytes, _length)

                //update free-memory pointer
                //allocating the array padded to 32 bytes like the compiler does now
                mstore(0x40, and(add(mc, 31), not(31)))
            }
            //if we want a zero-length slice let's just return a zero-length array
            default {
                tempBytes := mload(0x40)
                //zero out the 32 bytes slice we are about to return
                //we need to do it because Solidity does not garbage collect
                mstore(tempBytes, 0)

                mstore(0x40, add(tempBytes, 0x20))
            }
        }

        return tempBytes;
    }
}

// ============================================================
// FILE: contracts/libraries/dexSlotsLink.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.21;

/// @notice library that helps in reading / working with storage slot data of Fluid Dex.
/// @dev as all data for Fluid Dex is internal, any data must be fetched directly through manual
/// slot reading through this library or, if gas usage is less important, through the FluidDexResolver.
library DexSlotsLink {
    /// @dev storage slot for variables at Dex
    uint256 internal constant DEX_VARIABLES_SLOT = 0;
    /// @dev storage slot for variables2 at Dex
    uint256 internal constant DEX_VARIABLES2_SLOT = 1;
    /// @dev storage slot for total supply shares at Dex
    uint256 internal constant DEX_TOTAL_SUPPLY_SHARES_SLOT = 2;
    /// @dev storage slot for user supply mapping at Dex
    uint256 internal constant DEX_USER_SUPPLY_MAPPING_SLOT = 3;
    /// @dev storage slot for total borrow shares at Dex
    uint256 internal constant DEX_TOTAL_BORROW_SHARES_SLOT = 4;
    /// @dev storage slot for user borrow mapping at Dex
    uint256 internal constant DEX_USER_BORROW_MAPPING_SLOT = 5;
    /// @dev storage slot for oracle mapping at Dex
    uint256 internal constant DEX_ORACLE_MAPPING_SLOT = 6;
    /// @dev storage slot for range and threshold shifts at Dex
    uint256 internal constant DEX_RANGE_THRESHOLD_SHIFTS_SLOT = 7;
    /// @dev storage slot for center price shift at Dex
    uint256 internal constant DEX_CENTER_PRICE_SHIFT_SLOT = 8;

    // --------------------------------
    // @dev stacked uint256 storage slots bits position data for each:

    // UserSupplyData
    uint256 internal constant BITS_USER_SUPPLY_ALLOWED = 0;
    uint256 internal constant BITS_USER_SUPPLY_AMOUNT = 1;
    uint256 internal constant BITS_USER_SUPPLY_PREVIOUS_WITHDRAWAL_LIMIT = 65;
    uint256 internal constant BITS_USER_SUPPLY_LAST_UPDATE_TIMESTAMP = 129;
    uint256 internal constant BITS_USER_SUPPLY_EXPAND_PERCENT = 162;
    uint256 internal constant BITS_USER_SUPPLY_EXPAND_DURATION = 176;
    uint256 internal constant BITS_USER_SUPPLY_BASE_WITHDRAWAL_LIMIT = 200;

    // UserBorrowData
    uint256 internal constant BITS_USER_BORROW_ALLOWED = 0;
    uint256 internal constant BITS_USER_BORROW_AMOUNT = 1;
    uint256 internal constant BITS_USER_BORROW_PREVIOUS_BORROW_LIMIT = 65;
    uint256 internal constant BITS_USER_BORROW_LAST_UPDATE_TIMESTAMP = 129;
    uint256 internal constant BITS_USER_BORROW_EXPAND_PERCENT = 162;
    uint256 internal constant BITS_USER_BORROW_EXPAND_DURATION = 176;
    uint256 internal constant BITS_USER_BORROW_BASE_BORROW_LIMIT = 200;
    uint256 internal constant BITS_USER_BORROW_MAX_BORROW_LIMIT = 218;

    // --------------------------------

    /// @notice Calculating the slot ID for Dex contract for single mapping at `slot_` for `key_`
    function calculateMappingStorageSlot(uint256 slot_, address key_) internal pure returns (bytes32) {
        return keccak256(abi.encode(key_, slot_));
    }

    /// @notice Calculating the slot ID for Dex contract for double mapping at `slot_` for `key1_` and `key2_`
    function calculateDoubleMappingStorageSlot(
        uint256 slot_,
        address key1_,
        address key2_
    ) internal pure returns (bytes32) {
        bytes32 intermediateSlot_ = keccak256(abi.encode(key1_, slot_));
        return keccak256(abi.encode(key2_, intermediateSlot_));
    }
}

// ============================================================
// FILE: contracts/liquidity/adminModule/structs.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.21;

abstract contract Structs {
    struct AddressBool {
        address addr;
        bool value;
    }

    struct AddressUint256 {
        address addr;
        uint256 value;
    }

    /// @notice struct to set borrow rate data for version 1
    struct RateDataV1Params {
        ///
        /// @param token for rate data
        address token;
        ///
        /// @param kink in borrow rate. in 1e2: 100% = 10_000; 1% = 100
        /// utilization below kink usually means slow increase in rate, once utilization is above kink borrow rate increases fast
        uint256 kink;
        ///
        /// @param rateAtUtilizationZero desired borrow rate when utilization is zero. in 1e2: 100% = 10_000; 1% = 100
        /// i.e. constant minimum borrow rate
        /// e.g. at utilization = 0.01% rate could still be at least 4% (rateAtUtilizationZero would be 400 then)
        uint256 rateAtUtilizationZero;
        ///
        /// @param rateAtUtilizationKink borrow rate when utilization is at kink. in 1e2: 100% = 10_000; 1% = 100
        /// e.g. when rate should be 7% at kink then rateAtUtilizationKink would be 700
        uint256 rateAtUtilizationKink;
        ///
        /// @param rateAtUtilizationMax borrow rate when utilization is maximum at 100%. in 1e2: 100% = 10_000; 1% = 100
        /// e.g. when rate should be 125% at 100% then rateAtUtilizationMax would be 12_500
        uint256 rateAtUtilizationMax;
    }

    /// @notice struct to set borrow rate data for version 2
    struct RateDataV2Params {
        ///
        /// @param token for rate data
        address token;
        ///
        /// @param kink1 first kink in borrow rate. in 1e2: 100% = 10_000; 1% = 100
        /// utilization below kink 1 usually means slow increase in rate, once utilization is above kink 1 borrow rate increases faster
        uint256 kink1;
        ///
        /// @param kink2 second kink in borrow rate. in 1e2: 100% = 10_000; 1% = 100
        /// utilization below kink 2 usually means slow / medium increase in rate, once utilization is above kink 2 borrow rate increases fast
        uint256 kink2;
        ///
        /// @param rateAtUtilizationZero desired borrow rate when utilization is zero. in 1e2: 100% = 10_000; 1% = 100
        /// i.e. constant minimum borrow rate
        /// e.g. at utilization = 0.01% rate could still be at least 4% (rateAtUtilizationZero would be 400 then)
        uint256 rateAtUtilizationZero;
        ///
        /// @param rateAtUtilizationKink1 desired borrow rate when utilization is at first kink. in 1e2: 100% = 10_000; 1% = 100
        /// e.g. when rate should be 7% at first kink then rateAtUtilizationKink would be 700
        uint256 rateAtUtilizationKink1;
        ///
        /// @param rateAtUtilizationKink2 desired borrow rate when utilization is at second kink. in 1e2: 100% = 10_000; 1% = 100
        /// e.g. when rate should be 7% at second kink then rateAtUtilizationKink would be 1_200
        uint256 rateAtUtilizationKink2;
        ///
        /// @param rateAtUtilizationMax desired borrow rate when utilization is maximum at 100%. in 1e2: 100% = 10_000; 1% = 100
        /// e.g. when rate should be 125% at 100% then rateAtUtilizationMax would be 12_500
        uint256 rateAtUtilizationMax;
    }

    /// @notice struct to set token config
    struct TokenConfig {
        ///
        /// @param token address
        address token;
        ///
        /// @param fee charges on borrower's interest. in 1e2: 100% = 10_000; 1% = 100
        uint256 fee;
        ///
        /// @param threshold on when to update the storage slot. in 1e2: 100% = 10_000; 1% = 100
        uint256 threshold;
        ///
        /// @param maxUtilization maximum allowed utilization. in 1e2: 100% = 10_000; 1% = 100
        ///                       set to 100% to disable and have default limit of 100% (avoiding SLOAD).
        uint256 maxUtilization;
    }

    /// @notice struct to set user supply & withdrawal config
    struct UserSupplyConfig {
        ///
        /// @param user address
        address user;
        ///
        /// @param token address
        address token;
        ///
        /// @param mode: 0 = without interest. 1 = with interest
        uint8 mode;
        ///
        /// @param expandPercent withdrawal limit expand percent. in 1e2: 100% = 10_000; 1% = 100
        /// Also used to calculate rate at which withdrawal limit should decrease (instant).
        uint256 expandPercent;
        ///
        /// @param expandDuration withdrawal limit expand duration in seconds.
        /// used to calculate rate together with expandPercent
        uint256 expandDuration;
        ///
        /// @param baseWithdrawalLimit base limit, below this, user can withdraw the entire amount.
        /// amount in raw (to be multiplied with exchange price) or normal depends on configured mode in user config for the token:
        /// with interest -> raw, without interest -> normal
        uint256 baseWithdrawalLimit;
    }

    /// @notice struct to set user borrow & payback config
    struct UserBorrowConfig {
        ///
        /// @param user address
        address user;
        ///
        /// @param token address
        address token;
        ///
        /// @param mode: 0 = without interest. 1 = with interest
        uint8 mode;
        ///
        /// @param expandPercent debt limit expand percent. in 1e2: 100% = 10_000; 1% = 100
        /// Also used to calculate rate at which debt limit should decrease (instant).
        uint256 expandPercent;
        ///
        /// @param expandDuration debt limit expand duration in seconds.
        /// used to calculate rate together with expandPercent
        uint256 expandDuration;
        ///
        /// @param baseDebtCeiling base borrow limit. until here, borrow limit remains as baseDebtCeiling
        /// (user can borrow until this point at once without stepped expansion). Above this, automated limit comes in place.
        /// amount in raw (to be multiplied with exchange price) or normal depends on configured mode in user config for the token:
        /// with interest -> raw, without interest -> normal
        uint256 baseDebtCeiling;
        ///
        /// @param maxDebtCeiling max borrow ceiling, maximum amount the user can borrow.
        /// amount in raw (to be multiplied with exchange price) or normal depends on configured mode in user config for the token:
        /// with interest -> raw, without interest -> normal
        uint256 maxDebtCeiling;
    }
}

// ============================================================
// FILE: contracts/periphery/resolvers/dexReserves/main.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.21;

import { AddressCalcs } from "../../../libraries/addressCalcs.sol";
import { DexSlotsLink } from "../../../libraries/dexSlotsLink.sol";
import { BytesSliceAndConcat } from "../../../libraries/bytesSliceAndConcat.sol";
import { Structs as FluidLiquidityResolverStructs } from "../liquidity/structs.sol";
import { IFluidDexT1 } from "../../../protocols/dex/interfaces/iDexT1.sol";
import { Variables } from "./variables.sol";
import { Structs } from "./structs.sol";
import { FixedPointMathLib } from "solmate/src/utils/FixedPointMathLib.sol";

interface TokenInterface {
    function balanceOf(address) external view returns (uint);
}

interface IZtakingPool {
    function balance(address token_, address staker_) external view returns (uint256);
}

/// @title DexFactoryViews
/// @notice Abstract contract providing view functions for DEX factory-related operations
abstract contract DexFactoryViews is Variables {
    /// @notice Get the address of a Pool given its ID
    /// @param poolId_ The ID of the Pool
    /// @return pool_ The address of the Pool
    function getPoolAddress(uint256 poolId_) public view returns (address pool_) {
        return AddressCalcs.addressCalc(address(FACTORY), poolId_);
    }

    /// @notice Get the total number of Pools
    /// @return The total number of Pools
    function getTotalPools() public view returns (uint) {
        return FACTORY.totalDexes();
    }

    /// @notice Get an array of all Pool addresses
    /// @return pools_ An array containing all Pool addresses
    function getAllPoolAddresses() public view returns (address[] memory pools_) {
        uint totalPools_ = getTotalPools();
        pools_ = new address[](totalPools_);
        for (uint i = 0; i < totalPools_; i++) {
            pools_[i] = getPoolAddress((i + 1));
        }
    }
}

/// @title DexPublicViews
/// @notice Abstract contract providing view functions for DEX public data
abstract contract DexPublicViews {
    /// @notice Get the prices and exchange prices for a DEX
    /// @param dex_ The address of the DEX
    /// @return pex_ A struct containing prices and exchange prices
    /// @dev expected to be called via callStatic
    function getDexPricesAndExchangePrices(
        address dex_
    ) public returns (IFluidDexT1.PricesAndExchangePrice memory pex_) {
        try IFluidDexT1(dex_).getPricesAndExchangePrices() {} catch (bytes memory lowLevelData_) {
            bytes4 errorSelector_;
            assembly {
                // Extract the selector from the error data
                errorSelector_ := mload(add(lowLevelData_, 0x20))
            }
            if (errorSelector_ == IFluidDexT1.FluidDexPricesAndExchangeRates.selector) {
                pex_ = abi.decode(
                    BytesSliceAndConcat.bytesSlice(lowLevelData_, 4, lowLevelData_.length - 4),
                    (IFluidDexT1.PricesAndExchangePrice)
                );
            }
        }
    }

    /// @notice Get the collateral reserves for a DEX in token decimals amounts
    /// @param dex_ The address of the DEX
    /// @return reserves_ A struct containing collateral reserve information
    /// @dev expected to be called via callStatic
    function getDexCollateralReserves(address dex_) public returns (IFluidDexT1.CollateralReserves memory reserves_) {
        uint256 dexVariables2_ = IFluidDexT1(dex_).readFromStorage(bytes32(DexSlotsLink.DEX_VARIABLES2_SLOT));
        if ((dexVariables2_ & 1) != 1) {
            // smart col not enabled
            return IFluidDexT1.CollateralReserves(0, 0, 0, 0);
        }

        try this.getDexPricesAndExchangePrices(dex_) returns (IFluidDexT1.PricesAndExchangePrice memory pex_) {
            reserves_ = _getDexCollateralReserves(dex_, pex_);
        } catch {
            reserves_ = IFluidDexT1.CollateralReserves(0, 0, 0, 0);
        }
    }

    /// @notice Get the collateral reserves for a DEX scaled to 1e12
    /// @param dex_ The address of the DEX
    /// @return reserves_ A struct containing collateral reserve information
    /// @dev expected to be called via callStatic
    function getDexCollateralReservesAdjusted(
        address dex_
    ) public returns (IFluidDexT1.CollateralReserves memory reserves_) {
        uint256 dexVariables2_ = IFluidDexT1(dex_).readFromStorage(bytes32(DexSlotsLink.DEX_VARIABLES2_SLOT));
        if ((dexVariables2_ & 1) != 1) {
            // smart col not enabled
            return IFluidDexT1.CollateralReserves(0, 0, 0, 0);
        }

        try this.getDexPricesAndExchangePrices(dex_) returns (IFluidDexT1.PricesAndExchangePrice memory pex_) {
            reserves_ = _getDexCollateralReservesAdjusted(dex_, pex_);
        } catch {
            reserves_ = IFluidDexT1.CollateralReserves(0, 0, 0, 0);
        }
    }

    /// @notice Get the debt reserves for a DEX in token decimals amounts
    /// @param dex_ The address of the DEX
    /// @return reserves_ A struct containing debt reserve information
    /// @dev expected to be called via callStatic
    function getDexDebtReserves(address dex_) public returns (IFluidDexT1.DebtReserves memory reserves_) {
        uint256 dexVariables2_ = IFluidDexT1(dex_).readFromStorage(bytes32(DexSlotsLink.DEX_VARIABLES2_SLOT));
        if ((dexVariables2_ & 2) != 2) {
            // smart debt not enabled
            return IFluidDexT1.DebtReserves(0, 0, 0, 0, 0, 0);
        }

        try this.getDexPricesAndExchangePrices(dex_) returns (IFluidDexT1.PricesAndExchangePrice memory pex_) {
            reserves_ = _getDexDebtReserves(dex_, pex_);
        } catch {
            reserves_ = IFluidDexT1.DebtReserves(0, 0, 0, 0, 0, 0);
        }
    }

    /// @notice Get the debt reserves for a DEX scaled to 1e12
    /// @param dex_ The address of the DEX
    /// @return reserves_ A struct containing debt reserve information
    /// @dev expected to be called via callStatic
    function getDexDebtReservesAdjusted(address dex_) public returns (IFluidDexT1.DebtReserves memory reserves_) {
        uint256 dexVariables2_ = IFluidDexT1(dex_).readFromStorage(bytes32(DexSlotsLink.DEX_VARIABLES2_SLOT));
        if ((dexVariables2_ & 2) != 2) {
            // smart debt not enabled
            return IFluidDexT1.DebtReserves(0, 0, 0, 0, 0, 0);
        }

        try this.getDexPricesAndExchangePrices(dex_) returns (IFluidDexT1.PricesAndExchangePrice memory pex_) {
            reserves_ = _getDexDebtReservesAdjusted(dex_, pex_);
        } catch {
            reserves_ = IFluidDexT1.DebtReserves(0, 0, 0, 0, 0, 0);
        }
    }

    /// @dev Retrieves and normalizes the collateral reserves for a given DEX.
    /// @param dex_ The address of the DEX.
    /// @param pex_ A struct containing price and exchange price information.
    /// @return reserves_ A struct containing the normalized collateral reserves.
    function _getDexCollateralReserves(
        address dex_,
        IFluidDexT1.PricesAndExchangePrice memory pex_
    ) internal view returns (IFluidDexT1.CollateralReserves memory reserves_) {
        reserves_ = _getDexCollateralReservesAdjusted(dex_, pex_);

        IFluidDexT1.ConstantViews2 memory constantsView2_ = IFluidDexT1(dex_).constantsView2();

        // returned reserves are in 1e12 decimals -> normalize to token decimals
        reserves_.token0RealReserves =
            (reserves_.token0RealReserves * constantsView2_.token0DenominatorPrecision) /
            constantsView2_.token0NumeratorPrecision;
        reserves_.token0ImaginaryReserves =
            (reserves_.token0ImaginaryReserves * constantsView2_.token0DenominatorPrecision) /
            constantsView2_.token0NumeratorPrecision;
        reserves_.token1RealReserves =
            (reserves_.token1RealReserves * constantsView2_.token1DenominatorPrecision) /
            constantsView2_.token1NumeratorPrecision;
        reserves_.token1ImaginaryReserves =
            (reserves_.token1ImaginaryReserves * constantsView2_.token1DenominatorPrecision) /
            constantsView2_.token1NumeratorPrecision;
    }

    /// @dev Retrieves the adjusted collateral reserves for a given DEX.
    /// @param dex_ The address of the DEX.
    /// @param pex_ A struct containing price and exchange price information.
    /// @return reserves_ A struct containing the adjusted collateral reserves.
    function _getDexCollateralReservesAdjusted(
        address dex_,
        IFluidDexT1.PricesAndExchangePrice memory pex_
    ) internal view returns (IFluidDexT1.CollateralReserves memory reserves_) {
        try
            IFluidDexT1(dex_).getCollateralReserves(
                pex_.geometricMean,
                pex_.upperRange,
                pex_.lowerRange,
                pex_.supplyToken0ExchangePrice,
                pex_.supplyToken1ExchangePrice
            )
        returns (IFluidDexT1.CollateralReserves memory colReserves_) {
            // returned reserves are in 1e12 decimals -> normalize to token decimals
            reserves_ = colReserves_;
        } catch {
            reserves_ = IFluidDexT1.CollateralReserves(0, 0, 0, 0);
        }
    }

    /// @dev Retrieves and normalizes the debt reserves for a given DEX.
    /// @param dex_ The address of the DEX.
    /// @param pex_ A struct containing price and exchange price information.
    /// @return reserves_ A struct containing the normalized debt reserves.
    function _getDexDebtReserves(
        address dex_,
        IFluidDexT1.PricesAndExchangePrice memory pex_
    ) internal view returns (IFluidDexT1.DebtReserves memory reserves_) {
        reserves_ = _getDexDebtReservesAdjusted(dex_, pex_);

        IFluidDexT1.ConstantViews2 memory constantsView2_ = IFluidDexT1(dex_).constantsView2();

        // returned reserves are in 1e12 decimals -> normalize to token decimals
        reserves_.token0Debt =
            (reserves_.token0Debt * constantsView2_.token0DenominatorPrecision) /
            constantsView2_.token0NumeratorPrecision;
        reserves_.token0RealReserves =
            (reserves_.token0RealReserves * constantsView2_.token0DenominatorPrecision) /
            constantsView2_.token0NumeratorPrecision;
        reserves_.token0ImaginaryReserves =
            (reserves_.token0ImaginaryReserves * constantsView2_.token0DenominatorPrecision) /
            constantsView2_.token0NumeratorPrecision;
        reserves_.token1Debt =
            (reserves_.token1Debt * constantsView2_.token1DenominatorPrecision) /
            constantsView2_.token1NumeratorPrecision;
        reserves_.token1RealReserves =
            (reserves_.token1RealReserves * constantsView2_.token1DenominatorPrecision) /
            constantsView2_.token1NumeratorPrecision;
        reserves_.token1ImaginaryReserves =
            (reserves_.token1ImaginaryReserves * constantsView2_.token1DenominatorPrecision) /
            constantsView2_.token1NumeratorPrecision;
    }

    /// @dev Retrieves the adjusted debt reserves for a given DEX.
    /// @param dex_ The address of the DEX.
    /// @param pex_ A struct containing price and exchange price information.
    /// @return reserves_ A struct containing the adjusted debt reserves.
    function _getDexDebtReservesAdjusted(
        address dex_,
        IFluidDexT1.PricesAndExchangePrice memory pex_
    ) internal view returns (IFluidDexT1.DebtReserves memory reserves_) {
        try
            IFluidDexT1(dex_).getDebtReserves(
                pex_.geometricMean,
                pex_.upperRange,
                pex_.lowerRange,
                pex_.borrowToken0ExchangePrice,
                pex_.borrowToken1ExchangePrice
            )
        returns (IFluidDexT1.DebtReserves memory debtReserves_) {
            // returned reserves are in 1e12 decimals -> normalize to token decimals
            reserves_ = debtReserves_;
        } catch {
            reserves_ = IFluidDexT1.DebtReserves(0, 0, 0, 0, 0, 0);
        }
    }
}

/// @title DexConstantsViews
/// @notice Abstract contract providing view functions for DEX constants
abstract contract DexConstantsViews {
    /// @notice returns all Pool constants
    function getPoolConstantsView(address pool_) public view returns (IFluidDexT1.ConstantViews memory constantsView_) {
        return IFluidDexT1(pool_).constantsView();
    }

    /// @notice returns all Pool constants 2
    function getPoolConstantsView2(
        address pool_
    ) public view returns (IFluidDexT1.ConstantViews2 memory constantsView2_) {
        return IFluidDexT1(pool_).constantsView2();
    }

    /// @notice Get the addresses of the tokens in a Pool
    /// @param pool_ The address of the Pool
    /// @return token0_ The address of token0 in the Pool
    /// @return token1_ The address of token1 in the Pool
    function getPoolTokens(address pool_) public view returns (address token0_, address token1_) {
        IFluidDexT1.ConstantViews memory constantsView_ = IFluidDexT1(pool_).constantsView();
        return (constantsView_.token0, constantsView_.token1);
    }
}

abstract contract DexSwapLimits is Variables, Structs, DexConstantsViews {
    address private constant WEETH = 0xCd5fE23C85820F7B72D0926FC9b05b43E359b7ee;
    address private constant WEETHS = 0x917ceE801a67f933F2e6b33fC0cD1ED2d5909D88;
    IZtakingPool private constant ZIRCUIT = IZtakingPool(0xF047ab4c75cebf0eB9ed34Ae2c186f3611aEAfa6);

    /// @notice get the swap limits for a DEX
    /// @param dex_ The address of the DEX
    /// @return limits_ A struct containing the swap limits for the DEX
    function getDexLimits(address dex_) public view returns (DexLimits memory limits_) {
        // additional liquidity related data such as supply amount, limits, expansion etc.
        FluidLiquidityResolverStructs.UserSupplyData memory liquidityUserSupplyDataToken0_;
        FluidLiquidityResolverStructs.UserSupplyData memory liquidityUserSupplyDataToken1_;
        // liquidity token related data
        FluidLiquidityResolverStructs.OverallTokenData memory liquidityTokenData0_;
        FluidLiquidityResolverStructs.OverallTokenData memory liquidityTokenData1_;
        // additional liquidity related data such as borrow amount, limits, expansion etc.
        FluidLiquidityResolverStructs.UserBorrowData memory liquidityUserBorrowDataToken0_;
        FluidLiquidityResolverStructs.UserBorrowData memory liquidityUserBorrowDataToken1_;

        {
            (address token0_, address token1_) = getPoolTokens(dex_);
            (liquidityUserSupplyDataToken0_, liquidityTokenData0_) = LIQUIDITY_RESOLVER.getUserSupplyData(
                dex_,
                token0_
            );
            (liquidityUserSupplyDataToken1_, liquidityTokenData1_) = LIQUIDITY_RESOLVER.getUserSupplyData(
                dex_,
                token1_
            );
            (liquidityUserBorrowDataToken0_, ) = LIQUIDITY_RESOLVER.getUserBorrowData(dex_, token0_);
            (liquidityUserBorrowDataToken1_, ) = LIQUIDITY_RESOLVER.getUserBorrowData(dex_, token1_);

            // ----------------------- 1. UTILIZATION LIMITS (include liquidity layer balances) -----------------------
            // for dex, utilization limit check is not just after borrow but also after withdraw (after any swap).
            // for liquidity, utilization limit check is only after borrow.
            // so for borrow, use utilization config of either liquidity or dex, whatever is smaller. for withdraw, use dex.

            uint256 dexVariables2_ = IFluidDexT1(dex_).readFromStorage(bytes32(DexSlotsLink.DEX_VARIABLES2_SLOT));
            /// Next 10 bits => 228-237 => utilization limit of token0. Max value 1000 = 100%, if 100% then no need to check the utilization.
            /// Next 10 bits => 238-247 => utilization limit of token1. Max value 1000 = 100%, if 100% then no need to check the utilization.
            {
                // TOKEN 0
                uint256 maxUtilizationToken0Dex_ = ((dexVariables2_ >> 228) & X10) * 10; // bring to 1e2 same as liquidity layer
                // check if max utilization at liquidity layer is smaller for combined config
                uint256 maxUtilizationToken0Combined_ = maxUtilizationToken0Dex_;
                if (liquidityTokenData0_.maxUtilization < maxUtilizationToken0Combined_) {
                    maxUtilizationToken0Combined_ = liquidityTokenData0_.maxUtilization;
                }

                // calculate utilization limit amount % of total supply (with combined config for borrow)
                uint256 maxUtilizationToken0_ = (liquidityTokenData0_.totalSupply * maxUtilizationToken0Combined_) /
                    1e4;

                if (liquidityTokenData0_.totalBorrow < maxUtilizationToken0_) {
                    // expands to & available: amount until utilization max
                    // get amount where currently borrowed = utilization limit of total supply. for withdraw only dex config counts.
                    limits_.withdrawableToken0.available = maxUtilizationToken0Dex_ == 0
                        ? 0
                        : (1e4 * liquidityTokenData0_.totalBorrow) / maxUtilizationToken0Dex_;
                    limits_.withdrawableToken0.available = liquidityTokenData0_.totalSupply >
                        limits_.withdrawableToken0.available
                        ? liquidityTokenData0_.totalSupply - limits_.withdrawableToken0.available
                        : 0;
                    // no expansion on utilization
                    limits_.withdrawableToken0.expandsTo = limits_.withdrawableToken0.available;

                    limits_.borrowableToken0.available = maxUtilizationToken0_ - liquidityTokenData0_.totalBorrow;
                    // no expansion on utilization
                    limits_.borrowableToken0.expandsTo = limits_.borrowableToken0.available;

                    // balance at liquidity layer is a hard limit that can not be expanded beyond
                    uint balanceLiquidity_ = token0_ == NATIVE_TOKEN_ADDRESS
                        ? address(LIQUIDITY).balance
                        : TokenInterface(token0_).balanceOf(address(LIQUIDITY));
                    if (token0_ == WEETH) {
                        balanceLiquidity_ += ZIRCUIT.balance(WEETH, address(LIQUIDITY));
                    }
                    if (token0_ == WEETHS) {
                        balanceLiquidity_ += ZIRCUIT.balance(WEETHS, address(LIQUIDITY));
                    }
                    if (limits_.withdrawableToken0.expandsTo > balanceLiquidity_) {
                        limits_.withdrawableToken0.expandsTo = balanceLiquidity_;
                    }
                    if (limits_.borrowableToken0.expandsTo > balanceLiquidity_) {
                        limits_.borrowableToken0.expandsTo = balanceLiquidity_;
                    }
                }
            }

            {
                // TOKEN 1
                uint256 maxUtilizationToken1Dex_ = ((dexVariables2_ >> 238) & X10) * 10;
                uint256 maxUtilizationToken1Combined_ = maxUtilizationToken1Dex_;
                if (liquidityTokenData1_.maxUtilization < maxUtilizationToken1Combined_) {
                    maxUtilizationToken1Combined_ = liquidityTokenData1_.maxUtilization;
                }
                uint256 maxUtilizationToken1_ = (liquidityTokenData1_.totalSupply * maxUtilizationToken1Combined_) /
                    1e4;
                if (liquidityTokenData1_.totalBorrow < maxUtilizationToken1_) {
                    // expands to & available: amount until utilization max
                    // get amount where currently borrowed = utilization limit of total supply. for withdraw only dex config counts.
                    limits_.withdrawableToken1.available = maxUtilizationToken1Dex_ == 0
                        ? 0
                        : (1e4 * liquidityTokenData1_.totalBorrow) / maxUtilizationToken1Dex_;
                    limits_.withdrawableToken1.available = liquidityTokenData1_.totalSupply >
                        limits_.withdrawableToken1.available
                        ? liquidityTokenData1_.totalSupply - limits_.withdrawableToken1.available
                        : 0;
                    // no expansion on utilization
                    limits_.withdrawableToken1.expandsTo = limits_.withdrawableToken1.available;

                    limits_.borrowableToken1.available = maxUtilizationToken1_ - liquidityTokenData1_.totalBorrow;
                    // no expansion on utilization
                    limits_.borrowableToken1.expandsTo = limits_.borrowableToken1.available;

                    // balance at liquidity layer is a hard limit that can not be expanded beyond
                    uint balanceLiquidity_ = token1_ == NATIVE_TOKEN_ADDRESS
                        ? address(LIQUIDITY).balance
                        : TokenInterface(token1_).balanceOf(address(LIQUIDITY));
                    if (token1_ == WEETH) {
                        balanceLiquidity_ += ZIRCUIT.balance(WEETH, address(LIQUIDITY));
                    }
                    if (token1_ == WEETHS) {
                        balanceLiquidity_ += ZIRCUIT.balance(WEETHS, address(LIQUIDITY));
                    }
                    if (limits_.withdrawableToken1.expandsTo > balanceLiquidity_) {
                        limits_.withdrawableToken1.expandsTo = balanceLiquidity_;
                    }
                    if (limits_.borrowableToken1.expandsTo > balanceLiquidity_) {
                        limits_.borrowableToken1.expandsTo = balanceLiquidity_;
                    }
                }
            }
        }

        // ----------------------- 2. WITHDRAW AND BORROW LIMITS (include liquidity layer balances) -----------------------

        // expandsTo = max possible amount at full expansion
        // expandDuration = time of expandDuration config left until maxExpansion is reached

        // TOKEN 0 WITHDRAWABLE
        {
            uint256 expandTimeLeft_ = liquidityUserSupplyDataToken0_.lastUpdateTimestamp +
                liquidityUserSupplyDataToken0_.expandDuration;
            expandTimeLeft_ = block.timestamp > expandTimeLeft_ ? 0 : expandTimeLeft_ - block.timestamp;

            uint256 maxWithdrawable_ = (liquidityUserSupplyDataToken0_.expandPercent *
                liquidityUserSupplyDataToken0_.supply) / 1e4;
            if (liquidityUserSupplyDataToken0_.withdrawable > maxWithdrawable_) {
                // max expansion already reached or below base limit
                maxWithdrawable_ = liquidityUserSupplyDataToken0_.withdrawable;
                expandTimeLeft_ = 0;
            }

            if (maxWithdrawable_ <= limits_.withdrawableToken0.expandsTo) {
                // if max withdrawable until limit is less than utilization limit, then set max withdrawable until limit as expansion limit.
                limits_.withdrawableToken0.expandsTo = maxWithdrawable_;

                expandTimeLeft_ = maxWithdrawable_ == 0
                    ? 0
                    : ((limits_.withdrawableToken0.expandsTo - liquidityUserSupplyDataToken0_.withdrawable) *
                        liquidityUserSupplyDataToken0_.expandDuration) / maxWithdrawable_;
            } else {
                // max withdrawable expansion is limited by utilization or liquidity layer balance.
                // recalculate the duration until that earlier limit is hit.
                if (liquidityUserSupplyDataToken0_.withdrawable > limits_.withdrawableToken0.expandsTo) {
                    // withdrawable amount at LiquidityResolver does not have dex utilization limit included
                    // so this case could actually happen. if so, then adjust withdrawable and expansion is already
                    // max reached so duration left is 0.
                    expandTimeLeft_ = 0;
                    liquidityUserSupplyDataToken0_.withdrawable = limits_.withdrawableToken0.expandsTo;
                } else {
                    // expansionPerSecond_ = maxWithdrawable_ / expandDuration;
                    // withdrawable + expansionPerSecond_ * x = expandsTo;
                    // so x = (expandsTo - withdrawable) / expansionPerSecond_;
                    // so x = (expandsTo - withdrawable) / (maxWithdrawable_ / expandDuration);
                    // so x = (expandsTo - withdrawable) * expandDuration / maxWithdrawable_;
                    expandTimeLeft_ = maxWithdrawable_ == 0
                        ? 0
                        : ((limits_.withdrawableToken0.expandsTo - liquidityUserSupplyDataToken0_.withdrawable) *
                            liquidityUserSupplyDataToken0_.expandDuration) / maxWithdrawable_;
                }
            }
            limits_.withdrawableToken0.expandDuration = expandTimeLeft_;
        }

        // TOKEN 1 WITHDRAWABLE
        {
            uint256 expandTimeLeft_ = liquidityUserSupplyDataToken1_.lastUpdateTimestamp +
                liquidityUserSupplyDataToken1_.expandDuration;
            expandTimeLeft_ = block.timestamp > expandTimeLeft_ ? 0 : expandTimeLeft_ - block.timestamp;

            uint256 maxWithdrawable_ = (liquidityUserSupplyDataToken1_.expandPercent *
                liquidityUserSupplyDataToken1_.supply) / 1e4;
            if (liquidityUserSupplyDataToken1_.withdrawable > maxWithdrawable_) {
                // max expansion already reached or below base limit
                maxWithdrawable_ = liquidityUserSupplyDataToken1_.withdrawable;
                expandTimeLeft_ = 0;
            }

            if (maxWithdrawable_ <= limits_.withdrawableToken1.expandsTo) {
                // if max withdrawable until limit is less than utilization limit, then set max withdrawable until limit as expansion limit.
                limits_.withdrawableToken1.expandsTo = maxWithdrawable_;

                expandTimeLeft_ = maxWithdrawable_ == 0
                    ? 0
                    : ((limits_.withdrawableToken1.expandsTo - liquidityUserSupplyDataToken1_.withdrawable) *
                        liquidityUserSupplyDataToken1_.expandDuration) / maxWithdrawable_;
            } else {
                // max withdrawable expansion is limited by utilization or liquidity layer balance.
                // recalculate the duration until that earlier limit is hit.
                if (liquidityUserSupplyDataToken1_.withdrawable > limits_.withdrawableToken1.expandsTo) {
                    // withdrawable amount at LiquidityResolver does not have dex utilization limit included
                    // so this case could actually happen. if so, then adjust withdrawable and expansion is already
                    // max reached so duration left is 0.
                    expandTimeLeft_ = 0;
                    liquidityUserSupplyDataToken1_.withdrawable = limits_.withdrawableToken1.expandsTo;
                } else {
                    expandTimeLeft_ = maxWithdrawable_ == 0
                        ? 0
                        : ((limits_.withdrawableToken1.expandsTo - liquidityUserSupplyDataToken1_.withdrawable) *
                            liquidityUserSupplyDataToken1_.expandDuration) / maxWithdrawable_;
                }
            }
            limits_.withdrawableToken1.expandDuration = expandTimeLeft_;
        }

        // TOKEN 0 BORROWABLE
        {
            uint256 expandTimeLeft_ = liquidityUserBorrowDataToken0_.lastUpdateTimestamp +
                liquidityUserBorrowDataToken0_.expandDuration;
            expandTimeLeft_ = block.timestamp > expandTimeLeft_ ? 0 : expandTimeLeft_ - block.timestamp;

            uint256 maxBorrowable_ = (liquidityUserBorrowDataToken0_.expandPercent *
                liquidityUserBorrowDataToken0_.borrow) / 1e4;
            {
                // consider max hard borrow limit
                uint256 maxBorrowableUntilHardLimit_ = liquidityUserBorrowDataToken0_.maxBorrowLimit >
                    liquidityUserBorrowDataToken0_.borrow
                    ? liquidityUserBorrowDataToken0_.maxBorrowLimit - liquidityUserBorrowDataToken0_.borrow
                    : 0;
                if (limits_.borrowableToken0.expandsTo > maxBorrowableUntilHardLimit_) {
                    limits_.borrowableToken0.expandsTo = maxBorrowableUntilHardLimit_;
                }
            }
            if (liquidityUserBorrowDataToken0_.borrowable > maxBorrowable_) {
                // max expansion already reached or below base limit
                maxBorrowable_ = liquidityUserBorrowDataToken0_.borrowable;
                expandTimeLeft_ = 0;
            }

            if (maxBorrowable_ <= limits_.borrowableToken0.expandsTo) {
                // if max borrowable until limit is less than utilization limit, then set max borrowable until limit as expansion limit.
                limits_.borrowableToken0.expandsTo = maxBorrowable_;

                // expansionPerSecond_ = maxBorrowable_ / expandDuration;
                // borrowable + expansionPerSecond_ * x = expandsTo;
                expandTimeLeft_ = maxBorrowable_ == 0
                    ? 0
                    : ((limits_.borrowableToken0.expandsTo - liquidityUserBorrowDataToken0_.borrowable) *
                        liquidityUserBorrowDataToken0_.expandDuration) / maxBorrowable_;
            } else {
                // max borrowable expansion is limited by utilization or liquidity layer balance.
                // recalculate the duration until that earlier limit is hit.
                if (liquidityUserBorrowDataToken0_.borrowable > limits_.borrowableToken0.expandsTo) {
                    // borrowable amount at LiquidityResolver does not have dex utilization limit included
                    // so this case could actually happen. if so, then adjust borrowable and expansion is already
                    // max reached so duration left is 0.
                    expandTimeLeft_ = 0;
                    liquidityUserBorrowDataToken0_.borrowable = limits_.borrowableToken0.expandsTo;
                } else {
                    expandTimeLeft_ = maxBorrowable_ == 0
                        ? 0
                        : ((limits_.borrowableToken0.expandsTo - liquidityUserBorrowDataToken0_.borrowable) *
                            liquidityUserBorrowDataToken0_.expandDuration) / maxBorrowable_;
                }
            }
            limits_.borrowableToken0.expandDuration = expandTimeLeft_;
        }

        // TOKEN 1 BORROWABLE
        {
            uint256 expandTimeLeft_ = liquidityUserBorrowDataToken1_.lastUpdateTimestamp +
                liquidityUserBorrowDataToken1_.expandDuration;
            expandTimeLeft_ = block.timestamp > expandTimeLeft_ ? 0 : expandTimeLeft_ - block.timestamp;

            uint256 maxBorrowable_ = (liquidityUserBorrowDataToken1_.expandPercent *
                liquidityUserBorrowDataToken1_.borrow) / 1e4;
            {
                // consider max hard borrow limit
                uint256 maxBorrowableUntilHardLimit_ = liquidityUserBorrowDataToken1_.maxBorrowLimit >
                    liquidityUserBorrowDataToken1_.borrow
                    ? liquidityUserBorrowDataToken1_.maxBorrowLimit - liquidityUserBorrowDataToken1_.borrow
                    : 0;
                if (limits_.borrowableToken1.expandsTo > maxBorrowableUntilHardLimit_) {
                    limits_.borrowableToken1.expandsTo = maxBorrowableUntilHardLimit_;
                }
            }
            if (liquidityUserBorrowDataToken1_.borrowable > maxBorrowable_) {
                // max expansion already reached or below base limit
                maxBorrowable_ = liquidityUserBorrowDataToken1_.borrowable;
                expandTimeLeft_ = 0;
            }

            if (maxBorrowable_ <= limits_.borrowableToken1.expandsTo) {
                // if max borrowable until limit is less than utilization limit, then set max borrowable until limit as expansion limit.
                limits_.borrowableToken1.expandsTo = maxBorrowable_;

                // expansionPerSecond_ = maxBorrowable_ / expandDuration;
                // borrowable + expansionPerSecond_ * x = expandsTo;
                expandTimeLeft_ = maxBorrowable_ == 0
                    ? 0
                    : ((limits_.borrowableToken1.expandsTo - liquidityUserBorrowDataToken1_.borrowable) *
                        liquidityUserBorrowDataToken1_.expandDuration) / maxBorrowable_;
            } else {
                // max borrowable expansion is limited by utilization or liquidity layer balance.
                // recalculate the duration until that earlier limit is hit.
                if (liquidityUserBorrowDataToken1_.borrowable > limits_.borrowableToken1.expandsTo) {
                    // borrowable amount at LiquidityResolver does not have dex utilization limit included
                    // so this case could actually happen. if so, then adjust borrowable and expansion is already
                    // max reached so duration left is 0.
                    expandTimeLeft_ = 0;
                    liquidityUserBorrowDataToken1_.borrowable = limits_.borrowableToken1.expandsTo;
                } else {
                    expandTimeLeft_ = maxBorrowable_ == 0
                        ? 0
                        : ((limits_.borrowableToken1.expandsTo - liquidityUserBorrowDataToken1_.borrowable) *
                            liquidityUserBorrowDataToken1_.expandDuration) / maxBorrowable_;
                }
            }
            limits_.borrowableToken1.expandDuration = expandTimeLeft_;
        }

        // for available amounts, set withdrawable / borrowable (incl. liquidity balances) if less than available until utilization
        if (liquidityUserSupplyDataToken1_.withdrawable < limits_.withdrawableToken0.available) {
            limits_.withdrawableToken0.available = liquidityUserSupplyDataToken0_.withdrawable;
        }
        if (liquidityUserSupplyDataToken1_.withdrawable < limits_.withdrawableToken1.available) {
            limits_.withdrawableToken1.available = liquidityUserSupplyDataToken1_.withdrawable;
        }
        if (liquidityUserBorrowDataToken0_.borrowable < limits_.borrowableToken0.available) {
            limits_.borrowableToken0.available = liquidityUserBorrowDataToken0_.borrowable;
        }
        if (liquidityUserBorrowDataToken1_.borrowable < limits_.borrowableToken1.available) {
            limits_.borrowableToken1.available = liquidityUserBorrowDataToken1_.borrowable;
        }
    }
}

abstract contract DexActionEstimates is DexPublicViews, DexSwapLimits {
    address private constant ADDRESS_DEAD = 0x000000000000000000000000000000000000dEaD;

    /// @param t total amount in
    /// @param x imaginary reserves of token out of collateral
    /// @param y imaginary reserves of token in of collateral
    /// @param x2 imaginary reserves of token out of debt
    /// @param y2 imaginary reserves of token in of debt
    /// @return a_ how much swap should go through collateral pool. Remaining will go from debt
    /// note if a < 0 then entire trade route through debt pool and debt pool arbitrage with col pool
    /// note if a > t then entire trade route through col pool and col pool arbitrage with debt pool
    /// note if a > 0 & a < t then swap will route through both pools
    function _swapRoutingIn(uint t, uint x, uint y, uint x2, uint y2) private pure returns (int a_) {
        // Main equations:
        // 1. out = x * a / (y + a)
        // 2. out2 = x2 * (t - a) / (y2 + (t - a))
        // final price should be same
        // 3. (y + a) / (x - out) = (y2 + (t - a)) / (x2 - out2)
        // derivation: https://chatgpt.com/share/dce6f381-ee5f-4d5f-b6ea-5996e84d5b57

        // adding 1e18 precision
        uint xyRoot_ = FixedPointMathLib.sqrt(x * y * 1e18);
        uint x2y2Root_ = FixedPointMathLib.sqrt(x2 * y2 * 1e18);

        a_ = (int(y2 * xyRoot_ + t * xyRoot_) - int(y * x2y2Root_)) / int(xyRoot_ + x2y2Root_);
    }

    /// @param t total amount out
    /// @param x imaginary reserves of token in of collateral
    /// @param y imaginary reserves of token out of collateral
    /// @param x2 imaginary reserves of token in of debt
    /// @param y2 imaginary reserves of token out of debt
    /// @return a_ how much swap should go through collateral pool. Remaining will go from debt
    /// note if a < 0 then entire trade route through debt pool and debt pool arbitrage with col pool
    /// note if a > t then entire trade route through col pool and col pool arbitrage with debt pool
    /// note if a > 0 & a < t then swap will route through both pools
    function _swapRoutingOut(uint t, uint x, uint y, uint x2, uint y2) private pure returns (int a_) {
        // Main equations:
        // 1. in = (x * a) / (y - a)
        // 2. in2 = (x2 * (t - a)) / (y2 - (t - a))
        // final price should be same
        // 3. (y - a) / (x + in) = (y2 - (t - a)) / (x2 + in2)
        // derivation: https://chatgpt.com/share/6585bc28-841f-49ec-aea2-1e5c5b7f4fa9

        // adding 1e18 precision
        uint xyRoot_ = FixedPointMathLib.sqrt(x * y * 1e18);
        uint x2y2Root_ = FixedPointMathLib.sqrt(x2 * y2 * 1e18);

        // 1e18 precision gets cancelled out in division
        a_ = (int(t * xyRoot_ + y * x2y2Root_) - int(y2 * xyRoot_)) / int(xyRoot_ + x2y2Root_);
    }

    /// @dev Given an input amount of asset and pair reserves, returns the maximum output amount of the other asset
    /// @param amountIn_ The amount of input asset.
    /// @param iReserveIn_ Imaginary token reserve with input amount.
    /// @param iReserveOut_ Imaginary token reserve of output amount.
    function _getAmountOut(
        uint256 amountIn_,
        uint iReserveIn_,
        uint iReserveOut_
    ) private pure returns (uint256 amountOut_) {
        unchecked {
            // Both numerator and denominator are scaled to 1e6 to factor in fee scaling.
            uint256 numerator_ = amountIn_ * iReserveOut_;
            uint256 denominator_ = iReserveIn_ + amountIn_;

            // Using the swap formula: (AmountIn * iReserveY) / (iReserveX + AmountIn)
            amountOut_ = numerator_ / denominator_;
        }
    }

    /// @dev Given an output amount of asset and pair reserves, returns the input amount of the other asset
    /// @param amountOut_ Desired output amount of the asset.
    /// @param iReserveIn_ Imaginary token reserve of input amount.
    /// @param iReserveOut_ Imaginary token reserve of output amount.
    function _getAmountIn(
        uint256 amountOut_,
        uint iReserveIn_,
        uint iReserveOut_
    ) private pure returns (uint256 amountIn_) {
        // Both numerator and denominator are scaled to 1e6 to factor in fee scaling.
        uint256 numerator_ = amountOut_ * iReserveIn_;
        uint256 denominator_ = iReserveOut_ - amountOut_;

        // Using the swap formula: (AmountOut * iReserveX) / (iReserveY - AmountOut)
        amountIn_ = numerator_ / denominator_;
    }

    struct EstimateMemoryVars {
        uint256 colTokenInImaginaryReserves;
        uint256 colTokenOutImaginaryReserves;
        uint256 debtTokenInImaginaryReserves;
        uint256 debtTokenOutImaginaryReserves;
        uint256 amountOutCollateralAdjusted;
        uint256 amountOutDebtAdjusted;
        uint256 amountInCollateralAdjusted;
        uint256 amountInDebtAdjusted;
    }

    /// @notice estimates swap IN tokens execution
    /// @param dex_ Dex pool
    /// @param swap0to1_ Direction of swap. If true, swaps token0 for token1; if false, swaps token1 for token0
    /// @param amountIn_ The exact amount of input tokens to swap
    /// @param amountOutMin_ The minimum amount of output tokens the user is willing to accept
    /// @return amountOut_ The amount of output tokens received from the swap
    function estimateSwapIn(
        address dex_,
        bool swap0to1_,
        uint256 amountIn_,
        uint256 amountOutMin_
    ) public payable returns (uint256 amountOut_) {
        try IFluidDexT1(dex_).swapIn{ value: msg.value }(swap0to1_, amountIn_, amountOutMin_, ADDRESS_DEAD) {} catch (
            bytes memory lowLevelData_
        ) {
            (amountOut_) = _decodeLowLevelUint1x(lowLevelData_, IFluidDexT1.FluidDexSwapResult.selector);
        }

        EstimateMemoryVars memory e_;
        {
            IFluidDexT1.CollateralReserves memory colReserves_ = getDexCollateralReservesAdjusted(dex_);
            IFluidDexT1.DebtReserves memory debtReserves_ = getDexDebtReservesAdjusted(dex_);
            if (swap0to1_) {
                e_.colTokenInImaginaryReserves = colReserves_.token0ImaginaryReserves;
                e_.colTokenOutImaginaryReserves = colReserves_.token1ImaginaryReserves;
                e_.debtTokenInImaginaryReserves = debtReserves_.token0ImaginaryReserves;
                e_.debtTokenOutImaginaryReserves = debtReserves_.token1ImaginaryReserves;
            } else {
                e_.colTokenInImaginaryReserves = colReserves_.token1ImaginaryReserves;
                e_.colTokenOutImaginaryReserves = colReserves_.token0ImaginaryReserves;
                e_.debtTokenInImaginaryReserves = debtReserves_.token1ImaginaryReserves;
                e_.debtTokenOutImaginaryReserves = debtReserves_.token0ImaginaryReserves;
            }
        }

        IFluidDexT1.ConstantViews2 memory constantsView2_ = IFluidDexT1(dex_).constantsView2();

        {
            int256 swapRoutingAmt_;
            uint256 poolFee_;
            uint256 amountInAdjusted_;
            // bring amount in to 1e12 decimals adjusted
            if (swap0to1_) {
                amountInAdjusted_ =
                    (amountIn_ * constantsView2_.token0NumeratorPrecision) /
                    constantsView2_.token0DenominatorPrecision;
            } else {
                amountInAdjusted_ =
                    (amountIn_ * constantsView2_.token1NumeratorPrecision) /
                    constantsView2_.token1DenominatorPrecision;
            }

            {
                uint256 dexVariables2_ = IFluidDexT1(dex_).readFromStorage(bytes32(DexSlotsLink.DEX_VARIABLES2_SLOT));
                poolFee_ = (dexVariables2_ >> 2) & X17;
                bool colPoolEnabled_ = (dexVariables2_ & 1) == 1;
                bool debtPoolEnabled_ = (dexVariables2_ & 2) == 2;
                if (colPoolEnabled_ && debtPoolEnabled_) {
                    swapRoutingAmt_ = _swapRoutingIn(
                        amountInAdjusted_,
                        e_.colTokenOutImaginaryReserves,
                        e_.colTokenInImaginaryReserves,
                        e_.debtTokenOutImaginaryReserves,
                        e_.debtTokenInImaginaryReserves
                    );
                } else if (debtPoolEnabled_) {
                    swapRoutingAmt_ = -1; // Route from debt pool
                } else if (colPoolEnabled_) {
                    swapRoutingAmt_ = int256(amountInAdjusted_) + 1; // Route from collateral pool
                } else {
                    revert("No pools are enabled");
                }
            }

            if (swapRoutingAmt_ <= 0) {
                // Entire trade routes through debt pool
                e_.amountInDebtAdjusted = amountInAdjusted_;
                e_.amountOutDebtAdjusted = _getAmountOut(
                    ((amountInAdjusted_ * (1e6 - poolFee_)) / 1e6),
                    e_.debtTokenInImaginaryReserves,
                    e_.debtTokenOutImaginaryReserves
                );
            } else if (swapRoutingAmt_ >= int256(amountInAdjusted_)) {
                // Entire trade routes through collateral pool
                e_.amountInCollateralAdjusted = amountInAdjusted_;
                e_.amountOutCollateralAdjusted = _getAmountOut(
                    ((amountInAdjusted_ * (1e6 - poolFee_)) / 1e6),
                    e_.colTokenInImaginaryReserves,
                    e_.colTokenOutImaginaryReserves
                );
            } else {
                // Trade routes through both pools
                e_.amountInCollateralAdjusted = uint(swapRoutingAmt_);
                e_.amountInDebtAdjusted = amountInAdjusted_ - e_.amountInCollateralAdjusted;

                e_.amountOutCollateralAdjusted = _getAmountOut(
                    ((e_.amountInCollateralAdjusted * (1e6 - poolFee_)) / 1e6),
                    e_.colTokenInImaginaryReserves,
                    e_.colTokenOutImaginaryReserves
                );

                e_.amountOutDebtAdjusted = _getAmountOut(
                    ((e_.amountInDebtAdjusted * (1e6 - poolFee_)) / 1e6),
                    e_.debtTokenInImaginaryReserves,
                    e_.debtTokenOutImaginaryReserves
                );
            }
        }

        {
            uint256 borrowableAdjusted_;
            uint256 withdrawableAdjusted_;
            DexLimits memory limits_ = getDexLimits(dex_);

            // bring amount to 1e12 decimals adjusted
            if (swap0to1_) {
                borrowableAdjusted_ =
                    (limits_.borrowableToken1.available * constantsView2_.token1NumeratorPrecision) /
                    constantsView2_.token1DenominatorPrecision;
                withdrawableAdjusted_ =
                    (limits_.withdrawableToken1.available * constantsView2_.token1NumeratorPrecision) /
                    constantsView2_.token1DenominatorPrecision;
            } else {
                borrowableAdjusted_ =
                    (limits_.borrowableToken0.available * constantsView2_.token0NumeratorPrecision) /
                    constantsView2_.token0DenominatorPrecision;
                withdrawableAdjusted_ =
                    (limits_.withdrawableToken0.available * constantsView2_.token0NumeratorPrecision) /
                    constantsView2_.token0DenominatorPrecision;
            }

            if (e_.amountOutDebtAdjusted > borrowableAdjusted_) {
                return 0;
            }
            if (e_.amountOutCollateralAdjusted > withdrawableAdjusted_) {
                return 0;
            }
        }

        uint256 oldPrice_;
        uint256 newPrice_;
        // from whatever pool higher amount of swap is routing we are taking that as final price, does not matter much because both pools final price should be same
        if (e_.amountInCollateralAdjusted > e_.amountInDebtAdjusted) {
            // new pool price from col pool
            oldPrice_ = swap0to1_
                ? (e_.colTokenOutImaginaryReserves * 1e27) / (e_.colTokenInImaginaryReserves)
                : (e_.colTokenInImaginaryReserves * 1e27) / (e_.colTokenOutImaginaryReserves);
            newPrice_ = swap0to1_
                ? ((e_.colTokenOutImaginaryReserves - e_.amountOutCollateralAdjusted) * 1e27) /
                    (e_.colTokenInImaginaryReserves + e_.amountInCollateralAdjusted)
                : ((e_.colTokenInImaginaryReserves + e_.amountInCollateralAdjusted) * 1e27) /
                    (e_.colTokenOutImaginaryReserves - e_.amountOutCollateralAdjusted);
        } else {
            // new pool price from debt pool
            oldPrice_ = swap0to1_
                ? (e_.debtTokenOutImaginaryReserves * 1e27) / (e_.debtTokenInImaginaryReserves)
                : (e_.debtTokenInImaginaryReserves * 1e27) / (e_.debtTokenOutImaginaryReserves);
            newPrice_ = swap0to1_
                ? ((e_.debtTokenOutImaginaryReserves - e_.amountOutDebtAdjusted) * 1e27) /
                    (e_.debtTokenInImaginaryReserves + e_.amountInDebtAdjusted)
                : ((e_.debtTokenInImaginaryReserves + e_.amountInDebtAdjusted) * 1e27) /
                    (e_.debtTokenOutImaginaryReserves - e_.amountOutDebtAdjusted);
        }

        uint256 priceDiff_ = oldPrice_ > newPrice_ ? oldPrice_ - newPrice_ : newPrice_ - oldPrice_;
        if (priceDiff_ > ((oldPrice_ * ORACLE_LIMIT) / 1e18)) {
            // if price diff is > 5% then swap would revert.
            return 0;
        }

        return amountOut_;
    }

    /// @notice estimates swap OUT tokens execution
    /// @param dex_ Dex pool
    /// @param swap0to1_ Direction of swap. If true, swaps token0 for token1; if false, swaps token1 for token0
    /// @param amountOut_ The exact amount of tokens to receive after swap
    /// @param amountInMax_ Maximum amount of tokens to swap in
    /// @return amountIn_ The amount of input tokens used for the swap
    function estimateSwapOut(
        address dex_,
        bool swap0to1_,
        uint256 amountOut_,
        uint256 amountInMax_
    ) public payable returns (uint256 amountIn_) {
        try IFluidDexT1(dex_).swapOut{ value: msg.value }(swap0to1_, amountOut_, amountInMax_, ADDRESS_DEAD) {} catch (
            bytes memory lowLevelData_
        ) {
            (amountIn_) = _decodeLowLevelUint1x(lowLevelData_, IFluidDexT1.FluidDexSwapResult.selector);
        }

        EstimateMemoryVars memory e_;
        {
            IFluidDexT1.CollateralReserves memory colReserves_ = getDexCollateralReservesAdjusted(dex_);
            IFluidDexT1.DebtReserves memory debtReserves_ = getDexDebtReservesAdjusted(dex_);
            if (swap0to1_) {
                e_.colTokenInImaginaryReserves = colReserves_.token0ImaginaryReserves;
                e_.colTokenOutImaginaryReserves = colReserves_.token1ImaginaryReserves;
                e_.debtTokenInImaginaryReserves = debtReserves_.token0ImaginaryReserves;
                e_.debtTokenOutImaginaryReserves = debtReserves_.token1ImaginaryReserves;
            } else {
                e_.colTokenInImaginaryReserves = colReserves_.token1ImaginaryReserves;
                e_.colTokenOutImaginaryReserves = colReserves_.token0ImaginaryReserves;
                e_.debtTokenInImaginaryReserves = debtReserves_.token1ImaginaryReserves;
                e_.debtTokenOutImaginaryReserves = debtReserves_.token0ImaginaryReserves;
            }
        }

        IFluidDexT1.ConstantViews2 memory constantsView2_ = IFluidDexT1(dex_).constantsView2();

        {
            int256 swapRoutingAmt_;
            uint256 poolFee_;
            uint256 amountOutAdjusted_;
            // bring amount in to 1e12 decimals adjusted
            if (swap0to1_) {
                amountOutAdjusted_ =
                    (amountOut_ * constantsView2_.token1NumeratorPrecision) /
                    constantsView2_.token1DenominatorPrecision;
            } else {
                amountOutAdjusted_ =
                    (amountOut_ * constantsView2_.token0NumeratorPrecision) /
                    constantsView2_.token0DenominatorPrecision;
            }

            {
                uint256 dexVariables2_ = IFluidDexT1(dex_).readFromStorage(bytes32(DexSlotsLink.DEX_VARIABLES2_SLOT));
                poolFee_ = (dexVariables2_ >> 2) & X17;
                bool colPoolEnabled_ = (dexVariables2_ & 1) == 1;
                bool debtPoolEnabled_ = (dexVariables2_ & 2) == 2;
                if (colPoolEnabled_ && debtPoolEnabled_) {
                    swapRoutingAmt_ = _swapRoutingOut(
                        amountOutAdjusted_,
                        e_.colTokenInImaginaryReserves,
                        e_.colTokenOutImaginaryReserves,
                        e_.debtTokenInImaginaryReserves,
                        e_.debtTokenOutImaginaryReserves
                    );
                } else if (debtPoolEnabled_) {
                    swapRoutingAmt_ = -1; // Route from debt pool
                } else if (colPoolEnabled_) {
                    swapRoutingAmt_ = int256(amountOutAdjusted_) + 1; // Route from collateral pool
                } else {
                    revert("No pools are enabled");
                }
            }

            if (swapRoutingAmt_ <= 0) {
                // Entire trade routes through debt pool
                e_.amountOutDebtAdjusted = amountOutAdjusted_;
                e_.amountInDebtAdjusted = _getAmountIn(
                    e_.amountOutDebtAdjusted,
                    e_.debtTokenInImaginaryReserves,
                    e_.debtTokenOutImaginaryReserves
                );
                e_.amountInDebtAdjusted = (e_.amountInDebtAdjusted * 1e6) / (1e6 - poolFee_);
            } else if (swapRoutingAmt_ >= int256(amountOutAdjusted_)) {
                // Entire trade routes through collateral pool
                e_.amountOutCollateralAdjusted = amountOutAdjusted_;
                e_.amountInCollateralAdjusted = _getAmountIn(
                    e_.amountOutCollateralAdjusted,
                    e_.colTokenInImaginaryReserves,
                    e_.colTokenOutImaginaryReserves
                );
                e_.amountInCollateralAdjusted = (e_.amountInCollateralAdjusted * 1e6) / (1e6 - poolFee_);
            } else {
                // Trade routes through both pools
                e_.amountOutCollateralAdjusted = uint(swapRoutingAmt_);
                e_.amountOutDebtAdjusted = amountOutAdjusted_ - e_.amountOutCollateralAdjusted;

                e_.amountInCollateralAdjusted = _getAmountIn(
                    e_.amountOutCollateralAdjusted,
                    e_.colTokenInImaginaryReserves,
                    e_.colTokenOutImaginaryReserves
                );
                e_.amountInCollateralAdjusted = (e_.amountInCollateralAdjusted * 1e6) / (1e6 - poolFee_);

                e_.amountInDebtAdjusted = _getAmountIn(
                    e_.amountOutDebtAdjusted,
                    e_.debtTokenInImaginaryReserves,
                    e_.debtTokenOutImaginaryReserves
                );
                e_.amountInDebtAdjusted = (e_.amountInDebtAdjusted * 1e6) / (1e6 - poolFee_);
            }
        }

        {
            uint256 borrowableAdjusted_;
            uint256 withdrawableAdjusted_;
            DexLimits memory limits_ = getDexLimits(dex_);

            // bring amount to 1e12 decimals adjusted
            if (swap0to1_) {
                borrowableAdjusted_ =
                    (limits_.borrowableToken1.available * constantsView2_.token1NumeratorPrecision) /
                    constantsView2_.token1DenominatorPrecision;
                withdrawableAdjusted_ =
                    (limits_.withdrawableToken1.available * constantsView2_.token1NumeratorPrecision) /
                    constantsView2_.token1DenominatorPrecision;
            } else {
                borrowableAdjusted_ =
                    (limits_.borrowableToken0.available * constantsView2_.token0NumeratorPrecision) /
                    constantsView2_.token0DenominatorPrecision;
                withdrawableAdjusted_ =
                    (limits_.withdrawableToken0.available * constantsView2_.token0NumeratorPrecision) /
                    constantsView2_.token0DenominatorPrecision;
            }

            if (e_.amountOutDebtAdjusted > borrowableAdjusted_) {
                return type(uint256).max;
            }
            if (e_.amountOutCollateralAdjusted > withdrawableAdjusted_) {
                return type(uint256).max;
            }
        }

        uint256 oldPrice_;
        uint256 newPrice_;
        // from whatever pool higher amount of swap is routing we are taking that as final price, does not matter much because both pools final price should be same
        if (e_.amountOutCollateralAdjusted > e_.amountOutDebtAdjusted) {
            // new pool price from col pool
            oldPrice_ = swap0to1_
                ? (e_.colTokenOutImaginaryReserves * 1e27) / (e_.colTokenInImaginaryReserves)
                : (e_.colTokenInImaginaryReserves * 1e27) / (e_.colTokenOutImaginaryReserves);
            newPrice_ = swap0to1_
                ? ((e_.colTokenOutImaginaryReserves - e_.amountOutCollateralAdjusted) * 1e27) /
                    (e_.colTokenInImaginaryReserves + e_.amountInCollateralAdjusted)
                : ((e_.colTokenInImaginaryReserves + e_.amountInCollateralAdjusted) * 1e27) /
                    (e_.colTokenOutImaginaryReserves - e_.amountOutCollateralAdjusted);
        } else {
            // new pool price from debt pool
            oldPrice_ = swap0to1_
                ? (e_.debtTokenOutImaginaryReserves * 1e27) / (e_.debtTokenInImaginaryReserves)
                : (e_.debtTokenInImaginaryReserves * 1e27) / (e_.debtTokenOutImaginaryReserves);
            newPrice_ = swap0to1_
                ? ((e_.debtTokenOutImaginaryReserves - e_.amountOutDebtAdjusted) * 1e27) /
                    (e_.debtTokenInImaginaryReserves + e_.amountInDebtAdjusted)
                : ((e_.debtTokenInImaginaryReserves + e_.amountInDebtAdjusted) * 1e27) /
                    (e_.debtTokenOutImaginaryReserves - e_.amountOutDebtAdjusted);
        }

        uint256 priceDiff_ = oldPrice_ > newPrice_ ? oldPrice_ - newPrice_ : newPrice_ - oldPrice_;
        if (priceDiff_ > ((oldPrice_ * ORACLE_LIMIT) / 1e18)) {
            // if price diff is > 5% then swap would revert.
            return type(uint256).max;
        }

        return amountIn_;
    }

    function _decodeLowLevelUint1x(
        bytes memory lowLevelData_,
        bytes4 targetErrorSelector_
    ) internal pure returns (uint value1_) {
        if (lowLevelData_.length < 36) {
            return 0;
        }

        bytes4 errorSelector_;
        assembly {
            // Extract the selector from the error data
            errorSelector_ := mload(add(lowLevelData_, 0x20))
        }
        if (errorSelector_ == targetErrorSelector_) {
            assembly {
                value1_ := mload(add(lowLevelData_, 36))
            }
        }
        // else => values remain 0
    }
}

/// @notice Fluid Dex Reserves resolver
/// Implements various view-only methods to give easy access to Dex protocol reserves data.
contract FluidDexReservesResolver is DexFactoryViews, DexActionEstimates {
    constructor(
        address factory_,
        address liquidity_,
        address liquidityResolver_
    ) Variables(factory_, liquidity_, liquidityResolver_) {}

    /// @notice Get a Pool's address and its token addresses
    /// @param poolId_ The ID of the Pool
    /// @return pool_ The Pool data
    function getPool(uint256 poolId_) public view returns (Pool memory pool_) {
        address poolAddress_ = getPoolAddress(poolId_);
        (address token0_, address token1_) = getPoolTokens(poolAddress_);
        return Pool(poolAddress_, token0_, token1_, getPoolFee(poolAddress_));
    }

    /// @notice Get a Pool's fee
    /// @param pool_ The Pool address
    /// @return fee_ The Pool fee as 1% = 10000
    function getPoolFee(address pool_) public view returns (uint256 fee_) {
        uint256 dexVariables2_ = IFluidDexT1(pool_).readFromStorage(bytes32(DexSlotsLink.DEX_VARIABLES2_SLOT));
        return (dexVariables2_ >> 2) & X17;
    }

    /// @notice Get an array of all Pool addresses and their token addresses
    /// @return pools_ An array containing all Pool data
    function getAllPools() public view returns (Pool[] memory pools_) {
        uint256 totalPools_ = getTotalPools();
        pools_ = new Pool[](totalPools_);
        for (uint256 i; i < totalPools_; i++) {
            pools_[i] = getPool(i + 1);
        }
    }

    /// @notice Get the token addresses, collateral reserves, and debt reserves for a given Pool address
    /// @param pool_ The Pool address
    /// @return poolReserves_ The Pool data with reserves.
    /// @dev expected to be called via callStatic
    function getPoolReserves(address pool_) public returns (PoolWithReserves memory poolReserves_) {
        (poolReserves_.token0, poolReserves_.token1) = getPoolTokens(pool_);

        try this.getDexPricesAndExchangePrices(pool_) returns (IFluidDexT1.PricesAndExchangePrice memory pex_) {
            poolReserves_.centerPrice = pex_.centerPrice;
            poolReserves_.collateralReserves = _getDexCollateralReserves(pool_, pex_);
            poolReserves_.debtReserves = _getDexDebtReserves(pool_, pex_);
        } catch {
            poolReserves_.collateralReserves = getDexCollateralReserves(pool_);
            poolReserves_.debtReserves = getDexDebtReserves(pool_);
        }

        poolReserves_.pool = pool_;
        poolReserves_.fee = getPoolFee(pool_);

        poolReserves_.limits = getDexLimits(pool_);
    }

    /// @notice Get an array of Pool addresses, their token addresses, collateral reserves, and debt reserves for a given array of Pool addresses
    /// @param pools_ The array of Pool addresses
    /// @return poolsReserves_ An array containing all Pool data with reserves
    /// @dev expected to be called via callStatic
    function getPoolsReserves(address[] memory pools_) public returns (PoolWithReserves[] memory poolsReserves_) {
        poolsReserves_ = new PoolWithReserves[](pools_.length);
        for (uint256 i; i < pools_.length; i++) {
            poolsReserves_[i] = getPoolReserves(pools_[i]);
        }
    }

    /// @notice Get an array of all Pool addresses, their token addresses, collateral reserves, and debt reserves
    /// @return poolsReserves_ An array containing all Pool data with reserves
    /// @dev expected to be called via callStatic
    function getAllPoolsReserves() public returns (PoolWithReserves[] memory poolsReserves_) {
        return getPoolsReserves(getAllPoolAddresses());
    }

    /// @notice Get the token addresses, adjusted collateral reserves, and adjusted debt reserves for a given Pool address
    /// @param pool_ The Pool address
    /// @return poolReserves_ The Pool data with adjusted reserves scaled to 1e12. balanceTokens are in token decimals.
    /// @dev expected to be called via callStatic
    function getPoolReservesAdjusted(address pool_) public returns (PoolWithReserves memory poolReserves_) {
        (poolReserves_.token0, poolReserves_.token1) = getPoolTokens(pool_);

        try this.getDexPricesAndExchangePrices(pool_) returns (IFluidDexT1.PricesAndExchangePrice memory pex_) {
            poolReserves_.centerPrice = pex_.centerPrice;
            poolReserves_.collateralReserves = _getDexCollateralReservesAdjusted(pool_, pex_);
            poolReserves_.debtReserves = _getDexDebtReservesAdjusted(pool_, pex_);
        } catch {
            poolReserves_.collateralReserves = getDexCollateralReservesAdjusted(pool_);
            poolReserves_.debtReserves = getDexDebtReservesAdjusted(pool_);
        }

        poolReserves_.pool = pool_;
        poolReserves_.fee = getPoolFee(pool_);

        poolReserves_.limits = getDexLimits(pool_);
    }

    /// @notice Get an array of Pool addresses, their token addresses, adjusted collateral reserves, and adjusted debt reserves for a given array of Pool addresses
    /// @param pools_ The array of Pool addresses
    /// @return poolsReserves_ An array containing all Pool data with adjusted reserves scaled to 1e12
    /// @dev expected to be called via callStatic
    function getPoolsReservesAdjusted(
        address[] memory pools_
    ) public returns (PoolWithReserves[] memory poolsReserves_) {
        poolsReserves_ = new PoolWithReserves[](pools_.length);
        for (uint256 i; i < pools_.length; i++) {
            poolsReserves_[i] = getPoolReservesAdjusted(pools_[i]);
        }
    }

    /// @notice Get an array of all Pool addresses, their token addresses, adjusted collateral reserves, and adjusted debt reserves
    /// @return poolsReserves_ An array containing all Pool data with adjusted reserves scaled to 1e12
    /// @dev expected to be called via callStatic
    function getAllPoolsReservesAdjusted() public returns (PoolWithReserves[] memory poolsReserves_) {
        return getPoolsReservesAdjusted(getAllPoolAddresses());
    }
}

// ============================================================
// FILE: contracts/periphery/resolvers/dexReserves/structs.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.21;

import { IFluidDexT1 } from "../../../protocols/dex/interfaces/iDexT1.sol";

abstract contract Structs {
    struct Pool {
        address pool;
        address token0;
        address token1;
        uint256 fee;
    }

    struct PoolWithReserves {
        address pool;
        address token0;
        address token1;
        uint256 fee;
        uint256 centerPrice;
        IFluidDexT1.CollateralReserves collateralReserves;
        IFluidDexT1.DebtReserves debtReserves;
        DexLimits limits;
    }

    struct TokenLimit {
        // both `available` and `expandsTo` limits consider:
        // - max utilization (at Liquidity layer and at Dex, for withdrawable only dex)
        // - withdraw limits / borrow limits
        // - balances at liquidity layer
        uint256 available; // maximum available swap amount
        uint256 expandsTo; // maximum amount the available swap amount expands to
        uint256 expandDuration; // duration for `available` to grow to `expandsTo`
    }

    struct DexLimits {
        TokenLimit withdrawableToken0;
        TokenLimit withdrawableToken1;
        TokenLimit borrowableToken0;
        TokenLimit borrowableToken1;
    }
}

// ============================================================
// FILE: contracts/periphery/resolvers/dexReserves/variables.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.21;

import { IFluidDexFactory } from "../../../protocols/dex/interfaces/iDexFactory.sol";
import { IFluidLiquidityResolver } from "../liquidity/iLiquidityResolver.sol";

interface IFluidLiquidity {
    function readFromStorage(bytes32 slot_) external view returns (uint256 result_);
}

abstract contract Variables {
    uint256 internal constant X10 = 0x3ff;
    uint256 internal constant X17 = 0x1ffff;

    uint256 internal constant ORACLE_LIMIT = 5 * 1e16; // 5%

    /// @dev address that is mapped to the chain native token
    address internal constant NATIVE_TOKEN_ADDRESS = 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE;

    IFluidDexFactory public immutable FACTORY;
    IFluidLiquidity public immutable LIQUIDITY;
    IFluidLiquidityResolver public immutable LIQUIDITY_RESOLVER;

    constructor(address factory_, address liquidity_, address liquidityResolver_) {
        FACTORY = IFluidDexFactory(factory_);
        LIQUIDITY = IFluidLiquidity(liquidity_);
        LIQUIDITY_RESOLVER = IFluidLiquidityResolver(liquidityResolver_);
    }
}

// ============================================================
// FILE: contracts/periphery/resolvers/liquidity/iLiquidityResolver.sol
// ============================================================

//SPDX-License-Identifier: MIT
pragma solidity 0.8.21;

import { Structs as LiquidityStructs } from "../../../periphery/resolvers/liquidity/structs.sol";

interface IFluidLiquidityResolver {
    /// @notice gets the `revenueAmount_` for a `token_`.
    function getRevenue(address token_) external view returns (uint256 revenueAmount_);

    /// @notice address of contract that gets sent the revenue. Configurable by governance
    function getRevenueCollector() external view returns (address);

    /// @notice Liquidity contract paused status: status = 1 -> normal. status = 2 -> paused.
    function getStatus() external view returns (uint256);

    /// @notice checks if `auth_` is an allowed auth on Liquidity.
    /// Auths can set most config values. E.g. contracts that automate certain flows like e.g. adding a new fToken.
    /// Governance can add/remove auths. Governance is auth by default.
    function isAuth(address auth_) external view returns (uint256);

    /// @notice checks if `guardian_` is an allowed Guardian on Liquidity.
    /// Guardians can pause lower class users.
    /// Governance can add/remove guardians. Governance is guardian by default.
    function isGuardian(address guardian_) external view returns (uint256);

    /// @notice gets user class for `user_`. Class defines which protocols can be paused by guardians.
    /// Currently there are 2 classes: 0 can be paused by guardians. 1 cannot be paused by guardians.
    /// New protocols are added as class 0 and will be upgraded to 1 over time.
    function getUserClass(address user_) external view returns (uint256);

    /// @notice gets exchangePricesAndConfig packed uint256 storage slot for `token_`.
    function getExchangePricesAndConfig(address token_) external view returns (uint256);

    /// @notice gets rateConfig packed uint256 storage slot for `token_`.
    function getRateConfig(address token_) external view returns (uint256);

    /// @notice gets totalAmounts packed uint256 storage slot for `token_`.
    function getTotalAmounts(address token_) external view returns (uint256);

    /// @notice gets configs2 packed uint256 storage slot for `token_`.
    function getConfigs2(address token_) external view returns (uint256);

    /// @notice gets userSupply data packed uint256 storage slot for `user_` and `token_`.
    function getUserSupply(address user_, address token_) external view returns (uint256);

    /// @notice gets userBorrow data packed uint256 storage slot for `user_` and `token_`.
    function getUserBorrow(address user_, address token_) external view returns (uint256);

    /// @notice returns all `listedTokens_` at the Liquidity contract. Once configured, a token can never be removed.
    function listedTokens() external view returns (address[] memory listedTokens_);

    /// @notice get the Rate config data `rateData_` for a `token_` compiled from the packed uint256 rateConfig storage slot
    function getTokenRateData(address token_) external view returns (LiquidityStructs.RateData memory rateData_);

    /// @notice get the Rate config datas `rateDatas_` for multiple `tokens_` compiled from the packed uint256 rateConfig storage slot
    function getTokensRateData(
        address[] calldata tokens_
    ) external view returns (LiquidityStructs.RateData[] memory rateDatas_);

    /// @notice returns general data for `token_` such as rates, exchange prices, utilization, fee, total amounts etc.
    function getOverallTokenData(
        address token_
    ) external view returns (LiquidityStructs.OverallTokenData memory overallTokenData_);

    /// @notice returns general data for multiple `tokens_` such as rates, exchange prices, utilization, fee, total amounts etc.
    function getOverallTokensData(
        address[] calldata tokens_
    ) external view returns (LiquidityStructs.OverallTokenData[] memory overallTokensData_);

    /// @notice returns general data for all `listedTokens()` such as rates, exchange prices, utilization, fee, total amounts etc.
    function getAllOverallTokensData()
        external
        view
        returns (LiquidityStructs.OverallTokenData[] memory overallTokensData_);

    /// @notice returns `user_` supply data and general data (such as rates, exchange prices, utilization, fee, total amounts etc.) for `token_`
    function getUserSupplyData(
        address user_,
        address token_
    )
        external
        view
        returns (
            LiquidityStructs.UserSupplyData memory userSupplyData_,
            LiquidityStructs.OverallTokenData memory overallTokenData_
        );

    /// @notice returns `user_` supply data and general data (such as rates, exchange prices, utilization, fee, total amounts etc.) for multiple `tokens_`
    function getUserMultipleSupplyData(
        address user_,
        address[] calldata tokens_
    )
        external
        view
        returns (
            LiquidityStructs.UserSupplyData[] memory userSuppliesData_,
            LiquidityStructs.OverallTokenData[] memory overallTokensData_
        );

    /// @notice returns `user_` borrow data and general data (such as rates, exchange prices, utilization, fee, total amounts etc.) for `token_`
    function getUserBorrowData(
        address user_,
        address token_
    )
        external
        view
        returns (
            LiquidityStructs.UserBorrowData memory userBorrowData_,
            LiquidityStructs.OverallTokenData memory overallTokenData_
        );

    /// @notice returns `user_` borrow data and general data (such as rates, exchange prices, utilization, fee, total amounts etc.) for multiple `tokens_`
    function getUserMultipleBorrowData(
        address user_,
        address[] calldata tokens_
    )
        external
        view
        returns (
            LiquidityStructs.UserBorrowData[] memory userBorrowingsData_,
            LiquidityStructs.OverallTokenData[] memory overallTokensData_
        );

    /// @notice returns `user_` supply data and general data (such as rates, exchange prices, utilization, fee, total amounts etc.) for multiple `supplyTokens_`
    ///     and returns `user_` borrow data and general data (such as rates, exchange prices, utilization, fee, total amounts etc.) for multiple `borrowTokens_`
    function getUserMultipleBorrowSupplyData(
        address user_,
        address[] calldata supplyTokens_,
        address[] calldata borrowTokens_
    )
        external
        view
        returns (
            LiquidityStructs.UserSupplyData[] memory userSuppliesData_,
            LiquidityStructs.OverallTokenData[] memory overallSupplyTokensData_,
            LiquidityStructs.UserBorrowData[] memory userBorrowingsData_,
            LiquidityStructs.OverallTokenData[] memory overallBorrowTokensData_
        );
}

// ============================================================
// FILE: contracts/periphery/resolvers/liquidity/structs.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.21;

import { Structs as AdminModuleStructs } from "../../../liquidity/adminModule/structs.sol";

abstract contract Structs {
    struct RateData {
        uint256 version;
        AdminModuleStructs.RateDataV1Params rateDataV1;
        AdminModuleStructs.RateDataV2Params rateDataV2;
    }

    struct OverallTokenData {
        uint256 borrowRate;
        uint256 supplyRate;
        uint256 fee; // revenue fee
        uint256 lastStoredUtilization;
        uint256 storageUpdateThreshold;
        uint256 lastUpdateTimestamp;
        uint256 supplyExchangePrice;
        uint256 borrowExchangePrice;
        uint256 supplyRawInterest;
        uint256 supplyInterestFree;
        uint256 borrowRawInterest;
        uint256 borrowInterestFree;
        uint256 totalSupply;
        uint256 totalBorrow;
        uint256 revenue;
        uint256 maxUtilization; // maximum allowed utilization
        RateData rateData;
    }

    // amounts are always in normal (for withInterest already multiplied with exchange price)
    struct UserSupplyData {
        bool modeWithInterest; // true if mode = with interest, false = without interest
        uint256 supply; // user supply amount
        // the withdrawal limit (e.g. if 10% is the limit, and 100M is supplied, it would be 90M)
        uint256 withdrawalLimit;
        uint256 lastUpdateTimestamp;
        uint256 expandPercent; // withdrawal limit expand percent in 1e2
        uint256 expandDuration; // withdrawal limit expand duration in seconds
        uint256 baseWithdrawalLimit;
        // the current actual max withdrawable amount (e.g. if 10% is the limit, and 100M is supplied, it would be 10M)
        uint256 withdrawableUntilLimit;
        uint256 withdrawable; // actual currently withdrawable amount (supply - withdrawal Limit) & considering balance
    }

    // amounts are always in normal (for withInterest already multiplied with exchange price)
    struct UserBorrowData {
        bool modeWithInterest; // true if mode = with interest, false = without interest
        uint256 borrow; // user borrow amount
        uint256 borrowLimit;
        uint256 lastUpdateTimestamp;
        uint256 expandPercent;
        uint256 expandDuration;
        uint256 baseBorrowLimit;
        uint256 maxBorrowLimit;
        uint256 borrowableUntilLimit; // borrowable amount until any borrow limit (incl. max utilization limit)
        uint256 borrowable; // actual currently borrowable amount (borrow limit - already borrowed) & considering balance, max utilization
        uint256 borrowLimitUtilization; // borrow limit for `maxUtilization`
    }
}

// ============================================================
// FILE: contracts/protocols/dex/interfaces/iDexFactory.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.21;

interface IFluidDexFactory {
    /// @notice Global auth is auth for all dexes
    function isGlobalAuth(address auth_) external view returns (bool);

    /// @notice Dex auth is auth for a specific dex
    function isDexAuth(address vault_, address auth_) external view returns (bool);

    /// @notice Total dexes deployed.
    function totalDexes() external view returns (uint256);

    /// @notice Compute dexAddress
    function getDexAddress(uint256 dexId_) external view returns (address);

    /// @notice read uint256 `result_` for a storage `slot_` key
    function readFromStorage(bytes32 slot_) external view returns (uint256 result_);
}

// ============================================================
// FILE: contracts/protocols/dex/interfaces/iDexT1.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.21;

interface IFluidDexT1 {
    error FluidDexError(uint256 errorId);

    /// @notice used to simulate swap to find the output amount
    error FluidDexSwapResult(uint256 amountOut);

    error FluidDexPerfectLiquidityOutput(uint256 token0Amt, uint token1Amt);

    error FluidDexSingleTokenOutput(uint256 tokenAmt);

    error FluidDexLiquidityOutput(uint256 shares);

    error FluidDexPricesAndExchangeRates(PricesAndExchangePrice pex_);

    /// @notice returns the dex id
    function DEX_ID() external view returns (uint256);

    /// @notice reads uint256 data `result_` from storage at a bytes32 storage `slot_` key.
    function readFromStorage(bytes32 slot_) external view returns (uint256 result_);

    struct Implementations {
        address shift;
        address admin;
        address colOperations;
        address debtOperations;
        address perfectOperationsAndOracle;
    }

    struct ConstantViews {
        uint256 dexId;
        address liquidity;
        address factory;
        Implementations implementations;
        address deployerContract;
        address token0;
        address token1;
        bytes32 supplyToken0Slot;
        bytes32 borrowToken0Slot;
        bytes32 supplyToken1Slot;
        bytes32 borrowToken1Slot;
        bytes32 exchangePriceToken0Slot;
        bytes32 exchangePriceToken1Slot;
        uint256 oracleMapping;
    }

    struct ConstantViews2 {
        uint token0NumeratorPrecision;
        uint token0DenominatorPrecision;
        uint token1NumeratorPrecision;
        uint token1DenominatorPrecision;
    }

    struct PricesAndExchangePrice {
        uint lastStoredPrice; // last stored price in 1e27 decimals
        uint centerPrice; // last stored price in 1e27 decimals
        uint upperRange; // price at upper range in 1e27 decimals
        uint lowerRange; // price at lower range in 1e27 decimals
        uint geometricMean; // geometric mean of upper range & lower range in 1e27 decimals
        uint supplyToken0ExchangePrice;
        uint borrowToken0ExchangePrice;
        uint supplyToken1ExchangePrice;
        uint borrowToken1ExchangePrice;
    }

    struct CollateralReserves {
        uint token0RealReserves;
        uint token1RealReserves;
        uint token0ImaginaryReserves;
        uint token1ImaginaryReserves;
    }

    struct DebtReserves {
        uint token0Debt;
        uint token1Debt;
        uint token0RealReserves;
        uint token1RealReserves;
        uint token0ImaginaryReserves;
        uint token1ImaginaryReserves;
    }

    function getCollateralReserves(
        uint geometricMean_,
        uint upperRange_,
        uint lowerRange_,
        uint token0SupplyExchangePrice_,
        uint token1SupplyExchangePrice_
    ) external view returns (CollateralReserves memory c_);

    function getDebtReserves(
        uint geometricMean_,
        uint upperRange_,
        uint lowerRange_,
        uint token0BorrowExchangePrice_,
        uint token1BorrowExchangePrice_
    ) external view returns (DebtReserves memory d_);

    // reverts with FluidDexPricesAndExchangeRates(pex_);
    function getPricesAndExchangePrices() external;

    function constantsView() external view returns (ConstantViews memory constantsView_);

    function constantsView2() external view returns (ConstantViews2 memory constantsView2_);

    struct Oracle {
        uint twap1by0; // TWAP price
        uint lowestPrice1by0; // lowest price point
        uint highestPrice1by0; // highest price point
        uint twap0by1; // TWAP price
        uint lowestPrice0by1; // lowest price point
        uint highestPrice0by1; // highest price point
    }

    /// @dev This function allows users to swap a specific amount of input tokens for output tokens
    /// @param swap0to1_ Direction of swap. If true, swaps token0 for token1; if false, swaps token1 for token0
    /// @param amountIn_ The exact amount of input tokens to swap
    /// @param amountOutMin_ The minimum amount of output tokens the user is willing to accept
    /// @param to_ Recipient of swapped tokens. If to_ == address(0) then out tokens will be sent to msg.sender. If to_ == ADDRESS_DEAD then function will revert with amountOut_
    /// @return amountOut_ The amount of output tokens received from the swap
    function swapIn(
        bool swap0to1_,
        uint256 amountIn_,
        uint256 amountOutMin_,
        address to_
    ) external payable returns (uint256 amountOut_);

    /// @dev Swap tokens with perfect amount in and callback functionality
    /// @param swap0to1_ Direction of swap. If true, swaps token0 for token1; if false, swaps token1 for token0
    /// @param amountIn_ The exact amount of tokens to swap in
    /// @param amountOutMin_ The minimum amount of tokens to receive after swap
    /// @param to_ Recipient of swapped tokens. If to_ == address(0) then out tokens will be sent to msg.sender. If to_ == ADDRESS_DEAD then function will revert with amountOut_
    /// @return amountOut_ The amount of output tokens received from the swap
    function swapInWithCallback(
        bool swap0to1_,
        uint256 amountIn_,
        uint256 amountOutMin_,
        address to_
    ) external payable returns (uint256 amountOut_);

    /// @dev Swap tokens with perfect amount out
    /// @param swap0to1_ Direction of swap. If true, swaps token0 for token1; if false, swaps token1 for token0
    /// @param amountOut_ The exact amount of tokens to receive after swap
    /// @param amountInMax_ Maximum amount of tokens to swap in
    /// @param to_ Recipient of swapped tokens. If to_ == address(0) then out tokens will be sent to msg.sender. If to_ == ADDRESS_DEAD then function will revert with amountIn_
    /// @return amountIn_ The amount of input tokens used for the swap
    function swapOut(
        bool swap0to1_,
        uint256 amountOut_,
        uint256 amountInMax_,
        address to_
    ) external payable returns (uint256 amountIn_);

    /// @dev Swap tokens with perfect amount out and callback functionality
    /// @param swap0to1_ Direction of swap. If true, swaps token0 for token1; if false, swaps token1 for token0
    /// @param amountOut_ The exact amount of tokens to receive after swap
    /// @param amountInMax_ Maximum amount of tokens to swap in
    /// @param to_ Recipient of swapped tokens. If to_ == address(0) then out tokens will be sent to msg.sender. If to_ == ADDRESS_DEAD then function will revert with amountIn_
    /// @return amountIn_ The amount of input tokens used for the swap
    function swapOutWithCallback(
        bool swap0to1_,
        uint256 amountOut_,
        uint256 amountInMax_,
        address to_
    ) external payable returns (uint256 amountIn_);

    /// @dev Deposit tokens in equal proportion to the current pool ratio
    /// @param shares_ The number of shares to mint
    /// @param maxToken0Deposit_ Maximum amount of token0 to deposit
    /// @param maxToken1Deposit_ Maximum amount of token1 to deposit
    /// @param estimate_ If true, function will revert with estimated deposit amounts without executing the deposit
    /// @return token0Amt_ Amount of token0 deposited
    /// @return token1Amt_ Amount of token1 deposited
    function depositPerfect(
        uint shares_,
        uint maxToken0Deposit_,
        uint maxToken1Deposit_,
        bool estimate_
    ) external payable returns (uint token0Amt_, uint token1Amt_);

    /// @dev This function allows users to withdraw a perfect amount of collateral liquidity
    /// @param shares_ The number of shares to withdraw
    /// @param minToken0Withdraw_ The minimum amount of token0 the user is willing to accept
    /// @param minToken1Withdraw_ The minimum amount of token1 the user is willing to accept
    /// @param to_ Recipient of swapped tokens. If to_ == address(0) then out tokens will be sent to msg.sender. If to_ == ADDRESS_DEAD then function will revert with token0Amt_ & token1Amt_
    /// @return token0Amt_ The amount of token0 withdrawn
    /// @return token1Amt_ The amount of token1 withdrawn
    function withdrawPerfect(
        uint shares_,
        uint minToken0Withdraw_,
        uint minToken1Withdraw_,
        address to_
    ) external returns (uint token0Amt_, uint token1Amt_);

    /// @dev This function allows users to borrow tokens in equal proportion to the current debt pool ratio
    /// @param shares_ The number of shares to borrow
    /// @param minToken0Borrow_ Minimum amount of token0 to borrow
    /// @param minToken1Borrow_ Minimum amount of token1 to borrow
    /// @param to_ Recipient of swapped tokens. If to_ == address(0) then out tokens will be sent to msg.sender. If to_ == ADDRESS_DEAD then function will revert with token0Amt_ & token1Amt_
    /// @return token0Amt_ Amount of token0 borrowed
    /// @return token1Amt_ Amount of token1 borrowed
    function borrowPerfect(
        uint shares_,
        uint minToken0Borrow_,
        uint minToken1Borrow_,
        address to_
    ) external returns (uint token0Amt_, uint token1Amt_);

    /// @dev This function allows users to pay back borrowed tokens in equal proportion to the current debt pool ratio
    /// @param shares_ The number of shares to pay back
    /// @param maxToken0Payback_ Maximum amount of token0 to pay back
    /// @param maxToken1Payback_ Maximum amount of token1 to pay back
    /// @param estimate_ If true, function will revert with estimated payback amounts without executing the payback
    /// @return token0Amt_ Amount of token0 paid back
    /// @return token1Amt_ Amount of token1 paid back
    function paybackPerfect(
        uint shares_,
        uint maxToken0Payback_,
        uint maxToken1Payback_,
        bool estimate_
    ) external payable returns (uint token0Amt_, uint token1Amt_);

    /// @dev This function allows users to deposit tokens in any proportion into the col pool
    /// @param token0Amt_ The amount of token0 to deposit
    /// @param token1Amt_ The amount of token1 to deposit
    /// @param minSharesAmt_ The minimum amount of shares the user expects to receive
    /// @param estimate_ If true, function will revert with estimated shares without executing the deposit
    /// @return shares_ The amount of shares minted for the deposit
    function deposit(
        uint token0Amt_,
        uint token1Amt_,
        uint minSharesAmt_,
        bool estimate_
    ) external payable returns (uint shares_);

    /// @dev This function allows users to withdraw tokens in any proportion from the col pool
    /// @param token0Amt_ The amount of token0 to withdraw
    /// @param token1Amt_ The amount of token1 to withdraw
    /// @param maxSharesAmt_ The maximum number of shares the user is willing to burn
    /// @param to_ Recipient of swapped tokens. If to_ == address(0) then out tokens will be sent to msg.sender. If to_ == ADDRESS_DEAD then function will revert with shares_
    /// @return shares_ The number of shares burned for the withdrawal
    function withdraw(
        uint token0Amt_,
        uint token1Amt_,
        uint maxSharesAmt_,
        address to_
    ) external returns (uint shares_);

    /// @dev This function allows users to borrow tokens in any proportion from the debt pool
    /// @param token0Amt_ The amount of token0 to borrow
    /// @param token1Amt_ The amount of token1 to borrow
    /// @param maxSharesAmt_ The maximum amount of shares the user is willing to receive
    /// @param to_ Recipient of swapped tokens. If to_ == address(0) then out tokens will be sent to msg.sender. If to_ == ADDRESS_DEAD then function will revert with shares_
    /// @return shares_ The amount of borrow shares minted to represent the borrowed amount
    function borrow(uint token0Amt_, uint token1Amt_, uint maxSharesAmt_, address to_) external returns (uint shares_);

    /// @dev This function allows users to payback tokens in any proportion to the debt pool
    /// @param token0Amt_ The amount of token0 to payback
    /// @param token1Amt_ The amount of token1 to payback
    /// @param minSharesAmt_ The minimum amount of shares the user expects to burn
    /// @param estimate_ If true, function will revert with estimated shares without executing the payback
    /// @return shares_ The amount of borrow shares burned for the payback
    function payback(
        uint token0Amt_,
        uint token1Amt_,
        uint minSharesAmt_,
        bool estimate_
    ) external payable returns (uint shares_);

    /// @dev This function allows users to withdraw their collateral with perfect shares in one token
    /// @param shares_ The number of shares to burn for withdrawal
    /// @param minToken0_ The minimum amount of token0 the user expects to receive (set to 0 if withdrawing in token1)
    /// @param minToken1_ The minimum amount of token1 the user expects to receive (set to 0 if withdrawing in token0)
    /// @param to_ Recipient of swapped tokens. If to_ == address(0) then out tokens will be sent to msg.sender. If to_ == ADDRESS_DEAD then function will revert with withdrawAmt_
    /// @return withdrawAmt_ The amount of tokens withdrawn in the chosen token
    function withdrawPerfectInOneToken(
        uint shares_,
        uint minToken0_,
        uint minToken1_,
        address to_
    ) external returns (uint withdrawAmt_);

    /// @dev This function allows users to payback their debt with perfect shares in one token
    /// @param shares_ The number of shares to burn for payback
    /// @param maxToken0_ The maximum amount of token0 the user is willing to pay (set to 0 if paying back in token1)
    /// @param maxToken1_ The maximum amount of token1 the user is willing to pay (set to 0 if paying back in token0)
    /// @param estimate_ If true, the function will revert with the estimated payback amount without executing the payback
    /// @return paybackAmt_ The amount of tokens paid back in the chosen token
    function paybackPerfectInOneToken(
        uint shares_,
        uint maxToken0_,
        uint maxToken1_,
        bool estimate_
    ) external payable returns (uint paybackAmt_);

    /// @dev the oracle assumes last set price of pool till the next swap happens.
    /// There's a possibility that during that time some interest is generated hence the last stored price is not the 100% correct price for the whole duration
    /// but the difference due to interest will be super low so this difference is ignored
    /// For example 2 swaps happened 10min (600 seconds) apart and 1 token has 10% higher interest than other.
    /// then that token will accrue about 10% * 600 / secondsInAYear = ~0.0002%
    /// @param secondsAgos_ array of seconds ago for which TWAP is needed. If user sends [10, 30, 60] then twaps_ will return [10-0, 30-10, 60-30]
    /// @return twaps_ twap price, lowest price (aka minima) & highest price (aka maxima) between secondsAgo checkpoints
    /// @return currentPrice_ price of pool after the most recent swap
    function oraclePrice(uint[] memory secondsAgos_) external view returns (Oracle[] memory twaps_, uint currentPrice_);
}

// ============================================================
// FILE: solmate/src/utils/FixedPointMathLib.sol
// ============================================================

// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity >=0.8.0;

/// @notice Arithmetic library with operations for fixed-point numbers.
/// @author Solmate (https://github.com/transmissions11/solmate/blob/main/src/utils/FixedPointMathLib.sol)
/// @author Inspired by USM (https://github.com/usmfum/USM/blob/master/contracts/WadMath.sol)
library FixedPointMathLib {
    /*//////////////////////////////////////////////////////////////
                    SIMPLIFIED FIXED POINT OPERATIONS
    //////////////////////////////////////////////////////////////*/

    uint256 internal constant MAX_UINT256 = 2**256 - 1;

    uint256 internal constant WAD = 1e18; // The scalar of ETH and most ERC20s.

    function mulWadDown(uint256 x, uint256 y) internal pure returns (uint256) {
        return mulDivDown(x, y, WAD); // Equivalent to (x * y) / WAD rounded down.
    }

    function mulWadUp(uint256 x, uint256 y) internal pure returns (uint256) {
        return mulDivUp(x, y, WAD); // Equivalent to (x * y) / WAD rounded up.
    }

    function divWadDown(uint256 x, uint256 y) internal pure returns (uint256) {
        return mulDivDown(x, WAD, y); // Equivalent to (x * WAD) / y rounded down.
    }

    function divWadUp(uint256 x, uint256 y) internal pure returns (uint256) {
        return mulDivUp(x, WAD, y); // Equivalent to (x * WAD) / y rounded up.
    }

    /*//////////////////////////////////////////////////////////////
                    LOW LEVEL FIXED POINT OPERATIONS
    //////////////////////////////////////////////////////////////*/

    function mulDivDown(
        uint256 x,
        uint256 y,
        uint256 denominator
    ) internal pure returns (uint256 z) {
        /// @solidity memory-safe-assembly
        assembly {
            // Equivalent to require(denominator != 0 && (y == 0 || x <= type(uint256).max / y))
            if iszero(mul(denominator, iszero(mul(y, gt(x, div(MAX_UINT256, y)))))) {
                revert(0, 0)
            }

            // Divide x * y by the denominator.
            z := div(mul(x, y), denominator)
        }
    }

    function mulDivUp(
        uint256 x,
        uint256 y,
        uint256 denominator
    ) internal pure returns (uint256 z) {
        /// @solidity memory-safe-assembly
        assembly {
            // Equivalent to require(denominator != 0 && (y == 0 || x <= type(uint256).max / y))
            if iszero(mul(denominator, iszero(mul(y, gt(x, div(MAX_UINT256, y)))))) {
                revert(0, 0)
            }

            // If x * y modulo the denominator is strictly greater than 0,
            // 1 is added to round up the division of x * y by the denominator.
            z := add(gt(mod(mul(x, y), denominator), 0), div(mul(x, y), denominator))
        }
    }

    function rpow(
        uint256 x,
        uint256 n,
        uint256 scalar
    ) internal pure returns (uint256 z) {
        /// @solidity memory-safe-assembly
        assembly {
            switch x
            case 0 {
                switch n
                case 0 {
                    // 0 ** 0 = 1
                    z := scalar
                }
                default {
                    // 0 ** n = 0
                    z := 0
                }
            }
            default {
                switch mod(n, 2)
                case 0 {
                    // If n is even, store scalar in z for now.
                    z := scalar
                }
                default {
                    // If n is odd, store x in z for now.
                    z := x
                }

                // Shifting right by 1 is like dividing by 2.
                let half := shr(1, scalar)

                for {
                    // Shift n right by 1 before looping to halve it.
                    n := shr(1, n)
                } n {
                    // Shift n right by 1 each iteration to halve it.
                    n := shr(1, n)
                } {
                    // Revert immediately if x ** 2 would overflow.
                    // Equivalent to iszero(eq(div(xx, x), x)) here.
                    if shr(128, x) {
                        revert(0, 0)
                    }

                    // Store x squared.
                    let xx := mul(x, x)

                    // Round to the nearest number.
                    let xxRound := add(xx, half)

                    // Revert if xx + half overflowed.
                    if lt(xxRound, xx) {
                        revert(0, 0)
                    }

                    // Set x to scaled xxRound.
                    x := div(xxRound, scalar)

                    // If n is even:
                    if mod(n, 2) {
                        // Compute z * x.
                        let zx := mul(z, x)

                        // If z * x overflowed:
                        if iszero(eq(div(zx, x), z)) {
                            // Revert if x is non-zero.
                            if iszero(iszero(x)) {
                                revert(0, 0)
                            }
                        }

                        // Round to the nearest number.
                        let zxRound := add(zx, half)

                        // Revert if zx + half overflowed.
                        if lt(zxRound, zx) {
                            revert(0, 0)
                        }

                        // Return properly scaled zxRound.
                        z := div(zxRound, scalar)
                    }
                }
            }
        }
    }

    /*//////////////////////////////////////////////////////////////
                        GENERAL NUMBER UTILITIES
    //////////////////////////////////////////////////////////////*/

    function sqrt(uint256 x) internal pure returns (uint256 z) {
        /// @solidity memory-safe-assembly
        assembly {
            let y := x // We start y at x, which will help us make our initial estimate.

            z := 181 // The "correct" value is 1, but this saves a multiplication later.

            // This segment is to get a reasonable initial estimate for the Babylonian method. With a bad
            // start, the correct # of bits increases ~linearly each iteration instead of ~quadratically.

            // We check y >= 2^(k + 8) but shift right by k bits
            // each branch to ensure that if x >= 256, then y >= 256.
            if iszero(lt(y, 0x10000000000000000000000000000000000)) {
                y := shr(128, y)
                z := shl(64, z)
            }
            if iszero(lt(y, 0x1000000000000000000)) {
                y := shr(64, y)
                z := shl(32, z)
            }
            if iszero(lt(y, 0x10000000000)) {
                y := shr(32, y)
                z := shl(16, z)
            }
            if iszero(lt(y, 0x1000000)) {
                y := shr(16, y)
                z := shl(8, z)
            }

            // Goal was to get z*z*y within a small factor of x. More iterations could
            // get y in a tighter range. Currently, we will have y in [256, 256*2^16).
            // We ensured y >= 256 so that the relative difference between y and y+1 is small.
            // That's not possible if x < 256 but we can just verify those cases exhaustively.

            // Now, z*z*y <= x < z*z*(y+1), and y <= 2^(16+8), and either y >= 256, or x < 256.
            // Correctness can be checked exhaustively for x < 256, so we assume y >= 256.
            // Then z*sqrt(y) is within sqrt(257)/sqrt(256) of sqrt(x), or about 20bps.

            // For s in the range [1/256, 256], the estimate f(s) = (181/1024) * (s+1) is in the range
            // (1/2.84 * sqrt(s), 2.84 * sqrt(s)), with largest error when s = 1 and when s = 256 or 1/256.

            // Since y is in [256, 256*2^16), let a = y/65536, so that a is in [1/256, 256). Then we can estimate
            // sqrt(y) using sqrt(65536) * 181/1024 * (a + 1) = 181/4 * (y + 65536)/65536 = 181 * (y + 65536)/2^18.

            // There is no overflow risk here since y < 2^136 after the first branch above.
            z := shr(18, mul(z, add(y, 65536))) // A mul() is saved from starting z at 181.

            // Given the worst case multiplicative error of 2.84 above, 7 iterations should be enough.
            z := shr(1, add(z, div(x, z)))
            z := shr(1, add(z, div(x, z)))
            z := shr(1, add(z, div(x, z)))
            z := shr(1, add(z, div(x, z)))
            z := shr(1, add(z, div(x, z)))
            z := shr(1, add(z, div(x, z)))
            z := shr(1, add(z, div(x, z)))

            // If x+1 is a perfect square, the Babylonian method cycles between
            // floor(sqrt(x)) and ceil(sqrt(x)). This statement ensures we return floor.
            // See: https://en.wikipedia.org/wiki/Integer_square_root#Using_only_integer_division
            // Since the ceil is rare, we save gas on the assignment and repeat division in the rare case.
            // If you don't care whether the floor or ceil square root is returned, you can remove this statement.
            z := sub(z, lt(div(x, z), z))
        }
    }

    function unsafeMod(uint256 x, uint256 y) internal pure returns (uint256 z) {
        /// @solidity memory-safe-assembly
        assembly {
            // Mod x by y. Note this will return
            // 0 instead of reverting if y is zero.
            z := mod(x, y)
        }
    }

    function unsafeDiv(uint256 x, uint256 y) internal pure returns (uint256 r) {
        /// @solidity memory-safe-assembly
        assembly {
            // Divide x by y. Note this will return
            // 0 instead of reverting if y is zero.
            r := div(x, y)
        }
    }

    function unsafeDivUp(uint256 x, uint256 y) internal pure returns (uint256 z) {
        /// @solidity memory-safe-assembly
        assembly {
            // Add 1 to x * y if x % y > 0. Note this will
            // return 0 instead of reverting if y is zero.
            z := add(gt(mod(x, y), 0), div(x, y))
        }
    }
}
