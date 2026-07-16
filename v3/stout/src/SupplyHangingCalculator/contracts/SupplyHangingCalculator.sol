// SPDX-License-Identifier: MIT

pragma solidity >=0.8.24 <0.9.0;

import {Ownable} from "./abstract/Ownable.sol";
import {IBaseContracts} from "./interface/IBaseContracts.sol";
import {IERC20Custom} from "./interface/IERC20Custom.sol";
import {IERC20Token} from "./interface/IERC20Token.sol";
import {IFloor} from "./interface/IFloor.sol";
import {IStakedDUSX} from "./interface/IStakedDUSX.sol";
import {ISupplyHangingCalculator} from "./interface/ISupplyHangingCalculator.sol";
import {IVault} from "./interface/IVault.sol";

/**
 * @title SupplyHangingCalculator
 * @dev Supply metrics calculator for stability
 * @notice Computes supply with safety margins
 */
contract SupplyHangingCalculator is Ownable, ISupplyHangingCalculator {
    /// @notice DUSX token contract reference
    /// @dev Used for supply and balance calculations
    IERC20Token public immutable dusx;
    /// @notice Floor contract reference
    /// @dev Provides capital information for supply calculations
    IFloor public immutable floor;
    /// @notice Staked DUSX contract reference
    /// @dev Used for tracking staked token supply
    IStakedDUSX public immutable stDUSX;
    /// @notice Vault contract reference
    /// @dev Used for tracking vault token balance
    IVault public immutable vault;
    /// @notice Safety margin percentage for supply calculations
    /// @dev Provides buffer in supply hanging computations
    uint256 public safetyMargin;
    /// @notice Thrown when a zero address is detected
    error ZeroAddress();

    /**
     * @notice Initializes the supply hanging calculator
     * @param baseContracts_ BaseContracts instance for protocol integration
     *
     * Requirements:
     * · All contract addresses must be non-zero
     *
     * Effects:
     * · Sets immutable contract references
     * · Validates contract addresses
     */
    constructor(IBaseContracts baseContracts_) {
        _ensureNonzeroAddress(address(baseContracts_));
        // Get core contracts from BaseContracts
        dusx = baseContracts_.dusx();
        floor = baseContracts_.floor();
        stDUSX = baseContracts_.stDUSX();
        vault = baseContracts_.vault();
        // Validate addresses
        _ensureNonzeroAddress(address(dusx));
        _ensureNonzeroAddress(address(floor));
        _ensureNonzeroAddress(address(stDUSX));
        _ensureNonzeroAddress(address(vault));
    }

    /**
     * @notice Sets the safety margin for supply calculations
     * @param newSafetyMargin New safety margin percentage
     *
     * Requirements:
     * · Only callable by owner
     * · Safety margin must be a valid percentage
     *
     * Effects:
     * · Updates safety margin for future calculations
     */
    function setSafetyMargin(uint256 newSafetyMargin) external onlyOwner {
        safetyMargin = newSafetyMargin;
    }

    /**
     * @notice Calculates supply hanging with safety margins
     * @return Supply hanging amount considering safety margins
     *
     * Calculation Steps:
     * 1. Get total DUSX supply
     * 2. Subtract vault balance
     * 3. Apply safety margin to floor capital
     * 4. Apply safety margin to staked DUSX supply
     * 5. Compute final supply hanging
     */
    function getSupplyHanging() external view returns (uint256) {
        uint256 supplyDUSX = dusx.totalSupply();
        uint256 vaultBalance = dusx.balanceOf(address(vault));
        uint256 adjustedSupplyDUSX = supplyDUSX - vaultBalance;
        // Apply safety margin to floor capital
        uint256 capitalFloor = (floor.capital() * (100 - safetyMargin)) / 100;
        // Apply safety margin to staked DUSX supply
        uint256 supplyStakedDUSX = (IERC20Custom(address(stDUSX))
            .totalSupply() * (100 - safetyMargin)) / 100;
        return adjustedSupplyDUSX - capitalFloor - supplyStakedDUSX;
    }

    /**
     * @notice Calculates supply hanging without safety margins
     * @return Supply hanging amount without safety considerations
     *
     * Calculation Steps:
     * 1. Get total DUSX supply
     * 2. Subtract vault balance
     * 3. Subtract floor capital
     * 4. Subtract staked DUSX supply
     */
    function getSupplyHangingUnsafe() external view returns (uint256) {
        uint256 supplyDUSX = dusx.totalSupply();
        uint256 vaultBalance = dusx.balanceOf(address(vault));
        uint256 adjustedSupplyDUSX = supplyDUSX - vaultBalance;
        uint256 capitalFloor = floor.capital();
        uint256 supplyStakedDUSX = IERC20Custom(address(stDUSX)).totalSupply();
        return adjustedSupplyDUSX - capitalFloor - supplyStakedDUSX;
    }

    // Validates that an address is not zero
    function _ensureNonzeroAddress(address addr) private pure {
        if (addr == address(0)) {
            revert ZeroAddress();
        }
    }
}
