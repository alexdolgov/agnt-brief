// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.22;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";

/// @title PoolFeesUpgradeable
/// @notice Upgradeable contract used as 1:1 pool relationship to split out fees.
/// @notice Ensures curve does not need to be modified for LP shares.
/// @notice Uses UUPS (Universal Upgradeable Proxy Standard) pattern for upgradeability.
contract PoolFeesUpgradeable is Initializable, UUPSUpgradeable, OwnableUpgradeable {
    using SafeERC20 for IERC20;

    address public pool; // The pool it is bonded to
    address public token0; // token0 of pool, saved locally and statically for gas optimization
    address public token1; // Token1 of pool, saved locally and statically for gas optimization

    error NotPool();

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /// @notice Initialize the contract (replaces constructor for upgradeable contracts)
    /// @param _pool The pool address that will be allowed to claim fees
    /// @param _token0 The first token of the pool
    /// @param _token1 The second token of the pool
    /// @param _owner The owner who can upgrade this contract
    function initialize(address _pool, address _token0, address _token1, address _owner) public initializer {
        __Ownable_init(_owner);
        __UUPSUpgradeable_init();

        pool = _pool;
        token0 = _token0;
        token1 = _token1;
    }

    /// @notice Allow the pool to transfer fees to users
    /// @param _recipient The address to receive the fees
    /// @param _amount0 Amount of token0 to transfer
    /// @param _amount1 Amount of token1 to transfer
    function claimFeesFor(address _recipient, uint256 _amount0, uint256 _amount1) external virtual {
        if (msg.sender != pool) revert NotPool();
        if (_amount0 > 0) IERC20(token0).safeTransfer(_recipient, _amount0);
        if (_amount1 > 0) IERC20(token1).safeTransfer(_recipient, _amount1);
    }

    /// @notice Required by UUPSUpgradeable - only owner can authorize upgrades
    /// @param newImplementation The address of the new implementation
    function _authorizeUpgrade(address newImplementation) internal override onlyOwner {}

    /// @notice Get the current implementation version
    /// @return The version string
    function version() public pure virtual returns (string memory) {
        return "2.0.0";
    }

    /// @notice New function in V2: Get the balance of both tokens held by this contract
    /// @return balance0 The balance of token0
    /// @return balance1 The balance of token1
    function getBalances() external view returns (uint256 balance0, uint256 balance1) {
        balance0 = IERC20(token0).balanceOf(address(this));
        balance1 = IERC20(token1).balanceOf(address(this));
    }
}
