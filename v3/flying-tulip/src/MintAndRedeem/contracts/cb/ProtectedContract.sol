// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.30;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {StorageSlot} from "@openzeppelin/contracts/utils/StorageSlot.sol";

import {ICircuitBreakerV2} from "./ICircuitBreakerV2.sol";

/// @title ProtectedContract
/// @notice Mixin for circuit breaker protected contracts (both upgradeable and non-upgradeable).
/// @dev Uses unstructured storage for the circuit breaker address, making it safe for:
///      - Non-upgradeable contracts (standard inheritance)
///      - Upgradeable contracts (no storage layout conflicts)
///
///      Fee-on-transfer (FOT) and rebasing tokens are NOT supported.
///      Using such tokens will result in incorrect accounting and potential loss of funds.
abstract contract ProtectedContract {
    using SafeERC20 for IERC20;

    // ===== Unstructured Storage =====

    /// @dev keccak256("ft.circuitbreakerv2.storage.ProtectedContract.circuitBreaker") - 1
    bytes32 internal constant _CIRCUIT_BREAKER_SLOT =
        0x88194fc1127942401ead32f70ac4b1816d514a0e878b86370156febc2984ee85;

    /// @notice Returns the circuit breaker address
    /// @dev Virtual to allow overriding when inheriting from interfaces that declare circuitBreaker()
    function circuitBreaker() public view virtual returns (address) {
        return _getCircuitBreaker();
    }

    /// @dev Internal getter for circuit breaker address. Use in overrides to avoid duplicating storage access.
    function _getCircuitBreaker() internal view returns (address) {
        return StorageSlot.getAddressSlot(_CIRCUIT_BREAKER_SLOT).value;
    }

    // ===== Events =====

    event CircuitBreakerUpdated(address indexed newCircuitBreaker);

    event OutflowQueued(
        uint256 indexed queueId, address indexed token, address indexed to, uint256 amount
    );

    // ===== Internal =====

    function _setCircuitBreaker(address cb_) internal virtual {
        StorageSlot.getAddressSlot(_CIRCUIT_BREAKER_SLOT).value = cb_;
        emit CircuitBreakerUpdated(cb_);
    }

    function _recordInflow(address _token, uint256 _amount, uint256 _preTvl) internal {
        address cb = circuitBreaker();

        if (cb == address(0)) {
            return;
        }

        ICircuitBreakerV2(cb).recordInflow(_token, _amount, _preTvl);
    }

    function _protectedTransfer(
        address _token,
        address _to,
        uint256 _amount
    )
        internal
        returns (uint256 queueId)
    {
        if (circuitBreaker() == address(0)) {
            IERC20(_token).safeTransfer(_to, _amount);
            return 0;
        }
        return _protectedTransferWithTvl(_token, _to, _amount, _getTvl(_token));
    }

    /// @notice Transfer with explicit preTvl for rate limiting
    /// @dev Use when TVL must be captured before internal token movements
    function _protectedTransferWithTvl(
        address _token,
        address _to,
        uint256 _amount,
        uint256 _preTvl
    )
        internal
        returns (uint256 queueId)
    {
        address cb = circuitBreaker();

        if (cb == address(0)) {
            IERC20(_token).safeTransfer(_to, _amount);
            return 0;
        }

        (bool immediate, uint256 _queueId) =
            ICircuitBreakerV2(cb).attemptOutflow(_token, _to, _amount, _preTvl);

        if (immediate) {
            IERC20(_token).safeTransfer(_to, _amount);
            return 0;
        } else {
            IERC20(_token).safeTransfer(cb, _amount);
            emit OutflowQueued(_queueId, _token, _to, _amount);
            return _queueId;
        }
    }

    /// @notice Transfer with explicit preTvl and a separate limiter asset for rate limiting
    /// @dev Use when the token being transferred differs from the rate-limit bucket key.
    ///      E.g., wrapper withdrawUnderlying uses the wrapper's `token` as limiter but
    ///      transfers individual strategy `positionToken`s.
    /// @param _transferToken Token actually transferred
    /// @param _to Recipient
    /// @param _amount Amount of _transferToken to transfer
    /// @param _preTvl TVL before the outflow (for capacity calculation)
    /// @param _limiterAsset Asset used for rate-limit state (bucket key)
    /// @param _limiterAmount Amount in _limiterAsset decimals for rate-limit accounting.
    ///        When position-token decimals differ from underlying, the caller must normalize.
    function _protectedTransferWithTvlAndLimiter(
        address _transferToken,
        address _to,
        uint256 _amount,
        uint256 _preTvl,
        address _limiterAsset,
        uint256 _limiterAmount
    )
        internal
        returns (uint256 queueId)
    {
        address cb = circuitBreaker();

        if (cb == address(0)) {
            IERC20(_transferToken).safeTransfer(_to, _amount);
            return 0;
        }

        (bool immediate, uint256 _queueId) = ICircuitBreakerV2(cb)
            .attemptOutflowWithLimiter(
                _limiterAsset, _transferToken, _to, _limiterAmount, _amount, _preTvl
            );

        if (immediate) {
            IERC20(_transferToken).safeTransfer(_to, _amount);
            return 0;
        } else {
            IERC20(_transferToken).safeTransfer(cb, _amount);
            emit OutflowQueued(_queueId, _transferToken, _to, _amount);
            return _queueId;
        }
    }

    // ===== Virtual =====

    function _getTvl(address _token) internal view virtual returns (uint256);
}
