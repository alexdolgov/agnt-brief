// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import {Ownable2Step, Ownable} from "@openzeppelin/contracts/access/Ownable2Step.sol";
import {TransferHelper} from "@uniswap/v3-periphery/contracts/libraries/TransferHelper.sol";

import {IVeSTO} from "../interfaces/IVeSTO.sol";

/// @title Voting Escrow for STO
contract Escrow is Ownable2Step {
    /*//////////////////////////////////////////////////////////////////////////
                                    STATE VARIABLES
    //////////////////////////////////////////////////////////////////////////*/

    address public immutable STO;
    address public immutable veSTO;

    uint256 public lockDuration = 30 days;

    mapping(address => LockInfo[]) public lockInfo;

    /*//////////////////////////////////////////////////////////////////////////
                                    STRUCTS
    //////////////////////////////////////////////////////////////////////////*/

    struct LockInfo {
        uint256 amount;
        uint256 unlockTime;
        bool claimed;
    }

    /*//////////////////////////////////////////////////////////////////////////
                                    EVENTS
    //////////////////////////////////////////////////////////////////////////*/
    event Lock(address indexed owner, address indexed receiver, uint256 amount);
    event Unlock(
        address indexed owner,
        address indexed receiver,
        uint256 amount
    );
    event Claim(address indexed receiver, uint256 amount);
    event SetLockDuration(uint256 oldVal, uint256 newVal);

    /*//////////////////////////////////////////////////////////////////////////
                                    CONSTRUCTOR
    //////////////////////////////////////////////////////////////////////////*/

    constructor(address _sto, address _veSTO, address _admin) Ownable(_admin) {
        STO = _sto;
        veSTO = _veSTO;
    }

    /*//////////////////////////////////////////////////////////////////////////
                                    PERMISSIONLESS FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    function lock(uint256 _amount) external returns (uint256 minted) {
        minted = _lockFor(_amount, msg.sender);
    }

    function lockFor(
        uint256 _amount,
        address _receiver
    ) external returns (uint256 minted) {
        minted = _lockFor(_amount, _receiver);
    }

    function unlock(uint256 _amount) external {
        _unlockFor(_amount, msg.sender);
    }

    function unlockFor(uint256 _amount, address _receiver) external {
        _unlockFor(_amount, _receiver);
    }

    function claim(uint256 _index) external {
        _claim(_index);
    }

    function claimBatch(uint256[] memory _indices) external {
        uint256 length = _indices.length;
        require(length != 0, "invalid indices");

        uint256 i;
        for (i; i < length; i++) {
            uint256 index = _indices[i];
            _claim(index);
        }
    }

    /*//////////////////////////////////////////////////////////////////////////
                                    VIEW FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    function getUnlockInfo(
        address _user
    ) external view returns (LockInfo[] memory info) {
        info = lockInfo[_user];
    }

    function getUnlockInfoByIndex(
        address _user,
        uint256 _index
    ) external view returns (LockInfo memory info) {
        info = lockInfo[_user][_index];
    }

    /*//////////////////////////////////////////////////////////////////////////
                                    ADMIN FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    function setLockDuration(uint256 _duration) external onlyOwner {
        emit SetLockDuration(lockDuration, _duration);
        lockDuration = _duration;
    }

    /*//////////////////////////////////////////////////////////////////////////
                                    INTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    function _lockFor(
        uint256 _amount,
        address _receiver
    ) internal returns (uint256 minted) {
        require(_amount > 0, "zero amount");
        require(_receiver != address(0), "zero address");

        minted = _amount;
        TransferHelper.safeTransferFrom(STO, msg.sender, address(this), minted);

        IVeSTO(veSTO).mint(_receiver, minted);

        emit Lock(msg.sender, _receiver, minted);
    }

    function _unlockFor(uint256 _amount, address _receiver) internal {
        require(_amount > 0, "zero amount");
        require(_receiver != address(0), "zero address");

        TransferHelper.safeTransferFrom(
            veSTO,
            msg.sender,
            address(this),
            _amount
        );

        LockInfo memory info;
        info.amount = _amount;
        info.unlockTime = block.timestamp + lockDuration;

        lockInfo[_receiver].push(info);

        emit Unlock(msg.sender, _receiver, _amount);
    }

    function _claim(uint256 _index) internal {
        require(_index < lockInfo[msg.sender].length, "invalid index");

        LockInfo storage info = lockInfo[msg.sender][_index];

        uint256 amount = info.amount;

        require(block.timestamp > info.unlockTime, "locked");
        require(!info.claimed, "claimed");

        info.claimed = true;

        IVeSTO(veSTO).burn(address(this), amount);
        TransferHelper.safeTransfer(STO, msg.sender, amount);

        emit Claim(msg.sender, amount);
    }
}
