// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
pragma abicoder v2;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

import "./ALMWrapper.sol";


contract ALMSmartChefSimple is Ownable {
    using SafeERC20 for IERC20;

    // The number of seconds allowed for a delayed start. Only update by owner
    uint256 public ALLOWED_DELAYS;

    address public operator;

    event AllowedDelaysUpdated(uint256 allowedDelays);
    event OperatorUpdated(address operator);
    event RestartSkipped(address wrapperAddress, string reason);

    modifier onlyOperator() {
        require(msg.sender == operator, "None operator!");
        _;
    }

    constructor() {
        ALLOWED_DELAYS = 86400;
    }

    function updateAllowedDelays(uint256 _seconds) external onlyOwner {
        ALLOWED_DELAYS = _seconds;

        emit AllowedDelaysUpdated(_seconds);
    }

    function updateOperator(address _newOperator) external onlyOwner {
        operator = _newOperator;

        emit OperatorUpdated(_newOperator);
    }

    function massSafeStopReward(address[] memory _wrapperAddresses) external onlyOperator {
        uint256 len = _wrapperAddresses.length;

        for (uint256 i = 0; i < len; i++) {
            address wrapperAddr = _wrapperAddresses[i];

            if (ALMWrapper(wrapperAddr).endTimestamp() > block.timestamp) {
                ALMWrapper(wrapperAddr).stopReward();
            }
        }
    }

    function massSafeRestart(
        address[] memory _wrapperAddresses,
        uint256[] memory _startTimestamps,
        uint256[] memory _endTimestamps,
        uint256[] memory _rewardPerSeconds
    ) external onlyOperator {
        require(_wrapperAddresses.length == _startTimestamps.length, "length not fit");
        require(_startTimestamps.length == _endTimestamps.length, "length not fit");
        require(_endTimestamps.length == _rewardPerSeconds.length, "length not fit");

        uint256 len = _wrapperAddresses.length;

        for (uint256 i = 0; i < len; i++) {
            address wrapperAddr = _wrapperAddresses[i];

            if (ALMWrapper(wrapperAddr).endTimestamp() < block.timestamp) {
                if (_startTimestamps[i] >= block.timestamp) {
                    ALMWrapper(wrapperAddr).restart(
                        _startTimestamps[i],
                        _endTimestamps[i],
                        _rewardPerSeconds[i]
                    );
                } else {
                    if (_startTimestamps[i] + ALLOWED_DELAYS >= block.timestamp) {
                        ALMWrapper(wrapperAddr).restart(
                            block.timestamp,
                            _endTimestamps[i],
                            _rewardPerSeconds[i]
                        );
                    } else {
                        emit RestartSkipped(wrapperAddr, "start time too old");
                        continue;
                    }
                }
            } else {
                emit RestartSkipped(wrapperAddr, "not ended");
                continue;
            }
        }
    }

    function massUpdateAdapterAddress(address[] memory _wrapperAddresses, address[] memory _adapterAddresses) external onlyOperator {
        require(_wrapperAddresses.length == _adapterAddresses.length, "length not fit");

        uint256 len = _wrapperAddresses.length;

        for (uint256 i = 0; i < len; i++) {
            address wrapperAddr = _wrapperAddresses[i];
            ALMWrapper(wrapperAddr).updateAdapterAddress(_adapterAddresses[i]);
        }
    }

    // admin functions

    function wrapperTransferOwnership(address _wrapperAddress) external onlyOwner {
        require(address(this) == ALMWrapper(_wrapperAddress).owner(), "owner is not this contract");

        // transfer ownership
        ALMWrapper(_wrapperAddress).transferOwnership(owner());
    }

    function wrapperEmergencyRewardWithdraw(address _wrapperAddress, uint256 _amount) external onlyOwner {
        require(address(this) == ALMWrapper(_wrapperAddress).owner(), "owner is not this contract");

        // emergency withdraw
        ALMWrapper(_wrapperAddress).emergencyRewardWithdraw(_amount);

        address rewardToken = address(ALMWrapper(_wrapperAddress).rewardToken());
        // transfer to owner
        IERC20(rewardToken).safeTransfer(msg.sender, IERC20(rewardToken).balanceOf(address(this)));
    }

    function wrapperRecoverToken(address _wrapperAddress, address _token) external onlyOwner {
        require(address(this) == ALMWrapper(_wrapperAddress).owner(), "owner is not this contract");

        // recover token
        ALMWrapper(_wrapperAddress).recoverToken(_token);

        // transfer to owner
        IERC20(_token).safeTransfer(msg.sender, IERC20(_token).balanceOf(address(this)));
    }
}