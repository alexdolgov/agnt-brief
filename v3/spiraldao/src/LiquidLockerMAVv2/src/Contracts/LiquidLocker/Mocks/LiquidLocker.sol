pragma solidity 0.8.16;

import {IERC20, SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {ILiquidLocker} from "../../interfaces/ILiquidLocker.sol";

/**
 * @dev The LiquidLockerMock contract is an abstract contract that implements the ILiquidLocker interface.
 *      It provides basic functionality and common functions for a mock liquid locker.
 *      Specific details and implementations should be documented in the child contracts that inherit from this.
 */
abstract contract LiquidLockerMock is ILiquidLocker {
    using SafeERC20 for IERC20;

    /**
     * @dev this function shows deposit fee of abstract adapter
     *      intended to use by frontend
     */
    function depositFee() public view virtual returns (uint256) {
        return _depositFee();
    }

    /**
     * @dev this function shows bps of abstract adapter fee
     *      intended to use internally by implementation
     */
    function _depositFee() internal view virtual returns (uint256) {
        return 0;
    }

    /**
     * @dev this function shows bps of abstract adapter fee
     *      intended to use by frontend
     */
    function feeBase() public view virtual returns (uint256) {
        return _feeBase();
    }

    /**
     * @dev this function shows bps of abstract adapter fee
     *      intended to use internally by implementation
     */
    function _feeBase() internal view virtual returns (uint256) {
        return 0;
    }

    /**
     * @dev this address is used as the target for allowance during the initialization process of the adapter.
     */
    function target() external view virtual returns (address) {
        return address(0);
    }

    /**
     * @dev this function should be called from frontend
     */
    function locked(address user_) external view virtual returns (uint256) {
        return _locked(user_);
    }

    /**
     * @dev intended to use internally by implementation
     */
    function _locked(address user_) internal view virtual returns (uint256) {
        return 0;
    }

    /**
     * @param amount to initialize lock with.
     * @param unlockTime of freshly initialized lock.
     * @dev Initializes the contract with the specified amount and unlock time.
     */
    function initialize(uint256 amount, uint256 unlockTime) external virtual {}

    /**
     * @param amount of tokens to be locked, required greater than 0.
     * @param unlockTime for the lock, could be 0, depends on particular logic.
     * @dev Locks the specified amount of tokens for the given unlock time.
     *      The actualAmountIn is calculated to ensure the solvency of {LockerMaster} balances at any given moment.
     * @return actualAmountIn of tokens deposited, taking into account any deposit fee.
     */
    function lock(uint256 amount, uint256 unlockTime) external virtual returns (uint256 actualAmountIn) {
        if (amount == 0) revert ZeroAmount();
        // need to calculate actualAmountIn to achieve compatibility
        // with external abstract locker that could got fee on deposit
        if (_depositFee() != 0) {
            _lock(amount, unlockTime);
            actualAmountIn = amount * _depositFee() / _feeBase();
        } else {
            uint256 lockedBefore = _locked(address(this));
            _lock(amount, unlockTime);
            actualAmountIn = _locked(address(this)) - lockedBefore;
        }
    }

    /**
     * @dev executing actual logic of lock
     */
    function _lock(uint256 amount, uint256 unlockTime) internal virtual {}

    /**
     * @param token The address of the token to be released.
     * @param amount of tokens to be released.
     * @param payload Additional data associated with the release.
     * @dev In curren state release intended to be used only by DAO governance.
     *      Releases the specified amount of tokens from the contract.
     * @return actualAmountOut of tokens released, taking into account any withdraw fee.
     */
    function release(address token, uint256 amount, bytes memory payload)
        external
        virtual
        returns (uint256 actualAmountOut)
    {
        uint256 balanceBefore = IERC20(token).balanceOf(address(this));
        if (amount > balanceBefore) {
            _release();
            actualAmountOut = IERC20(token).balanceOf(address(this)) - balanceBefore;
        } else {
            actualAmountOut = amount;
        }

        IERC20(token).safeTransfer(msg.sender, actualAmountOut);
    }

    /**
     * @dev executing actual logic of release
     */
    function _release() internal virtual {}

    /**
     * @param payload The payload containing the action and appendix.
     * @return action The decoded action from the payload.
     * @return appendix The decoded appendix from the payload.
     * @dev Unpacks the payload by extracting the action and appendix.
     *      More detailed description at {LockerMaster-exec}
     */
    function _unpackPayload(bytes memory payload) internal returns (ACTION action, bytes memory appendix) {
        action = ACTION(uint8(payload[0]));
        appendix = new bytes(payload.length - 1);
        for (uint256 i = 0; i < appendix.length;) {
            appendix[i] = payload[i + 1];
            unchecked {
                ++i;
            }
        }
    }

    /**
     * @dev this function unpacks payload, check it integrity and executes action
     */
    function exec(bytes calldata payload) external virtual {
        (ACTION action, bytes memory appendix) = _unpackPayload(payload);
        if (action == ACTION.VOTE) {
            if (appendix.length != 96) revert WrongPayloadLength();
            (uint256 voteData, bool approving, address voteTarget) = abi.decode(appendix, (uint256, bool, address));
            _vote(voteData, approving, voteTarget);
        } else if (action == ACTION.VOTE_GAUGES) {
            if (appendix.length < 192) revert WrongPayloadLength();
            (address[] memory gauges, uint256[] memory weights) = abi.decode(appendix, (address[], uint256[]));
            _voteGauges(gauges, weights);
        } else if (action == ACTION.VOTE_PROPOSAL) {
            if (appendix.length != 128) revert WrongPayloadLength();
            (uint256 voteId, uint256 upPct, uint256 downPct, address voteTarget) =
                abi.decode(appendix, (uint256, uint256, uint256, address));
            _voteProposal(voteId, upPct, downPct, voteTarget);
        } else if (action == ACTION.CLAIM) {
            if (appendix.length > 0) revert WrongPayloadLength();
            _claim();
        } else {
            revert UnknownAction();
        }
        emit Executed(action);
    }

    function _vote(uint256 amountToVote, bool approving, address voteTarget) internal virtual {}

    function _voteProposal(uint256 voteId, uint256 upPct, uint256 downPct, address voteTarget) internal virtual {}

    function _voteGauges(address[] memory gauges, uint256[] memory weights) internal virtual {}

    function _claim() internal virtual {}
}
