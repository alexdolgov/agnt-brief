// SPDX-License-Identifier: MIT

pragma solidity >=0.8.24 <0.9.0;

import {IBaseContracts} from "../interface/IBaseContracts.sol";
import {IERC20TokenRebase} from "../interface/IERC20TokenRebase.sol";
import {IFloor} from "../interface/IFloor.sol";
import {IVoteEscrowedSTTX} from "../interface/IVoteEscrowedSTTX.sol";

/**
 * @title OracleFloorPrice
 * @dev Oracle implementation for calculating the floor price of veSTTX tokens
 * @notice Provides floor price calculations based on the total capital in the Floor contract
 * and the total rebased supply of STTX tokens. The floor price represents the minimum
 * value of veSTTX tokens backed by the capital in the Floor contract.
 */
contract OracleFloorPrice {
    /*//////////////////////////////////////////////////////////////
                            STATE VARIABLES
    //////////////////////////////////////////////////////////////*/
    /// @notice Precision constants
    uint256 public constant MANTISSA_ONE = 1e18;
    /// @notice STTX token contract for supply calculations
    IERC20TokenRebase public immutable sttx;
    /// @notice veSTTX contract for price queries
    IVoteEscrowedSTTX public immutable veSTTX;
    /// @notice Floor contract holding the capital
    IFloor public immutable floor;
    /*//////////////////////////////////////////////////////////////
                            CUSTOM ERRORS
    //////////////////////////////////////////////////////////////*/
    /// @notice Thrown when a zero address is provided
    error ZeroAddress();
    /// @notice Thrown when querying price for non-veSTTX asset
    error WrongAddress();

    /*//////////////////////////////////////////////////////////////
                            CONSTRUCTOR
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Initializes the oracle with required contract references
     * @param baseContracts_ Base contracts
     */
    constructor(IBaseContracts baseContracts_) {
        _ensureNonzeroAddress(address(baseContracts_));
        // Get core contracts from BaseContracts
        sttx = baseContracts_.sttx();
        veSTTX = baseContracts_.veSTTX();
        floor = baseContracts_.floor();
        // Validate addresses
        _ensureNonzeroAddress(address(sttx));
        _ensureNonzeroAddress(address(veSTTX));
        _ensureNonzeroAddress(address(floor));
    }

    /*//////////////////////////////////////////////////////////////
                            PUBLIC FUNCTIONS
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Calculates the current floor price of veSTTX
     * @param asset Address of the asset to price (must be veSTTX)
     * @return price Current floor price with round precision
     * @dev Floor price is calculated as: (total capital / total STTX supply)
     */
    function getPrice(address asset) public view virtual returns (uint256) {
        if (asset != address(veSTTX)) revert WrongAddress();
        uint256 floorCapital = floor.capital();
        if (floorCapital == 0) return 0;
        uint256 totalSupply = sttx.totalSupplyRebased() == 0
            ? sttx.totalSupply()
            : sttx.totalSupplyRebased();
        return (floorCapital * MANTISSA_ONE) / totalSupply;
    }

    /*//////////////////////////////////////////////////////////////
                            PRIVATE FUNCTIONS
    //////////////////////////////////////////////////////////////*/
    // Validates that an address is not zero
    function _ensureNonzeroAddress(address addr) private pure {
        if (addr == address(0)) {
            revert ZeroAddress();
        }
    }
}
