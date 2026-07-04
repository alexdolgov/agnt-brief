// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {ReentrancyGuardUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import {AccessControlUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";

interface IFinalityProviderManager {
    function confirmBatchId() external view returns (uint256);
}

// Token releaser is to release token to the receiver every N batches in FinalityProviderManager
contract TokenReleaser is Initializable, ReentrancyGuardUpgradeable, AccessControlUpgradeable {
    using SafeERC20 for IERC20;

    address public token;

    uint256 public batchSize;
    address public finalityProviderManager;
    address public receiver;

    uint256 public amountPerRelease;
    uint256 public totalReleasedCount;

    event TokenReleased(
        address indexed receiver,
        uint256 indexed batchIndex,
        uint256 indexed amount
    );

    constructor() {
        _disableInitializers();
    }

    function initialize(
        address _distributeToken,
        uint256 _batchSize,
        address _finalityProviderManager,
        address _receiver,
        uint256 _amountPerRelease
    ) public initializer {
        __ReentrancyGuard_init();
        __AccessControl_init();
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        
        token = _distributeToken;
        batchSize = _batchSize;

        require(
            _finalityProviderManager != address(0),
            "TokenReleaser: Invalid finality provider manager"
        );
        finalityProviderManager = _finalityProviderManager;

        setReceiver(_receiver);
        setAmountPerRelease(_amountPerRelease);
    }

    function setReceiver(address _receiver) public onlyRole(DEFAULT_ADMIN_ROLE) {
        require(
            _receiver != address(0),
            "TokenReleaser: Invalid receiver"
        );
        receiver = _receiver;
    }

    function setAmountPerRelease(uint256 _amountPerRelease) public onlyRole(DEFAULT_ADMIN_ROLE) {
        require(
            _amountPerRelease > 0,
            "TokenReleaser: Invalid amount per release"
        );
        amountPerRelease = _amountPerRelease;
    }

    function releaseToken() public nonReentrant onlyRole(DEFAULT_ADMIN_ROLE) {
        uint256 id = IFinalityProviderManager(finalityProviderManager).confirmBatchId();
        require(id > 0, "TokenReleaser: id cannot be 0");
        uint256 availableReleaseCount = id / batchSize;
        require(
            availableReleaseCount > totalReleasedCount,
            "TokenReleaser: Not a batch"
        );

        IERC20(token).safeTransfer(receiver, amountPerRelease);
        
        totalReleasedCount++;

        emit TokenReleased(receiver, totalReleasedCount, amountPerRelease);
    }

    function withdrawToken(
        address _account,
        uint256 _amount
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        IERC20(token).safeTransfer(_account, _amount);
    }
}