// SPDX-License-Identifier: MIT

pragma solidity >=0.8.24 <0.9.0;

import {Ownable} from "../abstract/Ownable.sol";
import {IBaseContracts} from "../interface/IBaseContracts.sol";
import {IERC20Token} from "../interface/IERC20Token.sol";
import {IFeesDistributor} from "../interface/IFees.sol";
import {IFloor} from "../interface/IFloor.sol";
import {IMiscHelper} from "../interface/IMiscHelper.sol";
import {IStakedDUSX} from "../interface/IStakedDUSX.sol";

/**
 * @title FeesDistributor
 * @dev Manages fee distribution system between floor and staked DUSX holders
 * @notice Facilitates:
 * · Fee collection and distribution
 * · Floor and stDUSX rewards
 */
contract FeesDistributor is Ownable, IFeesDistributor {
    /*//////////////////////////////////////////////////////////////
                                STORAGE
    //////////////////////////////////////////////////////////////*/
    /// @notice Precision constants
    uint256 public constant TENK_PRECISION = 10_000;
    /// @notice DUSX token contract reference
    /// @dev Immutable for gas optimization
    IERC20Token public immutable dusx;
    /// @notice Floor contract for fee deposits
    /// @dev Immutable for gas optimization
    IFloor public immutable floor;
    /// @notice Helper contract for floor operations
    /// @dev Mutable to allow updates
    IMiscHelper public helper;
    /// @notice Staked DUSX contract for rewards
    /// @dev Immutable for gas optimization
    IStakedDUSX public immutable stDUSX;
    /// @notice Base contracts registry
    IBaseContracts public immutable baseContracts;
    /// @notice Floor allocation in basis points (0-10000)
    /// @dev Private to enforce access through getter
    uint256 public floorAllocation;
    /// @notice Minimum balance required for distribution (prevents reentrancy loops)
    uint256 public constant MIN_DISTRIBUTION_BALANCE = 10e18; // 10 DUSX
    /*//////////////////////////////////////////////////////////////
                                EVENTS
    //////////////////////////////////////////////////////////////*/
    /// @notice Emitted when fees are distributed
    /// @param amount Total amount of fees distributed
    event FeesDistributed(uint256 amount);
    /*//////////////////////////////////////////////////////////////
                            CUSTOM ERRORS
    //////////////////////////////////////////////////////////////*/
    /// @notice Thrown when token approval fails
    error ApproveFailed();
    /// @notice Thrown when zero address is provided
    error ZeroAddress();

    /*//////////////////////////////////////////////////////////////
                            CONSTRUCTOR
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Configures the distributor with base contracts registry
     * @param baseContracts_ Base contracts registry address
     */
    constructor(IBaseContracts baseContracts_) {
        _ensureNonzeroAddress(address(baseContracts_));
        baseContracts = baseContracts_;
        dusx = baseContracts_.dusx();
        floor = baseContracts_.floor();
        helper = baseContracts_.helper();
        stDUSX = baseContracts_.stDUSX();
        _ensureNonzeroAddress(address(dusx));
        _ensureNonzeroAddress(address(floor));
        _ensureNonzeroAddress(address(helper));
        _ensureNonzeroAddress(address(stDUSX));
        floorAllocation = TENK_PRECISION / 4;
        bool approveStakedDUSX = dusx.approve(
            address(stDUSX),
            type(uint256).max
        );
        if (!approveStakedDUSX) revert ApproveFailed();
        bool approveFloor = dusx.approve(address(floor), type(uint256).max);
        if (!approveFloor) revert ApproveFailed();
        transferOwnership(address(helper));
    }

    /*//////////////////////////////////////////////////////////////
                        DISTRIBUTION FUNCTIONS
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Executes fee distribution to floor and stDUSX
     * @dev Process:
     * 1. Check staked supply
     * 2. Check available balance
     * 3. Calculate floor portion
     * 4. Distribute to floor
     * 5. Distribute remaining to stDUSX
     *
     * Security:
     * · Only callable by owner
     * · Validates balances
     * · Safe calculations
     *
     * Events:
     * · Emits FeesDistributed
     *
     * Requirements:
     * · Positive staked supply
     * · Available balance
     * · Helper contract set
     */
    function distribute() external onlyOwner {
        uint256 stakedSupply = IERC20Token(address(stDUSX)).totalSupply();
        if (stakedSupply == 0) return;
        uint256 balance = dusx.balanceOf(address(this));
        if (balance < MIN_DISTRIBUTION_BALANCE) return;
        emit FeesDistributed(balance);
        uint256 floorDistribution = (balance * floorAllocation) /
            TENK_PRECISION;
        helper.depositFloor(floorDistribution);
        stDUSX.distributeFees(balance - floorDistribution);
    }

    /*//////////////////////////////////////////////////////////////
                            PRIVATE HELPERS
    //////////////////////////////////////////////////////////////*/
    // Validates that an address is not zero
    function _ensureNonzeroAddress(address addr) private pure {
        if (addr == address(0)) {
            revert ZeroAddress();
        }
    }
}
