// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

import {AccessControlDefaultAdminRules} from "@openzeppelin/contracts/access/extensions/AccessControlDefaultAdminRules.sol";
import {Pausable} from "@openzeppelin/contracts/utils/Pausable.sol";
import {ISimpleToken} from "./interfaces/ISimpleToken.sol";
import {IRewardDistributor} from "./interfaces/IRewardDistributor.sol";
import {IStUSR} from "./interfaces/IStUSR.sol";

contract RewardDistributor is IRewardDistributor, AccessControlDefaultAdminRules, Pausable {

    bytes32 public constant SERVICE_ROLE = keccak256("SERVICE_ROLE");

    address public immutable ST_USR_ADDRESS;
    address public immutable TOKEN_ADDRESS;
    address public feeCollectorAddress;

    mapping(bytes32 => bool) private distributeIds;

    modifier idempotent(bytes32 idempotencyKey) {
        if (distributeIds[idempotencyKey]) {
            revert IdempotencyKeyAlreadyExist(idempotencyKey);
        }
        _;
        distributeIds[idempotencyKey] = true;
    }

    constructor(
        address _stUSRAddress,
        address _feeCollectorAddress,
        address _tokenAddress
    ) AccessControlDefaultAdminRules(1 days, msg.sender) {
        _assertNonZero(_stUSRAddress);
        _assertNonZero(_feeCollectorAddress);
        _assertNonZero(_tokenAddress);

        ST_USR_ADDRESS = _stUSRAddress;
        feeCollectorAddress = _feeCollectorAddress;
        TOKEN_ADDRESS = _tokenAddress;
    }

    function distribute(
        bytes32 idempotencyKey,
        uint256 _stakingReward,
        uint256 _feeReward
    ) external onlyRole(SERVICE_ROLE) idempotent(idempotencyKey) whenNotPaused {
        if (_stakingReward <= 0) revert InvalidAmount(_stakingReward);
        if (_feeReward <= 0) revert InvalidAmount(_feeReward);

        IStUSR stUSR = IStUSR(ST_USR_ADDRESS);
        uint256 totalSharesBefore = stUSR.totalShares();
        uint256 totalUSRBefore = stUSR.totalSupply();

        ISimpleToken token = ISimpleToken(TOKEN_ADDRESS);
        token.mint(ST_USR_ADDRESS, _stakingReward);

        uint256 totalSharesAfter = stUSR.totalShares();
        uint256 totalUSRAfter = stUSR.totalSupply();

        token.mint(feeCollectorAddress, _feeReward);

        emit RewardDistributed(
            idempotencyKey,
            totalSharesBefore,
            totalUSRBefore,
            totalSharesAfter,
            totalUSRAfter,
            _stakingReward,
            _feeReward
        );
    }

    function setFeeCollector(address _feeCollectorAddress) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _assertNonZero(_feeCollectorAddress);

        feeCollectorAddress = _feeCollectorAddress;
        emit FeeCollectorSet(_feeCollectorAddress);
    }

    function pause() external onlyRole(DEFAULT_ADMIN_ROLE) {
        Pausable._pause();
    }

    function unpause() external onlyRole(DEFAULT_ADMIN_ROLE) {
        Pausable._unpause();
    }

    function _assertNonZero(address _address) internal pure returns (address nonZeroAddress) {
        if (_address == address(0)) revert ZeroAddress();
        return _address;
    }
}
