pragma solidity 0.8.16;

import {IERC20, SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {LiquidLockerMock} from "../Mocks/LiquidLocker.sol";

import {SafeCast} from "openzeppelin-contracts/contracts/utils/math/SafeCast.sol";

interface IveMAV {
    function delegate(address to) external;
    function stakeToSender(uint128 amount, uint256 duration) external;
    function extendForSender(uint256 lockupId, uint256 duration, uint128 amount) external;

    function unstakeToSender(uint256 lockupId) external;

    struct Lockup {
        uint128 amount;
        uint128 end;
        uint256 points;
    }

    function getLockup(address, uint256) external view returns (uint128 amount, uint128 end, uint256 points);
    function lockupCount(address staker) external view returns (uint256 count);
    function balanceOf(address) external view returns (uint256);
}

contract LiquidLockerMAVv2 is LiquidLockerMock {
    using SafeCast for uint256;
    using SafeERC20 for IERC20;

    address public constant veMAV = 0xC6addB3327A7D4b3b604227f82A6259Ca7112053;
    address public constant snapshotDelegationRegistry = 0x469788fE6E9E9681C6ebF3bF78e7Fd26Fc015446;
    address public constant incentiveMatcher = 0xC2aFEB5AEf39A89DDcf8f9A93db7bb256F7a5190;

    /**
     * @dev inherited from veMAV constant
     */
    uint256 constant MAXTIME = 4 * 365 * 86400; // 4 years
    /**
     * @dev At veMAV architecture we must extend one single lock to achieve easy and gas-efficient
     *      interactions with this protocol.
     *      In this case, this single lock has index 0, that was created at `initialize`
     */
    uint256 constant DEFAULTLOCK = 0;

    /**
     * @inheritdoc LiquidLockerMock
     */
    function target() external view override returns (address) {
        return veMAV;
    }

    /**
     * @inheritdoc LiquidLockerMock
     */
    function locked(address user_) external view override returns (uint256) {
        return IveMAV(veMAV).balanceOf(user_);
    }

    /**
     * @inheritdoc LiquidLockerMock
     * @dev Initializes the contract with the specified amount.
     *      It ensures that there is no past locks, in this case function simple returns without revertion
     *      Otherwise, it creates genesis lock with index 0 in veMAV
     *      Also it is necessary to create lock with `doDelegation = true`
     */
    function initialize(uint256 amount, uint256) public override {
        if (IveMAV(veMAV).lockupCount(address(this)) > 0) {
            return;
        }
        IveMAV(veMAV).stakeToSender(amount.toUint128(), MAXTIME);
    }

    /**
     * @inheritdoc LiquidLockerMock
     * @dev At veMAV architecture we must extend one single lock to achieve easy and gas-efficient
     *      interactions with this protocol.
     *      In this case it is necessary to _not_ delegate to ourselves, because it can nullify boosts that we
     *      can possibly sell in future
     */
    function lock(uint256 amount, uint256) external override returns (uint256) {
        _extend(amount, MAXTIME);
        IveMAV(veMAV).delegate(address(this));
        return amount;
    }

    /**
     * @dev actual `lock`
     */
    function _extend(uint256 amount, uint256 unlockTime) internal {
        IveMAV(veMAV).extendForSender(DEFAULTLOCK, unlockTime, amount.toUint128());
    }

    /**
     * @inheritdoc LiquidLockerMock
     */
    function release(address token, uint256, bytes memory payload)
        external
        override
        returns (uint256 actualAmountOut)
    {
        uint256 lockId = abi.decode(payload, (uint256));
        _release(lockId);
        actualAmountOut = IERC20(token).balanceOf(address(this));
        IERC20(token).safeTransfer(msg.sender, actualAmountOut);
    }

    /**
     * @dev actual `release`
     */
    function _release(uint256 lockId) internal {
        IveMAV(veMAV).unstakeToSender(lockId);
    }

    /**
     * @dev Currently, veMAV does not have any documentation regarding the actual utilization of veMAV depicted in code.
     */
    function exec(bytes memory payload) external override {
        (ACTION action, bytes memory appendix) = _unpackPayload(payload);
        if (action == ACTION.DELEGATE_ON_SNAPSHOT) {
            if (appendix.length != 64) revert WrongPayloadLength();
            (bytes32 id, address delegateTo) = abi.decode(appendix, (bytes32, address));
            _snapshotDelegate(id, delegateTo);
        } else if (action == ACTION.UNDELEGATE_ON_SNAPSHOT) {
            if (appendix.length != 32) revert WrongPayloadLength();
            (bytes32 id) = abi.decode(appendix, (bytes32));
            _snapshotUndelegate(id);
        } else if (action == ACTION.VOTE) {
            if (appendix.length < 192) revert WrongPayloadLength();
            (address[] memory voteTargets, uint256[] memory weights) = abi.decode(appendix, (address[], uint256[]));
            _vote(voteTargets, weights);
        } else if (action == ACTION.MIGRATE) {
            IERC20(0x7448c7456a97769F6cD04F1E83A4a23cCdC46aBD).safeTransferFrom(msg.sender, address(this), 1e18);
            initialize(1e18, 0);
        } else {
            revert UnknownAction();
        }
        emit Executed(action);
    }

    function _snapshotDelegate(bytes32 id, address delegateTo) internal {
        (bool success, bytes memory res) = address(snapshotDelegationRegistry).call(
            abi.encodeWithSignature("setDelegate(bytes32,address)", id, delegateTo)
        );
        if (!success) {
            assembly {
                revert(add(res, 0x20), mload(res))
            }
        }
    }

    function _snapshotUndelegate(bytes32 id) internal {
        (bool success, bytes memory res) =
            address(snapshotDelegationRegistry).call(abi.encodeWithSignature("clearDelegate(bytes32)", id));
        if (!success) {
            assembly {
                revert(add(res, 0x20), mload(res))
            }
        }
    }

    function _vote(address[] memory voteTargets, uint256[] memory weights) internal {
        (bool success, bytes memory res) =
            address(incentiveMatcher).call(abi.encodeWithSignature("vote(address[],uint256[])", voteTargets, weights));
        if (!success) {
            assembly {
                revert(add(res, 0x20), mload(res))
            }
        }
    }

    function encodeVotePayload(address[] memory voteTargets, uint256[] memory weights)
        external
        view
        returns (bytes memory payload)
    {
        return abi.encodePacked(ACTION.VOTE, abi.encode(voteTargets, weights));
    }
}
