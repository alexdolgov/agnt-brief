// SPDX-License-Identifier: MIT
pragma solidity ^0.7.6;
pragma abicoder v2;

import {MulDivMathLib} from "src/libraries/MulDivMathLib.sol";
import {IERC20} from "@openzeppelin/token/ERC20/IERC20.sol";

import {SafeERC20} from "@openzeppelin/token/ERC20/SafeERC20.sol";
import {SafeMath} from "@openzeppelin/math/SafeMath.sol";

import {IManager} from "src/interfaces/manager/IManager.sol";
import {IRewardReceiver} from "src/interfaces/rewards/IRewardReceiver.sol";
import {UpgradeableKeepable} from "src/governance/UpgradeableKeepable.sol";

import {IBlastRebasing, YieldMode} from "src/interfaces/IBlastRebasing.sol";

contract RewardReceiver is IRewardReceiver, UpgradeableKeepable {
    using SafeMath for uint256;
    using MulDivMathLib for uint256;
    using SafeERC20 for IERC20;

    /* -------------------------------------------------------------------------- */
    /*                                  VARIABLES                                 */
    /* -------------------------------------------------------------------------- */

    // manager address => tracker address =>  manager data
    mapping(address => mapping(address => ManagerData)) public managerData;

    // manager address => trackers
    mapping(address => address[]) public trackers;

    address public factory;

    uint256 public constant blastID = 81457;

    IBlastRebasing public constant USDB = IBlastRebasing(0x4300000000000000000000000000000000000003);
    IBlastRebasing public constant WETH = IBlastRebasing(0x4300000000000000000000000000000000000004);

    function initialize(address _factory) external initializer {
        __Governable_init(msg.sender);

        factory = _factory;

        uint256 chainId;
        assembly {
            chainId := chainid()
        }

        if (chainId == blastID) {
            USDB.configure(YieldMode.CLAIMABLE);
            WETH.configure(YieldMode.CLAIMABLE);
        }
    }

    function receiveRewards(uint256 _rewards0, uint256 _rewards1) external override {
        address[] memory _trackers = trackers[msg.sender];

        uint256 length = _trackers.length;

        require(length > 0, "No Trackers");

        uint256 sumOfRewards;

        if (_rewards0 > 0) {
            IManager(msg.sender).token0().safeTransferFrom(msg.sender, address(this), _rewards0);

            for (uint256 i; i < length;) {
                address _tracker = _trackers[i];

                ManagerData storage data = managerData[msg.sender][_tracker];

                uint256 trackerRewards;

                if (i < length.sub(1)) {
                    trackerRewards =
                        _rewards0.mulDivDown(IERC20(msg.sender).balanceOf(_tracker), IERC20(msg.sender).totalSupply());
                    sumOfRewards = sumOfRewards.add(trackerRewards);
                } else {
                    trackerRewards = _rewards0.sub(sumOfRewards);
                    sumOfRewards = 0;
                }

                data.rewardPool0 = data.rewardPool0.add(trackerRewards);

                emit NewRewards0(msg.sender, _tracker, _rewards0);

                ++i;
            }
        }

        if (_rewards1 > 0) {
            IManager(msg.sender).token1().safeTransferFrom(msg.sender, address(this), _rewards1);

            for (uint256 i; i < length;) {
                address _tracker = _trackers[i];

                ManagerData storage data = managerData[msg.sender][_tracker];

                uint256 trackerRewards;

                if (i < length.sub(1)) {
                    trackerRewards =
                        _rewards1.mulDivDown(IERC20(msg.sender).balanceOf(_tracker), IERC20(msg.sender).totalSupply());

                    sumOfRewards = sumOfRewards.add(trackerRewards);
                } else {
                    trackerRewards = _rewards1.sub(sumOfRewards);
                    sumOfRewards = 0;
                }

                data.rewardPool1 = data.rewardPool1.add(trackerRewards);

                emit NewRewards1(msg.sender, _tracker, _rewards1);

                ++i;
            }
        }
    }

    function distributeRewards(address _manager) external override returns (uint256, uint256) {
        ManagerData storage data = managerData[_manager][msg.sender];

        require(msg.sender == data.target, "Invalid Caller");

        uint256 rewards0 = data.rewardPool0;

        if (rewards0 > 0) {
            data.rewardPool0 = 0;
            IManager(_manager).token0().safeTransfer(msg.sender, rewards0);
        }

        uint256 rewards1 = data.rewardPool1;

        if (rewards1 > 0) {
            data.rewardPool1 = 0;
            IManager(_manager).token1().safeTransfer(msg.sender, rewards1);
        }

        emit DistributeRewards(msg.sender, rewards0, rewards1);

        return (rewards0, rewards1);
    }

    function pendingRewards(address _manager, address _tracker) external view override returns (uint256, uint256) {
        ManagerData memory data = managerData[_manager][_tracker];
        return (data.rewardPool0, data.rewardPool1);
    }

    /* -------------------------------------------------------------------------- */
    /*                                  KEEPER                                    */
    /* -------------------------------------------------------------------------- */

    /**
     * @notice Claims yield accrued from Blast and sends to treasury address
     */
    function claimAllYield() external onlyKeeper {
        address thisAddress = address(this);
        uint256 usdbYield = USDB.getClaimableAmount(thisAddress);
        if (usdbYield > 0) {
            USDB.claim(msg.sender, usdbYield);
        }

        uint256 wethYield = WETH.getClaimableAmount(thisAddress);
        if (wethYield > 0) {
            WETH.claim(msg.sender, wethYield);
        }
    }

    /* -------------------------------------------------------------------------- */
    /*                                  GOVERNOR                                  */
    /* -------------------------------------------------------------------------- */

    /**
     * @notice Set Manager Rewards Data.
     * @param _manager Manager address.
     * @param _tracker Tracker address.
     * @param _data Data to be set.
     */
    function updateManagerData(address _manager, address _tracker, ManagerData memory _data)
        external
        override
        onlyGovernorOrFactory
    {
        managerData[_manager][_tracker] = _data;
    }

    /**
     * @notice Add tracker.
     * @param _manager Manager address.
     * @param _tracker Tracker address.
     */
    function addTracker(address _manager, address _tracker) external override onlyGovernorOrFactory {
        managerData[_manager][_tracker] =
            IRewardReceiver.ManagerData({target: _tracker, rewardPool0: 0, rewardPool1: 0});
        trackers[_manager].push(_tracker);
    }

    /**
     * @notice Remove tracker.
     * @param _manager Manager address..
     * @param _index Tracker address index.
     */
    function removeTracker(address _manager, uint256 _index) external onlyGovernorOrFactory {
        address[] memory _trackers = trackers[_manager];

        uint256 length = _trackers.length;

        require(length > 0, "No trackers");

        managerData[_manager][trackers[_manager][_index]] =
            IRewardReceiver.ManagerData({target: address(0), rewardPool0: 0, rewardPool1: 0});

        if (length != 1 && (length.sub(1) != _index)) {
            trackers[_manager][_index] = trackers[_manager][length.sub(1)];
        }

        trackers[_manager].pop();
    }

    /**
     * @notice Set New Factory.
     * @param _factory Factory address.
     */
    function setFactory(address _factory) external onlyGovernor {
        factory = _factory;
    }

    /**
     * @notice Moves assets from the strategy to `_to`
     * @param _assets An array of IERC20 compatible tokens to move out from the strategy
     * @param _withdrawNative `true` if we want to move the native asset from the strategy
     */
    function emergencyWithdrawal(address _to, address[] memory _assets, bool _withdrawNative) external onlyGovernor {
        uint256 assetsLength = _assets.length;
        for (uint256 i = 0; i < assetsLength; ++i) {
            IERC20 asset_ = IERC20(_assets[i]);
            uint256 assetBalance = asset_.balanceOf(address(this));

            if (assetBalance > 0) {
                // Transfer the ERC20 tokens
                asset_.safeTransfer(_to, assetBalance);
            }
        }

        uint256 nativeBalance = address(this).balance;

        // Nothing else to do
        if (_withdrawNative && nativeBalance > 0) {
            // Transfer the native currency
            (bool sent,) = payable(_to).call{value: nativeBalance}("");
            require(sent, "Fail Send ETH");
        }

        emit EmergencyWithdrawal(msg.sender, _to, _assets, _withdrawNative ? nativeBalance : 0);
    }

    /**
     * @notice Only msg.sender with GOVERNOR role or if it is the factory can call the function.
     */
    modifier onlyGovernorOrFactory() {
        require(hasRole(GOVERNOR, msg.sender) || msg.sender == factory, "Invalid Caller");

        _;
    }
}
