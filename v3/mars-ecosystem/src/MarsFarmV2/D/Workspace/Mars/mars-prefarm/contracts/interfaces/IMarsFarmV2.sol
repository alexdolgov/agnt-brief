// SPDX-License-Identifier: MIT

pragma solidity 0.6.12;
pragma experimental ABIEncoderV2;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "./IVestingMaster.sol";

interface IMarsFarmV2 {

    struct UserInfo {
        uint256 shares;
        uint256 rewardDebt;
    }

    struct PoolInfo {
        IERC20 want;
        uint256 allocPoint;
        uint256 lastRewardBlock;
        uint256 accTokenPerShare;
        address strat;
        bool locked;
    }

    function WBNB() external view returns (address);

    function tokenAddress() external view returns (address);

    function startBlock() external view returns (uint256);

    function tokenPerBlock() external view returns (uint256);

    function endBlock() external view returns (uint256);

    function poolInfo(uint256 _pid) external view returns (
        IERC20 want,
        uint256 allocPoint,
        uint256 lastRewardBlock,
        uint256 accTokenPerShare,
        address strat,
        bool locked
    );

    function userInfo(uint256 _pid, address _account) external view returns (
        uint256 shares,
        uint256 rewardDebt
    );

    function totalAllocPoint() external view returns (uint256);

    function vestingMaster() external view returns (IVestingMaster);

    function poolExistence(IERC20 _lpToken) external view returns (bool);

    function poolLength() external view returns (uint256);

    function setVestingMaster(address _vestingMaster) external;

    function add(
        uint256 _allocPoint,
        IERC20 _want,
        bool _withUpdate,
        address _strat,
        bool _locked
    ) external;

    function set(
        uint256 _pid,
        uint256 _allocPoint,
        bool _withUpdate,
        bool _locked
    ) external;

    function getMultiplier(uint256 _from, uint256 _to) external pure returns (uint256);

    function pendingToken(uint256 _pid, address _user)
        external
        view
        returns (uint256);

    function stakedWantTokens(uint256 _pid, address _user)
        external
        view
        returns (uint256);

    function massUpdatePools() external;

    function updatePool(uint256 _pid) external;

    function deposit(uint256 _pid, uint256 _wantAmt) external;

    function depositBNB(uint256 _pid, uint256 _wantAmt) external payable;

    function withdraw(uint256 _pid, uint256 _wantAmt) external;

    function withdrawBNB(uint256 _pid, uint256 _wantAmt) external;

    function withdrawAll(uint256 _pid) external;

    function emergencyWithdraw(uint256 _pid) external;

    function emergencyWithdrawBNB(uint256 _pid) external;

    function updateTokenPerBlock(uint256 _tokenPerBlock) external;

    function updateEndBlock(uint256 _endBlock) external;

    function sharesTotal(uint256 _pid) external view returns (uint256);
}